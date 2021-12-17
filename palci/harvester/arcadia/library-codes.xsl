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
    <identifierTypeId>f685d10c-4ee3-54a8-9ecf-ba4bf0de2e7e</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='STACKS'">3eb41db5-e718-50af-87f3-42dbb968273c</xsl:when>
        <xsl:when test=".='CURRIC-JUV'">e0027f50-ddcd-59b2-97fd-5ca11dc3283a</xsl:when>
        <xsl:when test=".='CURRICULUM'">6b9f3812-5c53-5251-b03f-05968df39d02</xsl:when>
        <xsl:when test=".='CURRIC-FIC'">520e90b9-1534-5075-906b-b52fb5b937ed</xsl:when>
        <xsl:when test=".='OVERSIZE'">1ddeb553-8d47-504b-b38d-1338f2426396</xsl:when>
        <xsl:when test=".='DISPLAY'">44a323ff-6610-5f6f-a138-42a75c877f28</xsl:when>
        <xsl:when test=".='FACAUTH'">ec48d6b5-0eee-58ce-b6b6-818579d95d5c</xsl:when>
        <xsl:when test=".='THESIS'">402b213d-3c6d-546c-b664-266cdb519a59</xsl:when>
        <xsl:when test=".='MEDIA - AUDIOCASSETTE'">bd337b12-1965-5eea-87a1-9315616992dc</xsl:when>
        <xsl:when test=".='ARCHIVES'">6d0b029d-f243-5c22-b6eb-83d97e9ffc26</xsl:when>
        <xsl:when test=".='CLOSED STK'">97705806-753b-5dfc-9ec9-237d2b7b1a1e</xsl:when>
        <xsl:when test=".='GAMES'">ad20d006-a05f-5ee7-96ba-c6bd94b0a706</xsl:when>
        <xsl:when test=".='INTERNET'">19841d56-e944-53ee-a891-ae7116d42d72</xsl:when>
        <xsl:when test=".='MISSING'">6c00aac6-585d-5169-a0be-1937f595b79c</xsl:when>
        <xsl:when test=".='PERIODICAL'">8c28a4d8-72bd-5efa-943d-06daca9b7a57</xsl:when>
        <xsl:when test=".='REFERENCE'">5b55167c-f9c4-534b-af0c-c23a4a5dfba1</xsl:when>
        <xsl:when test=".='RESERVES'">c9c65f37-edb6-55c0-9bd6-4d8fb1737327</xsl:when>
        <xsl:when test=".='SOFTWARE'">1477a94f-58e5-5a8c-bcdd-1b1cc2187d6d</xsl:when>
        <xsl:when test=".='PROC'">d114a364-6ceb-527f-80dd-e6bb74723d50</xsl:when>
        <xsl:when test=".='MEDIA'">74203189-5194-52ed-84c2-df91a68ae89d</xsl:when>
        <xsl:otherwise>caa17cce-cbd1-511f-acf1-1b2d8e897f5c</xsl:otherwise> <!-- Unmapped (US-PAGLAUL) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>f1f946be-425d-5092-98db-fdd5ce68b383</institutionId>
  </xsl:template>

</xsl:stylesheet>
