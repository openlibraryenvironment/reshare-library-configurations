<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output indent="yes" method="xml" version="1.0" encoding="UTF-8"/>
  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <!-- Map legacy code for the library/institution to a FOLIO resource identifier
       type UUID. Used for qualifying a local record identifier with the library
       it originated from in context of a shared index setup where the Instance
       represents bib records from multiple libraries.
  -->
  <xsl:template match="//identifierTypeIdHere">
    <identifierTypeId>2f0a99d7-31cf-5578-aa50-65e6c931ba41</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='E_ASIAN_RM'">a41e444b-1c16-535b-84d1-01d4eeef3305</xsl:when>
        <xsl:when test=".='MUS_SCORES'">8714426b-b52f-5433-87ff-98e573d2c777</xsl:when>
        <xsl:when test=".='OVERSIZE'">1fedd5cc-ac5d-59e7-8477-b17d26eee61c</xsl:when>
        <xsl:when test=".='STACKS'">fd68a9b9-97f2-5f88-89f1-bcb588e46def</xsl:when>
        <xsl:when test=".='STORAGE'">6849da89-8314-56f2-b510-da2d96279fd1</xsl:when>
        <xsl:when test=".='CIRC_DESK'">415505ed-4f89-5c9a-b86f-020c9937765b</xsl:when>
        <xsl:otherwise>e1f479d8-7916-576c-bb33-c524fd86ac0e</xsl:otherwise> <!-- UNMAPPED -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>b344adae-e0e1-5db8-b09c-bb99df575c4a</institutionId>
  </xsl:template>

</xsl:stylesheet>
