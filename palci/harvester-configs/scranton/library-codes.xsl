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
    <identifierTypeId>052d1829-99b0-5bc2-96e5-1daee295d139</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='mcmr'">724c45b2-2099-5b9b-9106-5a1e3aa7ce2d</xsl:when>
        <xsl:when test=".='mcc'">8a5337d7-f818-5b86-b903-e3af0783ac55</xsl:when>
        <xsl:when test=".='mcos'">3c76500d-4f9e-5139-bf6e-756c3e9fc141</xsl:when>
        <xsl:otherwise>1216c537-64cf-51e8-a832-e4cb00ca43dc</xsl:otherwise>
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>db69018d-a304-537d-b1ea-e8118a7800c4</institutionId>
  </xsl:template>

</xsl:stylesheet>
