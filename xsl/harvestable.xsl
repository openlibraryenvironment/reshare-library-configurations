<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- This stylsheet transforms the output from the harvester endpoint /harvester/records/harvestables
     to an object that can be POSTed to the same endpoint on a different server -->

  <xsl:output indent="yes" method="xml" version="1.0" encoding="UTF-8"/>
  <xsl:strip-space elements="*"/>
  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="//transformation">
    <transformation xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="basicTransformation">
      <id><xsl:value-of select="id"/></id>
    </transformation>
  </xsl:template>

  <xsl:template match="//storage">
    <storage xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="inventoryStorageEntity">
      <!-- <id><xsl:value-of select="id"/></id> -->
      <id>301199</id>
    </storage>
  </xsl:template>

  <xsl:template match="//message"/>
  <xsl:template match="//lastHarvestFinished"/>
  <xsl:template match="//initiallyHarvested"/>
  <xsl:template match="//lastHarvestStarted"/>
  <xsl:template match="//lastUpdated"/>
</xsl:stylesheet>
