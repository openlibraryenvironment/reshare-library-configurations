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
    <identifierTypeId>02d59bcf-ea4a-59fb-b1b9-1d571fab6cc6</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='IRC'">eab69381-7074-58d9-8877-95c7c545daf8</xsl:when>
        <xsl:when test=".='Music'">e5e806c9-379e-5761-9bd3-3dc697517e3c</xsl:when>
        <xsl:when test=".='Oversize'">9036ec77-2b47-5cd2-9d21-aa88e355c9f2</xsl:when>
        <xsl:when test=".='Plays'">52fbdbcd-8360-54c1-846b-e6959e058750</xsl:when>
        <xsl:when test=".='Reference'">c0cd0dad-5cd8-5e2a-aaf1-caba984330c3</xsl:when>
        <xsl:when test=".='Stacks'">5b8d7151-66bd-5221-9d20-6865918aad92</xsl:when>
        <xsl:when test=".='Video'">8865d8ed-e883-5301-af0d-80e323745db2</xsl:when>
        <xsl:otherwise>9a66fe40-1207-54e6-8019-7c428207ade8</xsl:otherwise> <!-- Unmapped (US-PWW) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>bb3a70b2-641f-5f8b-b2cb-6f89fc9d5695</institutionId>
  </xsl:template>

</xsl:stylesheet>
