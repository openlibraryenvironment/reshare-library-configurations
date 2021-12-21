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
    <identifierTypeId>2fd900c6-50d5-5f1e-a017-a89e0950f8af</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".=' '">cbd49f4b-ba46-5dc4-bbbb-45919036bf7e</xsl:when>
        <xsl:when test=".='  '">d5a4bba7-e6f8-582e-8556-26edad2197dd</xsl:when>
        <xsl:when test=".='# '">cb14a436-cfd3-57d1-b4b5-b2cee5fbaa3a</xsl:when>
        <xsl:when test=".='+ '">955aa685-61b8-5e16-b20d-836c7e49062d</xsl:when>
        <xsl:when test=".='++ '">d8a48f56-5d50-5b26-b094-3029d955a06e</xsl:when>
        <xsl:when test=".='A.D. White '">e75cdddc-3794-581f-8ae9-e6876761e20a</xsl:when>
        <xsl:when test=".='A.D.White '">0f33e755-c91c-5719-8ec8-3db5059a66ae</xsl:when>
        <xsl:when test=".='Adelmann '">a40e849f-a55d-573e-a550-de2e723c5007</xsl:when>
        <xsl:when test=".='Anhinga '">007fa022-7ec6-5f54-8338-0b4c90150790</xsl:when>
        <xsl:when test=".='Archives '">6c80b403-870c-5e7c-8b7f-0f92122609ff</xsl:when>
        <xsl:when test=".='Artists' Book Collection '">d09df1db-8001-5491-93bb-6c77ab905fd3</xsl:when>
        <xsl:when test=".='Asia Rare '">b67243e3-70f6-54e5-be5a-c7360c60eb09</xsl:when>
        <xsl:when test=".='Bennett Collection '">1f7e8c17-09ad-58d8-932c-0a09769d5dee</xsl:when>
        <xsl:when test=".='Boyle '">902a3784-f1e6-5507-ac19-d5017d83fe54</xsl:when>
        <xsl:when test=".='Common '">ecd7d2b6-34f4-53ab-8b9f-7252dc1a9f90</xsl:when>
        <xsl:when test=".='Cornelliana '">1f9b64d0-8bb0-55f1-9e09-2ce5537cee13</xsl:when>
        <xsl:when test=".='Dante '">4af1fb00-d5f1-5557-98b9-bd83785d8679</xsl:when>
        <xsl:when test=".='Deam Room '">ff35905b-a422-513e-9bc5-472d284ca7ce</xsl:when>
        <xsl:when test=".='Dean Room '">b6f719d3-e129-5a57-a78a-1aba617b5f9e</xsl:when>
        <xsl:when test=".='Disk '">71fb44d5-0735-5985-853a-6cbce9644c25</xsl:when>
        <xsl:when test=".='Ellis '">1b2e163c-ddc6-5fe8-8ade-d2311c83386c</xsl:when>
        <xsl:when test=".='Flat '">631003f8-2897-51a3-af79-9e42009dfed5</xsl:when>
        <xsl:when test=".='Hill '">b8a84bb7-b677-56f6-8a28-603fc2a012c2</xsl:when>
        <xsl:when test=".='History of Science '">cdec4f6a-8308-56c2-a549-ed057432b0e5</xsl:when>
        <xsl:when test=".='Hollister '">f298d2d3-a5ac-58df-b9a6-72b8cb8e2109</xsl:when>
        <xsl:when test=".='Human Sexuality '">19535eb7-3c09-501b-8e25-fb0e8923001a</xsl:when>
        <xsl:when test=".='Icelandic '">65227de3-0549-5f9e-a80c-2b84a87ac964</xsl:when>
        <xsl:when test=".='Juries Collection '">86ecff14-05f7-50a7-9a97-767ddbfde93e</xsl:when>
        <xsl:when test=".='Lavoisier '">b356cb8d-74c4-5051-a42f-8910c1729ed4</xsl:when>
        <xsl:when test=".='Linowitz Collection '">77820b39-7271-57ef-b768-19d86faf2048</xsl:when>
        <xsl:when test=".='Microfiche '">3bb0f338-d48c-5984-b8b4-152667511fa2</xsl:when>
        <xsl:when test=".='Newspapers '">72aa192a-a315-56b9-b9b8-31a03ea60cb5</xsl:when>
        <xsl:when test=".='Office '">08f68be7-f8c7-5f0c-8940-a7ddd33ca665</xsl:when>
        <xsl:when test=".='Oversize '">919aa917-ebd2-58e7-86c6-6a673f152309</xsl:when>
        <xsl:when test=".='Petrarch '">367e2aec-14a3-5168-8368-cc6dae7bb85c</xsl:when>
        <xsl:when test=".='Prep '">4328d909-edda-5de8-b4d0-d7c6af3ab89c</xsl:when>
        <xsl:when test=".='Rare Books '">8cc6c022-8b31-5de1-8c13-f0aaefe24245</xsl:when>
        <xsl:when test=".='Reading Room '">41ee9490-51b4-559f-bd3a-ba4ee186618e</xsl:when>
        <xsl:when test=".='Rolled map '">c4fc2d69-96c0-51fe-ab3c-315d2ef47e35</xsl:when>
        <xsl:when test=".='Safe '">dfbbbc8a-c676-5995-839a-8d45855ec611</xsl:when>
        <xsl:when test=".='Shaw '">49e9da6e-af2b-571b-a82b-87879dac9dc5</xsl:when>
        <xsl:when test=".='Shelf '">d9f92e22-a088-5e57-a410-4784e610b380</xsl:when>
        <xsl:when test=".='Special Reserve '">c351690f-9ec9-54b8-b9c6-12a222c2a072</xsl:when>
        <xsl:when test=".='Thesis '">f3c1d4dc-b5a9-5a66-b8ad-f06a21fd9601</xsl:when>
        <xsl:when test=".='Trials '">f8179ebc-8f28-5336-8550-c9bcac3f68ed</xsl:when>
        <xsl:when test=".='Witchcraft '">63fb3ba2-4d9a-571f-aace-b6d7f408f862</xsl:when>
        <xsl:when test=".='Wordsworth '">e9bb268f-e7f4-598a-aaf4-7c1f11c58860</xsl:when>
        <xsl:when test=".='maps '">cc7b0316-dee5-5e3a-89a4-44e58c2f42e6</xsl:when>
        <xsl:when test=".='maps Shelf '">fa175e64-312f-5a65-ac49-2c2dfb67c31c</xsl:when>
        <xsl:otherwise>ff8ae53c-d85a-564a-9e74-dd39b758597f</xsl:otherwise> <!-- Unmapped (US-NIC) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>034f6d15-97b2-5baa-9d7f-40746f10bacc</institutionId>
  </xsl:template>

</xsl:stylesheet>
