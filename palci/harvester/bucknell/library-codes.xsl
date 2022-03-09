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
    <identifierTypeId>2836523f-79ce-5f0f-8942-3f1c73446da0</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='PBUB'">279fa5b1-ddd7-5822-8b56-44abdb6b92c9</xsl:when>
        <xsl:when test=".='CHEM'">dc841eaa-754e-507d-bc50-24ab375a12a9</xsl:when>
        <xsl:when test=".='LGBT'">6985f5dd-0197-5242-a20c-70afbf71f54d</xsl:when>
        <xsl:when test=".='MUSC'">17277e43-c17d-5805-8966-be992182dc78</xsl:when>
        <xsl:when test=".='RACE'">2bc890a6-63c0-5f67-b92a-a2450d387dfa</xsl:when>
        <xsl:when test=".='SMTH'">1bc8b12e-3810-5579-b85d-4a97fa9c8690</xsl:when>
        <xsl:when test=".='BOIE'">d63937a4-1564-507a-b33e-0d03fdec8876</xsl:when>
        <xsl:when test=".='TLCR'">e58efd9a-8024-5e2f-8b7f-1ab3dbb12676</xsl:when>
        <xsl:when test=".='SPEC'">13dd6a73-e271-5ac0-9d85-42e1ce241992</xsl:when>
        <xsl:when test=".='ARCH'">35f5510a-0d83-5c9a-b7d2-4a49ea71e2c1</xsl:when>
        <xsl:otherwise>4b678592-bc73-5250-962e-f5588b9a6e28</xsl:otherwise> <!-- Unmapped (US-PLEB) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>9a997749-01e1-559f-95a1-284f058e429f</institutionId>
  </xsl:template>

</xsl:stylesheet>
