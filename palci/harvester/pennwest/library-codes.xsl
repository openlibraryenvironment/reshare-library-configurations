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
    <identifierTypeId>04d02fdc-ad2c-5bc3-aaad-4120964bcb83</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='Carlson Browsing'">5b6c3cf5-bc08-53ac-8971-dac09d8bf320</xsl:when>
        <xsl:when test=".='Carlson Carl Main'">53a793fa-ad3b-5cef-95b4-4bdef0b1f257</xsl:when>
        <xsl:when test=".='Carlson Carl-fn'">9c6cc783-faf6-5a11-bba3-4d51b9f2a507</xsl:when>
        <xsl:when test=".='Carlson Carl Juv'">dc4a7b6e-b4c7-5485-9d0b-4e7a5f12149e</xsl:when>
        <xsl:when test=".='Carlson Carl Ovrsz'">c134ac61-5e51-5cf9-887d-86d28bcd706b</xsl:when>
        <xsl:when test=".='Carlson Carl-3'">49caaeea-9ea5-541c-814b-bf595c09952e</xsl:when>
        <xsl:when test=".='Carlson CarlTxtbk'">388b868c-a83c-5731-91a0-a3bd57f784d6</xsl:when>
        <xsl:when test=".='Carlson Carl-zo'">d4fe699d-2adc-5a24-bce7-9cdfade86393</xsl:when>
        <xsl:when test=".='Carlson Douglass'">f7e9e939-26b0-5b26-ac56-7abb6f526b3e</xsl:when>
        <xsl:when test=".='Carlson Archives'">6451cedd-fe6c-504a-95d7-f5df5237379a</xsl:when>
        <xsl:when test=".='Carlson Carl Case'">117c083c-443f-50aa-96f9-a46ab4fe2f24</xsl:when>
        <xsl:when test=".='Carlson Carl-maps'">3c0496a7-cb5f-57bd-b36b-1568bbe5f5b9</xsl:when>
        <xsl:when test=".='Carlson Carl Media'">9587afb4-177d-5e63-b439-1bbf9322fc26</xsl:when>
        <xsl:when test=".='Carlson Carl Resv'">eb7f1f37-1439-53eb-923c-19853b70e6ff</xsl:when>
        <xsl:when test=".='Carlson Carl VF'">ddafce65-058a-5c85-a337-88d3e0597a0d</xsl:when>
        <xsl:when test=".='Carlson CenAcadExe'">2d500daa-71ee-59a4-ae38-b0c11a71308f</xsl:when>
        <xsl:when test=".='Carlson Chandler'">9d486124-fbc6-5489-a413-4e7c22c7340e</xsl:when>
        <xsl:when test=".='Carlson CTechEquip'">e634732c-c5ea-5e78-9608-2457b272d3d5</xsl:when>
        <xsl:when test=".='Carlson EZB'">83252452-4593-5c3d-ba68-6b52c6e6fbc7</xsl:when>
        <xsl:when test=".='Carlson EZB_Lend'">f1fd67d6-e03a-52b9-b8a3-250c0de6e180</xsl:when>
        <xsl:when test=".='Carlson ILLiad'">6acdc9bc-6e1f-54cd-ad9b-b5612b6292ed</xsl:when>
        <xsl:when test=".='Carlson ILLiadL'">0e3b31ab-2664-5298-9923-54d90fc1c79b</xsl:when>
        <xsl:when test=".='Carlson LTC'">3464854f-e7a1-5bb9-8bb0-655df67b3850</xsl:when>
        <xsl:when test=".='Carlson Map Case'">72a866a0-3789-5348-9b47-0462b5bb4b26</xsl:when>
        <xsl:when test=".='Carlson Microforms'">46694e90-8112-53ec-9605-2c66f781d28f</xsl:when>
        <xsl:when test=".='Carlson Periodical'">be8f2b6b-8c3f-598d-82fc-276ae4c0ce98</xsl:when>
        <xsl:when test=".='Carlson Reference'">f18b5dfe-2fd2-5ca0-9482-193c9c1fec0f</xsl:when>
        <xsl:when test=".='Carlson SpecArcv'">d27769b8-83c0-5a90-b33c-e0d9f18ea3d7</xsl:when>
        <xsl:when test=".='Carlson Spec Col'">c0a6a275-7148-50ec-b022-7c03e464a134</xsl:when>
        <xsl:when test=".='Carlson Tech'">6a5a3993-5bda-5438-b5e5-1bc80907cb2d</xsl:when>
        <xsl:when test="starts-with(., 'Carlson')">f46ecd47-0bc7-51b3-90ef-5be6f46687fd</xsl:when> <!-- Unmapped (Carlson)-->
        <xsl:when test=".='EUP Book4'">9eefc272-453f-51e8-af35-b67841982169</xsl:when>
        <xsl:when test=".='EUP Book5'">aa2288b6-ce0b-5bdc-b016-cbb1b2949e6f</xsl:when>
        <xsl:when test=".='EUP Book6'">776fcd1e-bea4-52e2-9724-6113bea00133</xsl:when>
        <xsl:when test=".='EUP Juvenile'">6a979e84-102e-5da2-9a42-6a393aec6416</xsl:when>
        <xsl:when test=".='EUP Archives'">61b60be5-4415-53f2-99f9-b705175bf5da</xsl:when>
        <xsl:when test=".='EUP Audiovisvd'">61fdc08e-df6c-52c0-9997-4cd1cfa93e71</xsl:when>
        <xsl:when test=".='EUP Book'">f462bac7-6ae3-5b3f-b246-debaf4992af5</xsl:when>
        <xsl:when test=".='EUP Catrev'">ced3103b-0d93-5434-b488-5499fdb37119</xsl:when>
        <xsl:when test=".='EUP Circdesk'">d8924728-655f-596a-a7a1-912f6dbda266</xsl:when>
        <xsl:when test=".='EUP Diebold'">22eec1c1-9cae-56d6-bd8d-a8d2ca01737d</xsl:when>
        <xsl:when test=".='EUP Display'">bcaa7b2a-df53-5e81-8f70-21aa13a0e1bc</xsl:when>
        <xsl:when test=".='EUP E-UNUSED'">2d98d3f0-23f4-52b0-aefb-4137aa52f5f7</xsl:when>
        <xsl:when test=".='EUP EZB'">82dbb79e-4d22-5efc-95bb-b00919ce937e</xsl:when>
        <xsl:when test=".='EUP EZB_LEND'">c150d30d-55e8-5b35-997b-7eb34a239ece</xsl:when>
        <xsl:when test=".='EUP Index'">ba12e778-f6ea-53b1-92fe-22124b2eeaca</xsl:when>
        <xsl:when test=".='EUP Microfimn'">8ccc9e89-cbaa-5024-95a2-2548788991fe</xsl:when>
        <xsl:when test=".='EUP Microforms'">174b1e2e-5fd3-5c4c-a488-fe1692b2171a</xsl:when>
        <xsl:when test=".='EUP Newbook'">6d98d054-8607-5b86-9d87-fb89c348b740</xsl:when>
        <xsl:when test=".='EUP Periodical'">5a984ed9-7d47-5bbf-a7af-4d9246b718eb</xsl:when>
        <xsl:when test=".='EUP Reference'">c21bbf10-9255-5ce5-9d60-6d0143f6cf87</xsl:when>
        <xsl:when test=".='EUP Resdesk'">a82976a8-a217-56f2-ae0a-86c0dab90e78</xsl:when>
        <xsl:when test=".='EUP Speccoll'">dc597612-7894-51f3-a935-0f37a473631e</xsl:when>
        <xsl:when test=".='EUP SpeccollFA'">c97a3ff0-477f-5b0f-ad2a-9a5c30ea65ab</xsl:when>
        <xsl:when test=".='EUP SpeccollOV'">8017ccc1-6e83-57a6-b7dd-d704d708db9f</xsl:when>
        <xsl:when test=".='EUP Speccollth'">741daab4-5176-5382-b023-14f7b00d88f3</xsl:when>
        <xsl:when test=".='EUP Techdesk'">54f022cb-1c15-52e5-907a-0ce7f249e74a</xsl:when>
        <xsl:when test=".='EUP Thesis'">5e572d67-6c28-5ffa-90d8-defd4ab2a908</xsl:when>
        <xsl:when test=".='EUP URSA'">f1fce7bb-6d95-55ab-b39f-3f81078a8155</xsl:when>
        <xsl:when test="starts-with(., 'EUP')">1928040c-964f-50be-9bca-9268a700fa3a</xsl:when> <!-- Unmapped (EUP)-->
        <xsl:when test=".='MAN 2LC'">ac4cd0c1-a93d-5966-9c2c-093e84359179</xsl:when>
        <xsl:when test=".='MAN 3LC'">3d371c89-d3b2-5a6a-b865-844b8c687df1</xsl:when>
        <xsl:when test=".='MAN 4LC'">a636fe88-413f-589d-aa31-d24b67f37ec4</xsl:when>
        <xsl:when test=".='MAN CURR'">478c45cf-1195-5f79-a6f9-ebcdc688fb69</xsl:when>
        <xsl:when test=".='MAN FAC'">01626de9-df12-5d42-ba9d-5c4bbaaad759</xsl:when>
        <xsl:when test=".='MAN FDI'">b80a8e26-78b6-5e03-9979-2a5d455f2544</xsl:when>
        <xsl:when test=".='MAN GNC'">c9743c20-aceb-56c2-a8dc-697fd372a123</xsl:when>
        <xsl:when test=".='MAN 2LCN'">b137b766-a738-57f2-89ac-8717a921abc0</xsl:when>
        <xsl:when test=".='MAN 3LCN'">36f9e199-2ac8-5dfe-b38b-5a82bfe111ee</xsl:when>
        <xsl:when test=".='MAN 4LCN'">16d91663-eb2f-5afe-9ab1-88d6c885bffd</xsl:when>
        <xsl:when test=".='MAN ARCHIVES'">7ec7af70-8bf1-537c-96db-f1a83275d9d7</xsl:when>
        <xsl:when test=".='MAN BIBSERV'">8b208e92-6fd3-54ce-b93c-9b22bc08f998</xsl:when>
        <xsl:when test=".='MAN CD'">9803627c-74a7-5696-a962-2e47698a8447</xsl:when>
        <xsl:when test=".='MAN CIRCDESK'">68f4f32b-c9d3-5986-8ba3-644c7d58ed0e</xsl:when>
        <xsl:when test=".='MAN DISPLAY'">c3f64ce2-8cf3-5dd0-a249-2694ba3168d4</xsl:when>
        <xsl:when test=".='MAN DVD'">59767c12-57e4-5ff8-bed2-1e29af915e3b</xsl:when>
        <xsl:when test=".='MAN EJOUR'">e686d438-ce99-5991-ab31-7029787e4356</xsl:when>
        <xsl:when test=".='MAN ELECTRONIC'">fb74ef4b-368c-5c0d-8045-ee87020248e1</xsl:when>
        <xsl:when test=".='MAN EQUIP'">408b9003-d20c-5386-a879-7fba0b9130c5</xsl:when>
        <xsl:when test=".='MAN EZB_LEND'">3436812b-4ec3-59e1-98cf-982759c545cb</xsl:when>
        <xsl:when test=".='MAN EZBOR'">6bcaec9d-750c-5d5d-af84-3154af0f4fc3</xsl:when>
        <xsl:when test=".='MAN MFICHE'">4bc3f159-cb21-5733-8b7d-829185339e9c</xsl:when>
        <xsl:when test=".='MAN MFILM'">3243748e-0765-5a07-8fb4-1994beb3d2f2</xsl:when>
        <xsl:when test=".='MAN NEW'">ca1ff90a-4a86-56d8-9adc-1bff01c0f300</xsl:when>
        <xsl:when test=".='MAN ONOR'">fe4bf05e-f7a0-5008-86e2-5d61ca5137eb</xsl:when>
        <xsl:when test=".='MAN OVERNIGHT'">f688e4e8-ed24-5c69-abf8-c825b3dd40f6</xsl:when>
        <xsl:when test=".='MAN PBRAY'">816e27c7-d560-58d1-b46c-f0400ce4c31a</xsl:when>
        <xsl:when test=".='MAN PDVD'">43cf860f-76b4-5f59-8561-fa0d70835818</xsl:when>
        <xsl:when test=".='MAN POPULAR'">c1669e60-92d4-5882-9d8a-65c0e2c2754d</xsl:when>
        <xsl:when test=".='MAN RESERVE'">a98af791-e8a5-52a6-997d-f6b67956b533</xsl:when>
        <xsl:when test=".='MAN SC'">90ea3c9d-405c-5930-98e7-4957a89d2d38</xsl:when>
        <xsl:when test=".='MAN TEMP'">450fd583-7155-5901-8337-61199a0c0a4c</xsl:when>
        <xsl:when test=".='MAN VGAMES'">a2cc21dc-064d-5a05-899d-e01570fd5990</xsl:when>
        <xsl:when test=".='MAN VIDLC'">1949662a-4541-574b-88a5-e215de49d961</xsl:when>
        <xsl:when test="starts-with(., 'MAN')">d024a222-22f1-52ab-bb92-116401d6411f</xsl:when> <!-- Unmapped (MAN)-->
        <xsl:when test=".='Suhr Ven-O'">6b374bc7-5753-518b-9d83-b18f9f84c7bc</xsl:when>
        <xsl:when test=".='Suhr Ven Juv'">9a00bc39-39e4-528f-992a-fdfab4f80b01</xsl:when>
        <xsl:when test=".='Suhr Ven Main'">d5e62946-b71c-5afd-b55a-a181003f1e86</xsl:when>
        <xsl:when test=".='Suhr Harvey'">f78af2c4-fd3a-59ac-b9de-61bf1132bfb2</xsl:when>
        <xsl:when test=".='Suhr Sresv'">872fd3ef-4d07-5d31-88ac-f6cdbc29be53</xsl:when>
        <xsl:when test=".='Suhr Ven Maps'">845d79e9-96a8-5d3a-aa03-41712a981ab3</xsl:when>
        <xsl:when test=".='Suhr Ven Media'">35e817e4-f12a-5e5f-8809-1dcf47846f15</xsl:when>
        <xsl:when test=".='Suhr Ven Period'">bf82d301-8de0-5eed-9b24-cf2c07b9e9e1</xsl:when>
        <xsl:when test=".='Suhr Ven Ref'">ad7cd050-48dc-5bb0-9352-9a28773c249f</xsl:when>
        <xsl:when test=".='Suhr Ven Spec'">d2cc3584-44c0-5e46-9fd8-cae18ce21fa7</xsl:when>
        <xsl:otherwise>8cc931ff-2844-50c7-adb9-470c25c79477</xsl:otherwise> <!-- Unmapped (Suhr) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>dcc02343-dcda-5b9a-a7bd-c0ce509ae2ec</institutionId>
  </xsl:template>

</xsl:stylesheet>
