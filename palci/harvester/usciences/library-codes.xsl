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
    <identifierTypeId>5077ef70-2618-5e40-a84a-4a81d68e6d28</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='Main'">5da30e53-7896-5ff4-863e-c4ebaa85fd5d</xsl:when>
        <xsl:when test=".='Leisure'">62478e17-067e-52b1-b7b9-0cfe66739f28</xsl:when>
        <xsl:when test=".='Archives'">6e127f9b-0bb4-5d24-93f0-92441e2c3217</xsl:when>
        <xsl:when test=".='BoardGames'">8eb196bb-75b7-591f-bab4-bd348eac149a</xsl:when>
        <xsl:when test=".='BookDisplay'">c2978bba-68c6-5d9b-a3a2-b17ed25dc66e</xsl:when>
        <xsl:when test=".='Career'">ab4b3ad0-857c-5035-bf40-127496bc6bbb</xsl:when>
        <xsl:when test=".='CD'">5d970ba9-03db-5fd2-9805-43029b118739</xsl:when>
        <xsl:when test=".='Coursereserves'">4af7aee7-62da-53f5-a658-811bce426086</xsl:when>
        <xsl:when test=".='DVD'">3362069b-bac8-5512-93c4-9dc0d7ba8d7a</xsl:when>
        <xsl:when test=".='Circ'">da440db4-9227-551d-9cb4-decf8b449e52</xsl:when>
        <xsl:when test=".='Journals'">4fb65ba2-42ea-5b07-bc66-b470fc4d97a1</xsl:when>
        <xsl:when test=".='Kits'">0aec8ab6-ffc2-5b53-a6c6-a360c9d6ee1b</xsl:when>
        <xsl:when test=".='Laptops'">d02a5767-183d-5666-9273-e90087020010</xsl:when>
        <xsl:when test=".='MainNoCirc'">15f1b649-f103-5d30-9a80-964fbea10e18</xsl:when>
        <xsl:when test=".='Microfiche'">e193731e-b06e-56f6-ad07-81c84605d096</xsl:when>
        <xsl:when test=".='Microfilm'">83369ba3-55ad-51b5-9557-5b0db3591779</xsl:when>
        <xsl:when test=".='NewBooks'">d053fc2c-a8d4-51d2-b2f9-2c99d33d8afd</xsl:when>
        <xsl:when test=".='PALCI'">772b0fbf-2dc0-524e-b009-9e401e279cc4</xsl:when>
        <xsl:when test=".='RareBooks'">9238ef55-43ff-5355-acec-a5c30ebffc25</xsl:when>
        <xsl:when test=".='ReadyRef'">0bff2858-071f-5679-a072-5222dc74d99d</xsl:when>
        <xsl:when test=".='Reference'">9fbef948-880c-5204-91d2-131e21335c5c</xsl:when>
        <xsl:when test=".='Relais2'">effa13fa-567e-519e-9bc4-73f0ebdf97d6</xsl:when>
        <xsl:when test=".='Cat'">88a04c7b-457d-50bc-a695-668f4dbe760c</xsl:when>
        <xsl:when test=".='VHS'">d62409c2-e6d8-5a10-b1f5-7de8d6c99aba</xsl:when>
        <xsl:otherwise>ac3d4981-aa21-5f35-a0dd-779b0d9035d3</xsl:otherwise> <!-- Unmapped (US-PPPCPH) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>da0003bf-3da1-5046-a3eb-1644b88396a8</institutionId>
  </xsl:template>

</xsl:stylesheet>
