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
    <identifierTypeId>54a6d7df-9f83-51c6-8d62-93781df18b81</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='HHN d-dvd'">d392d9bd-52a8-54c3-8bf1-9d9348c0892a</xsl:when>
        <xsl:when test=".='HHN d-leisure'">c1f8d860-9ef6-50bd-a385-e1aef2e3fa20</xsl:when>
        <xsl:when test=".='HHN d-oversize'">23f2d565-ddc8-5263-bb66-ab915894abe0</xsl:when>
        <xsl:when test=".='HHN d-stacks'">df19b16f-7865-5e86-b695-60bb9b19d26f</xsl:when>
        <xsl:when test="starts-with(., 'HHN')">95fdac9b-e2cb-5d6e-aad1-a5916af16f12</xsl:when> <!-- Unmapped (HHN)-->
        <xsl:when test=".='QL d-dvd'">d6bc384f-36cb-549e-a0f0-d6ac0cb50843</xsl:when>
        <xsl:when test=".='QL d-stacks'">d9a30fd6-6bc9-5736-b3d6-790edd8d8a10</xsl:when>
        <xsl:when test="starts-with(., 'QL')">67b0b34b-28af-5d51-918d-ddd16541bc97</xsl:when> <!-- Unmapped (QL)-->
        <xsl:when test=".='WWH d-child'">46481070-c796-5f7c-8a85-6850bf32034f</xsl:when>
        <xsl:when test=".='WWH d-dvd'">7f48fc6b-0ee0-56c7-8d5c-7b5ed773e4ed</xsl:when>
        <xsl:when test=".='WWH d-leisure'">19a562c0-81a1-523e-9150-0a4a497974d8</xsl:when>
        <xsl:when test=".='WWH d-oversize'">e796be81-46f1-579f-942a-b9e7277b59e2</xsl:when>
        <xsl:when test=".='WWH d-stacks'">0b7fb07b-14c3-5820-b5e1-51c83cff31a6</xsl:when>
        <xsl:when test=".='WWH d-stacks-1'">444f6df8-3d34-5201-8819-4910cedc1c33</xsl:when>
        <xsl:when test=".='WWH d-td-1'">2b54fbb9-1440-52cd-871d-ba9a5f3fdd20</xsl:when>
        <xsl:when test=".='WWH d-teen'">e453d5de-5cca-5f9d-95b2-e5c4ba8abbae</xsl:when>
        <xsl:otherwise>1a9d4fa2-ee61-5442-9d86-5053f3af1366</xsl:otherwise> <!-- Unmapped (WWH) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>729ab720-1db9-51fd-a5d7-0aead16dd926</institutionId>
  </xsl:template>

</xsl:stylesheet>
