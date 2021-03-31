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
    <identifierTypeId>f7979a2e-d330-5fb8-86cd-06bd07bd4e28</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='ya'">ac40fb5c-0997-5f3b-9d55-e85aef90e6ea</xsl:when>
        <xsl:when test=".='juv'">f845955c-eba4-50ed-8798-4d47d54248da</xsl:when>
        <xsl:when test=".='brows'">e9bb4b4e-bb79-5850-9a99-76fc99d3c7e5</xsl:when>
        <xsl:when test=".='circ'">e243257e-c627-5d51-bf87-a53e6821ec56</xsl:when>
        <xsl:when test=".='dvd'">bbf6cba0-9bfc-5cda-95a9-52ea69788493</xsl:when>
        <xsl:when test=".='educ'">6593ce22-1e54-5d72-a713-6efa732609b7</xsl:when>
        <xsl:when test=".='ref'">e7d7c78f-82f8-58c6-bac3-1ea2e5eb8a3f</xsl:when>
        <xsl:when test=".='cd'">d3fe1185-c1ed-5086-b920-08a52b6e3c7b</xsl:when>
        <xsl:when test=".='jcal1'">68034a42-3261-501d-a28b-8b166118cc04</xsl:when>
        <xsl:when test=".='jcha1'">b5620542-a811-5801-ae59-b8cfc78d34db</xsl:when>
        <xsl:when test=".='jcha2'">f1a51ca9-e1f9-518c-b2e0-83cb91dfc320</xsl:when>
        <xsl:when test=".='jcha3'">e5ba5777-c128-5bb0-94a3-1afeb1e3525e</xsl:when>
        <xsl:when test=".='jcha4'">1ba06ba2-90f1-57a2-8970-cde4a248f38f</xsl:when>
        <xsl:when test=".='jcha5'">0b708880-68eb-5871-bfa6-158e6ac608ae</xsl:when>
        <xsl:when test=".='jcha6'">8ec49920-9fdd-5a7c-a9fe-94f52a59a9b3</xsl:when>
        <xsl:when test=".='jcha7'">3e000ab7-a520-5831-9b7b-810d7ad4768e</xsl:when>
        <xsl:when test=".='jmat1'">313b7d00-7bca-520e-91af-a434164636a9</xsl:when>
        <xsl:when test=".='jnew1'">4e8d6577-fb88-503b-b11b-4b88d443f16a</xsl:when>
        <xsl:when test=".='jnew2'">ef36ddf5-906b-5d56-9d41-bd4ccc2a7237</xsl:when>
        <xsl:when test=".='jnew3'">58cfef0e-81a0-5ef7-9074-8ff100f4da79</xsl:when>
        <xsl:when test=".='jnew4'">a3017963-d1dd-5845-87bc-e255c51a8e34</xsl:when>
        <xsl:when test=".='jpic1'">7aad2761-ddc2-5dc2-9075-c1958be212b8</xsl:when>
        <xsl:when test=".='jpic2'">baf2dbf1-0a3f-5c3e-a421-2f09c92f03de</xsl:when>
        <xsl:when test=".='jpic3'">1b2df488-485e-5239-9ca5-7271a7ad7f69</xsl:when>
        <xsl:when test=".='jpic4'">7bed3b48-e91a-54ec-a28a-72a75c567534</xsl:when>
        <xsl:when test=".='jpoet'">c450b8be-4f22-5f9c-9683-301660e04022</xsl:when>
        <xsl:when test=".='jscie'">73190d6d-a4c2-5d52-89a3-61a9dafde400</xsl:when>
        <xsl:when test=".='jsoc'">88e56061-5784-5bc8-b001-a24ec195c8e0</xsl:when>
        <xsl:when test=".='jsoc1'">923252ea-7494-567e-b348-d64d989e6472</xsl:when>
        <xsl:when test=".='jsoc2'">05d4bbe0-5bf7-51a6-9c70-baea17486a41</xsl:when>
        <xsl:when test=".='jsoc3'">6dabfb26-80b9-51f8-9294-a215ed15c9c9</xsl:when>
        <xsl:otherwise>1e2421ca-eeb8-5826-8886-619847580b8f</xsl:otherwise>
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>f49ba6cf-dbb7-51d8-af9c-0df717b18c55</institutionId>
  </xsl:template>

</xsl:stylesheet>
