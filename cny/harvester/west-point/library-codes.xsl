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
    <identifierTypeId>4b16aa50-db6b-5e95-8e65-03e1c8922e9e</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='53room'">911adf35-063d-595c-b122-ea4f77d6254b</xsl:when>
        <xsl:when test=".='vcassette'">03864ed6-5e44-50c4-9edc-60733a230109</xsl:when>
        <xsl:when test=".='vcdmusic'">86b3aa41-e291-5bd8-b9ab-1b66aa88d17e</xsl:when>
        <xsl:when test=".='vcdrom'">c548a221-aed7-583b-9b84-468a2640f688</xsl:when>
        <xsl:when test=".='vlanguage'">c4258e0c-2cc4-5842-bbe3-6f88ae0eaa13</xsl:when>
        <xsl:when test=".='vmisc'">f9cdbbc2-bc60-51c2-8732-09ca7d88d49f</xsl:when>
        <xsl:when test=".='vvhs'">6bcb8e2c-651a-51b5-9c53-9f9fe9725c33</xsl:when>
        <xsl:when test=".='circ'">0aeefea3-24d4-5d61-bb9a-cee3a68e55ef</xsl:when>
        <xsl:when test=".='folio'">d297968f-cf6e-56df-b303-a30364371b7d</xsl:when>
        <xsl:when test=".='oversize'">6bcaa8dd-b0fc-59d8-9c25-303d85f4f7ee</xsl:when>
        <xsl:when test=".='vdvd'">5c042c56-4c9a-5161-adf3-d070f4754030</xsl:when>
        <xsl:when test=".='gdocs'">042d1e16-d44c-5d7b-99e5-10be7b286d2d</xsl:when>
        <xsl:when test=".='rr4'">8e6ba2e3-3d45-5520-969e-7d8197dba36d</xsl:when>
        <xsl:when test=".='uarchives'">e855ed04-fbc3-57ad-a666-0aa6c3faa20c</xsl:when>
        <xsl:when test=".='pbound'">ad7c8fa4-6844-5052-b539-ce3f6766a64b</xsl:when>
        <xsl:when test=".='ubradley'">57a36e82-7851-5127-b34a-540e5638c63b</xsl:when>
        <xsl:when test=".='pcurrent'">b7c2dc08-a924-532b-b7e9-9cec1793fa09</xsl:when>
        <xsl:when test=".='uearlyamer'">36cbbf7b-ad1c-5d2e-9b3b-e5ef552ed9d7</xsl:when>
        <xsl:when test=".='uearlyeuro'">cce1b60c-9847-5fe6-9c0e-ed65e50bfc7f</xsl:when>
        <xsl:when test=".='cdgdrom'">12d8a53c-8dda-5cd4-a7e1-a7e9eded7c0d</xsl:when>
        <xsl:when test=".='gdindex'">c6158ac5-0b35-5264-a73a-c2aa466b555c</xsl:when>
        <xsl:when test=".='gdref'">e0cf2b31-9dd7-577d-81ef-98eec103de8a</xsl:when>
        <xsl:when test=".='honorkiosk'">1bcc86d6-58a9-5631-9ff1-5ab1a7e2e9b8</xsl:when>
        <xsl:when test=".='umanu'">86e48ede-c9ca-5558-8767-76844dceb102</xsl:when>
        <xsl:when test=".='microfiche'">58d5f54d-e07b-5fd2-9cc9-1ac1466fea83</xsl:when>
        <xsl:when test=".='microfilm'">4ffa9bd9-99bf-54b6-820f-0a4472209ce8</xsl:when>
        <xsl:when test=".='unininger'">9bec2bae-d16e-5dd9-a9fc-112e74ee67ff</xsl:when>
        <xsl:when test=".='soriental'">eb4ccb39-a396-5b93-aff6-1d9cee096c94</xsl:when>
        <xsl:when test=".='upatton'">c9965bcd-b90f-5fe4-b5f9-66762da2e9cc</xsl:when>
        <xsl:when test=".='rr3'">0a65f655-e47f-5e1d-a592-4d484c92c3a6</xsl:when>
        <xsl:when test=".='readyref'">7efd6c8a-6549-50f5-948e-68cfb43e5a19</xsl:when>
        <xsl:when test=".='reference'">ec23cf3a-fa0d-57a6-9d71-dff63aab884b</xsl:when>
        <xsl:when test=".='reserve'">c7e65728-82e6-567f-9d69-7663d8b56d33</xsl:when>
        <xsl:when test=".='uschley'">39e6442e-a795-5995-b336-a4aa09e9f92f</xsl:when>
        <xsl:when test=".='dcpme'">c6afbf69-e0ae-567c-bb7c-26138779b6e4</xsl:when>
        <xsl:when test=".='uspecial'">1890dc6a-e836-5517-a2bb-018f68ae6828</xsl:when>
        <xsl:when test=".='uoversize'">803c160c-b9c8-54ac-b280-ac3b562c5af4</xsl:when>
        <xsl:when test=".='ureading'">591708db-84b4-5db8-bb16-7df9ce8f32ce</xsl:when>
        <xsl:when test=".='storage'">331792d2-72dc-598f-8665-6ad22cfe4fa8</xsl:when>
        <xsl:when test=".='utextbook'">89b85403-3494-5103-8f59-d0b6aebe64ff</xsl:when>
        <xsl:when test=".='uthayer'">c51c8f3f-5a14-521c-b491-282b745a7338</xsl:when>
        <xsl:when test=".='uthayerbig'">cd0c0b25-3d55-5102-9dbd-4f732275f8d3</xsl:when>
        <xsl:when test=".='uvault'">3eff05b1-d8ce-5a04-9b95-9c7c6a835313</xsl:when>
        <xsl:when test=".='vvinyl'">6839c239-cba4-5e76-a211-f64dc6c63c1f</xsl:when>
        <xsl:otherwise>81855409-33a6-5178-9d8f-e7b60e329483</xsl:otherwise> <!-- Unmapped (US-NWWPP) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>278a4712-8506-5733-b365-868a807dd881</institutionId>
  </xsl:template>

</xsl:stylesheet>
