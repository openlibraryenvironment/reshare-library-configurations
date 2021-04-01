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
    <identifierTypeId>800e3a74-d69f-5566-977d-2bc3cac7291b</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='lbks'">13c1a4ea-69e5-536c-a99a-d74e98b5e828</xsl:when>
        <xsl:when test=".='lbkso'">05813bdb-d595-52ac-b590-95d5e05d94ae</xsl:when>
        <xsl:when test=".='lmcod'">b4244aa3-fb3e-57e8-8a33-ca9d442f197d</xsl:when>
        <xsl:when test=".='lmvc'">45d8d307-8567-5306-88e5-a5c1eccc735f</xsl:when>
        <xsl:when test=".='ltm'">e267afde-a5ba-5d93-94b7-daedd12abd66</xsl:when>
        <xsl:when test=".='ltmyl'">9cf2227f-8ecc-58f9-b795-e47fd791d31d</xsl:when>
        <xsl:when test=".='lmmi'">81d22644-47a4-5bf8-bf10-6d98f1547739</xsl:when>
        <xsl:when test=".='lmmic'">0d23618b-1bfd-5e0c-ab06-3c3f475e6fab</xsl:when>
        <xsl:when test=".='lmmif'">5fd7ef4d-6659-58b3-8d0a-76720e18ecd2</xsl:when>
        <xsl:when test=".='lmmim'">b73c961a-5c65-5fe1-b27e-9b09ddcbff65</xsl:when>
        <xsl:when test=".='lmp'">bc5efe5e-6e58-5c69-abee-412cf485f0d1</xsl:when>
        <xsl:when test=".='lmvd'">4f45a218-430b-5d19-adb5-8e7cb34c69c5</xsl:when>
        <xsl:when test=".='lref'">66a73cea-12fd-57fd-a4f2-f020db821b9b</xsl:when>
        <xsl:when test=".='lrefa'">2df23ac0-1eb3-528b-ae0d-30e64dc416e3</xsl:when>
        <xsl:when test=".='lrefd'">5c431056-277a-556a-8d9a-06f27031527f</xsl:when>
        <xsl:when test=".='lrefs'">62019abc-5a2b-52aa-a87a-a60945683db8</xsl:when>
        <xsl:when test=".='lrsvc'">a12b1f88-745b-5029-8969-6099ef5e1d5a</xsl:when>
        <xsl:when test=".='lrsvm'">270780fa-6253-5d4c-aac7-ec6158b5edf5</xsl:when>
        <xsl:when test=".='lrsvt'">b7675c58-2e0b-5d54-823a-d128df55d74c</xsl:when>
        <xsl:when test=".='ls'">afd53baf-ab45-5ada-aaf0-30b8f1b9ccdc</xsl:when>
        <xsl:when test=".='lsa'">ee293ebd-e8e8-5c59-b59c-6e847add3ab7</xsl:when>
        <xsl:when test=".='lsca'">d6112a3a-9f7f-5132-bcf8-93b90e8c9257</xsl:when>
        <xsl:when test=".='lscao'">4dc9d79c-3f23-5c8c-8eb9-318cc7093597</xsl:when>
        <xsl:when test=".='lscfi'">d4a69f2b-8ba4-51ee-98a7-67eb021938b9</xsl:when>
        <xsl:when test=".='lsci'">c6a74eb6-d3ad-5859-911e-4dca089bcf59</xsl:when>
        <xsl:when test=".='lscj'">3786ef2c-5bba-5470-bda2-78a9d999a4b2</xsl:when>
        <xsl:when test=".='lscla'">09efa817-ce47-5a0b-94fb-d151781b6811</xsl:when>
        <xsl:when test=".='lscma'">f1ab2fea-3e5b-5e03-aaa7-c528aedfb026</xsl:when>
        <xsl:when test=".='lscmc'">03094086-6e3b-5b56-b71e-4bfdbf0d7fda</xsl:when>
        <xsl:when test=".='lscp'">8bf1d2e4-f37b-58b9-b571-6392d38b2ac1</xsl:when>
        <xsl:when test=".='lscr'">c58c2c68-d6fe-5d6c-86b0-3bbff12c7d20</xsl:when>
        <xsl:when test=".='lscro'">970a3b0b-bd49-5fd6-8517-9dc2d807b1e4</xsl:when>
        <xsl:otherwise>0e531862-b059-5ffb-adef-8a6825b8e05e</xsl:otherwise> <!-- Unmapped (US-NSYL) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>9d44e4fc-1b90-56f1-b9e0-18708c96831c</institutionId>
  </xsl:template>

</xsl:stylesheet>
