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
    <identifierTypeId>3fa26ecb-0369-5d36-81a5-2d653c1325ff</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='graphic_no'">efef4bd9-b001-58ca-ac8a-c9ffbf107d73</xsl:when>
        <xsl:when test=".='stacks'">afb77bf3-174b-5f34-9928-f17ecc960f25</xsl:when>
        <xsl:when test=".='juvenile'">e8a4363b-3557-53f5-bab8-0c1d9f91b457</xsl:when>
        <xsl:when test=".='circ'">5f54c895-9b22-5034-a9d0-fafb1da8b6ed</xsl:when>
        <xsl:when test=".='oversize'">96167cce-cdea-5f6b-b103-9f6b2dee488b</xsl:when>
        <xsl:when test=".='remote'">04a615ee-b8c7-57a6-9c81-59c1c3731bc2</xsl:when>
        <xsl:when test=".='specialcol'">34817676-373a-5bbb-bd17-77db1fb60fe1</xsl:when>
        <xsl:when test=".='reference'">bf8315ad-018c-575d-a749-890e251d8b80</xsl:when>
        <xsl:when test=".='regional'">bd4c2e9f-62b0-5645-83df-264dd922929c</xsl:when>
        <xsl:when test=".='hres'">d104155e-5ae4-529b-8728-ed0713777f72</xsl:when>
        <xsl:when test=".='olderref'">83a6650c-6d6e-5d49-8ccd-04522fd0d5fb</xsl:when>
        <xsl:when test=".='display'">22efb92b-664f-54d1-abeb-f3a3b00d33e9</xsl:when>
        <xsl:when test=".='new books'">e7885504-1e37-5ef3-87bb-e8493f22d446</xsl:when>
        <xsl:when test=".='perm_res'">112b52d8-3d42-5d6f-b17f-9b6b660c22fe</xsl:when>
        <xsl:when test=".='reserve'">499c9f47-97f4-51ed-b36a-01ef3b00e0e6</xsl:when>
        <xsl:otherwise>c2b05ff2-e72d-5348-9228-7bc49d8e5a7a</xsl:otherwise> <!-- Unmapped (US-NPKMC) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>f2eae38c-eba7-54e0-ac3c-1250a41eba84</institutionId>
  </xsl:template>

</xsl:stylesheet>
