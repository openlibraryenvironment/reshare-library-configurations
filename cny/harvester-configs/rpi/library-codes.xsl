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
    <identifierTypeId>b7438196-7007-57a5-be7a-343afb42c214</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='Beranek Collection'">aee6abb4-717b-5614-86dd-18d93a13bf64</xsl:when>
        <xsl:when test=".='Book Stacks'">2de87e91-2eee-5c9a-8eb3-40dd19ef6ac8</xsl:when>
        <xsl:when test=".='CDROM'">84dd237a-78c1-51ee-9901-aa34584c2c4f</xsl:when>
        <xsl:when test=".='DVD'">e21f13cd-3795-53e6-9931-31642123b527</xsl:when>
        <xsl:when test=".='Outsize'">51343ca7-9948-5325-8697-d08aecbd5f5d</xsl:when>
        <xsl:when test=".='Video'">9c4eba2c-3cff-5c41-8758-406b011c2f11</xsl:when>
        <xsl:when test=".='Billed'">4c33dc66-7f0a-5039-b7cd-7dc84781b8ad</xsl:when>
        <xsl:when test=".='Course Reserve'">1335dd84-de46-5b71-8586-8e7820cb5940</xsl:when>
        <xsl:when test=".='Course Reserve Overnight'">c2d75a59-8dff-5cf7-87ba-d273feedefc5</xsl:when>
        <xsl:when test=".='In Process'">85aefd60-f010-5725-99af-0f173b8918c5</xsl:when>
        <xsl:when test=".='Journal Stacks'">00a479be-e249-500b-9568-0fcb14cc6d3d</xsl:when>
        <xsl:when test=".='Microform'">27dcdd26-9f79-5439-822c-6daba3390790</xsl:when>
        <xsl:when test=".='Outsize Library-Use Only'">13fe880d-3ec8-58d3-b384-d96c944649c3</xsl:when>
        <xsl:when test=".='Reference'">3b90693a-22b2-5080-a89a-3f2659c5998b</xsl:when>
        <xsl:when test=".='Reference CDROM'">de77ed17-702e-51ac-aef1-3c3ea667019d</xsl:when>
        <xsl:when test=".='Reference Outsize'">e663794b-6430-5df4-92d0-e2abeccb588f</xsl:when>
        <xsl:when test=".='Reserve'">862342f7-9eb4-5e1b-a9c3-0038b7b2475f</xsl:when>
        <xsl:when test=".='Reserve Overnight'">7fed35fb-4167-541b-9885-271bb413badc</xsl:when>
        <xsl:when test=".='Special Reserve'">70b05e23-d247-57cf-ab45-574253e06a34</xsl:when>
        <xsl:when test=".='Technical Services'">4f98033e-86f7-5f98-a6f5-f065e5c2a543</xsl:when>
        <xsl:when test=".='Thesis'">637729af-1a23-5556-be56-676309a0992f</xsl:when>
        <xsl:when test="starts-with(., 'YRMA')">6de37a75-d5cb-5948-a378-95bd9b869654</xsl:when> <!-- Unmapped (YRMA)-->
        <xsl:when test=".='Book Stacks'">1b4192b6-b6e9-57aa-884d-cc5f016b86a9</xsl:when>
        <xsl:when test=".='CD (1st Floor)'">fd5cdca5-846d-507b-b6b6-662c690085b8</xsl:when>
        <xsl:when test=".='CDROM (1st Floor)'">b96d9d3c-fc00-584c-a502-45504900dc80</xsl:when>
        <xsl:when test=".='DVD (2nd Floor)'">a3dc4031-928c-5dd4-a155-37657c846721</xsl:when>
        <xsl:when test=".='Microform'">6e3c77d3-cb2e-55fd-b6ac-efc76444571e</xsl:when>
        <xsl:when test=".='Outsize'">9eae5bfd-7596-53dd-8264-8b3e891fd380</xsl:when>
        <xsl:when test=".='Phonorecord (1st Floor)'">cdcef31b-f6f6-5b0f-aac8-01688f3bdc9d</xsl:when>
        <xsl:when test=".='Technical Reports (3rd Floor)'">27bb6508-f702-5de6-bf74-b104a76af6fd</xsl:when>
        <xsl:when test=".='Thesis Microfilm (1st Floor)'">1231b9fd-11e2-5ff0-993c-0eadc2e250e3</xsl:when>
        <xsl:when test=".='VHS Video (Service Desk)'">bf28556e-90ff-5291-9bcf-b8586bfc9415</xsl:when>
        <xsl:when test=".='1st Floor Shelving'">a7b81b6a-87ab-55cb-9636-1c0b36223d50</xsl:when>
        <xsl:when test=".='Architecture Thesis (Folsom Service Desk)'">df5c5407-cf91-5d85-8926-34d282a1ca55</xsl:when>
        <xsl:when test=".='Ask Staff'">02c8ee6c-182e-55ba-b2a2-061a49c6c12d</xsl:when>
        <xsl:when test=".='Billed'">ffd423d4-ae9f-577f-8a8a-0253a349fa2c</xsl:when>
        <xsl:when test=".='Book Stacks Library-Use Only'">9bc97412-4c76-53b5-b238-c7ce6902eca9</xsl:when>
        <xsl:when test=".='Class of '96 Reading Room'">6b3ced3b-f9ac-5f9c-b6c4-c30e63b044d3</xsl:when>
        <xsl:when test=".='Class of '96 Reading Room (2nd Floor)'">8aaac369-a571-5408-92d1-6dcd93a0084c</xsl:when>
        <xsl:when test=".='Course Reserve'">6182d0c8-1e47-58b6-94fd-3ab746d4c9a7</xsl:when>
        <xsl:when test=".='Course Reserve 2-day'">f92cb6bd-50fa-5407-916d-7658cdcfd42c</xsl:when>
        <xsl:when test=".='Course Reserve Overnight'">5eb82105-cd91-5b59-a950-c0c224119f22</xsl:when>
        <xsl:when test=".='Exhibit'">c4b86800-00b3-57e0-8d7a-ff1cd5ec3fce</xsl:when>
        <xsl:when test=".='Hartford Thesis (1st Floor Shelving)'">5286742a-4e41-5b09-b8c5-b12e5f6e75c8</xsl:when>
        <xsl:when test=".='Hartford Thesis CDROM Storage (Service Desk)'">55c37f26-fc96-53e4-bbf5-1d230f27b5b6</xsl:when>
        <xsl:when test=".='In Process'">66efe282-883b-5666-ad04-7252d6c35900</xsl:when>
        <xsl:when test=".='Journal Stacks'">e115b51d-0c03-56bd-ba0b-5f194cab5b18</xsl:when>
        <xsl:when test=".='Music Score (3rd Floor)'">5790188f-e885-5430-bb1a-41563c9cf327</xsl:when>
        <xsl:when test=".='Music Score Outsize (3rd Floor)'">4301a47b-211d-520f-be92-812bd3cd42f3</xsl:when>
        <xsl:when test=".='Online'">9e5372ea-bc01-5ed2-82c7-1157cb88dbe3</xsl:when>
        <xsl:when test=".='Online (Rensselaer Users)'">3c4abaf3-b8d1-56ef-bb09-78f318be8010</xsl:when>
        <xsl:when test=".='Outsize Library-Use Only'">5a862206-b804-51fa-9cb2-495784321b6a</xsl:when>
        <xsl:when test=".='Reference'">1ee17dd6-9f01-5d5b-a079-9b6db1a30bbf</xsl:when>
        <xsl:when test=".='Reference Reserve (Service Desk)'">648f6005-329c-5388-9b19-38b167e9e56d</xsl:when>
        <xsl:when test=".='Technical Services'">21f44bf7-1597-535d-a398-57a679853399</xsl:when>
        <xsl:when test=".='Thesis (1st Floor Shelving)'">bf590c05-e05a-52f0-a636-c1348e8d127c</xsl:when>
        <xsl:when test=".='Web Resource (Rensselaer Users)'">8ee4757f-4443-51f9-9078-feced4b08436</xsl:when>
        <xsl:when test="starts-with(., 'YRMM')">6c111280-93bf-53d3-a5ec-f092e9e125e5</xsl:when> <!-- Unmapped (YRMM)-->
        <xsl:when test=".='Book Stacks'">67dfba1a-bc0e-5053-9c62-f5c23971e1a3</xsl:when>
        <xsl:when test=".='Friedman Library'">6155fb97-65ce-5f28-b8a2-d425ac50c059</xsl:when>
        <xsl:when test=".='In Process'">1f7515c2-7647-5330-a05a-6a634e9ec0ab</xsl:when>
        <xsl:when test=".='Manuscripts'">581784ea-5c08-5f06-90fa-e859c3831a86</xsl:when>
        <xsl:when test=".='Microfilm'">077c6d58-5940-5771-8c17-6d5fe240a9aa</xsl:when>
        <xsl:when test=".='Outsize Shelves'">e469625b-547e-5e0f-bcf9-7ce18a263bfe</xsl:when>
        <xsl:when test=".='Reference'">e130bb0c-c1f1-5100-b133-7485abf2f4d5</xsl:when>
        <xsl:when test=".='Roebling Library'">42f46e88-c36a-51d7-bd06-c701ec84e09c</xsl:when>
        <xsl:when test=".='Shuster Library'">6306bf98-0d54-5261-8ba7-09aae8edcd05</xsl:when>
        <xsl:when test=".='Thesis'">c4a05da5-c26a-5f8f-9e8c-e59525ee0c4c</xsl:when>
        <xsl:otherwise>bdf687cf-5fae-5544-bf23-8b0867652385</xsl:otherwise> <!-- Unmapped (YRMS) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>4ce715e2-c336-52db-9519-86279e3edb8a</institutionId>
  </xsl:template>

</xsl:stylesheet>
