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
    <identifierTypeId>06924a73-fff3-55da-b030-66679a8c3516</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='2LC'">dfad4d91-89c4-5612-8b71-431e8d1e3640</xsl:when>
        <xsl:when test=".='3LC'">76024497-ec0b-5757-88b2-fd4ab6ac7651</xsl:when>
        <xsl:when test=".='4LC'">a7035487-be6c-51f6-8240-70fe99bbfcb1</xsl:when>
        <xsl:when test=".='CURR'">4f6d7a90-c729-5a89-ab10-c910cc1345e5</xsl:when>
        <xsl:when test=".='FAC'">45e7f462-033c-5b91-b56a-e7943e0cef2e</xsl:when>
        <xsl:when test=".='FDI'">bf851147-bd24-5689-b700-0dcb6cf75718</xsl:when>
        <xsl:when test=".='GNC'">44bb21bd-f0ab-5e7f-9508-a2b181d8bf7a</xsl:when>
        <xsl:when test=".='2LCN'">e60fccc4-f4dc-59c2-aade-476117fc0b60</xsl:when>
        <xsl:when test=".='3LCN'">85966458-a7c0-513a-b444-601fd0443b2e</xsl:when>
        <xsl:when test=".='4LCN'">422b5a9c-0820-5840-b670-42ca5942ca89</xsl:when>
        <xsl:when test=".='ARCHIVES'">6260aaa6-be81-5928-8c1c-227b18050c18</xsl:when>
        <xsl:when test=".='BIBSERV'">7493a56a-2194-59c6-b104-8cb4893df895</xsl:when>
        <xsl:when test=".='CD'">5e17643e-0198-506b-b454-5286fc2f35c5</xsl:when>
        <xsl:when test=".='CIRCDESK'">3f5a9d6d-0224-597b-8c7f-06037cfb5319</xsl:when>
        <xsl:when test=".='DISPLAY'">486eb1e9-119a-5bb9-9408-832dd10adf31</xsl:when>
        <xsl:when test=".='DVD'">da0d1bfe-45d5-58e6-bfbb-d47f4b11d6aa</xsl:when>
        <xsl:when test=".='EBKLN'">c84df2ae-1376-5c38-8c3f-4b0ed987f3cc</xsl:when>
        <xsl:when test=".='EBOOK'">aeb39cb9-3758-5d9e-ac5a-7364ff10a368</xsl:when>
        <xsl:when test=".='EBPALCI'">972c72c1-9f57-5af0-9f72-5e3076e08c41</xsl:when>
        <xsl:when test=".='EBSCOEB'">2506ab50-c42c-5cd2-8c26-9d115e59d5a2</xsl:when>
        <xsl:when test=".='EJOUR'">d65c1365-3718-516c-b390-c1e31bb3d3cc</xsl:when>
        <xsl:when test=".='ELECTRONIC'">8c9121a7-a864-5585-8382-6a2f11f27d9a</xsl:when>
        <xsl:when test=".='EQUIP'">488ef215-0752-5b35-b92c-fa76b5ae39c7</xsl:when>
        <xsl:when test=".='EREF'">83e9b3a0-1232-5184-8ebb-1b1045294502</xsl:when>
        <xsl:when test=".='EZ'">5741cf7e-c780-5990-bcf6-4e33225f5d9a</xsl:when>
        <xsl:when test=".='EZB_LEND'">d1a04b1f-3643-5a9e-881c-dd100d72b526</xsl:when>
        <xsl:when test=".='EZBOR'">4226ca71-30a6-52ee-89e1-dca85b56c4ee</xsl:when>
        <xsl:when test=".='MFICHE'">2b33c69f-fbfd-5dbd-9b5f-37dab9ffd4c5</xsl:when>
        <xsl:when test=".='MFILM'">4e95e974-a162-5642-bf2d-4889526cb642</xsl:when>
        <xsl:when test=".='NEW'">4b64a66e-c360-58e5-a908-75f48841223c</xsl:when>
        <xsl:when test=".='OLT'">24f7e166-a048-5293-82c6-9d9945cc6acc</xsl:when>
        <xsl:when test=".='ONOR'">8cf0f356-6863-5553-a8f3-45057d4b1f24</xsl:when>
        <xsl:when test=".='OVERNIGHT'">4cc13f7a-eae7-5512-bbc0-4b777f135b59</xsl:when>
        <xsl:when test=".='OVID'">6c6f629c-f2a2-522b-b246-cb8175586200</xsl:when>
        <xsl:when test=".='OVIDN'">9501815d-a559-5bea-89ee-eb1ea5121c8c</xsl:when>
        <xsl:when test=".='OXFORD'">42c39682-08f3-5e6c-bdd1-ff7d85756219</xsl:when>
        <xsl:when test=".='PBRAY'">8ef714ec-44fb-5fb9-9703-7f9ce44bce42</xsl:when>
        <xsl:when test=".='PDVD'">0930b968-f3ca-5b4a-bdde-e629c7f4b2d3</xsl:when>
        <xsl:when test=".='POPULAR'">fa42d131-b183-503e-90e1-3762116828c6</xsl:when>
        <xsl:when test=".='RESERVE'">5b412b1b-bc62-50a0-9d80-9b96c164726e</xsl:when>
        <xsl:when test=".='SC'">d08c110b-f171-5ac2-b743-8469fb72a1b0</xsl:when>
        <xsl:when test=".='SP'">c1115439-3a23-5ec4-b559-19ec9feec545</xsl:when>
        <xsl:when test=".='TEMP'">9ff7aa43-c968-5183-8bb4-1031db728b65</xsl:when>
        <xsl:when test=".='UNASSIGNED'">098ca00d-342d-58dd-8f29-492e3a324671</xsl:when>
        <xsl:when test=".='unassigned'">7d8fa1d1-a47c-50ac-8bc6-2a488e115df1</xsl:when>
        <xsl:when test=".='VGAMES'">dd832a2b-1cec-5090-9b3d-7ae6955ec32a</xsl:when>
        <xsl:when test=".='VIDLC'">fbd64b03-f58b-5787-8c67-9792416fc7fe</xsl:when>
        <xsl:when test=".='WD'">0b237750-bcf5-57c1-9fd2-9caced9c59df</xsl:when>
        <xsl:otherwise>41330e29-c3d5-5bf0-820e-1875c42f7302</xsl:otherwise> <!-- Unmapped (US-PCALS) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>3422cfe2-0a05-5295-8fb4-a863b3ae9537</institutionId>
  </xsl:template>

</xsl:stylesheet>
