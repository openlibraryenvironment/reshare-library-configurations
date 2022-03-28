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
    <identifierTypeId>33fd9933-e956-509d-b3e5-f576904f71c0</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='best'">563c7b2b-8963-5035-be0b-73196fe6987f</xsl:when>
        <xsl:when test=".='chem'">f984f8a4-330a-53ca-ad3b-487e530d5aff</xsl:when>
        <xsl:when test=".='chem-ref'">b008f9e7-bf1c-5b99-9e28-285060e82bc9</xsl:when>
        <xsl:when test=".='circ'">66fdfdfd-590c-570a-86b9-8a6916a619a2</xsl:when>
        <xsl:when test=".='circ-res'">9946c4a8-8040-581a-8a1b-97458894e22b</xsl:when>
        <xsl:when test=".='display'">88597dcc-691d-5349-8b02-934d0aa410d6</xsl:when>
        <xsl:when test=".='etown'">d7361ceb-48d1-56c0-832e-3c63060230ec</xsl:when>
        <xsl:when test=".='fac-dis'">d513592e-3e2d-5a2d-99cd-8cf2120ed91d</xsl:when>
        <xsl:when test=".='games'">47f90639-3141-5c68-b086-3f2e86b8d225</xsl:when>
        <xsl:when test=".='juv'">b502c6ad-51d9-5165-b0ac-71cbbaa779e1</xsl:when>
        <xsl:when test=".='main'">b3da0ef0-9fb8-509d-9106-4427a6a5a842</xsl:when>
        <xsl:when test=".='mcfc'">f6dcd9a7-f88c-57de-9e06-dfbbbf467d75</xsl:when>
        <xsl:when test=".='mcfm'">35fd7a7a-8fe7-5705-9c6f-7088b9637a44</xsl:when>
        <xsl:when test=".='med-cass'">4966c1f3-f21f-5d99-acd6-8a4c58c890bb</xsl:when>
        <xsl:when test=".='med-cd'">9d02dfc7-24c8-5bef-991a-63cd42a0dc98</xsl:when>
        <xsl:when test=".='med-dvd'">b26393b6-c004-5a82-ae4a-8e23696d4607</xsl:when>
        <xsl:when test=".='med-lp'">43f5e6b4-6f52-5c13-8730-9c98deed3e14</xsl:when>
        <xsl:when test=".='med-vid'">a398a4ef-c352-5fb4-a840-7e0e8ba9037e</xsl:when>
        <xsl:when test=".='new-books'">30e617fe-fb17-5131-af5d-a1586796c3d7</xsl:when>
        <xsl:when test=".='news'">cf98d523-a502-59b6-9770-7404e7ff2ed5</xsl:when>
        <xsl:when test=".='onli'">56d5a399-2bdd-56a8-866a-e1bcfab7c2af</xsl:when>
        <xsl:when test=".='per'">9f9a5af3-d4c6-58bd-b343-3a95e0029654</xsl:when>
        <xsl:when test=".='ref'">7ef2c070-0d1f-5bce-b803-4ca60c7d91e8</xsl:when>
        <xsl:when test=".='ref-desk'">8bf2713f-5386-59bb-8700-7354a9c36031</xsl:when>
        <xsl:when test=".='score'">afd71b23-d958-53b9-b1e0-252751f0cbd8</xsl:when>
        <xsl:when test=".='spec'">fde2e3e0-9ad2-590a-9d48-260b43be778b</xsl:when>
        <xsl:when test=".='spec-spohn'">20518fe1-48f3-5e90-b3c5-e40b75c8aa0a</xsl:when>
        <xsl:when test=".='tech'">5de48f01-2900-557c-b843-ef4aa54d5518</xsl:when>
        <xsl:when test=".='UNASSIGNED'">b204119a-9b44-5ed6-b012-d73849873a54</xsl:when>
        <xsl:when test=".='yng'">abe2ea9a-37ea-5a60-972d-b579ff9488be</xsl:when>
        <xsl:when test=".='yng-durn'">66c721cd-5b3a-5e31-88fe-018bb71a9791</xsl:when>
        <xsl:otherwise>ecb01902-4c61-5f5c-9248-a8cf047eb301</xsl:otherwise> <!-- Unmapped (US-PELC) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>0e6cc70b-d587-5ffb-8af1-3a05df405544</institutionId>
  </xsl:template>

</xsl:stylesheet>
