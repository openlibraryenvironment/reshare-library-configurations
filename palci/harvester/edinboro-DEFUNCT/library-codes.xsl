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
    <identifierTypeId>51db3164-fbd8-51a2-9a3f-ffd782b647d4</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='Book4'">bc4bf4e4-9e71-54ed-b20d-a80bb2f02439</xsl:when>
        <xsl:when test=".='Book5'">c1e4a242-4177-50ff-8264-63350434610d</xsl:when>
        <xsl:when test=".='Book6'">3385a6b5-6681-58a6-9552-f6c1d938d659</xsl:when>
        <xsl:when test=".='Juvenile'">e379b05d-b55c-5a6c-80d9-e32a7e42caab</xsl:when>
        <xsl:otherwise>b0c5ac42-88a4-5af1-b51d-f21bac62d1fb</xsl:otherwise> <!-- Unmapped (US-PEDIS) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>4781fbde-66c5-5e5a-a32a-0cda28677632</institutionId>
  </xsl:template>

</xsl:stylesheet>
