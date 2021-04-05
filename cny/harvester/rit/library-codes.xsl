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
    <identifierTypeId>a4b180f2-fe26-5441-b871-b85fed9b0fc5</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='w2fl'">d9f1546a-c1e5-5cb5-b816-741142d9bead</xsl:when>
        <xsl:when test=".='w3fl'">2d62d96e-befd-5995-9626-96555787da5b</xsl:when>
        <xsl:when test=".='w4fl'">f0b473f4-df7c-5642-b4dd-da5c0a809bd6</xsl:when>
        <xsl:when test=".='whuge'">4d371924-868e-5068-b018-fecd0fd33bb5</xsl:when>
        <xsl:when test=".='wmedi'">8a13b91f-6440-53a7-bb2a-0b17cdf4522a</xsl:when>
        <xsl:when test=".='wmic'">8031d72e-78f4-540a-8529-1327b8a3368e</xsl:when>
        <xsl:when test=".='wover'">ce4abb7b-172a-5e3f-8ff8-af2a3096500b</xsl:when>
        <xsl:when test=".='wref'">5eea677a-01fb-5494-a5dc-15a3db2f8573</xsl:when>
        <xsl:when test=".='wstob'">217bb5ce-52ba-56a3-b28a-e9d36404d518</xsl:when>
        <xsl:when test=".='carb'">4214b137-9571-5f90-a6dd-e4141eb81bdb</xsl:when>
        <xsl:when test=".='carbi'">9c2fe7ee-2692-5de0-a17f-ea2e812bff75</xsl:when>
        <xsl:when test=".='caree'">34187e9d-545e-5d9c-ae74-ed06ae7169ff</xsl:when>
        <xsl:when test=".='careh'">501799fa-5f36-5bbe-a59d-af66ff93f4f7</xsl:when>
        <xsl:when test=".='careo'">90a23a81-7069-51d6-89b5-af80c792a7f4</xsl:when>
        <xsl:when test=".='carl'">6eefb716-6f99-5865-a58f-f1646b494e51</xsl:when>
        <xsl:when test=".='carme'">b2b12ca7-d417-5a10-8e9d-d8579fcac551</xsl:when>
        <xsl:when test=".='carmf'">9a50f0c5-0cc9-5583-80ec-1b732085c081</xsl:when>
        <xsl:when test=".='carmh'">e1f29f71-48d6-5d98-8c8b-9c64e1312548</xsl:when>
        <xsl:when test=".='carmm'">7c2ebcdf-4156-50ae-a920-d09e3ef07767</xsl:when>
        <xsl:when test=".='carmo'">8f826f07-9f13-548f-9114-d99114718137</xsl:when>
        <xsl:when test=".='carmp'">52c7a985-c43c-5207-9a7d-f8e0935c3bbe</xsl:when>
        <xsl:when test=".='carms'">dc55f5c8-31e7-5783-99c3-63b231e10c07</xsl:when>
        <xsl:when test=".='carni'">95ebf784-5aeb-5d46-ae03-e3b1ac09a1db</xsl:when>
        <xsl:when test=".='carp'">c8b58d51-5193-5d9f-99ea-f028c46b1105</xsl:when>
        <xsl:when test=".='carpo'">685562ba-da40-58b2-8a6b-0418e8f138b2</xsl:when>
        <xsl:when test=".='cary'">5d941105-2803-5a19-a24d-08bb77e64a53</xsl:when>
        <xsl:when test=".='caryf'">c934ae0c-4586-581c-9088-6e01cc1c015a</xsl:when>
        <xsl:when test=".='caryh'">7257e410-9613-5dbb-aaa9-1626182c15f7</xsl:when>
        <xsl:when test=".='caryo'">d5b47fb8-388a-5aba-bc75-a5efd310204e</xsl:when>
        <xsl:when test=".='carys'">726b3157-bdba-552f-883c-1fca518330c5</xsl:when>
        <xsl:when test=".='gcdm'">d70965c2-0a68-516b-92d7-a7cdac8d9494</xsl:when>
        <xsl:when test=".='gcdr'">757fad73-53d0-5c18-8f03-1f69d0db5004</xsl:when>
        <xsl:when test=".='gczm'">c5f3724c-faf1-5635-86b7-bb38f641af62</xsl:when>
        <xsl:when test=".='gczr'">69404fd5-3c61-5c33-94f1-9bc67f2506c0</xsl:when>
        <xsl:when test=".='gkpk'">640dbeff-57a4-5027-a2a4-c79675b2e213</xsl:when>
        <xsl:when test=".='gkpm'">c2b13fed-9aae-5ee5-84a0-7c1411b91b8f</xsl:when>
        <xsl:when test=".='gkpn'">b19f9d2c-d017-509b-8b27-70cd4f2e54bf</xsl:when>
        <xsl:when test=".='gkpr'">0a6925c9-2450-5987-81ac-00b8318eb583</xsl:when>
        <xsl:when test=".='gkpre'">d831eaa8-393e-5f2e-87a3-7d440ae791a9</xsl:when>
        <xsl:when test=".='gkps'">a44e9482-32be-566d-8292-6ad8c20b05d8</xsl:when>
        <xsl:when test=".='gkpse'">8e97b564-3785-5cd3-9065-4d730f1ec652</xsl:when>
        <xsl:when test=".='gkpsu'">115ff060-7b47-5543-a819-5f8a6881ab62</xsl:when>
        <xsl:when test=".='gkpw'">7f9590c1-56a3-5321-b904-33c0b32d6e19</xsl:when>
        <xsl:when test=".='gudm'">19992b93-fb1c-5f49-97d9-73b3bdd32b84</xsl:when>
        <xsl:when test=".='gudr'">cd381f8c-4227-558b-859a-cb03e9baaf5b</xsl:when>
        <xsl:when test=".='gudre'">3d6b1002-668e-5246-98ff-e2e7a380dcae</xsl:when>
        <xsl:when test=".='gudv'">9295fc93-bd8d-5ec6-8415-768788bbcf67</xsl:when>
        <xsl:when test=".='mrc'">bea82de2-bb90-58a3-aab0-8b65b2ae0222</xsl:when>
        <xsl:when test=".='mresd'">57a3eaa8-d7d1-5796-be7a-0ea54eb61fd4</xsl:when>
        <xsl:when test=".='mtv'">687d0466-fde4-5b24-b217-797e82acc2e2</xsl:when>
        <xsl:when test=".='rasao'">67444671-0294-5f70-b8b4-1072d9ca2450</xsl:when>
        <xsl:when test=".='ripir'">d7752adf-6f36-538c-916e-44c453c6e66d</xsl:when>
        <xsl:when test=".='ripis'">add12340-0745-5b56-91b7-2314da17a239</xsl:when>
        <xsl:when test=".='rqctr'">baf31f44-aa18-5dbc-820b-c9372697d6e7</xsl:when>
        <xsl:when test=".='rqref'">c76cbed1-f5f4-52cd-849e-60f3885d6aff</xsl:when>
        <xsl:when test=".='rqvid'">aa8bb2c6-29be-5fa6-b717-a88c61aed3fc</xsl:when>
        <xsl:when test=".='srare'">39474986-fcbc-5a86-b8c8-dbbfa6b7c0d6</xsl:when>
        <xsl:when test=".='src'">38e00299-af21-53be-9c22-8ee203d99870</xsl:when>
        <xsl:when test=".='sref'">0e32f78d-cde9-5f41-b898-b113eae8ab94</xsl:when>
        <xsl:when test=".='watl'">7421bf21-30bf-5a19-af1e-7385c06aa663</xsl:when>
        <xsl:when test=".='wbind'">5b12cb12-c831-566a-a19e-a368680eacec</xsl:when>
        <xsl:when test=".='wcafe'">a330c92a-e6ab-543d-ba07-65e6e6767cef</xsl:when>
        <xsl:when test=".='wcirc'">4aadc0b0-7737-5344-82c7-68366ff9a72f</xsl:when>
        <xsl:when test=".='wcuma'">0e10fa2b-970d-51a3-8e88-5e0375f0439f</xsl:when>
        <xsl:when test=".='wdi'">e753fa91-dee9-51e0-b9d0-534c5f61f1e3</xsl:when>
        <xsl:when test=".='webks'">713578bf-018f-53b4-aba1-9de647dd1c07</xsl:when>
        <xsl:when test=".='wedoc'">c2ddbe80-80cf-54cc-8486-b38678ad73bc</xsl:when>
        <xsl:when test=".='wetd'">572b20c9-6586-574f-8760-6b9b08d19c8c</xsl:when>
        <xsl:when test=".='wfree'">5e780458-76fb-54fb-be57-869ffd82c6a1</xsl:when>
        <xsl:when test=".='will'">e3aea787-a979-5952-803a-d6c53d81638c</xsl:when>
        <xsl:when test=".='winpr'">8bcc2e95-064c-548f-9c62-5d3cf9916d16</xsl:when>
        <xsl:when test=".='wgra'">37d25b6d-74b2-5c2d-bba9-53f295aafad0</xsl:when>
        <xsl:when test=".='wmat'">abbf5bde-7edd-530d-b027-ecaf162742f6</xsl:when>
        <xsl:when test=".='wnews'">0a805e65-754f-536f-aa34-6da484166eb9</xsl:when>
        <xsl:when test=".='word'">cce60379-b14d-58e6-9c08-767cd17f9f10</xsl:when>
        <xsl:when test=".='wovid'">7425e504-98f7-5012-baaf-f705b57bdc29</xsl:when>
        <xsl:when test=".='wper'">9959179b-8d19-5f16-a0a4-adc8b9e7ef02</xsl:when>
        <xsl:when test=".='wpove'">9ec6b0de-86b0-52a1-975e-36a4e3c3dd1a</xsl:when>
        <xsl:when test=".='wpser'">f65a4c1e-bfd2-5d3b-b0bf-4cd85f7a5794</xsl:when>
        <xsl:when test=".='wradm'">d67e13ab-66ed-5bc5-a340-e706b237789c</xsl:when>
        <xsl:when test=".='wram'">7266bbdb-be63-5360-8ba0-cbed0e7335d6</xsl:when>
        <xsl:when test=".='wrar'">1b129525-70af-5c60-b8a3-9450c875a43b</xsl:when>
        <xsl:when test=".='wras'">607579d5-046e-5570-bd69-b339c0d8fe27</xsl:when>
        <xsl:when test=".='wresd'">8f5b36d4-c84f-5334-b7a9-dfa2cc1548ca</xsl:when>
        <xsl:when test=".='wst'">bec1136f-d605-5bba-9651-cfa12366d35e</xsl:when>
        <xsl:when test=".='wstoa'">6de40917-3cbb-5caa-aa9d-56fc196ddee0</xsl:when>
        <xsl:when test=".='wstoc'">0cf4708d-bcea-5028-9220-dc0862289144</xsl:when>
        <xsl:when test=".='wstoj'">028f9a70-4c4e-543e-a1e6-fce8d9b3774a</xsl:when>
        <xsl:when test=".='wtser'">0b5e309a-d76f-5539-a367-cc40a3125486</xsl:when>
        <xsl:when test=".='wwd'">eb9a7d63-dafb-5e28-a9ee-295f1e0c7e03</xsl:when>
        <xsl:when test=".='wweb'">80377409-9518-58fd-8703-251f31777e3a</xsl:when>
        <xsl:when test=".='winde'">1434227d-9ea6-58a1-8d53-a78ae01c5dab</xsl:when>
        <xsl:when test=".='wmdef'">7151abf6-2425-571b-b4e2-48ad0b8305f5</xsl:when>
        <xsl:when test=".='wport'">cc0a9c0f-4ca0-511f-8d13-caa9cf974984</xsl:when>
        <xsl:when test=".='wstoi'">f4af6d31-6755-53b1-8534-fe9fa9bdf74c</xsl:when>
        <xsl:otherwise>c9db97fb-9f34-5922-a290-acfe4b12e31d</xsl:otherwise> <!-- Unmapped (US-NRRI) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>57f36f55-930c-5897-bca1-1916d5868eae</institutionId>
  </xsl:template>

</xsl:stylesheet>
