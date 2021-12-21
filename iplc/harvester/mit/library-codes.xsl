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
    <identifierTypeId>c4e62d8c-79f2-5ebc-acad-7b65aadf23a3</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='ATLCS'">a970b193-6420-5af8-9e3a-9f860be716e9</xsl:when>
        <xsl:when test=".='AUDBK'">d4aaf309-7a6b-5ad6-9b84-2f557b824885</xsl:when>
        <xsl:when test=".='BRWS'">d84bf442-356c-5d4c-8675-981af1e926c6</xsl:when>
        <xsl:when test=".='CIRCD'">700d8d0d-ffe7-5570-953b-f680656b2cb4</xsl:when>
        <xsl:when test=".='GOV'">98c38925-2ee9-5147-b6fd-bd063d6ddc31</xsl:when>
        <xsl:when test=".='GRNVL'">6282c14e-b0b0-5705-b8fd-68b19eb22dab</xsl:when>
        <xsl:when test=".='JRNAL'">1f9fe07d-9014-531a-9b70-2a9e62264494</xsl:when>
        <xsl:when test=".='LMTED'">ec11cf5a-a5eb-5305-8f8f-671fe4a85f92</xsl:when>
        <xsl:when test=".='LSA4'">a4fc4edf-0df0-5882-ac7b-f7e45531feac</xsl:when>
        <xsl:when test=".='MAPRM'">e5045284-85aa-55eb-8735-62014fece0c6</xsl:when>
        <xsl:when test=".='MEDIA'">9e299427-a046-5d3e-824a-4382de4b75e1</xsl:when>
        <xsl:when test=".='MFORM'">1c3e0d5a-e120-5637-b17a-c04ec37df9a5</xsl:when>
        <xsl:when test=".='NOLN1'">8163a8a5-ca80-5e84-ab3b-1e7010eba0f4</xsl:when>
        <xsl:when test=".='NOLN2'">7bd988b2-46e8-571a-aa46-6e48d4a446e4</xsl:when>
        <xsl:when test=".='NOLN3'">9f80db6b-7a44-55c0-9223-f41acb26b53a</xsl:when>
        <xsl:when test=".='OCC'">420cdedd-2f77-5e21-91cc-dc098e31baaa</xsl:when>
        <xsl:when test=".='OVRSZ'">5c7f1a26-64cd-5742-bfa2-6721d4fc3fa4</xsl:when>
        <xsl:when test=".='PAMPH'">2efbcfa3-3d30-5797-b94f-187989113732</xsl:when>
        <xsl:when test=".='PRECT'">1e61feca-0c5c-51c8-94bc-1d67a1f93a3a</xsl:when>
        <xsl:when test=".='REF'">38e32465-74dd-561e-89d7-8b6ae0474dd7</xsl:when>
        <xsl:when test=".='RSERV'">3a99664b-3ceb-5f8f-9968-15f55ec2df6f</xsl:when>
        <xsl:when test=".='STACK'">52d5a30d-80df-52ce-8907-da6ddb72da9d</xsl:when>
        <xsl:when test=".='UNASSIGNED'">bc3fee2e-3e23-52c4-875b-387d494a34f6</xsl:when>
        <xsl:otherwise>86fd4464-2d97-5595-b4f4-b2a20d80d336</xsl:otherwise> <!-- Unmapped (US-MCM) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>dac0cb29-580b-5f36-8428-c79b859337d5</institutionId>
  </xsl:template>

</xsl:stylesheet>
