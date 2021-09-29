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
    <identifierTypeId>dd941cf5-b2e9-5c0e-898b-184a1a808306</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='COLMISER ON_SHELF'">7b2439c0-dc52-556b-a996-c9e6dec71896</xsl:when>
        <xsl:when test=".='ON_SHELF'">1071d665-dab0-59d8-b340-7cca45a933e6</xsl:when>
        <xsl:when test=".='AV_CENTER'">cc83da22-4e2d-52d1-b272-f12f09d5945b</xsl:when>
        <xsl:when test=".='CHILD_LIT'">0506d491-07de-5279-810c-f1e29f378d1c</xsl:when>
        <xsl:when test=".='COLMISER'">3dc1a7c0-f074-5f98-92aa-afb601e5d5e1</xsl:when>
        <xsl:otherwise>fcadf86f-e268-5598-8499-b454671c991a</xsl:otherwise> <!-- Unmapped (US-PDALCM) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>eeaeb316-78cc-558d-953e-55e778425275</institutionId>
  </xsl:template>

</xsl:stylesheet>
