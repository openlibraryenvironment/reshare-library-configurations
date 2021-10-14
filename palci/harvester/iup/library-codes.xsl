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
    <identifierTypeId>c801d9d7-b1ed-504c-85df-aaf622eb998d</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='PZIO'">928b0f4c-ee3e-5014-9be8-16339747f35a</xsl:when>
        <xsl:when test=".='SHAFER'">4a92ce63-192c-5273-870f-7944cc3b8017</xsl:when>
        <xsl:when test=".='PZII'">ff2e590b-12df-5f56-ad09-ec2e7f3a0674</xsl:when>
        <xsl:when test=".='PZIT'">b1f8e2d7-151e-50b7-811b-90e7302fda78</xsl:when>
        <xsl:when test=".='PZI1'">5b3491c0-fd79-5d10-a0f7-769dd41b316a</xsl:when>
        <xsl:when test=".='PZI2'">faa9b307-5db4-570a-a8a5-e8c5aafed85d</xsl:when>
        <xsl:when test=".='GNOV'">cdb24e9c-ade7-5761-af7d-e25588c0d596</xsl:when>
        <xsl:when test=".='ETD'">5a3e37e7-7148-564b-b17b-6fbc235bf9b4</xsl:when>
        <xsl:when test=".='PZIQ'">825c21e4-536b-5d58-8f3e-dc964406a776</xsl:when>
        <xsl:when test=".='CIRCMUSIC'">2817e02c-0834-5e75-9d4a-13ab55e79677</xsl:when>
        <xsl:when test=".='LDC'">df7e55e2-386c-58c1-b875-1255ef698df3</xsl:when>
        <xsl:when test=".='LDN'">2ff29afe-5d29-5822-9ec1-feacb27683d9</xsl:when>
        <xsl:when test=".='MUSRES'">ef0cd36d-c985-51e3-a7a8-b05584e1d5a5</xsl:when>
        <xsl:when test=".='PZI0'">ebb562ee-0283-582c-bc4f-93068e205422</xsl:when>
        <xsl:when test=".='PZI9'">515de07c-386a-5626-8d7d-674c2a32ea56</xsl:when>
        <xsl:when test=".='UNASSIGNED'">01a88afc-040b-590e-91f1-0528201c3006</xsl:when>
        <xsl:when test=".='PZISer'">a0578465-4f34-5203-b269-1207455d4849</xsl:when>
        <xsl:when test=".='PZI4'">cf9515d1-201a-530f-9a71-588a55bce704</xsl:when>
        <xsl:when test=".='CIRCMEDIA'">7a3f01dd-cfd1-541b-a6eb-29244c607288</xsl:when>
        <xsl:when test=".='DEAN'">1dc126f4-db98-5275-8014-de542875455f</xsl:when>
        <xsl:when test=".='SPECCOLL'">d26b8566-0cdc-5aec-bb4a-9ea3eb36da55</xsl:when>
        <xsl:when test=".='NPC'">285634da-a562-5ea2-8e73-a691ad2a6af3</xsl:when>
        <xsl:when test=".='PXYRES'">a73f0cad-9afd-5613-badc-c249ffbf1c34</xsl:when>
        <xsl:when test=".='PZI5'">ecbb2ab9-bac7-5054-a635-8b4e0cc7cb05</xsl:when>
        <xsl:when test=".='PZI6'">1de8d22c-8e83-5978-a8c4-e1ffac8d1394</xsl:when>
        <xsl:when test=".='ILL'">066c385d-9cec-5642-8c4f-a867c99649e1</xsl:when>
        <xsl:when test=".='IN_RS_REQ'">f1427700-94ef-5898-941f-5ac69ffb870d</xsl:when>
        <xsl:when test=".='None'">3a8fabb5-e83f-5aba-ba84-a1550cfbd362</xsl:when>
        <xsl:when test=".='OUT_RS_REQ'">9b6542ed-14c3-5534-824c-250af016a9a7</xsl:when>
        <xsl:when test=".='ResourceLocated'">eb97940c-0714-5ba7-a75a-a1df0a949803</xsl:when>
        <xsl:otherwise>7022fe2f-9a3e-5754-b4ea-0a78d6911f60</xsl:otherwise> <!-- Unmapped (US-PINU) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>3bf77ae6-4270-5b27-b4aa-674b3a9bd59a</institutionId>
  </xsl:template>

</xsl:stylesheet>
