<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- This stylsheet transforms the output from the harvester endpoint /harvester/records/transformations
     to an object that can be PUT to the same endpoint on a different server -->

  <xsl:output indent="yes" method="xml" version="1.0" encoding="UTF-8"/>

  <xsl:template match="/">
    <transformation>
        <xsl:apply-templates/>
    </transformation>
  </xsl:template>

  <xsl:template match='transformation'>
    <id><xsl:value-of select='id'/></id>
    <basicTransformation>
      <xsl:copy-of select="*/*[not(self::stepAssociations)]"/>
      <xsl:apply-templates/>
    </basicTransformation>
  </xsl:template>

  <xsl:template match='stepAssociations'>
    <stepAssociations>
      <id><xsl:value-of select='id'/></id>
      <position><xsl:value-of select='position'/></position>
      <transformation><xsl:value-of select='transformation'/></transformation>
      <step>
        <id xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="xmlTransformationStep">
          <xsl:value-of select='step/id'/>
        </id>
      </step>
    </stepAssociations>
  </xsl:template>

  <xsl:template match="text()"/>
</xsl:stylesheet>
