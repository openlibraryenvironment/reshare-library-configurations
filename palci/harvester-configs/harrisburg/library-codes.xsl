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
    <identifierTypeId>2fde8c64-bcc7-5451-8028-d04ccacbf5ae</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='humain'">b48e8dad-6641-5250-84b5-47e164c00078</xsl:when>
        <xsl:when test=".='hutxt'">e682a7d1-a13b-591d-bedf-1bd76d597bb9</xsl:when>
        <xsl:when test=".='hugames'">b178ed09-3156-5462-92b1-1d9d37384930</xsl:when>
        <xsl:when test=".='hucareer'">bdfff0de-08f5-51f1-8ad7-2db9a8500cdf</xsl:when>
        <xsl:when test=".='hudesk'">198c7b48-cb01-5876-98e4-8fa15f78c66f</xsl:when>
        <xsl:otherwise>97c37166-88ec-58c3-9daa-42ff0bb698de</xsl:otherwise>
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>c2d40084-1b3a-589a-860a-0ff7b1ce0634</institutionId>
  </xsl:template>

</xsl:stylesheet>
