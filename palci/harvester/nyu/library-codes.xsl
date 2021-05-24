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
    <identifierTypeId>f6f4f652-8107-50e9-8c67-e59af588bf43</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='BOBSTEZB'">78427fdd-a5eb-57c0-bb77-3c544a46977d</xsl:when>
        <xsl:when test=".='BOBST'">06056209-450b-58d7-a0d1-ce04860aca1e</xsl:when>
        <xsl:when test="starts-with(., 'BOBST')">acd97a15-409c-5b35-89e2-cf930225ef48</xsl:when> <!-- Unmapped (BOBST)-->
        <xsl:when test=".='NCOUREZB'">9ee563e5-5586-5699-88d5-956bcbe8fe01</xsl:when>
        <xsl:when test=".='NCOUR'">24c0a218-12cb-5566-bf13-f99bd045b8ff</xsl:when>
        <xsl:when test="starts-with(., 'NCOUR')">3666aeb0-b169-54f5-bbc2-ac9b430730e4</xsl:when> <!-- Unmapped (NCOUR)-->
        <xsl:when test=".='OSCOREZB'">a57c8c83-f553-548a-8b49-8390d5aadf78</xsl:when>
        <xsl:when test=".='OSCOR'">d89126ae-556a-5200-a567-f9dd71cf2b18</xsl:when>
        <xsl:when test="starts-with(., 'OSCOR')">d4af6975-4042-5457-a642-7ae9ce1ea803</xsl:when> <!-- Unmapped (OSCOR)-->
        <xsl:when test=".='OSNYUEZB'">eb457f21-0546-5cc2-aef2-0e799fa682b5</xsl:when>
        <xsl:when test=".='OSNYU'">6e379c57-ffdd-5a3f-8e00-6321af0f76e9</xsl:when>
        <xsl:otherwise>ae401c23-9c7e-5fce-a666-d2328b07fe6b</xsl:otherwise> <!-- Unmapped (OSNYU) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>f16246d4-a649-55da-a445-e965fcab96b4</institutionId>
  </xsl:template>

</xsl:stylesheet>
