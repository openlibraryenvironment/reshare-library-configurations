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
    <identifierTypeId>4177c0c9-1d07-55cc-bb03-5226dfde1275</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='Stacks (Top Floor)'">aec7dd8b-43fa-5894-ae65-3fc3f506e183</xsl:when>
        <xsl:when test=".='New Books'">507c08a2-f27e-56ba-bb56-264ca9e0ca39</xsl:when>
        <xsl:when test=".='Oversize (Main Floor)'">4b0c1df3-d761-5960-8c8b-e1a7511abdd3</xsl:when>
        <xsl:when test=".='Kalevitch Collection'">69b3a64a-8d25-5974-b5b3-aeed0a79d8d2</xsl:when>
        <xsl:when test=".='Ask at Circulation'">1235a9c6-b19d-5420-bd24-305e2098bffc</xsl:when>
        <xsl:when test=".='DVD (Service Desk)'">a9d386c2-088e-5718-a081-4f53b4f5243a</xsl:when>
        <xsl:when test=".='Dissertations (Main Floor)'">46845dbc-f6a7-5129-86c7-ca08ee24524a</xsl:when>
        <xsl:when test=".='Juvenile - Easy'">fa931339-bcdf-555b-aa0d-6b2916d9f920</xsl:when>
        <xsl:when test=".='Juvenile Fiction'">1771de46-ff14-583b-9b31-3c0a694e8efd</xsl:when>
        <xsl:when test=".='Juvenile Nonfiction'">ac3aa8db-0dc2-5378-b723-2f4ddf5402d7</xsl:when>
        <xsl:when test=".='Pedagogy'">e3f208f8-a8db-54e8-9e00-e38e22c3f7d9</xsl:when>
        <xsl:when test=".='Popular Reading (Main Floor)'">85ded35f-fa83-5a94-97f6-c6efed9d40c9</xsl:when>
        <xsl:when test=".='Reference'">48934e3e-8061-562a-99a6-00dfa3f9d8c0</xsl:when>
        <xsl:when test=".='Reserves'">0454ba67-1c92-5046-834f-394c4167c9bd</xsl:when>
        <xsl:when test=".='Textbook Reserve'">d1d4ed24-7c8d-57d2-804e-5da54cf4d152</xsl:when>
        <xsl:otherwise>f40e1b19-186b-5c47-8274-00caaab92aae</xsl:otherwise>
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>f6ec86d1-0a6f-5468-92e7-babc7055a220</institutionId>
  </xsl:template>

</xsl:stylesheet>
