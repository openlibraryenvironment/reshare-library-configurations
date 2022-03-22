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
    <identifierTypeId>205b23c4-87ec-581f-b3ce-c1a861da745e</identifierTypeId>
  </xsl:template>

  <!-- <xsl:template match="//localIdentifier">
    <localIdentifier><xsl:value-of select="concat('u', .)"/></localIdentifier>
  </xsl:template> -->

  <!-- We need a "u" to be placed in front of the local identifier -->
  <xsl:template match="//identifiers/arr/i[1]/value">
    <value><xsl:value-of select="concat('u', .)"/></value>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='JUV'">364ca4c8-b78d-5437-8da2-96209d424122</xsl:when>
        <xsl:when test=".='OVERSIZE'">5b0c5bb2-2084-54ff-bb2c-c031c540e774</xsl:when>
        <xsl:when test=".='SHELVES'">96865396-2983-526d-8d88-f418f424f23e</xsl:when>
        <xsl:when test=".='YCP_AUTH'">b678f334-2648-5f97-97b3-47826a4a80c8</xsl:when>
        <xsl:when test=".='MFILM'">34469338-1366-58cb-a28d-524f310f986f</xsl:when>
        <xsl:when test=".='MFICHE'">e03aecb7-5e58-55e7-8808-5304eb9decb0</xsl:when>
        <xsl:when test=".='SPECIAL'">b5c47941-ad0a-5b17-8c21-948518a55b63</xsl:when>
        <xsl:when test=".='ARCHIVES'">c0c71242-7624-55d6-996a-2dc60ae30adc</xsl:when>
        <xsl:when test=".='LINCOLN'">e217c2f0-a2de-5dd6-8073-209415897ac5</xsl:when>
        <xsl:when test=".='SPECFOLIO'">5e522b5f-5fa0-5c65-accb-212faea17575</xsl:when>
        <xsl:when test=".='SPECOVRFOL'">c1df053a-7abe-5eba-9568-68d2de2fd13c</xsl:when>
        <xsl:when test=".='SPECOVRSZ'">5b912617-917c-54d4-b5ab-4300e91357fb</xsl:when>
        <xsl:when test=".='LINCOVRSZ'">1c099f12-0292-5a22-9aec-b7ed5c4fdb66</xsl:when>
        <xsl:otherwise>be6a4005-b981-5198-a5eb-9b69922d8fcb</xsl:otherwise> <!-- Unmapped (US-PYC) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>749ee6d6-fa1d-531a-b111-b59b4034a4a8</institutionId>
  </xsl:template>

</xsl:stylesheet>
