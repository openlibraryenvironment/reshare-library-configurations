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
    <identifierTypeId>09001ff6-cf33-5488-976b-6b1b3e561764</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='CHILDRENS'">1e91d15c-1552-512e-971e-61e7a8ff4207</xsl:when>
        <xsl:when test=".='MAIN'">146a6314-7777-5716-b2fe-7357dc57d05f</xsl:when>
        <xsl:when test=".='OVERSIZED'">84b3f377-5c8f-5b2c-95e1-f32bb7913c59</xsl:when>
        <xsl:when test=".='SMAIN'">f1edc2d6-d0c9-5d70-86c8-aff0273c081c</xsl:when>
        <xsl:when test=".='SOVERSIZED'">55ba7fb3-c88d-5861-86c7-14edb73cef22</xsl:when>
        <xsl:when test=".='AUDIOBOOK'">8522bc0e-3a71-5870-a5fa-0706ebc1d72f</xsl:when>
        <xsl:when test=".='SAUDIOBOOK'">68ec27c7-97fd-5578-929b-7e7ab2c7278f</xsl:when>
        <xsl:when test=".='ARCHIVES'">fdc8960b-0305-58e4-b9f1-b0db4ffb1b95</xsl:when>
        <xsl:when test=".='CALCULATOR'">a18d025d-0d09-5ba4-b5db-ac6d67bea697</xsl:when>
        <xsl:when test=".='CINEMADVD'">e9687c96-9c44-5e4b-b18d-d325f3c37568</xsl:when>
        <xsl:when test=".='CRS'">347e37cf-9735-5787-80f5-659f2a7e0b06</xsl:when>
        <xsl:when test=".='DIALECT'">20cd1df7-7f16-5ec4-9859-e741cdff1eb5</xsl:when>
        <xsl:when test=".='DISPLAYCASE'">15936cff-58c0-5922-8d19-dc2dc2e2c602</xsl:when>
        <xsl:when test=".='DVD'">9d345ed0-4c17-5d8a-bbf6-05a78c7770e8</xsl:when>
        <xsl:when test=".='HDMI'">a7af7acb-67a8-5458-a572-c1f58cb6e3c8</xsl:when>
        <xsl:when test=".='HEADPHONE'">de3bf689-8dd0-5a1e-a587-82efc5d60e7b</xsl:when>
        <xsl:when test=".='ILL'">48779b68-ed1b-5588-994b-228d2db05cab</xsl:when>
        <xsl:when test=".='LAPTOP'">ab4da57f-d04e-546b-a62b-8b16911087eb</xsl:when>
        <xsl:when test=".='LIBRETTO'">6e10b58f-dd1c-56ec-95c0-47e6c67951ad</xsl:when>
        <xsl:when test=".='MEDIASERV'">46e514da-47c2-5254-beec-953650d373e7</xsl:when>
        <xsl:when test=".='MICROFILM'">68b87e67-5604-5ca1-94fb-d074a1f55c00</xsl:when>
        <xsl:when test=".='MONOLOGUE'">399a5a26-a796-5c5e-b65a-e3a5a2700138</xsl:when>
        <xsl:when test=".='MUSIC'">70d33507-370d-5a01-9feb-65c74e02724a</xsl:when>
        <xsl:when test=".='NEWBOOK'">7623b113-b79b-5997-bdb9-60e155eb72d3</xsl:when>
        <xsl:when test=".='PERIODICALS'">95b4ac53-37c5-5397-8767-272aeafaba83</xsl:when>
        <xsl:when test=".='PEZB'">85ad8f66-d738-5ae2-b67b-415bdccf31c3</xsl:when>
        <xsl:when test=".='PLAY'">79134c02-eb46-5fd8-ab9a-fb2d0f2f7fd2</xsl:when>
        <xsl:when test=".='POP'">26162b60-f71f-585c-8c1a-55817bb4577b</xsl:when>
        <xsl:when test=".='PORTCHRG'">392e7305-5a5c-5107-b9c9-0d6feb4a8cd8</xsl:when>
        <xsl:when test=".='REF'">4dee614f-0515-53e4-b1f9-5628363547df</xsl:when>
        <xsl:when test=".='ROOM'">48d584b9-7b9f-58d4-9fae-01be00a2fb63</xsl:when>
        <xsl:when test=".='SCINEMADVD'">4da5836c-8a0b-585c-8069-d76958290f12</xsl:when>
        <xsl:when test=".='SDVD'">23a19a7d-2ab9-5f4d-962c-1e94174c4f3b</xsl:when>
        <xsl:when test=".='SPERIODICALS'">fb296bfc-929a-5c31-8319-9140c6eb348f</xsl:when>
        <xsl:when test=".='SPLAY'">edd9fb5c-1691-5e25-be38-048b4854cd9c</xsl:when>
        <xsl:when test=".='STHESIS'">8f0aa855-739f-5e2e-b33a-6b11b32c514f</xsl:when>
        <xsl:when test=".='STUDYGUIDE'">3ec3d44c-8026-587f-a471-a4e29190b697</xsl:when>
        <xsl:when test=".='TECHSERV'">7e7332f9-96ea-5a52-9290-0eb1689f399d</xsl:when>
        <xsl:when test=".='TEXTBOOK'">96a2ff05-67cf-52a4-b23c-434109e6f9ad</xsl:when>
        <xsl:when test=".='VIDEOGAMES'">5beaed2c-5681-5817-970e-ab5cb9e76e9c</xsl:when>
        <xsl:otherwise>9e196d9c-e240-5442-a762-9c6b365ccd36</xsl:otherwise>
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>8c59e4db-9722-57d9-b0f6-c6a1393684c8</institutionId>
  </xsl:template>

</xsl:stylesheet>
