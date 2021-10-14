import pymarc
from io import BytesIO
import os
import json
import shutil
import sys
import argparse
import logging


xml_declaration = '<?xml version="1.0" encoding="UTF-8" standalone="no" ?>'

oai_open = """<OAI-PMH xmlns="http://www.openarchives.org/OAI/2.0/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.openarchives.org/OAI/2.0/ http://www.openarchives.org/OAI/2.0/OAI-PMH.xsd">
<ListRecords>
<record>
<metadata>
"""

oai_close = """</metadata>
</record>
</ListRecords>
</OAI-PMH>
"""

XML_CHUNK_SIZE = 500
JSON_PROGRESS_CHUNK_SIZE = 10000


logging.basicConfig(format='%(asctime)s:%(levelname)s:%(message)s', level=logging.DEBUG)

def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)

def process_directory(marc_file_directory, output_directory, progress_file_path):
    marc_extensions = [ ".mrc", ".marc" ]
    if os.path.exists(progress_file_path):
        with open(progress_file_path, 'r') as handle:
            progress_dict = json.load(handle)
    else:
        progress_dict = {}

    current_file_count = 1
    for filename in os.listdir(marc_file_directory):
        marc_file_name = os.path.join(marc_file_directory, filename)
        if os.path.isdir(marc_file_name):
            continue
        if os.path.splitext(filename)[1].lower() not in marc_extensions:
            continue
        #print("Attempting to load MARC records from %s" % marc_file_name)
        logging.info("Attempting to load MARC records from %s", marc_file_name)
        with open(marc_file_name, 'rb') as marc_file_handle:
            try:
                reader = pymarc.MARCReader(marc_file_handle)
            except Exception as e:
                #eprint("Unable to open file %s as MARC, skipping" % marc_file_name)
                logging.warning("Unable to open file %s as MARC, skipping", marc_file_name)
                continue
            if marc_file_name not in progress_dict:
                progress_dict[marc_file_name] = []
            count = 0
            output_count = 0
            #current_file_count = 1
            membuf = BytesIO()
            membuf.write((xml_declaration + "\n").encode("utf-8"))
            membuf.write((oai_open + "\n").encode("utf-8"))
            pair_list = []
            current_bib_record = None
            last_bib_record = None
            current_holdings_records = []
            for record in reader:
                count = count + 1
                field_001_value = get_string_value(record.get_fields('001'))
                field_004_value = get_string_value(record.get_fields('004'))
                if not field_004_value:
                    if current_bib_record:
                        bib_id = get_string_value(current_bib_record.get_fields('001')).strip()
                        if bib_id not in progress_dict[marc_file_name]:
                            try:
                                output_count = output_count + 1
                                merge_and_output_marc(current_bib_record, current_holdings_records,\
                                        membuf)
                                progress_dict[marc_file_name].append(bib_id)
                                if count % JSON_PROGRESS_CHUNK_SIZE == 0:
                                    dump_json(progress_file_path, progress_dict)
                                if output_count % XML_CHUNK_SIZE == 0:
                                    dump_xml(output_directory, current_file_count, membuf)
                                    current_file_count = current_file_count + 1
                                    membuf = BytesIO()
                                    membuf.write((xml_declaration + "\n").encode("utf-8"))
                                    membuf.write((oai_open + "\n").encode("utf-8"))
                            except Exception as e:
                                logging.error("Error merging holdings record(s) with bib record %s: %s", bib_id, e)
                    last_bib_record = current_bib_record
                    current_bib_record = record
                    current_holdings_records = []
                    continue
                if current_bib_record is not None and field_004_value == get_string_value(current_bib_record.get_fields('001')):
                    current_holdings_records.append(record)
                    continue
            if len(current_holdings_records) and current_bib_record != None:
                logging.debug("Processing final iteration")
                merge_and_output_marc(current_bib_record, current_holdings_records,\
                        membuf)
                progress_dict[marc_file_name].append(bib_id)
                output_count = output_count + 1
            if output_count % XML_CHUNK_SIZE != 0:
                dump_xml(output_directory, current_file_count, membuf)
                current_file_count = current_file_count + 1

            dump_json(progress_file_path, progress_dict)


def merge_and_output_marc(bib_record, holdings_records, outbuffer):
    merged_marc = merge_multi_holdings_marc(bib_record, holdings_records)
    outbuffer.write(pymarc.marcxml.record_to_xml(merged_marc, namespace=True))
    outbuffer.write("\n".encode("utf-8"))


def get_string_value(field_list):
    if not len(field_list):
        return ""
    return field_list[0].value()

def dump_json(output_file_name, json_dict):
    output_file_name_bak = output_file_name + "_bak"
    if os.path.exists(output_file_name):
        os.rename(output_file_name, output_file_name_bak)
    with open(output_file_name, 'w') as out_file:
        json.dump(json_dict, out_file)

def dump_xml(output_directory, file_count, membuf):
    output_xml_path = os.path.join(output_directory, f'{file_count:04}' + ".xml")
    membuf.write(oai_close.encode('utf-8'))
    with open(output_xml_path, 'wb') as xml_out_handle:
        xml_out_handle.write(membuf.getvalue())


def merge_marc_record(bib_record, holdings_record):
    repeatable_fields = [ "014", "020", "035", "015", "538", "600", "650", "655", "700",\
            "852", "856", "866", "867", "868", "876", "583", "561", "562", "863" ]
    id_subfields = {
        "538" : "8",
        "852" : "8",
        "856" : "8",
        "866" : "9",
        "867" : "9",
        "868" : "9",
        "876" : "9"
    }
    
    exclude_from_holdings = [ "001", "003", "004", "007", "008", "014", "020" ]
    composite_record = pymarc.Record()
    composite_record.leader = bib_record.leader
    bib_fields = bib_record.get_fields()
    bib_tags = [ field.tag for field in bib_fields ]
    for field in bib_fields:
        composite_record.add_ordered_field(field)
    holdings_fields = [ field for field in holdings_record.get_fields() if field.tag not in exclude_from_holdings ]
    for field in holdings_fields:
        field_exists = False
        if field.tag in bib_tags and field.tag not in repeatable_fields:
            field_exists = True
            if field.is_control_field():
                raise Exception("Tag %s is defined in the bib fields" % field.tag)
            else:
                existing_field = composite_record.get_fields(field.tag)[0]     
                for subfield in field:
                    existing_subfields = existing_field.get_subfields(subfield[0])
                    if existing_subfields and existing_subfields[0] == subfield[1]:
                        #just ignore it, it's the same
                        pass
                    else:
                        #it's different and not repeatable, error
                        #print("Warning: Subfield %s collision on tag %s, not copying" %\
                        #        (subfield[0], field.tag))  
                        logging.warning("Subfield %s collision on tag %s, not copying", subfield[0], field.tag)
        if not field_exists:
            if field.tag in id_subfields:
                id_subfield = id_subfields[field.tag]
                holdings_id = get_string_value(holdings_record.get_fields('001'))
                field.add_subfield(id_subfield, holdings_id)
            composite_record.add_ordered_field(field)
    return composite_record


def merge_multi_holdings_marc(bib_record, holdings_record_list):
    bib_001_value = get_string_value(bib_record.get_fields('001'))
    #print("Merging bib %s with %s holdings records" %\
    #        ( bib_001_value, len(holdings_record_list)))
    logging.info("Merging bib %s with %s holdings record(s)", bib_001_value, len(holdings_record_list))
    composite_record = bib_record
    for holdings_record in holdings_record_list:
        bib_004_value = get_string_value(holdings_record.get_fields('004'))
        if bib_004_value != bib_001_value:
            raise Exception("Mismatch between 001 and 004 values: %s, %s" %\
                    ( bib_001_value, bib_004_value))
        composite_record = merge_marc_record(composite_record, holdings_record)
    return composite_record


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Process input marc files, combing associated bibliographic and holdings files into a single marcxml")
    parser.add_argument('--input-dir', dest='input_dir', action='store',\
            required=True, help='Directory in which the input files are located')
    parser.add_argument('--output-dir', dest='output_dir', action='store',\
            required=True, help='Directory in which to save the output marcxml')
    parser.add_argument('--progress-file', dest='progress_file', action='store',\
            default='./progress.json', help='Location of progress status file')

    args = parser.parse_args()
    input_dir = os.path.abspath(args.input_dir)
    output_dir = os.path.abspath(args.output_dir)
    progress_file = os.path.abspath(args.progress_file)
    #print("Reading marcs from %s and saving in %s, using progress file at %s" %\
    #        (input_dir, output_dir, progress_file) )
    logging.info("Reading MARCs from %s and saving in %s, using progress file at %s",\
            input_dir, output_dir, progress_file)
    process_directory(input_dir, output_dir, progress_file)


