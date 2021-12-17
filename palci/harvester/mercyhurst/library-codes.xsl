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
    <identifierTypeId>a094e1ad-7b91-535f-87e8-2262916653f8</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='HAMMER CURR'">29c4198a-af30-5e3d-a291-8fb7b4e40a78</xsl:when>
        <xsl:when test=".='HAMMER STACKS'">0e2478c5-d402-5e48-8c61-c8203271d031</xsl:when>
        <xsl:when test=".='HAMMER THESIS SPEC'">823bf0ee-9d07-5604-ac77-a98691a93ca7</xsl:when>
        <xsl:when test=".='HAMMER NEWBOOK'">9058f831-4a16-5de0-88fe-20b1a8078871</xsl:when>
        <xsl:when test=".='HAMMER 1DAYRES'">13be65a3-176c-5d17-87f6-5de7765fa39f</xsl:when>
        <xsl:when test=".='HAMMER 2HRRES'">596939aa-2b01-599b-97fc-b0501d6c6685</xsl:when>
        <xsl:when test=".='HAMMER 7DAYRES'">8a4ca29d-d09e-5e92-a7e1-263ae1e4565b</xsl:when>
        <xsl:when test=".='HAMMER AUDIO'">68ccef06-e4c4-56c1-8f5e-a09d1a3e9d26</xsl:when>
        <xsl:when test=".='HAMMER CIRC'">78f31155-f9cd-5770-b873-52c1628537f9</xsl:when>
        <xsl:when test=".='HAMMER DVD'">c0cf7ba9-67ea-5488-9841-a90adb15a91f</xsl:when>
        <xsl:when test=".='HAMMER FACULTY'">c2595407-e19d-576e-83b4-3eb455da8f46</xsl:when>
        <xsl:when test=".='HAMMER Fiction'">565968b6-ca18-5e3b-ae9a-3936bcae6f9e</xsl:when>
        <xsl:when test=".='HAMMER ILL'">37db682e-f503-5584-937a-67d30ade3e49</xsl:when>
        <xsl:when test=".='HAMMER INTEL'">47625007-6fdf-5c74-9228-92f704072f2d</xsl:when>
        <xsl:when test=".='HAMMER INTERNET'">fa09c11a-6335-58a1-8aa7-cfba697c4c83</xsl:when>
        <xsl:when test=".='HAMMER MCNAUGHTON'">822d93bf-b911-5761-a014-2190dded1b7e</xsl:when>
        <xsl:when test=".='HAMMER Memorial Book Display'">86b82668-121a-52aa-b602-3448f6922a3e</xsl:when>
        <xsl:when test=".='HAMMER MICRO'">c75c6218-c058-5b43-bcb0-7a652b06718f</xsl:when>
        <xsl:when test=".='HAMMER MUSICCD'">94d83db7-28ae-50b0-80ce-99fb1c419b4f</xsl:when>
        <xsl:when test=".='HAMMER OSREF'">7a5c26f1-42e7-564d-8c9f-40d11f215149</xsl:when>
        <xsl:when test=".='HAMMER OSSCORE'">cd0bc6b7-b4cf-5e5e-94da-db3b4d9f23fb</xsl:when>
        <xsl:when test=".='HAMMER OVERSIZE'">db414cd0-e050-54b9-ae29-aff29e2f052d</xsl:when>
        <xsl:when test=".='HAMMER PERIODICAL'">f5ea3616-a7b0-544b-943f-d7edb89a4256</xsl:when>
        <xsl:when test=".='HAMMER READYREF'">04abffed-280e-5f68-b624-1cee0a0b257f</xsl:when>
        <xsl:when test=".='HAMMER RECORD'">cc73965e-ede2-5982-9acf-f3de0db19939</xsl:when>
        <xsl:when test=".='HAMMER REF'">dd768bf1-3f01-56fc-b94c-993a15f63226</xsl:when>
        <xsl:when test=".='HAMMER REFMAP'">fe7d35a9-c014-5777-8276-6018c6a604f1</xsl:when>
        <xsl:when test=".='HAMMER RESERVE'">fdd59a4a-0651-517c-a623-ebdf762d3be9</xsl:when>
        <xsl:when test=".='HAMMER SCORE'">ee81f2fa-57c6-5e7b-8b6c-2dd37c1bc2e5</xsl:when>
        <xsl:when test=".='HAMMER SOFTWARE'">55e2bb59-b98e-5862-8fa0-fd7f924bd0bb</xsl:when>
        <xsl:when test=".='HAMMER SPEC'">d8cdd012-94ef-5d7f-928f-805a267ec3db</xsl:when>
        <xsl:when test=".='HAMMER STORAGE'">1c5adafe-3006-59cc-93f2-b445571a3b67</xsl:when>
        <xsl:when test=".='HAMMER TEST'">1a43dbc4-c82f-58d1-ae57-2addc6fcfde6</xsl:when>
        <xsl:when test=".='HAMMER VIDEO'">2e290649-d3b1-5b15-ab06-b84457cc93e4</xsl:when>
        <xsl:when test=".='HAMMER WC'">f58a762b-5153-55b8-889e-a1894cd46774</xsl:when>
        <xsl:when test="starts-with(., 'HAMMER')">61ab79d7-df60-5a90-aff3-4e63fc185a4d</xsl:when> <!-- Unmapped (HAMMER)-->
        <xsl:when test=".='NORTHEAST (any value)'">1f26b140-294f-5ede-abce-5052e8a2d542</xsl:when>
        <xsl:otherwise>0439f266-f3a7-5114-9285-6c765349955a</xsl:otherwise> <!-- Unmapped (NORTHEAST) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>3ac65e56-1a54-5859-8ee8-d9086e88405d</institutionId>
  </xsl:template>

</xsl:stylesheet>
