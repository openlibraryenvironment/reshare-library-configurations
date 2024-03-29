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
    <identifierTypeId>54ee8e74-a06e-4f05-a44e-6ec1bdb39d8f</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='vxwa'">c8aaa318-4e28-52ef-bf84-224b7e83eeb3</xsl:when>
        <xsl:when test=".='argr'">88cb9686-7a39-59bd-b27b-28386aab928b</xsl:when>
        <xsl:when test="starts-with(., 'ar')">6fe10714-0051-55d4-a0fd-3579fe3048f8</xsl:when> <!-- Unmapped (ART)-->
        <xsl:when test=".='vxwm'">84756921-6194-501b-9e7b-0bd84a8cf19a</xsl:when>
        <xsl:when test=".='vxwb'">cc3a6b7a-6088-5b36-9327-85cd9448fe68</xsl:when>
        <xsl:when test=".='musfo'">2495b89a-0bbe-5270-b613-142f2a21823a</xsl:when>
        <xsl:when test=".='musov'">fb3e1de6-97a8-53e3-8692-5b5a02326dd1</xsl:when>
        <xsl:when test=".='mustr'">0edb0c64-7f38-59f7-a86e-52beb129dcf2</xsl:when>
        <xsl:when test=".='vxw2'">0f173681-e12b-5a24-99b8-6534ae7791d9</xsl:when>
        <xsl:when test=".='vxw3'">244763cf-cbba-5fcc-810b-06d502e6d262</xsl:when>
        <xsl:when test=".='vxwh'">3718d138-68e2-5332-b2ed-a3e9f6b550e9</xsl:when>
        <xsl:when test=".='vxwj'">f57a01dd-fe69-52eb-adc3-ca395ea1b7a7</xsl:when>
        <xsl:when test=".='vxwk'">11741648-37f8-5c82-8282-ca9258e7877c</xsl:when>
        <xsl:when test=".='vxws'">441703e4-33c6-5809-aafb-66087aaed38e</xsl:when>
        <xsl:when test="starts-with(., 'mu')">86a19283-a847-5ffe-b71e-df2810b4f47b</xsl:when> <!-- Unmapped (MAIN)-->
        <xsl:when test=".='annex'">1ab2ce19-5a5e-5162-be43-074504bbd829</xsl:when>
        <xsl:when test=".='vxwf'">203f6ac3-18da-5e7a-a043-5ea9160c6abc</xsl:when>
        <xsl:when test=".='vxwi'">791b252a-4cd5-57b9-994a-9553e7201b57</xsl:when>
        <xsl:when test=".='vxww'">fdbbad68-a541-553c-b544-4144b948adb2</xsl:when>
        <xsl:when test=".='ffmai'">2d9fbcea-b9e4-5053-806a-d4ea333ca530</xsl:when>
        <xsl:when test=".='micro'">d8f1748b-eb09-57d9-8308-a3f23c75e00a</xsl:when>
        <xsl:when test=".='vxwo'">d93de089-0794-50ca-9f8a-aa48462175bf</xsl:when>
        <xsl:when test=".='vxwu'">1644ee0a-7e99-5ec9-818d-9dac0cd2bca5</xsl:when>
        <xsl:when test=".='vxwua'">6c7719aa-72ac-52ea-bd98-aa7cdcda677a</xsl:when>
        <xsl:when test=".='vxwuc'">70151430-daea-54fc-ba41-065182703584</xsl:when>
        <xsl:when test=".='vxwug'">88f98f43-f497-5ac0-8494-6dc9a1707fa7</xsl:when>
        <xsl:when test=".='vxwui'">4835087c-2e50-5968-8520-00b635cd407a</xsl:when>
        <xsl:when test=".='vxwup'">0793b9be-88bb-574b-a027-6f16298eecf8</xsl:when>
        <xsl:when test=".='vxwv'">27fcbfeb-2e8f-5462-88fc-a50ecd6c9daf</xsl:when>
        <xsl:when test=".='spclm'">1ebf3253-9f45-52b3-ab0a-fdfd8400f393</xsl:when>
        <xsl:when test=".='spcol'">46ad633d-c380-5604-ac23-a239ca0584bf</xsl:when>
        <xsl:when test=".='vxw9'">095e4ddb-c092-51c8-8161-af59dd8197bd</xsl:when>
        <xsl:when test=".='vxwc'">de6c6e86-76ac-553d-b62b-cbf4dd21b376</xsl:when>
        <xsl:when test=".='vxwe'">033d6fe7-44cc-56fe-ad5f-c8ba5ad920cb</xsl:when>
        <xsl:when test=".='vxwg'">71565321-4b25-5901-9aa0-61a74e3f6648</xsl:when>
        <xsl:when test=".='vxwgt'">aaa8a29e-130d-54cd-a4c8-d34e9d3a8841</xsl:when>
        <xsl:when test=".='vxwl'">954fb0fa-62f9-5791-99e7-f8d4643b2258</xsl:when>
        <xsl:when test=".='vxwn'">bb1bf13d-309f-4bf5-be62-b7ebafe4c2e3</xsl:when>
        <xsl:when test=".='vxwnc'">745e4e48-e693-4a6c-8afd-d158fae9e6db</xsl:when>
        <xsl:when test=".='vxwy'">6a64d9dc-5cab-4d4c-be2e-2fca2f7b3ad4</xsl:when>
        <xsl:otherwise>e1b46825-1d43-52f3-a384-ac33c6fa33b0</xsl:otherwise> <!-- Unmapped (MAIN) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>673d9883-c905-5e2f-acf4-29e87ad4499f</institutionId>
  </xsl:template>

</xsl:stylesheet>
