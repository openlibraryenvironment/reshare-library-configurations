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
    <identifierTypeId>db8e71e8-3c73-50bf-810e-a0c04e952fd4</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='BOOK'">b624cd09-9c41-5129-b468-f69ff6c82d47</xsl:when>
        <xsl:when test=".='STORAGE'">159f34be-802c-5e7c-b55e-bbca6593053a</xsl:when>
        <xsl:when test=".='GA-BOOK'">12db86dd-9871-5b6c-adcd-46dbfda3fe75</xsl:when>
        <xsl:otherwise>176fdc17-affa-5d0e-849f-2e468983ac90</xsl:otherwise> <!-- Unmapped (US-PPCO) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>a58b29c2-a0f2-5f35-9176-a0944f7fcffd</institutionId>
  </xsl:template>

</xsl:stylesheet>
