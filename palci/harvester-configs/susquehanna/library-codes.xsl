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
    <identifierTypeId>9ef9ebbc-00fa-5786-aa9b-615e80d9b566</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='FOLIO'">d71ee2fc-a103-512f-8c8c-7b58319ca541</xsl:when>
        <xsl:when test=".='FOLIOSCORE'">ab45865c-1eaa-58a5-8237-3a671022a6f9</xsl:when>
        <xsl:when test=".='JUVFOLIO'">48e7cad6-8441-5d1a-8407-3e915cace436</xsl:when>
        <xsl:when test=".='JUV'">827f23ee-77f2-5e6e-94e6-fd10c7993fdb</xsl:when>
        <xsl:when test=".='LEISURE'">67e92850-1b51-5099-af5f-f24fba273e2c</xsl:when>
        <xsl:when test=".='MAIN'">1824e787-e16a-5067-b963-a87d48dc5c03</xsl:when>
        <xsl:when test=".='SCORES'">0d70bb37-fd7d-5c66-afde-9838f0cb39c2</xsl:when>
        <xsl:when test=".='OVERSIZE'">5c428f69-615a-53f4-a54e-10180854fdb9</xsl:when>
        <xsl:when test=".='VIDEO'">84095983-5f1d-5939-bf5d-497211286c29</xsl:when>
        <xsl:when test=".='VIDEOS'">84095983-5f1d-5939-bf5d-497211286c29</xsl:when>
        <xsl:when test=".='MUSIC_CD'">19ebd702-fe23-52e9-845c-1f754531d473</xsl:when>
        <xsl:when test=".='MUSIC_CDS'">19ebd702-fe23-52e9-845c-1f754531d473</xsl:when>
        <xsl:when test=".='ATLAS_REF'">26a1098e-45f4-550e-bc40-8a9e6e04e3fd</xsl:when>
        <xsl:when test=".='RESHELVING'">be0b7ac4-4836-582a-92bc-6815815e484d</xsl:when>
        <xsl:when test=".='GAMES'">ff360854-437f-5198-8937-058a06bcabda</xsl:when>
        <xsl:when test=".='COMPACSHLF'">5338614c-b7f9-54eb-83ab-260a82e83986</xsl:when>
        <xsl:when test=".='WITHDRAWN'">d021d11f-b1a8-5404-9edf-8017d9e5202d</xsl:when>
        <xsl:when test=".='EQUIPMENT'">02aa38bc-1b35-5897-be49-7c7e4be2d679</xsl:when>
        <xsl:when test=".='GRAPHICNOV'">ed3c5a47-d56f-5314-b441-f8f375c78525</xsl:when>
        <xsl:when test=".='TECH_SERV'">eab6ebda-b264-57cf-8c2a-9eeea672f345</xsl:when>
        <xsl:when test=".='REPAIR'">dd864aa6-b1b1-500d-971f-bed457e993f3</xsl:when>
        <xsl:when test=".='SERV_DESK'">634f594c-02bd-5c9e-b917-aef327cf8f7c</xsl:when>
        <xsl:when test=".='LOST'">f98673f6-24ad-50af-908b-ed1512731f9e</xsl:when>
        <xsl:when test=".='BINDERY'">5cb48e90-aa9e-599d-a328-2d92ac0ff5c5</xsl:when>
        <xsl:when test=".='CATALOGING'">395749ae-c0aa-57d2-a496-6466dd225670</xsl:when>
        <xsl:when test=".='CHECKEDOUT'">05a91eb1-896a-5499-a0b5-2a48525f2e43</xsl:when>
        <xsl:when test=".='ON_ORDER'">030f8b71-9cd9-5aee-a9c3-0241b5137a64</xsl:when>
        <xsl:when test=".='MICROFICHE'">e3fd5bdb-e354-5630-8021-fa2746d609ff</xsl:when>
        <xsl:when test=".='MICROFILM'">fc9d1002-6c69-5cc3-808f-09269f84c901</xsl:when>
        <xsl:when test=".='MICROFORM'">4aeac8b9-5347-55dc-b30f-7707881dc82e</xsl:when>
        <xsl:when test=".='NEW_BOOKS'">481ae855-b9f8-56bb-818c-0f53d249965b</xsl:when>
        <xsl:when test=".='HOLDS'">0a11d360-30c6-5091-a147-ac5e1f01072b</xsl:when>
        <xsl:when test=".='PRINT_PER'">697eb1a2-53df-5241-8365-b766c159ad66</xsl:when>
        <xsl:when test=".='REFERENCE'">2f5f7355-3382-58ca-8f51-e3e67c92e8a6</xsl:when>
        <xsl:when test=".='RESERVES'">d45db2df-0d06-5fe5-b921-cac1c3380af8</xsl:when>
        <xsl:when test=".='UNASSIGNED'">7a77e0c6-52cc-5f37-a692-33e833809d7f</xsl:when>
        <xsl:when test=".='DISCARD'">59d05a51-7abb-51f8-95ab-b92c55e3fa01</xsl:when>
        <xsl:otherwise>5ca3cfa8-6745-5634-9423-7882b3e9625d</xsl:otherwise>
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>138f6ba4-6029-5203-884e-eacaa417901c</institutionId>
  </xsl:template>

</xsl:stylesheet>
