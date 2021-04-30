<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- This stylsheet transforms the output from the harvester endpoint /harvester/records/transformations
     to an object that can be POSTed to the same endpoint on a different server -->

  <xsl:output indent="yes" method="xml" version="1.0" encoding="UTF-8"/>

  <xsl:template match="/">
    <transformation>
        <xsl:apply-templates/>
    </transformation>
  </xsl:template>

  <xsl:template match='transformation'>
    <basicTransformation>
      <xsl:copy-of select="*/*[not(self::stepAssociations)]"/>
    </basicTransformation>
  </xsl:template>

 <xsl:template match="text()"/>
</xsl:stylesheet>
