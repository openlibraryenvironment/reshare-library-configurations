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
    <identifierTypeId>31d5a441-a991-5e6d-aedb-2f8e37651772</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='LFMA / Archives'">51f1894b-9902-5bc3-8de5-8b978a3656c9</xsl:when>
        <xsl:when test=".='LFMA / Archives - Oversize'">cec30c26-9550-5992-990a-f160403f28a7</xsl:when>
        <xsl:when test=".='LFMA / Artists Book Collection'">503a3dec-7752-5be9-b5d7-efcd4a258cd3</xsl:when>
        <xsl:when test=".='LFMA / Artists Book Collection - Oversize'">aa4f85a8-49ce-5e19-9606-c8b15de20c0e</xsl:when>
        <xsl:when test=".='LFMA / German American Collection'">bec62611-5ac1-56eb-ada5-f639316957cf</xsl:when>
        <xsl:when test=".='LFMA / German American Collection - Oversize'">1e7b2104-60a3-50a7-9368-74b0f6aad858</xsl:when>
        <xsl:when test=".='LFMA / Napoleon Collection'">a6d2bb8a-0ea3-5be9-b5a9-b8ff18778b97</xsl:when>
        <xsl:when test=".='LFMA / Napoleon Collection - Oversize'">b9b9450f-2c4d-5e7f-ae98-2771b851e857</xsl:when>
        <xsl:when test=".='LFMA / Rare Materials'">1cd2dcc0-1f8d-56d6-9e18-407dd2683fc5</xsl:when>
        <xsl:when test=".='LFMA / Rare Materials - Oversize'">2b998939-f171-5170-8f88-801ed47e456c</xsl:when>
        <xsl:when test=".='LFMA / Reading Room'">089da022-6ea8-524a-b89d-a9b6c0bcc3d6</xsl:when>
        <xsl:when test="starts-with(.,'LFMA')">214d3480-94ba-5037-9a56-2e650acc3cbc</xsl:when>
        <xsl:when test=".='LFMC / Flat Oversize Collection'">dd81c415-456a-53b5-b21d-d890499461b4</xsl:when>
        <xsl:when test=".='LFMC / General Collection'">f3270ee7-3dec-58b2-adca-6f71ff225848</xsl:when>
        <xsl:when test=".='LFMC / Oversize Collection'">4c5317c3-599e-5a9b-80ad-08d8b8dd01b6</xsl:when>
        <xsl:when test=".='LFMC / Ask for assistance'">919e6595-3a5d-55c6-97d6-63d2ffef117d</xsl:when>
        <xsl:when test=".='LFMC / Atlas Area'">6badafb8-6570-5c8f-80a2-da9f4ce91fc8</xsl:when>
        <xsl:when test=".='LFMC / Bindery'">06292bff-ca0f-5160-b807-7e75bd1e84d1</xsl:when>
        <xsl:when test=".='LFMC / Browsing Collection'">37668c25-666b-55a5-abba-783bc7cfe697</xsl:when>
        <xsl:when test=".='LFMC / Browsing Oversize Collection'">50175e0c-c031-5d75-bcf3-2239058ac4b5</xsl:when>
        <xsl:when test=".='LFMC / Display Book'">6be1fe0b-da50-59fc-b2cc-8e7abf1c2979</xsl:when>
        <xsl:when test=".='LFMC / Display Media'">b5accbbe-d40b-5c33-89c8-2af7db69093c</xsl:when>
        <xsl:when test=".='LFMC / Government Documents Collection'">bfd50953-5d2d-5b3e-97a5-c883b6e7c3fb</xsl:when>
        <xsl:when test=".='LFMC / Map Area'">8cb69bd5-c214-5171-b808-32c6be37b0f4</xsl:when>
        <xsl:when test=".='LFMC / Media Area'">5b79b165-7893-5a17-ad86-a482a4b34646</xsl:when>
        <xsl:when test=".='LFMC / Periodicals Area'">2ffdb8fe-f4c1-5deb-9c7f-677f2b9d727c</xsl:when>
        <xsl:when test=".='LFMC / Permanent Reserve'">62cfb732-75ba-5eba-a7ff-8c677723c778</xsl:when>
        <xsl:when test=".='LFMC / Reference Area'">ee830d16-a860-5a3c-ae1b-b71a41753671</xsl:when>
        <xsl:when test=".='LFMC / Replacement Pending'">feae6401-ebf3-522b-873e-79870a8f812c</xsl:when>
        <xsl:when test=".='LFMC / Reserve Desk'">726326ac-118a-5e52-bdf9-427c4ec9e721</xsl:when>
        <xsl:when test=".='LFMC / Staff Offices'">26d31069-b077-58c4-a8e6-97ffd7bb7190</xsl:when>
        <xsl:when test=".='LFMC / Storage - ask for assistance'">33b8bb50-72ba-5b53-9b64-9884b18f345a</xsl:when>
        <xsl:when test="starts-with(., 'LFMC')">eea43fc6-73b5-5d30-9828-bcbbe8dc8b06</xsl:when>
        <xsl:when test=".='LFMD / Classroom'">ee2a9f04-a8aa-57f6-95bd-708ba0ae37ef</xsl:when>
        <xsl:when test=".='LFMD / Oversize Collection'">d28572db-7599-5bd8-9892-9fc1740af377</xsl:when>
        <xsl:when test=".='LFMD / Reference Area'">7189be8c-8d7a-5724-8cdf-7eeb5cc4ed3e</xsl:when>
        <xsl:when test="starts-with(., 'LFMD')">f18dc472-6964-552e-8e58-4ece05e8db2b</xsl:when>
        <xsl:when test=".='LFMM / Flat Oversize Collection'">50a886d1-642e-5d42-992a-db46e3510f09</xsl:when>
        <xsl:when test=".='LFMM / General Collection'">e0f4714b-3332-5370-b6ec-f362344c4982</xsl:when>
        <xsl:when test=".='LFMM / Oversize Collection'">8d65ffa1-5d07-52f8-b1fa-3636241f3297</xsl:when>
        <xsl:when test=".='LFMM / Ask for assistance'">0ce67f9d-c015-5d08-9622-13d4b1974108</xsl:when>
        <xsl:when test=".='LFMM / Bindery'">118cac26-f92a-5f1c-97f8-f69caafc470f</xsl:when>
        <xsl:when test=".='LFMM / Browsing Collection'">159b0721-0a5f-5f57-973e-733d01d56e9f</xsl:when>
        <xsl:when test=".='LFMM / Browsing Oversize Collection'">32d5102f-d11e-56b7-a013-403bfcbbecb7</xsl:when>
        <xsl:when test=".='LFMM / Cataloging'">443c60e5-afcd-596b-bed8-6f106697be14</xsl:when>
        <xsl:when test=".='LFMM / Display Book'">b94b36c3-c636-535b-8f20-71f2bbb66b66</xsl:when>
        <xsl:when test=".='LFMM / Display Media'">0a0d35a4-62fd-596e-9059-7b8540702f49</xsl:when>
        <xsl:when test=".='LFMM / EZ Borrow'">6b52c8ec-f59f-584f-b430-c13306dc3932</xsl:when>
        <xsl:when test=".='LFMM / Government Documents Collection'">49437d9f-d5d7-5a55-8d86-25d98e7dd7a6</xsl:when>
        <xsl:when test=".='LFMM / Interlibrary Loan'">3f103cc6-1d51-558e-ae53-a0fc412ddf2c</xsl:when>
        <xsl:when test=".='LFMM / Media Area'">1e6cbf42-5114-516f-a76d-362a6f78b876</xsl:when>
        <xsl:when test=".='LFMM / Periodicals Area'">42703029-4b1e-5f7b-91a3-66835cb28af4</xsl:when>
        <xsl:when test=".='LFMM / Reference Area'">c026293d-3a20-5eb3-b8f2-f7cbac0ad653</xsl:when>
        <xsl:when test=".='LFMM / Repair'">ca4a85a5-ff0f-5ce5-a7d3-8116320808e9</xsl:when>
        <xsl:when test=".='LFMM / Replacement Pending'">335a6676-e8df-5d64-89d5-3cdefb205eac</xsl:when>
        <xsl:when test=".='LFMM / Replacing'">ca762c81-e954-5ca0-9a94-33c795470562</xsl:when>
        <xsl:when test=".='LFMM / Reserve Desk'">bcec4a09-335c-5bb8-a07f-2cdad10cdcc4</xsl:when>
        <xsl:when test=".='LFMM / Search in progress'">32c600c9-c529-585d-a09f-f956dffd7fbf</xsl:when>
        <xsl:when test=".='LFMM / Staff Offices'">92889b93-0048-55d0-8e3b-a7ced1cd3e60</xsl:when>
        <xsl:when test=".='LFMM / Storage - ask for assistance'">02413cf8-ac9f-52d2-abce-196102731373</xsl:when>
        <xsl:when test=".='LFMM / Zine Collection'">ef1de96b-5553-5f7b-b2ec-b7effef72f7a</xsl:when>
        <xsl:otherwise>3c5f76d4-01bf-521f-9cb0-9485932c4df1</xsl:otherwise>
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>5ce1c12e-c8ba-549e-9369-cf3cc9405375</institutionId>
  </xsl:template>

</xsl:stylesheet>
