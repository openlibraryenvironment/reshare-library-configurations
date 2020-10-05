#!/usr/bin/python

import sys, getopt

def main(argv):
    library = ''
    baseid = ''
    jobtype = ''
    url = ''
    oaisetname = ''
    try:
        opts, args = getopt.getopt(argv,"hl:i:t:u:s:",["library=","baseid=","jobtype=","url=","setname="])
    except getopt.GetoptError:
        print 'generateHarvesterConfig.py -l <name of library> -i <base id number for harvestable> -t <type of job (oaiPmh, xmlBulk)> -u <url of catalog> [-s <set name>]'
        sys.exit(2)

    for opt, arg in opts:
        if opt == '-h':
            print 'generateHarvesterConfig.py -l <name of library> -i <base id number for harvestable> -t <type of job (oaiPmh, xmlBulk)> -u <url of catalog> [-s <set name>]'
            sys.exit()
        elif len(opts) < 4:
            print 'generateHarvesterConfig.py -l <name of library> -i <base id number for harvestable> -t <type of job (oaiPmh, xmlBulk)> -u <url of catalog> [-s <set name>]'
            sys.exit(2)
        elif opt in ("-l", "--library"):
            library = arg
        elif opt in ("-i", "--baseid"):
            baseid = arg
        elif opt in ("-t", "--jobtype"):
            jobtype = arg
        elif opt in ("-u", "--url"):
            url = arg
        elif opt in ("-s", "--setname"):
            oaisetname = arg

    print "Creating Harvester configs for '{}', job type '{}'".format(library,jobtype)
    print "Using  '#{}...' for config IDs".format(baseid)
    print 'Setting URL to: ', url
    print "OAI set name is: '{}'".format(oaisetname)

    filename = 'HARVESTABLE-to-localhost-{}501.xml'.format(baseid)
    f = open(filename,"w")
    f.write('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n')
    f.write('<harvestable>\n')
    f.write('  <{}>\n'.format(jobtype))
    f.write('    <id>{}501</id>\n'.format(baseid))
    f.write('    <name>PALCI SI: {} to PALCI SI</name>\n'.format(library))
    f.write('    <url>{}</url>\n'.format(url))
    if jobType == 'oaiPhm':
        f.write('    <oaiSetName>{}</oaiSetName>\n'.format(oaisetname))
        f.write('    <metadataPrefix>marc21</metadataPrefix>\n')
    f.write('    <storeOriginal>true</storeOriginal>\n')
    f.write('    <enabled>false</enabled>\n')
    f.write('    <storage xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="inventoryStorageEntity">\n')
    f.write('      <id>901102</id> <!-- localhost, upsert by match key -->\n')
    f.write('    </storage>\n')
    f.write('    <transformation xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="basicTransformation">\n')
    f.write('      <id>{}201</id>\n'.format(baseid))
    f.write('    </transformation>\n')
    f.write('    <harvestImmediately>false</harvestImmediately>\n')
    f.write('    <logLevel>INFO</logLevel>\n')
    f.write('    <mailLevel>WARN</mailLevel>\n')
    f.write('    <overwrite>false</overwrite>\n')
    f.write('    <scheduleString>10 10 10 6 *</scheduleString>\n')
    f.write("    <dateFormat>yyyy-MM-dd'T'hh:mm:ss'Z'</dateFormat>\n")
    f.write('    <lastUpdated>2020-01-01T08:10:00Z</lastUpdated>\n')
    f.write('  </{}>\n'.format(jobtype))
    f.write('</harvestable>\n')
    f.close()

    filename = 'HARVESTABLE-to-palci-si-{}502.xml'.format(baseid)
    f = open(filename, "w")
    f.write('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n')
    f.write('<harvestable>\n')
    f.write('  <{}>\n'.format(jobtype))
    f.write('    <id>{}502</id>\n'.format(baseid))
    f.write('    <name>PALCI SI: {} to localhost</name>\n'.format(library))
    f.write('    <url>{}</url>\n'.format(url))
    if jobtype == 'oaiPhm':
        f.write('    <oaiSetName>{}</oaiSetName>\n'.format(oaisetname))
        f.write('    <metadataPrefix>marc21</metadataPrefix>\n')
    f.write('    <storeOriginal>true</storeOriginal>\n')
    f.write('    <enabled>false</enabled>\n')
    f.write('    <storage xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="inventoryStorageEntity">\n')
    f.write('      <id>301104</id>  <!-- Storage PALCI SI via local okapi -->\n')
    f.write('    </storage>\n')
    f.write('    <transformation xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="basicTransformation">\n')
    f.write('      <id>{}201</id>\n'.format(baseid))
    f.write('    </transformation>\n')
    f.write('    <harvestImmediately>false</harvestImmediately>\n')
    f.write('    <logLevel>INFO</logLevel>\n')
    f.write('    <mailLevel>WARN</mailLevel>\n')
    f.write('    <overwrite>false</overwrite>\n')
    f.write('    <scheduleString>10 10 10 6 *</scheduleString>\n')
    f.write("    <dateFormat>yyyy-MM-dd'T'hh:mm:ss'Z'</dateFormat>\n")
    f.write('    <lastUpdated>2020-01-01T08:10:00Z</lastUpdated>\n')
    f.write('  </{}>\n'.format(jobtype))
    f.write('</harvestable>\n')
    f.close()

    filename = 'TRANSFORMATION-POST-{}201.xml'.format(baseid)
    f = open(filename,"w")
    f.write('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n')
    f.write('<transformation >\n')
    f.write('    <basicTransformation>\n')
    f.write('        <id>{}201</id>\n'.format(baseid))
    f.write('        <description></description>\n')
    f.write('        <enabled>true</enabled>\n')
    f.write('        <name>{} - OAI-PMH to FOLIO Inventory</name>\n'.format(library))
    f.write('        <parallel>false</parallel>\n')
    f.write('    </basicTransformation>\n')
    f.write('</transformation>\n')
    f.close()

    filename = 'TRANSFORMATION-PUT-{}201.xml'.format(baseid)
    f = open(filename,"w")
    f.write('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n')
    f.write('<transformation >\n')
    f.write('    <id>{}201</id>\n'.format(baseid))
    f.write('    <basicTransformation>\n')
    f.write('        <id>{}201</id>\n'.format(baseid))
    f.write('        <description></description>\n')
    f.write('        <enabled>true</enabled>\n')
    f.write('        <name>{} - OAI-PMH to FOLIO Inventory</name>\n'.format(library))
    f.write('        <parallel>false</parallel>\n')
    f.write('        <stepAssociations>\n')
    f.write('            <id>{}401</id>\n'.format(baseid))
    f.write('            <position>1</position>\n')
    f.write('            <transformation>{}201</transformation>\n'.format(baseid))
    f.write('            <step xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xmlTransformationStep">\n')
    f.write('                <id>301301</id> <!-- OAI20-MARC21 to Instance XML -->\n')
    f.write('            </step>\n')
    f.write('        </stepAssociations>\n')
    f.write('        <stepAssociations>\n')
    f.write('            <id>{}402</id>\n'.format(baseid))
    f.write('            <position>2</position>\n')
    f.write('            <transformation>{}201</transformation>\n'.format(baseid))
    f.write('            <step xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xmlTransformationStep">\n')
    f.write('                <id>{}301</id>  <!-- {} holdings and items -->\n'.format(baseid,library))
    f.write('            </step>\n')
    f.write('        </stepAssociations>\n')
    f.write('        <stepAssociations>\n')
    f.write('            <id>{}403</id>\n'.format(baseid))
    f.write('            <position>3</position>\n')
    f.write('            <transformation>{}201</transformation>\n'.format(baseid))
    f.write('            <step xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xmlTransformationStep">\n')
    f.write('                <id>{}302</id> <!-- Granular library codes, {} -->\n'.format(baseid,library))
    f.write('            </step>\n')
    f.write('        </stepAssociations>\n')
    f.write('        <stepAssociations>\n')
    f.write('            <id>{}404</id>\n'.format(baseid))
    f.write('            <position>4</position>\n')
    f.write('            <transformation>{}201</transformation>\n'.format(baseid))
    f.write('            <step xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="customTransformationStep">\n')
    f.write('                <id>301302</id> <!-- XML to JSON -->\n')
    f.write('            </step>\n')
    f.write('        </stepAssociations>\n')
    f.write('    </basicTransformation>\n')
    f.write('</transformation>\n')
    f.close()

    filename = 'STEP-holdings-items-{}301.xml'.format(baseid)
    f = open(filename,"w")
    f.write('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n')
    f.write('<transformationStep>\n')
    f.write('  <id>{}301</id>\n'.format(baseid))
    f.write('  <XmlTransformStep>\n')
    f.write('    <id>{}301</id>\n'.format(baseid))
    f.write('    <description>Holdings and Items, {}</description>\n'.format(library))
    f.write('    <enabled>true</enabled>\n')
    f.write('    <inputFormat>XML</inputFormat>\n')
    f.write('    <name>Holdings and Items, {}</name>\n'.format(library))
    f.write('    <outputFormat>XML</outputFormat>\n')
    f.write('    <script></script>\n')
    f.write('    <testData></testData>\n')
    f.write('    <testOutput></testOutput>\n')
    f.write('  </XmlTransformStep>\n')
    f.write('</transformationStep>\n')
    f.close()

    filename = 'STEP-library-codes-{}302.xml'.format(baseid)
    f = open(filename,"w")
    f.write('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n')
    f.write('<transformationStep>\n')
    f.write('  <id>{}302</id>\n'.format(baseid))
    f.write('  <XmlTransformStep>\n')
    f.write('    <id>{}302</id>\n'.format(baseid))
    f.write('    <description>Maps locations, record identifier type for {}</description>\n'.format(library))
    f.write('    <inputFormat>XML</inputFormat>\n')
    f.write('    <name>Library codes, {}</name>\n'.format(library))
    f.write('    <outputFormat>XML</outputFormat>\n')
    f.write('    <script></script>\n')
    f.write('    <testData></testData>\n')
    f.write('    <testOutput></testOutput>\n')
    f.write('  </XmlTransformStep>\n')
    f.write('</transformationStep>\n')
    f.close()

if __name__ == "__main__":
   main(sys.argv[1:])