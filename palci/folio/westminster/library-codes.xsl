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
        <xsl:when test=".='Archives '">ca295c83-7c9f-5245-9e95-3331cefcc9b1</xsl:when>
        <xsl:when test=".='CCB Collection '">232ce956-98a5-5b82-9167-20bc7061f0b6</xsl:when>
        <xsl:when test=".='Children's Book Display '">1deaae3f-314c-5088-a631-cc9d9c97e42a</xsl:when>
        <xsl:when test=".='Course Reserves '">40daa686-ba03-5643-9799-9b1cb9129845</xsl:when>
        <xsl:when test=".='Extremely Oversized Books '">82913d09-483f-580b-ad38-ba620ae39403</xsl:when>
        <xsl:when test=".='General Book Stacks '">0835d933-e24b-50af-a41e-ec7f517b4234</xsl:when>
        <xsl:when test=".='Help Desk '">9958e2df-2415-5d89-93a6-a1e5ec02cae7</xsl:when>
        <xsl:when test=".='Juvenile Book Collection '">98c2d3af-c19d-5bd4-afbc-75a0ff44ff1c</xsl:when>
        <xsl:when test=".='Juvenile Easy Read Books '">eb82a6ed-3f6d-52b1-800a-8ae114e1b414</xsl:when>
        <xsl:when test=".='Juvenile Picture Books '">08585d1e-5118-56ef-82a9-a8508992e722</xsl:when>
        <xsl:when test=".='Laptop Cart '">501f433c-5a4c-512d-b7e1-493ad487ce68</xsl:when>
        <xsl:when test=".='Library Staff Office '">378f268f-667c-5884-924b-725b273bd380</xsl:when>
        <xsl:when test=".='Media Stacks '">c7a3d8cc-9d19-5258-aba0-ee6c97b91d50</xsl:when>
        <xsl:when test=".='Microfilm Cabinets/Periodicals '">3b1b1535-d697-50a2-a59a-e51e123f1bf1</xsl:when>
        <xsl:when test=".='Monuments Collection '">6d2c11f4-9032-5c27-a43f-112deac92e23</xsl:when>
        <xsl:when test=".='Oversized Atlas Case '">a19cce51-ac22-5cff-b45a-e2f0db4414f2</xsl:when>
        <xsl:when test=".='Oversized Book Stacks '">7d0d515f-f461-5d47-b9a9-7d5c15798e6e</xsl:when>
        <xsl:when test=".='Periodical Office '">516d09eb-08e4-5965-9f45-c956c8013e21</xsl:when>
        <xsl:when test=".='Periodical Stacks '">eb80414c-4d35-53ee-be15-fba478b35d2f</xsl:when>
        <xsl:when test=".='Permanent Reserve (Circ Desk) '">13bc75da-c4e3-58c6-8788-b2ffc3413a67</xsl:when>
        <xsl:when test=".='Reference Book Stacks '">8f466f36-b6b7-5b73-b154-6029b4ccab8d</xsl:when>
        <xsl:when test=".='Special Collections '">997e93b9-434e-51ec-b9c8-4b5ef0266f66</xsl:when>
        <xsl:when test=".='Westminster Authors Collection '">1a3d5629-fcd8-5f24-9d5f-c7b8abae72e5</xsl:when>
        <xsl:when test=".='Young Adult Books '">427d4441-a404-5156-815e-97cdd953b97e</xsl:when>
        <xsl:otherwise>343b1ea4-ebde-54be-bd1c-b19624391063</xsl:otherwise> <!-- Unmapped (US-PNWC) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>33a11f2a-ca34-5b17-952b-b63b729b4baf</institutionId>
  </xsl:template>

</xsl:stylesheet>
