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
    <identifierTypeId>fecba929-3457-5e7f-a1d5-8aab698df7b5</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='docspa'">9ce95042-ecb4-54ed-8be7-6f196bee196e</xsl:when>
        <xsl:when test=".='docsus'">9610b678-3d51-5d22-b41e-e6c67c562a8f</xsl:when>
        <xsl:when test=".='fhg3'">cbe190c8-861d-5968-af91-2b96d7cc8fac</xsl:when>
        <xsl:when test=".='fhg3h'">c13638b3-c51d-58b7-b5bc-654306bbaa2e</xsl:when>
        <xsl:when test=".='fhg3o'">9ec2af97-a561-5ba1-8ca0-0def64016d2b</xsl:when>
        <xsl:when test=".='fhg3ho'">7757e539-cd30-5be4-a1f2-b03dcf72b2fe</xsl:when>
        <xsl:when test=".='fhg4'">aa5b3b68-daa1-59f5-8ec7-9ee7ea720d35</xsl:when>
        <xsl:when test=".='fhg4o'">1efe6167-b425-555c-839e-d5e2e7e19a38</xsl:when>
        <xsl:when test=".='fhg5'">0fcb6afa-4860-5b2f-82b8-2473651627b9</xsl:when>
        <xsl:when test=".='fhg5o'">718cfd16-a9b0-59b6-8e19-4c92c1c0656e</xsl:when>
        <xsl:when test=".='fhg6'">502cd1a9-ffb4-5806-8392-f056ffffacd1</xsl:when>
        <xsl:when test=".='fhg6o'">dcf6ed47-4803-505f-895d-caabed609a7b</xsl:when>
        <xsl:when test=".='juve'">d2e7eeed-d3da-5bda-abc7-2a810db1cb3e</xsl:when>
        <xsl:when test=".='juvebrd'">1ee63896-0ef1-58b1-a9f8-74e7a897b462</xsl:when>
        <xsl:when test=".='juvejfic'">6dd730b0-cb2e-5a7a-ad09-8dc9333d795f</xsl:when>
        <xsl:when test=".='juvenonf'">8050f8f9-0b47-5762-8b03-d7d9771c4f30</xsl:when>
        <xsl:when test=".='juvepict'">03653223-f0a8-5fee-827c-6c984a647752</xsl:when>
        <xsl:when test=".='imcbb'">cfe16fbb-89bf-51c7-90b2-f6fa0fc09f37</xsl:when>
        <xsl:when test=".='imcbkk'">d524765d-319f-51e9-b39f-4768f9be7019</xsl:when>
        <xsl:when test=".='imcjkd'">6714c8be-76cf-5617-b5d8-99621b838601</xsl:when>
        <xsl:when test=".='imctxt'">c8e6eea2-75b8-588c-bc38-91ed2c33e7be</xsl:when>
        <xsl:when test=".='fhg2nf'">3e7bca33-2a1c-5ac3-baa9-177e5c7ab4c2</xsl:when>
        <xsl:when test=".='fhg2nn'">e50d56d5-8fef-5d9d-9a34-eb3e01c54bda</xsl:when>
        <xsl:when test=".='juveover'">e6e7db72-315d-5d94-a363-0c77713ea10e</xsl:when>
        <xsl:when test=".='imc'">55f94f6e-e646-5dd8-97fa-f8ecd7560139</xsl:when>
        <xsl:when test=".='imccd'">9f5fe1d0-300b-58be-b35e-dad449df9da2</xsl:when>
        <xsl:when test=".='catdept'">101913cb-2708-50c4-988a-90784885bf9c</xsl:when>
        <xsl:when test=".='catpro'">7bef38a8-bedb-5a6b-8e9b-a8f3e8719d14</xsl:when>
        <xsl:when test=".='catprint'">467f1858-9e7d-5075-9f51-d7ce4af7568a</xsl:when>
        <xsl:when test=".='docsccref'">209ebe46-8dbc-58a0-82ca-6e759d55e36b</xsl:when>
        <xsl:when test=".='docselect'">ffe31196-df8f-5b7b-bf80-aa4534e1e513</xsl:when>
        <xsl:when test=".='docsparef'">156612df-ba50-5973-907a-bf29c9b12e1b</xsl:when>
        <xsl:when test=".='docsusref'">f3662db6-5848-5f98-bb04-af4a9a68db9e</xsl:when>
        <xsl:when test=".='EGOBI'">2cccdda6-ce01-5b34-abb1-3121ef45efa7</xsl:when>
        <xsl:when test=".='ezblend'">aa212930-e19f-5028-a602-c66989a9b177</xsl:when>
        <xsl:when test=".='RELAISEZB'">8b835186-0c08-5f1f-9444-7ff6e7abcfa4</xsl:when>
        <xsl:when test=".='fhg1me'">0ecf8e88-c410-5760-99e5-9509c58c3d9c</xsl:when>
        <xsl:when test=".='fhg1mfi'">4340f93a-fd48-55ee-b3f4-90707afd4315</xsl:when>
        <xsl:when test=".='fhg1m'">20ea8b9c-1dd2-587f-8591-479c5834ff36</xsl:when>
        <xsl:when test=".='fhg1n'">dd8d3369-fcf1-5357-b062-6c67feff657a</xsl:when>
        <xsl:when test=".='fhg1p'">bdb567cb-1dc8-5630-8c09-f542241f9942</xsl:when>
        <xsl:when test=".='fhg2b'">e09864b4-4c32-5515-8fb5-879bc28c2b96</xsl:when>
        <xsl:when test=".='fhg2d'">4c428689-9949-5b66-a5df-606133327e20</xsl:when>
        <xsl:when test=".='fhgdc'">97cbabea-89b2-52df-ba2c-2f0b3d22eac6</xsl:when>
        <xsl:when test=".='fhg2r'">d7b8831c-7cda-5c37-a91a-2eae062a6c0a</xsl:when>
        <xsl:when test=".='fhg2rd'">aa7bcaf9-ba96-51da-a8ff-2f2d40b8a8ba</xsl:when>
        <xsl:when test=".='fhg2v'">b8b7485f-1d96-5e0a-ad5d-8854feb49946</xsl:when>
        <xsl:when test=".='fhg3hc'">48ea0c08-5aaf-5e09-8c90-8c0517b10eb0</xsl:when>
        <xsl:when test=".='fhg6f'">984cdb14-b4bb-5342-9d12-6cff07ddc972</xsl:when>
        <xsl:when test=".='fhgb'">c086a31a-2fad-5555-97b1-86dc002af14d</xsl:when>
        <xsl:when test=".='fhgc'">1f6502c5-b0f3-551d-b572-5e599c6a2947</xsl:when>
        <xsl:when test=".='fhgl'">40670e6d-131f-5873-8a3f-cb305b2654d4</xsl:when>
        <xsl:when test=".='fhg1pm'">1f782030-10aa-5d4e-b979-1972c54da71a</xsl:when>
        <xsl:when test=".='GOBI'">9c8c7784-b15b-5fd7-a431-a1c55db3e036</xsl:when>
        <xsl:when test=".='HAPPENING'">9512cdd1-4704-5a16-965c-6036bfbbb365</xsl:when>
        <xsl:when test=".='internet'">180e9a4f-dc1c-5418-b489-c2b732942313</xsl:when>
        <xsl:when test=".='jrlibguild'">5d5132b8-a3f6-5e74-a2bd-63938dc29348</xsl:when>
        <xsl:when test=".='jficnoill'">461eee6f-14df-5dd7-80f1-864c935f0e07</xsl:when>
        <xsl:when test=".='juveddispl'">8dc970cd-23d2-52e0-80fa-515a7e031956</xsl:when>
        <xsl:when test=".='juveref'">ef7ed355-d670-5df1-802d-896ffa4baf4c</xsl:when>
        <xsl:when test=".='maps'">747fa2c0-c8b8-54e0-afb5-29577a97f981</xsl:when>
        <xsl:when test=".='mapsatlas'">dc23245a-a631-516e-8b9e-5fa2f9af702b</xsl:when>
        <xsl:when test=".='mapgeol'">5aafdf65-48b3-5f0a-ac49-67ccc5072557</xsl:when>
        <xsl:when test=".='mapsref'">45273807-2630-50a0-a933-70ebd28cd937</xsl:when>
        <xsl:when test=".='oregonthes'">89486b1f-2e50-5877-b803-178c469a3b9e</xsl:when>
        <xsl:when test=".='PALCI'">ddcf3d92-15cd-5d37-9e9e-ac1b361131d0</xsl:when>
        <xsl:when test=".='phila'">7a6dabfe-74e8-5041-8209-774ec6f5a5d1</xsl:when>
        <xsl:when test=".='serialsoff'">c47067c3-5b33-5eee-88d9-5c1f379b8ddd</xsl:when>
        <xsl:when test=".='spec'">24ab134d-6f44-5ea8-a6a3-bdcfcc901cdd</xsl:when>
        <xsl:when test=".='specadl'">62bcc32a-94f2-52ce-ac8b-34aad6dbf860</xsl:when>
        <xsl:when test=".='specaral'">8f4b06be-ec27-5eb5-8753-95a905ead7ab</xsl:when>
        <xsl:when test=".='specarch'">153b51f5-4b83-5cc9-b8f3-83d491a30c65</xsl:when>
        <xsl:when test=".='specball'">d47e4252-5580-5813-974b-7b67719cd161</xsl:when>
        <xsl:when test=".='specbeck'">3cd3ea73-fd29-5c6a-a68d-9480338f2128</xsl:when>
        <xsl:when test=".='specbeckq'">eaa6a387-d04e-5fee-857c-4205a348a0e2</xsl:when>
        <xsl:when test=".='specbrad'">71c9472e-b550-52c0-a335-99feed9ff515</xsl:when>
        <xsl:when test=".='specches'">a43c9f3d-76df-5cb9-8481-496fb42159ab</xsl:when>
        <xsl:when test=".='specchesq'">c1a37146-32ff-56da-bc02-97c5a951c870</xsl:when>
        <xsl:when test=".='specehin'">a5f78e75-722b-5a83-9b86-8833f2ffb472</xsl:when>
        <xsl:when test=".='specehinq'">63bfa4d6-7e8e-5c68-a4f9-52ec75aee895</xsl:when>
        <xsl:when test=".='specfolio'">d8e13b9f-be97-5cbe-b58f-2c1571f1d6a3</xsl:when>
        <xsl:when test=".='spechon'">2e53c9ed-93a4-589c-8f71-e670c01e47a3</xsl:when>
        <xsl:when test=".='specluvim'">b04f3dcd-6d3c-5323-9bec-bc232c9c1896</xsl:when>
        <xsl:when test=".='specnorm'">2b9a68b5-a69f-5dd2-b7fd-0ac6cced7052</xsl:when>
        <xsl:when test=".='specnormq'">11652f64-8129-58bd-8fd7-60c21ec43310</xsl:when>
        <xsl:when test=".='specohc'">154c5a1d-c9eb-5631-aba9-1ac1c6bb6632</xsl:when>
        <xsl:when test=".='specq'">80b2f162-30a9-5a8c-86cc-2ede989a1862</xsl:when>
        <xsl:when test=".='specpal'">2f51c30a-8ebf-527e-835d-f1ea976e2b8b</xsl:when>
        <xsl:when test=".='specperr'">b90ff377-dfc1-5248-9895-c49a5c9dea31</xsl:when>
        <xsl:when test=".='specref'">997aee63-74cd-59ba-937f-a3df31af2829</xsl:when>
        <xsl:when test=".='specscj'">c3f0484c-dcfa-5dda-8180-05847c35c6eb</xsl:when>
        <xsl:when test=".='specscjq'">a17602a0-3daa-52a6-8723-3e14290c4dd4</xsl:when>
        <xsl:when test=".='spectextb'">f6ee98d5-3295-5385-a0f6-41bb362a24be</xsl:when>
        <xsl:when test=".='specthes'">47c5826a-0167-5eb5-962f-23ff43e0ea2e</xsl:when>
        <xsl:when test=".='specwein'">b801f264-7f96-5d17-9e06-df9ec9dc6a22</xsl:when>
        <xsl:when test=".='specweinq'">f9f7f693-5529-56f2-88ec-15266c6819fa</xsl:when>
        <xsl:when test=".='WCU'">691f1a22-e4dc-55fd-babf-acc9830f1488</xsl:when>
        <xsl:when test=".='WITHDRAWN'">5a670a79-12e3-504a-9c29-241c75bb1804</xsl:when>
        <xsl:when test=".='imcrom'">1308fd1a-b891-51d6-8d42-f40d864c5cce</xsl:when>
        <xsl:when test=".='imcdsp'">ac6610a0-df9f-577c-a74b-0128501b4897</xsl:when>
        <xsl:when test=".='imcdspd'">b442779f-09ea-5979-ba05-c5f8d735952e</xsl:when>
        <xsl:when test=".='imcdvd'">aa030175-2182-509d-a58d-e0331e9bbcd3</xsl:when>
        <xsl:when test=".='imcdvr'">99206a18-799b-5bc8-9613-132838b34521</xsl:when>
        <xsl:when test=".='imcequi'">d3befe6e-cc8b-5963-851e-a7de5fe7ff5e</xsl:when>
        <xsl:when test=".='imcflm'">1bc3f7e3-28e4-56a8-9ad6-d60e029a13a5</xsl:when>
        <xsl:when test=".='imcgam'">5d069491-40bd-5c8c-8a02-7ae78c766b9f</xsl:when>
        <xsl:when test=".='imclap'">7132c935-b352-5d8b-982d-99a259b96e07</xsl:when>
        <xsl:when test=".='imclps'">28bc3afe-a2a8-5d42-aff2-21b13ce4f58e</xsl:when>
        <xsl:when test=".='imcoff'">48abf7d8-70ff-54c9-9f8d-9f3437fc5131</xsl:when>
        <xsl:when test=".='imcossdeq'">e07f297a-574e-588c-b54e-a213a0d1854e</xsl:when>
        <xsl:when test=".='imcper'">f0be8798-053a-5c03-93f7-cbb6825f5bb3</xsl:when>
        <xsl:when test=".='imcref'">a5733b3d-2250-5667-92c9-e9e43c753b1c</xsl:when>
        <xsl:when test=".='imcres'">4cfa6ce8-b721-58d3-b9e0-849c0ef4808e</xsl:when>
        <xsl:when test=".='imcstr'">bb1e4904-2c6a-518c-8434-4289529d46db</xsl:when>
        <xsl:when test=".='imctfeq'">c21f7705-bfd6-5c39-a693-6e84479bbdcf</xsl:when>
        <xsl:when test=".='imcvhs'">62241723-b54e-502c-ae1f-95fbab770264</xsl:when>
        <xsl:when test=".='unused'">ba5735a2-46e6-5b45-be99-79bd4de4f422</xsl:when>
        <xsl:when test=".='pmperbd'">ef84861e-3047-5d2e-b3b6-7a149d99229c</xsl:when>
        <xsl:when test=".='pmbk'">ec690bc5-fc15-5dd8-8773-ed5dc5ceebdb</xsl:when>
        <xsl:when test=".='pmmin'">abf2a719-ebce-52c2-8e06-6974bef5c01d</xsl:when>
        <xsl:when test=".='pmed'">48fe8c16-88cf-5e89-8657-afa3be869c39</xsl:when>
        <xsl:when test=".='pmbkov'">08da6bcc-6f7b-54a8-8b67-12fbaf74df50</xsl:when>
        <xsl:when test=".='pmscov'">395201e4-00ef-55d3-93ac-f022134da2e4</xsl:when>
        <xsl:when test=".='pmsc'">32777eb4-6f96-5d85-9734-6cdc70276033</xsl:when>
        <xsl:when test=".='mu'">184e47ff-f8f4-5ba0-8972-63f20c872ade</xsl:when>
        <xsl:when test=".='mucb'">c77dc514-338b-5e06-b23c-c1220309a277</xsl:when>
        <xsl:when test=".='mufi'">446c4820-192e-5e78-a810-16b6d691bc77</xsl:when>
        <xsl:when test=".='mukn'">731272ea-61d6-5b03-8ba9-39ce16a4dcd6</xsl:when>
        <xsl:when test=".='murs'">66342018-bdc9-57d6-b854-a9b4531b042d</xsl:when>
        <xsl:when test=".='muvi'">e4d4a2a2-6022-55c0-8582-1e819a956fe5</xsl:when>
        <xsl:when test=".='pmbox'">9f580944-0525-5bc8-8fea-c87ae0d30749</xsl:when>
        <xsl:when test=".='pmcd'">42a7d8dc-b3fe-5e84-8e5f-94a7a14c57b9</xsl:when>
        <xsl:when test=".='mucdcir'">76b732f8-39e3-54fb-a284-c1fcf6518119</xsl:when>
        <xsl:when test=".='pmdis'">572cda95-3426-586d-a309-d8eb2ce2290d</xsl:when>
        <xsl:when test=".='pmdvd'">4bca7cf6-bb04-5262-b5cf-958189d43657</xsl:when>
        <xsl:when test=".='pmgs'">ea2e1ae0-4409-5253-883c-82796f593673</xsl:when>
        <xsl:when test=".='pmoff'">fa796794-6ab0-53be-992d-1c73f8048485</xsl:when>
        <xsl:when test=".='pmlp'">e8a3b21e-b6ae-53c3-9c93-1a0f24ed74e9</xsl:when>
        <xsl:when test=".='pmmusg'">e883c235-0b93-5625-a6a1-de9bb5ae7daf</xsl:when>
        <xsl:when test=".='pmlapmp'">dfb0edfa-5093-582b-8d2e-2c5cf24e713b</xsl:when>
        <xsl:when test=".='pmnew'">d9a91863-ed08-5e2d-981e-bc0786e50c2f</xsl:when>
        <xsl:when test=".='pmper'">404b7f0f-e7c8-516e-a8a6-56b6d67681e8</xsl:when>
        <xsl:when test=".='pmpp'">e58db18c-bc87-5926-8715-e96d10e00d5d</xsl:when>
        <xsl:when test=".='pmref'">c0fe04b6-8eea-5cd9-8fef-4709c1fe7f3e</xsl:when>
        <xsl:when test=".='pmrem'">7460ac3a-25df-5455-9292-7ac93aff5b34</xsl:when>
        <xsl:when test=".='pmres'">2155ea18-c879-508c-8906-96026b08de0c</xsl:when>
        <xsl:when test=".='pmscres'">6cb34925-673d-580e-a15d-e7eefb6f168b</xsl:when>
        <xsl:when test=".='pmwork'">59ce0d0b-7e9f-5317-ade5-3acfdb1556f8</xsl:when>
        <xsl:otherwise>c0752820-e0d3-5a9d-b16c-62709e888240</xsl:otherwise> <!-- Unmapped -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>a2759cbe-7c97-5ff1-8955-55827f0a9238</institutionId>
  </xsl:template>

</xsl:stylesheet>
