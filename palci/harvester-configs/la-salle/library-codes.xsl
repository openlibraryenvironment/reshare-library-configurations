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
    <identifierTypeId>91f1ec03-4da0-5f10-a48c-64e65e514960</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='lasl'">c17d5e9d-17ea-5b90-a5ea-8b54b0566045</xsl:when>
        <xsl:when test=".='lasla'">bc6143cf-8fcb-5a37-9d6a-558510efe78c</xsl:when>
        <xsl:when test=".='laslb'">0aade023-d102-54e9-b527-af21a695350e</xsl:when>
        <xsl:when test=".='lasg'">6d7f2bd6-5dec-5b14-a017-a040121e35e1</xsl:when>
        <xsl:when test=".='lati'">363e50f1-142e-5b1a-867e-e16862a420f5</xsl:when>
        <xsl:otherwise>297b6ed3-178f-50ed-aa8b-517682892cad</xsl:otherwise>
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>1ed74ad4-5d1c-5403-9154-1e6328cd67c8</institutionId>
  </xsl:template>

</xsl:stylesheet>
