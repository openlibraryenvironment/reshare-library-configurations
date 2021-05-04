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
    <identifierTypeId>c6516dcd-de01-5958-9a05-3f6c788d9f36</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='BIN'">aeac1a03-ba90-5fa2-b7fa-68e1c8487238</xsl:when>
        <xsl:when test=".='MARKETPL'">b83abcf9-dfba-5a7f-b2c5-44ef052e73a4</xsl:when>
        <xsl:otherwise>dfcd781d-148e-5c2f-8fa1-1f21dbb5b24d</xsl:otherwise> <!-- UNMAPPED -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>655ffecf-4c8f-5648-afc5-7ec143a9b878</institutionId>
  </xsl:template>

</xsl:stylesheet>
