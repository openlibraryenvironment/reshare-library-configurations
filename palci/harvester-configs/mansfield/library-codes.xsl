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
    <identifierTypeId>98e0dc1c-0b06-5f7c-9d46-b83ab807641b</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='1FN'">c80c179f-0c73-51f8-88c4-7ecf4f6847ab</xsl:when>
        <xsl:when test=".='1FS'">349b5516-a6ca-587c-89bf-c4b8f82d2b54</xsl:when>
        <xsl:when test=".='CSTK'">b049997e-48db-50ac-aeb2-222b4000723c</xsl:when>
        <xsl:when test=".='4FN'">8b936492-405e-5035-8dc6-a1701f561dd4</xsl:when>
        <xsl:when test=".='4FS'">39135a56-d7e3-52b6-b0ab-acc35ec6e149</xsl:when>
        <xsl:when test=".='2FN'">836a210a-c0be-5eab-8ccd-c76bf741d496</xsl:when>
        <xsl:when test=".='3FN'">a9d9f76f-4a79-55cb-99fa-3e362db9bccc</xsl:when>
        <xsl:when test=".='3FS'">9422500b-18a5-555b-be18-f3dc5605d867</xsl:when>
        <xsl:when test=".='ATR3'">bc4745c5-0fef-5791-a596-1f99eabdeb22</xsl:when>
        <xsl:when test=".='ATR2'">8308998a-9f48-54cc-8cf7-25f7367007a1</xsl:when>
        <xsl:when test=".='ATR1'">0dcb7685-6bd0-5d97-ba8f-604dfbb45177</xsl:when>
        <xsl:otherwise>d6bb1f50-257a-50c3-8414-863a9c58b127</xsl:otherwise>
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>d0d030ed-b523-5dee-8bd3-4a0c5b6f1470</institutionId>
  </xsl:template>

</xsl:stylesheet>
