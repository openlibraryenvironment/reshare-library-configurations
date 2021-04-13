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
    <identifierTypeId>1ad355e2-f867-5858-b54b-64a1fcc1c9bb</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='main'">3668a276-19a9-519d-99b7-f324f6458791</xsl:when>
        <xsl:when test=".='mcdr'">c40d665d-6444-554c-b988-92dfc7fdde50</xsl:when>
        <xsl:when test=".='mcrc1'">e2ba9d55-29cd-5e3a-ab07-79852eca18c9</xsl:when>
        <xsl:when test=".='mcrc2'">94189a65-8d6d-59f8-bbb0-1b1613cf77b2</xsl:when>
        <xsl:when test=".='mcrcd'">6cd2d617-b63e-5131-a1a5-74704c405207</xsl:when>
        <xsl:when test=".='mdvd'">01c5323a-a80d-55b4-8a6e-b9991336caea</xsl:when>
        <xsl:when test=".='mer'">e42ac83c-f107-5f15-8f6f-f05c43f2c4b0</xsl:when>
        <xsl:when test=".='mjuv'">46bd2fb1-84f0-56da-80a8-fb0d26ef604c</xsl:when>
        <xsl:when test=".='mjuva'">681d39ef-a25a-588e-b46a-172324a6dab7</xsl:when>
        <xsl:when test=".='mjuvc'">839e9a9a-d3d2-5abd-97cf-33520d364c5c</xsl:when>
        <xsl:when test=".='mjuvk'">737f5152-a0cf-51a9-8171-52fff175e95d</xsl:when>
        <xsl:when test=".='mjuvn'">d0901dfa-73e6-599e-bdf6-aa66b16017d9</xsl:when>
        <xsl:when test=".='mjuvr'">209a5885-e263-58c0-a7a7-5fddc7c4c0a9</xsl:when>
        <xsl:when test=".='mlunc'">d51a2fc3-ea5a-5b14-889f-c65620b245f7</xsl:when>
        <xsl:when test=".='mstor'">c67d7bef-66fd-5734-80be-cb31b694eea7</xsl:when>
        <xsl:when test=".='mtech'">77a6ac78-38f8-511a-82d9-40718d2e6f76</xsl:when>
        <xsl:otherwise>514ac6c5-7ec9-5f9a-8047-f3306f3fcb4f</xsl:otherwise> <!-- Unmapped (US-PPPSB) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>e3a6318e-0400-5d1b-82cd-083f321ac705</institutionId>
  </xsl:template>

</xsl:stylesheet>
