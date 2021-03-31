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
    <identifierTypeId>9a0738d1-837c-57ee-914f-6c841e6ae652</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='Fairchild - 5th Floor - North'">e80de38f-e2ca-5d81-ad10-b2d135db1b3e</xsl:when>
        <xsl:when test=".='Fairchild - 6th Floor - North'">29ef01ca-94c5-5c57-b66c-f51ec2d7a71f</xsl:when>
        <xsl:when test=".='Fairchild - 6th Floor - North - Media Collection'">0af6459f-453e-55d0-8832-877c38913961</xsl:when>
        <xsl:when test=".='Fairchild - 7th Floor - North'">cbb4fb9a-52d1-5d75-908d-1010225bf4eb</xsl:when>
        <xsl:when test="starts-with(., 'Fairchild')">4ddafcc9-8337-5b18-a1a0-0909ef8552c2</xsl:when> <!-- Unmapped (Fairchild)-->
        <xsl:when test=".='LMC-B'">1f4e844d-bddc-5279-9edb-12803a26f007</xsl:when>
        <xsl:when test=".='LMC-G'">7c91806e-3578-59e1-b775-bec9984989ee</xsl:when>
        <xsl:when test="starts-with(., 'LMC')">a5c0c54f-bfc4-57bd-993c-545f188ee6f8</xsl:when> <!-- Unmapped (LMC)-->
        <xsl:when test=".='Linderman 1st Floor - Reading Room - Faculty Authors'">b8ca19ca-bbab-5d8a-b139-8d55e938eb3c</xsl:when>
        <xsl:when test=".='Linderman 1st Floor - Reading Room - Juvenile Collection'">9e761a24-9ea6-5444-b551-68a067bc5603</xsl:when>
        <xsl:when test=".='Linderman 1st Floor - Reading Room - New Books'">5a6ab47d-e280-54e5-a18b-44fade81ec16</xsl:when>
        <xsl:when test=".='Linderman 1st Floor - Reading Room - Reading Room Collection'">9c580620-1d27-5750-a50c-071b168234d2</xsl:when>
        <xsl:when test=".='Linderman 1st Floor - Rotunda'">70e472d7-e090-5b41-8849-bf78c76b9867</xsl:when>
        <xsl:when test=".='Linderman 2nd Floor - Rotunda'">e9c807e0-cc81-56c3-9a86-5a07d9eea7ef</xsl:when>
        <xsl:when test=".='Linderman 3rd Floor - Rotunda'">17545f48-9d18-5c27-92a0-e43e16cec55e</xsl:when>
        <xsl:when test=".='Linderman 3rd Floor - Stacks'">03cd5e0d-4922-5611-ab0b-bcdb2e33a67e</xsl:when>
        <xsl:when test=".='Linderman 4th Floor - Stacks'">6814cd96-ea13-5c5e-b9b6-5a16edd230c8</xsl:when>
        <xsl:when test=".='Linderman Ground Floor - Lower Level'">a467df66-2607-544f-978f-9c0053c00591</xsl:when>
        <xsl:when test=".='Linderman Ground Floor - Upper Level'">33a82743-8e89-5374-ba7a-31359ad17771</xsl:when>
        <xsl:when test=".='Lucy's Cafe - Linderman Ground Level Rotunda'">4a4f015e-21c8-5e11-9bbc-1e666f47e92d</xsl:when>
        <xsl:otherwise>b654c014-4bf5-52aa-ac7c-790cfeaa11ae</xsl:otherwise> <!-- Unmapped (Linderman) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>fba46c73-8ea2-51e2-bc9a-1188da738a59</institutionId>
  </xsl:template>

</xsl:stylesheet>
