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
    <identifierTypeId>8395ad8e-8728-598e-90be-fce9104ae939</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='JWEL Main'">f2a4ab03-ad8d-5bd3-b679-62a8f030bfe6</xsl:when>
        <xsl:when test=".='JWEL Leisure'">fd0e40f8-1c9b-5722-bd85-8fa24b2bc595</xsl:when>
        <xsl:when test="starts-with(., 'JWEL')">e69222f3-c67b-51fe-92b4-feffaaf596cb</xsl:when> <!-- Unmapped (JWEL)-->
        <xsl:when test=".='SD bks1'">750ad9e9-8a81-558c-8755-4b03491d3b40</xsl:when>
        <xsl:when test=".='SD bks2'">4e810a0e-bca5-5ed8-86c7-1869e8b7c837</xsl:when>
        <xsl:when test=".='SD bks3'">d47e88fc-7dcf-5112-a027-eb62f72d7b4e</xsl:when>
        <xsl:when test=".='SD campbk'">7deac4f7-0f68-599e-936b-530ed9a487c2</xsl:when>
        <xsl:when test=".='SD cmclit'">5e633c0f-1979-58f3-8277-fc0c3bcbb047</xsl:when>
        <xsl:otherwise>01962fa1-5ef8-596f-89e4-bc0f29a44c6d</xsl:otherwise> <!-- Unmapped (SD) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>76922e6d-3b68-567a-bbc5-15a1c523ef25</institutionId>
  </xsl:template>

</xsl:stylesheet>
