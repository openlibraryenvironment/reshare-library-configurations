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
    <identifierTypeId>7dcf031f-dba9-5997-9d60-f94d440967e5</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='STACKS'">369d4282-2eb3-5260-9ca1-a5481c200d32</xsl:when>
        <xsl:when test=".='ARCHIVES'">1bcee8d8-87f3-5fbd-96a3-d1782eb7ac61</xsl:when>
        <xsl:when test=".='DISPLAY'">9cbac3b9-f84c-522f-9f5c-933607bbdd47</xsl:when>
        <xsl:when test=".='DVD'">d3045bb4-2c2e-510c-9414-3b96a1077d0f</xsl:when>
        <xsl:when test=".='EDVD'">5c2a5f2a-ccfb-5330-af30-090304b7472c</xsl:when>
        <xsl:when test=".='HOLDS'">7b5d3ad4-95f1-5243-924c-fd66703411aa</xsl:when>
        <xsl:when test=".='JUVENILE'">520f6df8-d55a-50f7-b954-07c01b250c72</xsl:when>
        <xsl:when test=".='ONLINE'">cd6c1623-46e7-502f-a8f9-944f4d15a5c0</xsl:when>
        <xsl:when test=".='PAPERBACK'">47baec8c-978f-53f3-8e9c-c7c04306f96b</xsl:when>
        <xsl:when test=".='PER'">60ae23a9-1a91-5ca2-9c84-aeaf7e361919</xsl:when>
        <xsl:when test=".='PIC_BOOK'">3516bce5-96db-5eeb-a092-3a751043f2d5</xsl:when>
        <xsl:when test=".='REFERENCE'">ce4de39a-4c83-51fa-bdbd-3f3a748be39c</xsl:when>
        <xsl:when test=".='RESERVES'">766c56fe-d9f9-581f-bdbe-1df16fb8717c</xsl:when>
        <xsl:when test=".='RUSKIN'">c354ddeb-2506-5e70-978b-ed81e6850671</xsl:when>
        <xsl:when test=".='STORAGE'">37892922-38ad-5dc9-a11d-9a9768a3cbd7</xsl:when>
        <xsl:when test=".='YA-JUV'">4cd9cf48-3278-56d2-82ac-b4c38a6f271a</xsl:when>
        <xsl:otherwise>3626363e-9e94-5a10-936b-5e732a1397a6</xsl:otherwise> <!-- Unmapped (US-PERG) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>5f652a9e-4cf5-5bb5-82ad-942236891aa4</institutionId>
  </xsl:template>

</xsl:stylesheet>
