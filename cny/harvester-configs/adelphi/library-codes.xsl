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
    <identifierTypeId>52694239-f231-5534-b3cc-002c67502f22</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='HAUP dvd'">15351808-da55-5d7b-bb32-567198b163fb</xsl:when>
        <xsl:when test=".='HAUP main'">4a50d1be-4767-52fe-868d-a18715844d93</xsl:when>
        <xsl:when test=".='HAUP juvenile'">da0f9c73-3f72-5758-8039-588d7c7ed28d</xsl:when>
        <xsl:when test=".='HAUP periodical'">d3ae2d34-feaf-5f93-bb64-ddbcfe1e7cec</xsl:when>
        <xsl:when test=".='HAUP prcl'">1cbe012a-0484-5bcf-8062-22a0d8467030</xsl:when>
        <xsl:when test=".='HAUP reference'">114e633d-0819-5721-8133-d178b5c72fd7</xsl:when>
        <xsl:when test=".='HAUP reserve'">7c4f91a9-e6c1-5976-a937-16bbf8057d8e</xsl:when>
        <xsl:when test="starts-with(., 'HAUP')">4da1e125-fd26-5043-bafe-69db3c5e7435</xsl:when> <!-- Unmapped (HAUP)-->
        <xsl:when test=".='HV reserve'">3a92bbc9-4324-5d84-8125-d15af66de9a1</xsl:when>
        <xsl:when test=".='HV reference'">3f3a85d5-8708-5f36-b031-167890dcad7d</xsl:when>
        <xsl:when test=".='HV occres'">66b2b26a-e127-596d-ac58-6f2b56a025f9</xsl:when>
        <xsl:when test=".='HV dvd'">7d7e5e49-17e0-575b-9d5b-e546a1a3206e</xsl:when>
        <xsl:when test=".='HV main'">b3f6d241-f02f-56b2-8ca1-1a5bc456d612</xsl:when>
        <xsl:when test=".='HV vhs'">d358139e-e387-510a-841e-c55c2d5e7cb0</xsl:when>
        <xsl:when test="starts-with(., 'HV')">1261112f-bd28-5eca-9fb7-a75a7740e7bc</xsl:when> <!-- Unmapped (HV)-->
        <xsl:when test=".='MAIN main'">c60fc2c1-c36f-5ffa-b0b7-a89224934c9a</xsl:when>
        <xsl:when test=".='MAIN clevel'">ec65fd3a-7e4c-5268-b444-fbd97553b96a</xsl:when>
        <xsl:when test=".='MAIN microforms'">7ac74207-3375-5dcb-b4d4-f5a075bb3e05</xsl:when>
        <xsl:when test=".='MAIN dvd'">833247f3-fa0c-5bb7-adb8-27d4e00b32f3</xsl:when>
        <xsl:when test=".='MAIN atlas'">9efca190-7426-5537-a1e5-c15e7f6f70f9</xsl:when>
        <xsl:when test=".='MAIN cmcact'">5fa59922-bc80-5206-9366-2325630563bf</xsl:when>
        <xsl:when test=".='MAIN cmcbb'">0c7fdbfb-c185-5e2e-bac5-3e5fbcaa3606</xsl:when>
        <xsl:when test=".='MAIN cmcjuv'">6c678f68-feb3-571a-81ac-7369c53991b6</xsl:when>
        <xsl:when test=".='MAIN cmctest'">37f42cbf-e12d-577e-816c-7cd1a7fed156</xsl:when>
        <xsl:when test=".='MAIN cmctext'">36394d0d-13c8-597f-be35-23a9495247f6</xsl:when>
        <xsl:when test=".='MAIN pdfres'">59894c34-4a5b-59c7-8d65-c13d5ee5c0b5</xsl:when>
        <xsl:when test=".='MAIN cmc'">52e4be99-cbbb-586c-a733-02e170100d7c</xsl:when>
        <xsl:when test=".='MAIN dei'">f800df6a-d6af-51c3-b987-924dd2931fa9</xsl:when>
        <xsl:when test=".='MAIN vhs'">33801df0-f9ac-51d5-bc5a-07714450293a</xsl:when>
        <xsl:when test=".='MAIN internet'">d24fbef1-0536-5908-9735-103a56de2afe</xsl:when>
        <xsl:when test=".='MAIN empty'">b34fd5f5-4091-5c07-9fe1-aa7004e538d6</xsl:when>
        <xsl:when test=".='MAIN folio'">80932324-601e-550a-a8f3-aab99a6a4d36</xsl:when>
        <xsl:when test=".='MAIN reffolio'">1ab83c31-cdf2-51ad-bbc9-0484708aea0b</xsl:when>
        <xsl:when test=".='MAIN refcfolio'">b6e8d6ec-4c72-5af9-84da-6d46eb988260</xsl:when>
        <xsl:when test=".='MAIN foliox'">9f6d2bfd-4f18-587a-b936-2b1c7b60a22c</xsl:when>
        <xsl:when test=".='MAIN govdoc'">202860f8-0c89-5e18-bc58-1496ecd9d542</xsl:when>
        <xsl:when test=".='MAIN haylounge'">6c1336a5-4d34-5bd6-84e3-e09115f92d11</xsl:when>
        <xsl:when test=".='MAIN ill'">d47e863c-4bb9-5fdb-b8ad-ad84f3f4ff56</xsl:when>
        <xsl:when test=".='MAIN itdesk'">e578149b-3b4c-5424-b7cd-bed7537f48bd</xsl:when>
        <xsl:when test=".='MAIN newbooks'">45f2bd43-5cdd-5b8e-9f86-aa8ad7f07207</xsl:when>
        <xsl:when test=".='MAIN npreserve'">463900e9-5fb4-55b3-86f7-a722e0db20f2</xsl:when>
        <xsl:when test=".='MAIN periodical'">d9c1f1c3-e1b4-522a-b218-2896900853e9</xsl:when>
        <xsl:when test=".='MAIN persres'">077ef2f5-9fda-5b55-851e-f45e81116c6c</xsl:when>
        <xsl:when test=".='MAIN prcl'">2cf6419a-a20a-5b14-b6dc-2187defcc4ef</xsl:when>
        <xsl:when test=".='MAIN UNASSIGNED'">0ae2124e-6167-547b-a17c-98da7f6d9cad</xsl:when>
        <xsl:when test=".='MAIN readyref'">05dc186b-6dc2-53b4-b584-3828af43dbe6</xsl:when>
        <xsl:when test=".='MAIN reference'">2563f35b-1556-5b7d-8889-0cb67f4561cb</xsl:when>
        <xsl:when test=".='MAIN refc'">e64f34b2-481d-5000-81f3-69f05dc96bd8</xsl:when>
        <xsl:when test=".='MAIN reserve'">bf72c982-05d3-5e01-9b7d-3d5b8b012285</xsl:when>
        <xsl:when test=".='MAIN reserve112'">ecd65847-bb83-5506-a800-013890a5a053</xsl:when>
        <xsl:when test=".='MAIN servicept'">ec365961-e531-5622-8167-5b64e0e2a423</xsl:when>
        <xsl:when test=".='MAIN stref'">99e54f87-a735-5107-84bf-3ed21a208a12</xsl:when>
        <xsl:when test=".='MAIN swirbul112'">4ce1c730-5ec3-533e-8385-c69517da3298</xsl:when>
        <xsl:when test="starts-with(., 'MAIN')">cc5ffd6a-553f-5ab9-8911-cd03b9d8b9f7</xsl:when> <!-- Unmapped (MAIN)-->
        <xsl:when test=".='MH dvd'">abd3a491-71a5-5918-9e0d-864078e0fbe9</xsl:when>
        <xsl:when test=".='MH main'">b8ca6ff8-3876-58a5-8fed-cd1e231ed59f</xsl:when>
        <xsl:when test=".='MH vhs'">011cc40a-ba9d-5bba-a71f-e11493876fa5</xsl:when>
        <xsl:when test=".='MH cmcact'">2780c9d3-6e86-51d7-aca5-bfa468302023</xsl:when>
        <xsl:when test=".='MH cmcjuv'">02609422-fd07-58b8-9d9a-cba80d3126bd</xsl:when>
        <xsl:when test=".='MH cmcjuvref'">8fba5e41-5936-5c92-8764-903dc9184f6f</xsl:when>
        <xsl:when test=".='MH cmc'">29e67ff5-e208-5ac0-ad24-a6d6060ee2cd</xsl:when>
        <xsl:when test=".='MH periodical'">44af25cd-ad6b-5d74-8d1e-1f2e79a7b3da</xsl:when>
        <xsl:when test=".='MH reserve'">98c12be7-eb43-5d39-86ec-43bb51b6c429</xsl:when>
        <xsl:when test=".='MH reference'">8a4000de-3c5a-5e0d-baa5-ebfeb911d66a</xsl:when>
        <xsl:when test=".='MH nonprint'">01d91021-18be-525b-92b4-396fabc1a7ad</xsl:when>
        <xsl:when test=".='MH prcl'">1ecebb6c-cc76-5fab-bdd0-741148baee1c</xsl:when>
        <xsl:when test=".='MH vfr'">8802771d-b4e0-5751-8ac7-c96f285b492e</xsl:when>
        <xsl:when test="starts-with(., 'MH')">450266bf-a75f-5d1c-8772-947f1cc79c81</xsl:when> <!-- Unmapped (MH)-->
        <xsl:when test=".='UASC archives'">e1d26cfd-f9c4-554e-89fe-bfbc5dfa6ca6</xsl:when>
        <xsl:when test=".='UASC speccoll'">df96ab9f-0d95-5401-8d76-19a83fa66203</xsl:when>
        <xsl:when test=".='UASC specflat'">124c4e8a-3da0-5d7b-82f2-72f2c3db8cdf</xsl:when>
        <xsl:when test=".='UASC specfolio'">2b58662c-3743-5423-9566-1b92851894a7</xsl:when>
        <xsl:when test=".='UASC specfolx'">749f7064-008e-5622-b385-db49a5fc169c</xsl:when>
        <xsl:when test=".='UASC specoff'">9bed65cd-0b8d-5aef-8172-cfbefa7a2e3a</xsl:when>
        <xsl:otherwise>2100fb0c-2fc1-5e7f-8803-d0a492f6089c</xsl:otherwise> <!-- Unmapped (UASC) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>3a4afabb-e8a0-5d3d-965f-616363548f6d</institutionId>
  </xsl:template>

</xsl:stylesheet>
