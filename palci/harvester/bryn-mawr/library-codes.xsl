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
    <identifierTypeId>d7a00b33-86c3-5f97-b6c0-1604edc16bec</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='bc'">98a742ac-b5ff-54c6-95f1-7f1e3afe540b</xsl:when>
        <xsl:when test=".='bcf'">6d8c4b29-8db0-5885-a73f-ba431235cd20</xsl:when>
        <xsl:when test=".='bcff'">f751e94c-09c1-5a1d-ac50-cbd87358984b</xsl:when>
        <xsl:when test=".='bcsfi'">226d6616-ca57-5d3f-982f-e165ca3ce783</xsl:when>
        <xsl:when test=".='bkraw'">4a97d6ba-5565-5961-98cd-7c202fe0da54</xsl:when>
        <xsl:when test=".='bxc'">931382b1-ee2c-5652-a98c-83918f0107e3</xsl:when>
        <xsl:when test=".='ba'">5f5ad878-a45f-516f-89a8-f54230805612</xsl:when>
        <xsl:when test=".='baf'">9019010d-d1c3-57ed-884b-85b80faba082</xsl:when>
        <xsl:when test=".='baff'">64bce46b-71a5-5e1d-95ad-0bec09a82c49</xsl:when>
        <xsl:when test=".='bs'">cb7e6bb3-56eb-5aa0-9d9f-635482549877</xsl:when>
        <xsl:when test=".='bsx'">fdb3dd08-d2c3-5cd7-bee9-d40910a716db</xsl:when>
        <xsl:when test=".='bsff'">c0a168f2-8b27-5b1c-a4c1-3af21ec28fa0</xsl:when>
        <xsl:otherwise>e77bba7f-c4a5-5193-aef3-da10e876e18a</xsl:otherwise>
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>7fd7c6ce-dc19-52a3-99ea-bc3d5f22959e</institutionId>
  </xsl:template>

</xsl:stylesheet>
