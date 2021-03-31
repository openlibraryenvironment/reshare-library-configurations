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
    <identifierTypeId>ebafec6a-5f80-5b8d-9334-785ebd1a9c0b</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='sdsb1'">c03d2588-01b9-52c9-8749-9e9b798b70d1</xsl:when>
        <xsl:when test=".='sdsb2'">804368fd-e1b2-59f3-8d99-a0041598cfba</xsl:when>
        <xsl:when test=".='sdsb3'">e9154672-86b8-519f-89cb-43952b0699ec</xsl:when>
        <xsl:when test=".='sclsb'">1e79edda-b3f6-50fc-b9d8-7a4820ba4f30</xsl:when>
        <xsl:when test=".='sdccl'">580a72e0-d2dc-5781-b6b0-aa35731e58f6</xsl:when>
        <xsl:otherwise>e4144b1a-d652-5a1f-a47d-ea2f00ac4515</xsl:otherwise>
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>76922e6d-3b68-567a-bbc5-15a1c523ef25</institutionId>
  </xsl:template>

</xsl:stylesheet>
