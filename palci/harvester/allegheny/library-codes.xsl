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
    <identifierTypeId>58ccf0ae-6028-5012-acbe-0ab8a62c81ff</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='bksl'">a8034822-60d1-5257-9c08-b2f35997ee5e</xsl:when>
        <xsl:when test=".='bksu'">d19022b2-4a83-5b18-a799-840dbdd2cae9</xsl:when>
        <xsl:when test=".='dvdl'">bc000e72-e2bc-5237-af9f-42a9f8d0829b</xsl:when>
        <xsl:otherwise>1f421ba9-0fa6-54e9-a594-5666e79b07c7</xsl:otherwise> <!-- Unmapped (US-PMA) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>7f55af57-8e9b-5d15-b9ce-1b0dbc1ad7fd</institutionId>
  </xsl:template>

</xsl:stylesheet>
