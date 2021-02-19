#!/usr/bin/python

import sys, getopt, os

def main(argv):
    library = ''
    baseid = ''
    jobtype = ''
    url = ''
    oaisetname = ''
    help = 'generateHarvesterConfig.py -l <name of library> -i <base id number for harvestable> -t <type of job (oaiPmh, xmlBulk)> -u <url of catalog> [-s <set name>]'

    try:
        opts, arg = getopt.getopt(argv,"l:i:t:u:s:",["library=","baseid=","jobtype=","url=","setname="])
    except getopt.GetoptError:
        print(help)
        sys.exit(2)

    if (len(opts)<4):
        print(help)
        sys.exit(2)

    for opt, arg in opts:
        if opt in ("-l", "--library"):
            library = arg
        elif opt in ("-i", "--baseid"):
            baseid = arg
        elif opt in ("-t", "--jobtype"):
            jobtype = arg
        elif opt in ("-u", "--url"):
            url = arg
        elif opt in ("-s", "--setname"):
            oaisetname = arg

    print("Creating Harvester configs for '{}', job type '{}'".format(library,jobtype))
    print("Using  '#{}...' for config IDs".format(baseid))
    print('Setting URL to: ', url)
    if jobtype == 'oaiPmh':
        print("OAI set name is: '{}'".format(oaisetname))

    if not os.path.exists('palci-si.reshare'):
        os.makedirs('palci-si.reshare')

    filename = 'HARVESTABLE-to-palci-si-reshare{}500.xml'.format(baseid)
    f = open('palci-si.reshare/'+filename,"w")
    f.write('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n')
    f.write('<harvestable>\n')
    f.write('  <{}>\n'.format(jobtype))
    f.write('    <id>{}500</id>\n'.format(baseid))
    f.write('    <name>PALCI SI: {}</name>\n'.format(library))
    f.write('    <url>{}</url>\n'.format(url))
    if jobtype == 'oaiPmh':
        f.write('    <oaiSetName>{}</oaiSetName>\n'.format(oaisetname))
        f.write('    <metadataPrefix>marc21</metadataPrefix>\n')
    f.write('    <storeOriginal>true</storeOriginal>\n')
    f.write('    <enabled>false</enabled>\n')
    f.write('    <storage xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="inventoryStorageEntity">\n')
    f.write('      <id>301199</id> <!-- PALCI ReShare, production shared index -->\n')
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


    filename = 'HARVESTABLE-to-palci-si-dev{}501.xml'.format(baseid)
    f = open(filename,"w")
    f.write('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n')
    f.write('<harvestable>\n')
    f.write('  <{}>\n'.format(jobtype))
    f.write('    <id>{}501</id>\n'.format(baseid))
    f.write('    <name>PALCI SI: {} to PALCI SI DEV</name>\n'.format(library))
    f.write('    <url>{}</url>\n'.format(url))
    if jobtype == 'oaiPmh':
        f.write('    <oaiSetName>{}</oaiSetName>\n'.format(oaisetname))
        f.write('    <metadataPrefix>marc21</metadataPrefix>\n')
    f.write('    <storeOriginal>true</storeOriginal>\n')
    f.write('    <enabled>false</enabled>\n')
    f.write('    <storage xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="inventoryStorageEntity">\n')
    f.write('      <id>301105</id> <!-- palci_si remote -->\n')
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

    filename = 'HARVESTABLE-to-localhost-{}502.xml'.format(baseid)
    f = open(filename, "w")
    f.write('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n')
    f.write('<harvestable>\n')
    f.write('  <{}>\n'.format(jobtype))
    f.write('    <id>{}502</id>\n'.format(baseid))
    f.write('    <name>PALCI SI: {} to localhost</name>\n'.format(library))
    f.write('    <url>{}</url>\n'.format(url))
    if jobtype == 'oaiPmh':
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

    filename = 'HARVESTABLE-to-si-dev-palci-{}503.xml'.format(baseid)
    f = open(filename, "w")
    f.write('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n')
    f.write('<harvestable>\n')
    f.write('  <{}>\n'.format(jobtype))
    f.write('    <id>{}503</id>\n'.format(baseid))
    f.write('    <name>PALCI SI: {} to SI dev - PALCI</name>\n'.format(library))
    f.write('    <url>{}</url>\n'.format(url))
    if jobtype == 'oaiPmh':
        f.write('    <oaiSetName>{}</oaiSetName>\n'.format(oaisetname))
        f.write('    <metadataPrefix>marc21</metadataPrefix>\n')
    f.write('    <storeOriginal>true</storeOriginal>\n')
    f.write('    <enabled>false</enabled>\n')
    f.write('    <storage xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="inventoryStorageEntity">\n')
    f.write('      <id>301102</id>  <!-- SI dev - PALCI -->\n')
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
    f.write('    <script>&lt;xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"&gt;&#xD;\n')
    f.write('&#xD;\n')
    f.write('  &lt;xsl:template match="@* | node()"&gt;&#xD;\n')
    f.write('    &lt;xsl:copy&gt;&#xD;\n')
    f.write('      &lt;xsl:apply-templates select="@* | node()"/&gt;&#xD;\n')
    f.write('    &lt;/xsl:copy&gt;&#xD;\n')
    f.write('  &lt;/xsl:template&gt;&#xD;\n')
    f.write('&#xD;\n')
    f.write('&lt;/xsl:stylesheet&gt;&#xD;</script>\n')
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
    f.write('    <script>&lt;?xml version="1.0" encoding="UTF-8" ?&gt;&#xD;\n')
    f.write('&lt;xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"&gt;&#xD;\n')
    f.write('&lt;xsl:output indent="yes" method="xml" version="1.0" encoding="UTF-8"/&gt;&#xD;\n')
    f.write('  &lt;xsl:template match="@* | node()"&gt;&#xD;\n')
    f.write('    &lt;xsl:copy&gt;&#xD;\n')
    f.write('      &lt;xsl:apply-templates select="@* | node()"/&gt;&#xD;\n')
    f.write('    &lt;/xsl:copy&gt;&#xD;\n')
    f.write('  &lt;/xsl:template&gt;&#xD;\n')
    f.write('&#xD;\n')
    f.write('  &lt;!-- Map legacy code for the library/institution to a FOLIO resource identifier&#xD;\n')
    f.write('       type UUID. Used for qualifying a local record identifier with the library&#xD;\n')
    f.write('       it originated from in context of a shared index setup where the Instance&#xD;\n')
    f.write('       represents bib records from multiple libraries.&#xD;\n')
    f.write('  --&gt;&#xD;\n')
    f.write('  &lt;xsl:template match="//identifierTypeIdHere"&gt;&#xD;\n')
    f.write('    &lt;identifierTypeId&gt; uuid &lt;/identifierTypeId&gt;&#xD;\n')
    f.write('  &lt;/xsl:template&gt;&#xD;\n')
    f.write('&#xD;\n')
    f.write('  &lt;!-- Map legacy location code to a FOLIO location UUID --&gt;&#xD;\n')
    f.write('  &lt;xsl:template match="//permanentLocationIdHere"&gt;&#xD;\n')
    f.write('    &lt;permanentLocationId&gt; uuid &lt;/permanentLocationId&gt;&#xD;\n')
    f.write('  &lt;/xsl:template&gt;&#xD;\n')
    f.write('&#xD;\n')
    f.write('  &lt;!-- Set FOLIO Inventory ID for the institution --&gt;&#xD;\n')
    f.write('  &lt;xsl:template match="//institutionIdHere"&gt;&#xD;\n')
    f.write('     &lt;institutionId&gt; uuid &lt;/institutionId&gt;&#xD;\n')
    f.write('  &lt;/xsl:template&gt;&#xD;\n')
    f.write('&#xD;\n')
    f.write('&lt;/xsl:stylesheet&gt;&#xD;\n')
    f.write('</script>\n')
    f.write('    <testData></testData>\n')
    f.write('    <testOutput></testOutput>\n')
    f.write('  </XmlTransformStep>\n')
    f.write('</transformationStep>\n')
    f.close()

if __name__ == "__main__":
   main(sys.argv[1:])