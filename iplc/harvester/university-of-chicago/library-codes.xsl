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
    <identifierTypeId>5cdb79a2-52b9-5159-9124-3eb2081c185c</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='ASR '">782b8091-573e-5a18-8c2f-3d123640b90a</xsl:when>
        <xsl:when test=".='DLL '">1f56aea3-a976-5e80-b106-627ca223bd28</xsl:when>
        <xsl:when test=".='Eck '">a6b7a5ce-ec72-5693-9335-d39b608e38c5</xsl:when>
        <xsl:when test=".='JCL '">ae206721-8b7f-55e8-af3c-b585b3fede04</xsl:when>
        <xsl:when test=".='JRL '">f83eae5d-de77-5b6b-a6e2-6e6f8c8a91c5</xsl:when>
        <xsl:when test=".='MCS '">a7c67a60-cc26-58b3-86c4-7313ee42cb32</xsl:when>
        <xsl:when test=".='SPCL '">b24614db-f362-5d01-83f4-cdfa4d536a35</xsl:when>
        <xsl:when test=".='SSAd '">aa61619d-8b1e-5e52-ab0f-bb059d4ad7cd</xsl:when>
        <xsl:when test=".='UCX '">0113442b-7e5f-5fea-95b7-6d9856aac777</xsl:when>
        <xsl:otherwise>68a63d6a-0531-5d7e-9804-d349e5827cbf</xsl:otherwise> <!-- Unmapped (US-ICU) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>3a401ac2-4dcd-53cc-9d3a-2afcc6e1921d</institutionId>
  </xsl:template>

</xsl:stylesheet>
