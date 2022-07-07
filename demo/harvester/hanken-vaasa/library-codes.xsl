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
    <identifierTypeId>d52ff092-ded2-5443-bc5b-54e08754f0ed</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='AABOCKER'">1f418dec-9891-5b8e-9a59-b63c09e3b913</xsl:when>
        <xsl:when test=".='AVHARKIV'">b174c60e-55b0-563b-9c4a-be78073565c5</xsl:when>
        <xsl:when test=".='AVHGAMLA'">bdeb6052-3c47-5809-9fb9-83a6e5e5293a</xsl:when>
        <xsl:when test=".='AVHNYA'">4e2d6c56-9bb1-53f5-85d3-c94f7be19e4e</xsl:when>
        <xsl:when test=".='AVSKRIVNING'">4ac5719c-9c1a-57a8-8f4a-98c6814a55a7</xsl:when>
        <xsl:when test=".='BETALNING'">da5c18f4-1640-515c-a4ef-7c5ab65fe83f</xsl:when>
        <xsl:when test=".='DATABASER'">171834e9-5387-5f9a-b562-cb669aa64e53</xsl:when>
        <xsl:when test=".='EBOK'">5ece7bf8-1d5e-510f-ad28-88aae7e8777c</xsl:when>
        <xsl:when test=".='EBOK2'">06e7006f-7705-5b3f-97b2-76309b4b46c9</xsl:when>
        <xsl:when test=".='EGNASERIER'">940360e0-6ab8-5d71-937c-07cff955e195</xsl:when>
        <xsl:when test=".='ELEKTRON'">b03d4354-6da9-5923-8da1-0e6127cba88e</xsl:when>
        <xsl:when test=".='KURSHEM'">87dff4fe-4654-5edb-bdc2-2d59ad1503d8</xsl:when>
        <xsl:when test=".='KURSLASE'">554334fe-de61-59a0-862a-e529cfd8bc09</xsl:when>
        <xsl:when test=".='LJUDBOK'">cd68ec84-abbd-56fe-a819-15480cb66643</xsl:when>
        <xsl:when test=".='MONOBIB'">30771a98-e2ea-5053-bc45-c8a82a938c0a</xsl:when>
        <xsl:when test=".='MONOGRAFI'">1168ddfa-521a-58bb-903c-31fce473a7d8</xsl:when>
        <xsl:when test=".='MONOLASE'">bf712857-70f5-5487-9495-26a6bd74effc</xsl:when>
        <xsl:when test=".='MOTESRUM'">3113e0ba-e7fa-5622-a6bd-1190d44c3bf8</xsl:when>
        <xsl:when test=".='REFERENS'">fdeafbd9-59df-5b66-b2b8-5f5518d24e9b</xsl:when>
        <xsl:when test=".='SERIER'">4d5978a0-5632-5f9b-89c6-c066d4a0d170</xsl:when>
        <xsl:when test=".='TIDSKRIFT'">3d9f247c-0e1c-5518-b019-af6e8578a375</xsl:when>
        <xsl:when test=".='VASA'">d487f602-6d51-53e0-a1aa-55bb6196084f</xsl:when>
        <xsl:otherwise>37f31852-3eca-567c-b016-30cf5f295559</xsl:otherwise> <!-- Unmapped (FI-FINDLAND) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>39c371f1-6059-5426-bf8e-27a7bbd64082</institutionId>
  </xsl:template>

</xsl:stylesheet>
