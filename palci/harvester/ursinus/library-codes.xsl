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
    <identifierTypeId>a85d1b4c-77ba-51ab-acf0-d9a5ba244700</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='Archives'">8e37a198-caa0-53e5-ba67-40995f1369cf</xsl:when>
        <xsl:when test=".='Audiobooks'">f2ec71ef-b7c4-5c91-a3d2-8df023cc8329</xsl:when>
        <xsl:when test=".='Being Cataloged'">1815df81-123a-5a92-b0b8-9ed8b2da7472</xsl:when>
        <xsl:when test=".='Berman Books'">5b945a62-3850-5b55-9d16-3722e0a10adb</xsl:when>
        <xsl:when test=".='Berman Museum of Art'">422aa3f8-6bbd-57e7-b619-7783b819e106</xsl:when>
        <xsl:when test=".='Berman Museum Library'">6f23c7d9-9079-5a3a-9589-47e3a5c02c67</xsl:when>
        <xsl:when test=".='Bestsellers'">c3a85f85-5004-59c9-82d9-47cc89ca64ee</xsl:when>
        <xsl:when test=".='Career &amp; Professional Development'">98881ebc-a8a3-54eb-86b7-fba41009e826</xsl:when>
        <xsl:when test=".='Chemistry Department'">ce0c6f4b-9c4a-535f-94e8-08c644a380e3</xsl:when>
        <xsl:when test=".='Circulation Desk'">60fec491-85b7-5541-8ad2-ab08e8d42e51</xsl:when>
        <xsl:when test=".='Data CDs'">bce4206e-3b6a-511a-8fe6-e71d0ded2b33</xsl:when>
        <xsl:when test=".='DVDs'">d5c8feb6-6b94-568c-87a9-485594dfc4e9</xsl:when>
        <xsl:when test=".='Eilts Collection'">75b5bcf6-065a-5d69-b1ea-5a753d427eab</xsl:when>
        <xsl:when test=".='Faculty Publications'">2c1e5c50-7e8c-5503-9b4a-02c10922063b</xsl:when>
        <xsl:when test=".='Fine Arts Collection'">a1f22e9a-94bf-5264-aa57-defc5345b38e</xsl:when>
        <xsl:when test=".='Folio Collection'">f9cba811-318c-5fa4-b0c4-961c929bd06a</xsl:when>
        <xsl:when test=".='Founders Room'">2f1d4abc-5a67-585a-b5cb-cb36e6e222bc</xsl:when>
        <xsl:when test=".='Juvenile Literature'">98a97701-9fe6-5351-a12d-feaf250004a5</xsl:when>
        <xsl:when test=".='Main Collection'">f926f340-2a21-58ab-aaca-cdfcf7411718</xsl:when>
        <xsl:when test=".='Microforms'">8ffbe7e8-f8a9-5a5e-b5e8-ac23caf4a294</xsl:when>
        <xsl:when test=".='Migration'">5b9c866b-add8-5eae-a63f-86bd13aa1032</xsl:when>
        <xsl:when test=".='New Books'">ea006924-295a-52a6-97ae-db94c53e7394</xsl:when>
        <xsl:when test=".='Pennsylvania Folklife Society Collection'">643d23d4-1411-511e-a8a5-d74f7fc9f859</xsl:when>
        <xsl:when test=".='Periodicals'">88b94195-59ba-50e3-b818-fc08e58a1c27</xsl:when>
        <xsl:when test=".='Reference'">fb9b5fdf-2f2b-5304-a485-a3b3320b110d</xsl:when>
        <xsl:when test=".='Reference Index Collection'">353a81fa-2d49-56e2-83b0-79684ec7f849</xsl:when>
        <xsl:when test=".='Reserves - 1 week'">d7c42e56-4a83-55fa-99f0-34b4b2f17b61</xsl:when>
        <xsl:when test=".='Reserves - 2 hour'">5d4361d0-6eeb-55ac-9e48-e29a8cb6468e</xsl:when>
        <xsl:when test=".='Reserves - 3 day'">2ab0976d-dce8-5c6a-b6a6-569e238a67e9</xsl:when>
        <xsl:when test=".='Reserves - overnight'">343b1979-ca56-5291-afd3-d4d0ac9161b5</xsl:when>
        <xsl:when test=".='Ritter Hall'">173ee091-aadb-571b-a108-d53e8467c709</xsl:when>
        <xsl:when test=".='Ritter Slide Library'">82cb1dc1-9729-576c-aa8e-5ec05b541de3</xsl:when>
        <xsl:when test=".='Room 203'">876cde35-fa80-5e60-99e3-333fa031d4e3</xsl:when>
        <xsl:when test=".='Student Art Collection'">776988a1-8a32-54e9-bcc1-cf33737328d5</xsl:when>
        <xsl:when test=".='Tech Support Center'">c69861a3-0709-523e-8e84-328c3836a8f4</xsl:when>
        <xsl:when test=".='Technical Services'">b1ce0d1b-8bd4-5c17-8fcb-abe8474c3e6b</xsl:when>
        <xsl:when test=".='Vault'">6f69bbb7-e083-50dd-8d1e-96e961dcec54</xsl:when>
        <xsl:when test=".='Videocassettes'">3a803c35-7b3d-5b88-b63f-e488fab45786</xsl:when>
        <xsl:otherwise>c9f249c4-0bab-5c4a-860b-9d20f7ceb7b1</xsl:otherwise> <!-- Unmapped (US-PCLVU) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>b1b1d035-3119-59b4-810f-a27403e56ddc</institutionId>
  </xsl:template>

</xsl:stylesheet>
