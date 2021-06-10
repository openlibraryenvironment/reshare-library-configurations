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
    <identifierTypeId>f61cfb98-6827-5e5c-916d-3e6f52f13918</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='BIO'">db1310ca-fc92-5ce2-920e-e91fdcb79041</xsl:when>
        <xsl:when test=".='CHILDBIO'">3025ef48-5d5f-5cc5-9be1-fd7bf310b519</xsl:when>
        <xsl:when test=".='CHILDEASY'">f0bc6e00-7884-53e7-b73d-2c25de96e6ba</xsl:when>
        <xsl:when test=".='CHILDFIC'">8c901684-d850-5217-82ef-03c0dba7600a</xsl:when>
        <xsl:when test=".='CHILDDEWEY'">a81b23c5-fc6e-5754-bdf0-d72ceac3e842</xsl:when>
        <xsl:when test=".='FICTION'">b3212e88-39d7-5480-acb2-a73ff56e7c34</xsl:when>
        <xsl:when test=".='MAIN'">544488f5-7255-50c9-9406-f210b9d80071</xsl:when>
        <xsl:when test=".='OVERSIZE'">6a8b89dc-1cb0-59c7-b610-5fc0c34f02f4</xsl:when>
        <xsl:otherwise>87f9a051-0590-5e36-938d-819176ed3c7d</xsl:otherwise> <!-- Unmapped (US-PESS) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>b18d841f-cb7c-5831-be45-fb143e45fa3d</institutionId>
  </xsl:template>

</xsl:stylesheet>
