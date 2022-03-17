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
    <identifierTypeId>30ff71fe-0f1c-5dbd-a021-617d873364db</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='Alumi Publication'">4ebb1070-c859-5e6d-b80f-df552787d712</xsl:when>
        <xsl:when test=".='Archives'">fd343528-119b-514e-bd5a-95dea7d0922c</xsl:when>
        <xsl:when test=".='Ask at Circ'">af1a483e-7b19-5d71-a3d5-803e1a825456</xsl:when>
        <xsl:when test=".='Butz Campbell Conference Room'">02dfd6d3-c349-5a1c-8c9b-b5660ba16173</xsl:when>
        <xsl:when test=".='Career Services'">e9b607f3-65a6-5f96-be0f-58e50e53a259</xsl:when>
        <xsl:when test=".='Curriculum Collection'">ed603a62-b797-5832-844f-f93c859e776f</xsl:when>
        <xsl:when test=".='DeSales Resource Center NY'">6009d7e9-9fea-51dc-b91c-67310ab4e544</xsl:when>
        <xsl:when test=".='Dooling Education'">08fc3830-b7da-51ef-81ad-354706fc26c3</xsl:when>
        <xsl:when test=".='Faculty Publications'">3e7cb0b6-2d31-57c4-9d66-52d00a120ecd</xsl:when>
        <xsl:when test=".='General Collection'">a79f725d-1701-5db6-b763-cdec5f7fcc7d</xsl:when>
        <xsl:when test=".='Laptop Cabinet'">cada5122-83c3-57ad-b2f3-41f27e63be5e</xsl:when>
        <xsl:when test=".='Main Media'">dab2cfa7-cb52-5535-920e-aa0bebcd6efd</xsl:when>
        <xsl:when test=".='McFadden Room More'">cdca18c2-1ac5-52ae-9df5-63fbc6ccdc6d</xsl:when>
        <xsl:when test=".='McFadden Room Salesian'">f62932a9-70e7-57e1-bb65-6e1dced19455</xsl:when>
        <xsl:when test=".='N/A'">2ce5d5ed-eeed-5613-a79b-a2e6c8e642a4</xsl:when>
        <xsl:when test=".='National Security Collection'">c436560f-56d8-509e-b8b9-abd663591791</xsl:when>
        <xsl:when test=".='Newspaper Area'">0ff18f7f-f400-575f-a0a9-d7e13ccff150</xsl:when>
        <xsl:when test=".='Oversize'">ba870f38-2fc4-5311-927e-f235f3f5b3ff</xsl:when>
        <xsl:when test=".='Pamphlet'">297bc290-173e-5046-9a7c-f755746da71c</xsl:when>
        <xsl:when test=".='Periodicals'">a669b1a1-bc41-54fb-b029-b39577c24425</xsl:when>
        <xsl:when test=".='Periodicals Microfiche/film'">24be5d53-c403-5d9a-9758-7cded6b95484</xsl:when>
        <xsl:when test=".='Popular'">27d8db97-cef4-5901-9771-8c2547700ba0</xsl:when>
        <xsl:when test=".='Reference'">da43341f-a8b3-526e-80f1-56e404418e2c</xsl:when>
        <xsl:when test=".='Reserve Book'">fbc7254b-5f73-54c1-9815-070025d62878</xsl:when>
        <xsl:when test=".='Reserve Media'">3ad1f702-511a-540b-9aaa-045bde8717d9</xsl:when>
        <xsl:when test=".='Reserve Permanent'">d47d2280-67a1-5aa0-a765-aec324899a2b</xsl:when>
        <xsl:when test=".='Reserve Photocopy'">d88975d7-a269-508c-99e2-fd9c57254acc</xsl:when>
        <xsl:when test=".='Reserve Shelf'">cc5d27cb-c938-525f-931f-82082f7f1da1</xsl:when>
        <xsl:when test=".='Salesian Center'">de59486b-6060-5dc3-b1c6-cd257251e782</xsl:when>
        <xsl:when test=".='Storeroom'">6d3bd70b-4bda-5252-9fdb-eb9cec2b95df</xsl:when>
        <xsl:when test=".='Tech Services'">bf4e70ba-9c2c-515e-927e-46d2fb448b2e</xsl:when>
        <xsl:when test=".='Walter Kerr'">898480d0-a393-57dd-aab4-b96f5dd74167</xsl:when>
        <xsl:otherwise>eaf00ca9-7cf0-5240-9a8e-cf2740c128fd</xsl:otherwise> <!-- Unmapped (US-PCVA) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>d02c574d-721d-55f4-98a1-d90b4cd4ade4</institutionId>
  </xsl:template>

</xsl:stylesheet>
