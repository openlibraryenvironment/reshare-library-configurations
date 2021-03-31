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
    <identifierTypeId>8e8e6220-3b9b-5e2e-bc44-07de6691e048</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='bccs'">9d1c9666-5c58-54da-8b76-5884758c3222</xsl:when>
        <xsl:when test=".='bcmt'">92ecdf06-074f-50b5-bf6c-59b1ff2532d3</xsl:when>
        <xsl:when test=".='bdc'">49c727b1-b924-51fb-9c69-e2ab644e7a4e</xsl:when>
        <xsl:when test=".='bdisp'">eb21af4f-fba3-59bb-93e2-f727de71af2f</xsl:when>
        <xsl:when test=".='bmc'">1c4b9b3a-a79e-5b7a-a952-b7b9fb899533</xsl:when>
        <xsl:when test=".='boff'">1fd14a1a-834d-577f-b59f-39008535c456</xsl:when>
        <xsl:when test=".='bofp'">f07ea414-ed3a-56aa-8b3f-c8d62593ec09</xsl:when>
        <xsl:when test=".='boref'">04008d49-abf1-5218-a558-b93fd24b1e76</xsl:when>
        <xsl:when test=".='bover'">d44b1fda-a678-5d27-8dfa-ab7e12adbe33</xsl:when>
        <xsl:when test=".='bovfo'">95ab117f-b6a4-59f0-8450-a6731b28c5cc</xsl:when>
        <xsl:when test=".='bper'">c648b9bf-55b8-5eaa-97c1-de23ba0913b7</xsl:when>
        <xsl:when test=".='bref'">cd9fa218-c8a1-522b-babd-b5830beb978e</xsl:when>
        <xsl:when test=".='brem'">4fa9f1bc-681d-5372-8c08-9e416d9298f6</xsl:when>
        <xsl:when test=".='bres'">1dfccb8f-fb92-5f6e-859b-b3e8377e3246</xsl:when>
        <xsl:when test=".='brrbl'">05abbcb4-6f0f-5108-a465-1b454d9b6c8c</xsl:when>
        <xsl:when test=".='bsbl'">ad9c25fc-9f39-56fb-b0fd-05e354e3cd9c</xsl:when>
        <xsl:when test=".='bspb'">5bf6a8e4-78e7-56da-bd23-b9c3b9e97bb7</xsl:when>
        <xsl:when test=".='bspbf'">66f67d71-2b7a-5b7a-b7a4-26813f7897e0</xsl:when>
        <xsl:when test=".='bspec'">26f44045-c731-5b2b-bcfc-abb8ecbd0982</xsl:when>
        <xsl:when test=".='bspf'">b38b6fce-72f3-52cb-9791-9734fc2e989b</xsl:when>
        <xsl:when test=".='bspp'">27a20337-46c3-505f-b888-b6cfc21a989c</xsl:when>
        <xsl:when test=".='bsppf'">6c3236d8-2667-5371-8099-1ad234a56da7</xsl:when>
        <xsl:when test="starts-with(., 'b')">2a3c252f-c613-573c-a33a-0426526b77ff</xsl:when> <!-- Unmapped (b)-->
        <xsl:when test=".='dcdr'">8cd5f251-f97a-5867-a860-9b2561319e49</xsl:when>
        <xsl:when test=".='ddml'">089fa5f5-a43f-5ed5-8dd3-c34225e5d7ba</xsl:when>
        <xsl:when test=".='decor'">36cda2c8-a458-5dee-affb-b031b8b83a65</xsl:when>
        <xsl:when test=".='dele'">8174727c-78fb-55f3-aa0f-495664697cbf</xsl:when>
        <xsl:when test=".='dind'">3ec4cd9f-f1fb-5d44-9fe1-c7c59b60a94e</xsl:when>
        <xsl:when test=".='dlof'">769c3b4e-29f4-53d1-9957-14ed5991b235</xsl:when>
        <xsl:when test=".='dmic'">5cd08079-4a46-5dd3-a078-11e6e9cc4dea</xsl:when>
        <xsl:when test=".='doff'">44224c32-0d38-50d7-9725-0447b8f38fc5</xsl:when>
        <xsl:when test=".='dosc'">5254244a-9e77-5425-ad4d-4eafe72b9c1a</xsl:when>
        <xsl:when test=".='dovef'">29598bd7-e359-58b8-873e-9f15caa98022</xsl:when>
        <xsl:when test=".='dover'">e3e11cf5-2949-525b-adfe-47615b6372a0</xsl:when>
        <xsl:when test=".='dper'">09313ea5-a5c2-58e2-86d1-e3449a913052</xsl:when>
        <xsl:when test=".='drare'">d654f2a1-4bee-5f62-b2fe-0f6175836322</xsl:when>
        <xsl:when test=".='dref'">0c109ba3-8874-5864-9fa7-7ad751e75123</xsl:when>
        <xsl:when test=".='dreff'">2b180ce8-7a85-57d2-852f-e034a2af8f7d</xsl:when>
        <xsl:when test=".='dres'">75e9c1c6-2cff-5031-ad73-88c340b081de</xsl:when>
        <xsl:when test=".='drref'">bb237331-9300-5c44-a8f0-711c0e0b5c97</xsl:when>
        <xsl:when test=".='dsec'">878f31a7-bc82-59c4-8a13-dd68e935d622</xsl:when>
        <xsl:when test=".='dstks'">0ca7102f-6f9c-5c07-baf6-2834290807bc</xsl:when>
        <xsl:when test=".='dthes'">d3b582a1-5ee2-58ab-85aa-9c83cbd56799</xsl:when>
        <xsl:when test=".='dvid'">1db4284d-0b2b-5e67-bd29-05a4efaf66de</xsl:when>
        <xsl:when test=".='dvmr'">3981abb8-7527-597a-abcc-9e9072dfce5b</xsl:when>
        <xsl:when test="starts-with(., 'd')">4b14a76d-8599-5c49-a9a4-9a0bda8d47b6</xsl:when> <!-- Unmapped (d)-->
        <xsl:when test=".='lbase'">3d961883-3125-5c8c-b55b-695b3420703e</xsl:when>
        <xsl:when test=".='levy'">5e5522fc-85f8-532f-8432-c01b7cbc6881</xsl:when>
        <xsl:when test=".='lmc'">f74a56f3-aa68-531f-990f-b86db23f48bb</xsl:when>
        <xsl:when test=".='lper'">bbd07ad6-f663-531e-b680-daf6aca94fd8</xsl:when>
        <xsl:when test=".='lrcom'">ea90c901-2a0c-58ca-80e5-4103647399d7</xsl:when>
        <xsl:when test=".='lref'">ee3f2015-1587-5804-98c0-b769d0011fde</xsl:when>
        <xsl:when test=".='lsp'">6ee8a8dd-20f5-5497-aa7b-764efcee3544</xsl:when>
        <xsl:when test="starts-with(., 'l')">ff06b219-c6cf-502d-a305-3c77e86f9635</xsl:when> <!-- Unmapped (l)-->
        <xsl:when test=".='main'">58295326-6de4-5c01-a38f-f14e6e9597d0</xsl:when>
        <xsl:when test=".='mbrch'">a54a7faa-0e8d-51f9-8e65-f854172420cf</xsl:when>
        <xsl:when test=".='mbrju'">bba1041b-f8ec-5e12-8d04-8aa3475ec6ce</xsl:when>
        <xsl:when test=".='mbrow'">cb919dd6-c264-5f5f-9e82-c600fa6c0958</xsl:when>
        <xsl:when test=".='mbrya'">5f2b7449-33f8-5c3b-8ffc-5d9e240d02a6</xsl:when>
        <xsl:when test=".='mcd'">ce17b319-2bcd-5bd4-810b-4bc612983d07</xsl:when>
        <xsl:when test=".='mvid'">06332206-67e6-5b7e-bb10-f11ef4c09138</xsl:when>
        <xsl:when test=".='mvidb'">4df095a4-afb7-5d31-b116-254822a87bb8</xsl:when>
        <xsl:when test=".='mannr'">512550e1-c2ae-57e8-98a6-ed1d6294b374</xsl:when>
        <xsl:when test=".='marc '">069c2d14-1793-576f-9cbd-942184d8470c</xsl:when>
        <xsl:when test=".='maren'">e8d7d49e-586d-5f93-b18a-8669ec7f72b6</xsl:when>
        <xsl:when test=".='marnt'">e45cd42c-bd8e-5c34-b614-e59ac0c5e2e0</xsl:when>
        <xsl:when test=".='mavsp'">581e2f8c-c425-5fed-8a64-1cf0bfa87f09</xsl:when>
        <xsl:when test=".='mbard'">cdf3bbc3-f248-5a2d-8e95-c835c39b1fc5</xsl:when>
        <xsl:when test=".='mcas'">7ab43fb2-f18b-5744-bb97-c8ea2dc72daa</xsl:when>
        <xsl:when test=".='mdisp'">bea593e7-d38a-5f6a-a051-234fa7429427</xsl:when>
        <xsl:when test=".='mdvd'">0638544b-8f6a-59dd-b041-3ca2411afad9</xsl:when>
        <xsl:when test=".='mebks'">758716cd-19a4-5ddb-b35d-5e2541e20690</xsl:when>
        <xsl:when test=".='menvt'">86103dd6-6de7-54a2-a93d-afcb491b0458</xsl:when>
        <xsl:when test=".='mhj'">8739ad91-6266-52cc-94ea-31e87f798216</xsl:when>
        <xsl:when test=".='mhva'">b2a0bc6d-83d0-5eac-afd1-6da572476bcc</xsl:when>
        <xsl:when test=".='mind'">a1bfa9a9-37c9-59f6-bb64-c9000c3a38bf</xsl:when>
        <xsl:when test=".='mjame'">857bb4b5-62ab-5f79-ae1f-09d5b07b731b</xsl:when>
        <xsl:when test=".='mjamr'">e2bfe382-e241-5dd1-9929-6a7202009026</xsl:when>
        <xsl:when test=".='mlls'">e63226f0-819f-58e8-9bcb-eac774c64c85</xsl:when>
        <xsl:when test=".='mllv'">96cf5856-bb67-50be-a390-2bfb6e825d89</xsl:when>
        <xsl:when test=".='mmfa'">4277b285-28aa-5582-9997-8e10b7b1f904</xsl:when>
        <xsl:when test=".='mmob'">e23a6d25-7acd-503a-a931-66cdfbc34aa3</xsl:when>
        <xsl:when test=".='mmpl'">7c7603e7-b2db-5f33-b2d7-a308f9634e13</xsl:when>
        <xsl:when test=".='mol'">d01b2c75-6ee9-5792-8fe2-6937dd7f8123</xsl:when>
        <xsl:when test=".='moldb'">afea0b67-c92b-521b-88e7-d3b62fe5a981</xsl:when>
        <xsl:when test=".='moref'">e395a30d-1f74-5bf4-8a21-6271d2b8eda4</xsl:when>
        <xsl:when test=".='mosco'">f88fb5a6-c652-5a93-ab36-305f581cdbb0</xsl:when>
        <xsl:when test=".='mover'">8d758169-4f0a-5d8b-a212-c24a9317d738</xsl:when>
        <xsl:when test=".='movf'">9e871119-414f-5a55-a6b8-1fbbde82e335</xsl:when>
        <xsl:when test=".='mper'">43db7651-84cb-51ab-965f-4cedc237d6b2</xsl:when>
        <xsl:when test=".='mpro'">702ab5c5-d531-58b7-b22d-2bc641628f72</xsl:when>
        <xsl:when test=".='mrare'">7831cd93-57e0-55d4-849a-6c2d202a6a74</xsl:when>
        <xsl:when test=".='mrarf'">1659a3a7-a4a0-5e12-a771-8c221c2c7419</xsl:when>
        <xsl:when test=".='mraro'">6f6e4c69-ec5c-5cab-82af-e59e5395193d</xsl:when>
        <xsl:when test=".='mrarv'">1da8ad97-2a7e-5ea3-90a7-b2b8919550aa</xsl:when>
        <xsl:when test=".='mref'">10b0f1ad-95c6-5604-be14-45e849fce0b5</xsl:when>
        <xsl:when test=".='mrefa'">1e9bf1cb-e114-59a4-8021-d71d9faa3c4e</xsl:when>
        <xsl:when test=".='mrefc'">d97ba9cf-7e37-5ec4-95bc-fc842e18a00e</xsl:when>
        <xsl:when test=".='mrefe'">47581d42-c13b-5fbc-bccb-3b7113bb189e</xsl:when>
        <xsl:when test=".='mres3'">76e5e86d-bf2c-595d-89c9-cbfe640dfaf7</xsl:when>
        <xsl:when test=".='mresf'">bdc7e9a5-9495-536f-9e3b-56a603fe4981</xsl:when>
        <xsl:when test=".='mresn'">ddfed7d3-6123-518d-8b61-4db887db6f9f</xsl:when>
        <xsl:when test=".='mreso '">9526b092-e378-5f51-bf23-e4c43b18a853</xsl:when>
        <xsl:when test=".='mresp'">2aa32abb-2e83-5c42-a435-4c2e553e411d</xsl:when>
        <xsl:when test=".='mresr'">8248d2cb-18c7-55be-9375-1c25ab20a923</xsl:when>
        <xsl:when test=".='mrest'">58d0e7fe-d474-5c9f-8b80-7f86b5e2ee5d</xsl:when>
        <xsl:when test=".='mresx'">da2fb26d-2b4c-5bb9-8304-7389e3bfa240</xsl:when>
        <xsl:when test=".='mrref'">4a56a1d4-3e0d-5372-9ce9-10886f1f6621</xsl:when>
        <xsl:when test=".='msch'">9be1cfd4-c375-5579-9876-f6869d2f11b8</xsl:when>
        <xsl:when test=".='msco'">a434d0f8-63c5-5e7d-9523-aab6632c6b45</xsl:when>
        <xsl:when test=".='mscob'">8f8805c0-27c6-50b0-bd89-1088e97fda7a</xsl:when>
        <xsl:when test=".='mscor'">b31aa274-612a-53f8-9972-9504626224c1</xsl:when>
        <xsl:when test=".='mspap'">0b270cea-14af-56f8-825a-dbfdccb05bc2</xsl:when>
        <xsl:when test=".='mspec'">132914ca-0a85-5fed-b405-bc5e5f94267f</xsl:when>
        <xsl:when test=".='msper'">23110204-8126-526b-912f-5c1cd2e75bac</xsl:when>
        <xsl:when test=".='mspm'">7de58951-19d4-5816-bc4e-626a39e6de96</xsl:when>
        <xsl:when test=".='mspo'">49cd49a6-f275-5616-8d6c-6adda10031d5</xsl:when>
        <xsl:when test=".='mstor'">c34ec96b-e89a-5cfd-bbd9-3b9dc8204de7</xsl:when>
        <xsl:when test=".='msusf'">bf8a64e2-2f72-5256-98eb-8b3a2a16eae2</xsl:when>
        <xsl:when test=".='msusm'">a364a2c9-629b-5b4f-999e-b62c0aec7861</xsl:when>
        <xsl:when test=".='msuso'">f1d10d0f-d150-5071-8511-032d9c2cfc5e</xsl:when>
        <xsl:when test=".='msusq'">f9398e4b-c1f7-5dd5-972c-258ec5fe8cf4</xsl:when>
        <xsl:when test=".='msusv'">c4d78f55-dbfb-5773-bb13-26e8c827e775</xsl:when>
        <xsl:when test=".='msuvf'">f8d9840b-9deb-5e29-b06a-842fdffa7d8f</xsl:when>
        <xsl:when test=".='msuvo'">573ff321-61db-5840-beb0-6f646b16089f</xsl:when>
        <xsl:when test=".='msuvq'">b4fca74e-a56a-5724-bcac-658f001b22d4</xsl:when>
        <xsl:when test=".='mtr'">d317016e-ea85-5d83-a08d-873830f6fbf4</xsl:when>
        <xsl:when test=".='mtrc'">eccf8ac3-c64e-5703-b4a9-9940cf0c0c02</xsl:when>
        <xsl:when test=".='mtrrb'">95273b59-6971-55f4-875d-8ba59504564b</xsl:when>
        <xsl:when test=".='mmic'">f6fee439-9217-5989-9f69-e06254cc233d</xsl:when>
        <xsl:otherwise>f25edc61-fbfb-5a1c-857e-faef16ea903e</xsl:otherwise> <!-- Unmapped (m) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>1aee1f6c-7055-59bf-82ef-1e13cb818f78</institutionId>
  </xsl:template>

</xsl:stylesheet>
