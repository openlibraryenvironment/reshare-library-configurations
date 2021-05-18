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
    <identifierTypeId>6c0da5c9-a925-5a91-9bd2-00d21d9ba085</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='ENGR-SCI NEWBOOK'">116d6710-e533-5c27-83bc-9843818e5659</xsl:when>
        <xsl:when test=".='ENGR-SCI STACKS'">f8ed085a-6eda-5894-8cbf-f09ea5dee1ea</xsl:when>
        <xsl:when test="starts-with(., 'ENGR-SCI')">f694895f-a37e-58ca-bb23-9172b33ec473</xsl:when> <!-- Unmapped (ENGR-SCI)-->
        <xsl:when test=".='HUNT CAREER-2'">78882fb7-d12b-5216-a07a-90fe763faa43</xsl:when>
        <xsl:when test=".='HUNT FOLIOS-2'">bd0ba7ae-e975-5c98-95b9-4f8438d1cb15</xsl:when>
        <xsl:when test=".='HUNT FOLIOS-4'">8891849a-cdf5-5ed0-88f9-d20e4e8e7cc8</xsl:when>
        <xsl:when test=".='HUNT NEWBOOK-1'">773cb2e4-a25b-5bcc-861d-90542498e79c</xsl:when>
        <xsl:when test=".='HUNT OVRSZQ-3'">569da046-a514-5fe2-8938-ec5e3ccd9327</xsl:when>
        <xsl:when test=".='HUNT OVRSZQ-4'">b76b9533-35e9-5361-8875-7a21b33c17ea</xsl:when>
        <xsl:when test=".='HUNT STACKS-2'">b6faaada-ecc7-5a46-9af5-e65175292a04</xsl:when>
        <xsl:when test=".='HUNT STACKS-3'">d46b90ff-a096-5e22-9c5e-219c7667c648</xsl:when>
        <xsl:when test=".='HUNT STACKS-4'">b2b6ec6c-b33f-55b8-b400-a471af6c5323</xsl:when>
        <xsl:when test=".='HUNT FA-NEWBK-4'">b3afc848-55e0-52b0-9c64-7c88ba507149</xsl:when>
        <xsl:when test="starts-with(., 'HUNT')">e85ce42a-e11a-562b-aaf5-7c7cf97c0e58</xsl:when> <!-- Unmapped (HUNT)-->
        <xsl:when test=".='MELLON NEWBOOK'">fca32cf0-b8c3-5e09-b812-bf4627d194a2</xsl:when>
        <xsl:when test=".='MELLON READING-RM'">e450e481-280d-50eb-8f7b-f1076db0d445</xsl:when>
        <xsl:when test="starts-with(., 'MELLON')">077003ed-42ef-57ce-b84f-4e52e200ee20</xsl:when> <!-- Unmapped (MELLON)-->
        <xsl:when test=".='OFFSITE BY-REQUEST'">52653428-7ba1-5d70-abd8-b260fb747634</xsl:when>
        <xsl:otherwise>a2c878e9-5bcc-57bc-89cd-d2880aff9fe8</xsl:otherwise> <!-- Unmapped (OFFSITE) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>915fc9dc-ae66-5b17-a0c4-c28cb35ded7e</institutionId>
  </xsl:template>

</xsl:stylesheet>
