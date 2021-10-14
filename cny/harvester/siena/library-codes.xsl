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
    <identifierTypeId>bd3eef1e-e8ee-407e-8562-f5696f68139a</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='1stfl'">9271eb0c-2b84-5277-83d0-2e3137cf813a</xsl:when>
        <xsl:when test=".='2ndfl'">63180f49-ed97-5c7f-941d-a1311ac776dc</xsl:when>
        <xsl:when test=".='lowle'">b316ec81-066b-5e58-a6a2-b36d842fb9d6</xsl:when>
        <xsl:when test=".='over'">e3134cab-5145-558a-82fa-67e75d3c730a</xsl:when>
        <xsl:when test=".='audio'">3203cf28-49d1-5593-9725-cc1392f0a70c</xsl:when>
        <xsl:when test=".='avcol'">b44268ae-40af-5a16-b71a-0b0480f09002</xsl:when>
        <xsl:when test=".='arch'">fab601b9-9254-55ae-93e7-817fe019dca7</xsl:when>
        <xsl:when test=".='ejrl'">fcd41721-59a9-5383-bc95-d5c5365a2f1b</xsl:when>
        <xsl:when test=".='elec'">616b013c-9457-5f25-a00f-055b7e0f8123</xsl:when>
        <xsl:when test=".='folio'">256d46e4-1239-5e48-8bf4-ba208e3020e1</xsl:when>
        <xsl:when test=".='av eq'">80cace0e-1437-57de-b99d-76a33113b3e2</xsl:when>
        <xsl:when test=".='hist'">355e3b2e-f0f3-56d8-8ed9-23dd7797824b</xsl:when>
        <xsl:when test=".='lease'">16705e06-e521-50f5-9633-99106c5abfbc</xsl:when>
        <xsl:when test=".='micro'">7d9c347b-8fdb-5d0e-b8ef-dfdfd16f37e7</xsl:when>
        <xsl:when test=".='post'">18d7a1a5-f375-52cd-85f5-7decc2ae10d9</xsl:when>
        <xsl:when test=".='ref'">377087ab-3851-5db7-a580-6eeb5ff1f9a3</xsl:when>
        <xsl:when test=".='ref2'">1f94c6d5-0e5b-5d7b-94b2-3a5ff5c73038</xsl:when>
        <xsl:when test=".='ref3'">7eeff373-0f04-5bab-9837-140d168fc1a4</xsl:when>
        <xsl:when test=".='refm'">f0c7ca2b-8357-5090-892c-d4ce10e91ec7</xsl:when>
        <xsl:when test=".='res'">3b4aee6e-c229-5e6f-bb91-dac1175f9044</xsl:when>
        <xsl:when test=".='ser'">6938870c-f5fe-5ee0-9bfc-d601e78f6259</xsl:when>
        <xsl:when test=".='ser,arch'">d9f5ad0b-f5de-590a-ab37-57802621040c</xsl:when>
        <xsl:when test=".='spec'">23b08b3c-8c09-5f20-b5f9-e2c12cd01583</xsl:when>
        <xsl:when test=".='speco'">aaa2c5bc-d707-535a-b149-bd254f182e0e</xsl:when>
        <xsl:when test=".='specs'">bde2f5ca-b1d2-5cd7-ab0d-ea8eb7bc782f</xsl:when>
        <xsl:otherwise>751daf87-3a0d-548c-b42f-415b16daa52c</xsl:otherwise> <!-- Unmapped (US-NLOUVS) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>927f85c3-9d6c-574d-91ef-31a07f054f7a</institutionId>
  </xsl:template>

</xsl:stylesheet>
