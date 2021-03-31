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
    <identifierTypeId>fd8e13a1-7c4d-516d-b4d6-b3f1a22616e0</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='bests'">44ada252-1795-5068-a98a-f4dd0c7d4d98</xsl:when>
        <xsl:when test=".='vkcc'">461aea50-0b44-53dd-9db2-2f4b479e9752</xsl:when>
        <xsl:when test=".='currc'">c7f7fb1a-3331-5bf2-bd11-1c4a7c916a58</xsl:when>
        <xsl:when test=".='graph'">a726dbde-921c-5f3b-a57e-f0e9e19d8ed5</xsl:when>
        <xsl:when test=".='paper'">64d69e92-b8ca-51aa-8cd2-4bb80073edf6</xsl:when>
        <xsl:when test=".='new'">8319f2ec-547b-5bfe-aaa8-57f0b04d0468</xsl:when>
        <xsl:when test=".='video'">01e054dd-4fe7-5da7-8b01-10bbf5a8d835</xsl:when>
        <xsl:when test=".='cd'">0aab3db5-5538-5a5a-909b-40c9da5a9c96</xsl:when>
        <xsl:when test=".='resrv'">acaa63f1-585a-5ae0-83eb-01f60964a533</xsl:when>
        <xsl:when test=".='ref'">759306d6-dd68-5020-8829-7be1633cc9bd</xsl:when>
        <xsl:when test=".='acq'">70fbfa5f-267b-5622-920b-f9db8a70136f</xsl:when>
        <xsl:when test=".='arch'">a7b17e36-0de0-5f02-8f49-01d2aa156345</xsl:when>
        <xsl:when test=".='atlas'">9affda6e-580b-5ae7-ae7c-6e97673d2c7d</xsl:when>
        <xsl:when test=".='vkcs'">98ec50f5-a373-5ab4-859f-fa1194c7f6ff</xsl:when>
        <xsl:when test=".='vkct'">4628b7ac-5f16-5f2d-9176-6fa757b442e7</xsl:when>
        <xsl:when test=".='storage'">a177c1f7-5fdb-5d1f-b297-f889b5e7fed3</xsl:when>
        <xsl:otherwise>492e75e6-038c-5891-af7a-c606c33385c1</xsl:otherwise> <!-- Unmapped (US-NBUCC) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>a78f5d71-48d2-5477-b582-f4a292eaa7f0</institutionId>
  </xsl:template>

</xsl:stylesheet>
