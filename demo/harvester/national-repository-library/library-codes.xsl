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
    <identifierTypeId>d2a06e57-f97d-56b3-961d-405923afff85</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='Lainaus'">9d519d6b-a59a-595d-ae60-aabfc277ac1d</xsl:when>
        <xsl:when test=".='Luetteloin'">c65337a5-c1ec-5526-983f-27de56c19665</xsl:when>
        <xsl:when test=".='VARASTO'">27708520-44ad-50ff-85d3-3bea4a575972</xsl:when>
        <xsl:otherwise>df469a92-1c17-52e7-9b2a-3f74a957bc7e</xsl:otherwise> <!-- Unmapped (FI-NRL) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>407f93c5-04fe-51b8-8aa2-9f454386d26b</institutionId>
  </xsl:template>

</xsl:stylesheet>
