<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

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
    <identifierTypeId>3f6508b0-764b-4c99-b7f0-db542ac59b6c</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='TNSFOEZB'">a7671881-0585-4052-afa3-d5d971ebd840</xsl:when>
        <xsl:when test=".='TNSFO'">63f962fb-fb4b-4436-895d-d620419d3412</xsl:when>
        <xsl:when test=".='TNSGIEZB'">36767487-a102-479b-aa24-79258990c142</xsl:when>
        <xsl:when test=".='TNSGI'">0a7b18cf-30d0-407e-856e-6441dcdca84b</xsl:when>
        <xsl:when test=".='TNSSCEZB'">3cd8cc4f-e989-4021-8ba6-95f7450cec22</xsl:when>
        <xsl:when test=".='TNSSC'">93aebca8-ad00-454c-bb53-c2d7bc0c74ad</xsl:when>
        <xsl:when test=".='TNSOSEZB'">a01c4d66-e472-44a3-981f-2da03647f117</xsl:when>
        <xsl:when test=".='TNSOS'">365fbee1-a31b-4683-a0ee-623a0dbec87e</xsl:when>
        <xsl:when test=".='TNSKE'">ed6969fb-585b-4704-840c-26cebfce13e9</xsl:when>
        <xsl:otherwise>a2be9b49-a393-4b15-a236-47bdf97928c3</xsl:otherwise>
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set institutionId for Millersville -->
  <xsl:template match="//institutionIdHere">
    <institutionId>c646eeb1-b4dc-4458-a4e0-a39c2a7d36cd</institutionId>> <!-- Millersville -->
  </xsl:template>
</xsl:stylesheet>
