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
    <identifierTypeId>92ec40e0-c35d-5e92-bd9b-e1916452a34b</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='Archives'">105f46fd-7c9d-5f71-817d-7daa7425eae7</xsl:when>
        <xsl:when test=".='CCB Collection'">07bbdd68-4644-59ed-a7d2-f967805776f3</xsl:when>
        <xsl:when test=".=&quot;Children's Book Display&quot;">f8a5172d-2cbb-5fd6-aec2-f56ce5799d0a</xsl:when>
        <xsl:when test=".='Course Reserves'">34b52960-bfcb-52e5-825c-7a43e9da3b1d</xsl:when>
        <xsl:when test=".='Extremely Oversized Books'">1fba09a7-a94d-599f-9813-90815ddb0689</xsl:when>
        <xsl:when test=".='General Book Stacks'">70efe045-39cf-5232-a4a3-6d11cebf7e52</xsl:when>
        <xsl:when test=".='Help Desk'">eee2b737-3726-535d-adc2-179201b93186</xsl:when>
        <xsl:when test=".='Juvenile Book Collection'">6868c4b2-9694-5176-9071-209f7f300a1f</xsl:when>
        <xsl:when test=".='Juvenile Easy Read Books'">2ff605cc-c95d-51f2-b1ec-790362a7e9fd</xsl:when>
        <xsl:when test=".='Juvenile Picture Books'">76dbe4b3-b6db-56d8-94c6-04eb1690653b</xsl:when>
        <xsl:when test=".='Laptop Cart'">fa914ef6-80c3-59a8-b629-199881efceff</xsl:when>
        <xsl:when test=".='Library Staff Office'">5c6f5ae4-eb40-587f-81f7-59f43184eb8f</xsl:when>
        <xsl:when test=".='Media Stacks'">e525061c-7b4b-5529-8510-4926f6b4f6e1</xsl:when>
        <xsl:when test=".='Microfilm Cabinets/Periodicals'">5a91d3d4-d0d4-59d6-b3a3-166e1c28e62a</xsl:when>
        <xsl:when test=".='Monuments Collection'">3997c44c-20c4-5647-a57e-7121903d7d73</xsl:when>
        <xsl:when test=".='Oversized Atlas Case'">8b0cafda-d073-5f4e-b18f-3f20c7a0fe88</xsl:when>
        <xsl:when test=".='Oversized Book Stacks'">986cc09f-b1a5-58c7-aa49-55e7607088cd</xsl:when>
        <xsl:when test=".='Periodical Office'">14033f93-e836-5bec-b3a5-a21949426a4d</xsl:when>
        <xsl:when test=".='Periodical Stacks'">1a12cc0a-8b6a-54c7-91f1-7f58e8022976</xsl:when>
        <xsl:when test=".='Permanent Reserve (Circ Desk)'">d1e25a6b-8ece-55f6-82d9-4eebbad637e1</xsl:when>
        <xsl:when test=".='Reference Book Stacks'">16044456-fc53-53a8-abdd-e3684c0d6e5d</xsl:when>
        <xsl:when test=".='Special Collections'">34f4e840-35ec-52f9-a150-c1c97df66ab4</xsl:when>
        <xsl:when test=".='Westminster Authors Collection'">e287db7c-756a-57f7-8cd1-6a4f6ad37ed5</xsl:when>
        <xsl:when test=".='Young Adult Books'">a109dbfe-48c7-59ca-b542-44b484a7f16f</xsl:when>
        <xsl:otherwise>343b1ea4-ebde-54be-bd1c-b19624391063</xsl:otherwise> <!-- Unmapped (US-PNWC) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>33a11f2a-ca34-5b17-952b-b63b729b4baf</institutionId>
  </xsl:template>

</xsl:stylesheet>
