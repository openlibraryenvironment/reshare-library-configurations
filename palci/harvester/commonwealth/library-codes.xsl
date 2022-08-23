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
    <identifierTypeId>7aa7c372-3298-5c93-bc97-f2c23ff3f5af</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='Clearfield CLEAR'">ef10ef2b-4cb5-571f-9c9d-a75daf3b27f0</xsl:when>
        <xsl:when test=".='Clearfield CLEARADBK'">56d6cbd5-9e25-5f2e-8094-6bfe63f3cf33</xsl:when>
        <xsl:when test=".='Clearfield CLEARCAR'">e303d4a7-0827-5ae7-9e19-7073c9195ce6</xsl:when>
        <xsl:when test=".='Clearfield CLEARCHIL'">7ed906e6-f879-5264-a538-0f292cb8d427</xsl:when>
        <xsl:when test=".='Clearfield CLEARFOL'">b300239d-bdb2-55b1-bddd-c1abe0bc9b76</xsl:when>
        <xsl:when test=".='Clearfield CLEARLREAD'">893515f0-765c-5c1f-8043-f8e8f2e368a3</xsl:when>
        <xsl:when test=".='Clearfield C-REF'">f4f15530-dbf7-53c3-a97e-9c2167e9b0f9</xsl:when>
        <xsl:when test=".='Clearfield CLEARCIRCD'">7b3bb0cc-8e20-5c1b-af4a-93425448e13e</xsl:when>
        <xsl:when test=".='Clearfield CLEARGAME'">ba528466-bc71-5be6-97c1-e2558e554986</xsl:when>
        <xsl:when test=".='Clearfield CLEAR_REF'">f48b2269-938e-5dde-a5ea-08aaa536790f</xsl:when>
        <xsl:when test=".='Clearfield CLEAR_RES'">ce52bd1d-e784-5692-a36d-aa65103a050f</xsl:when>
        <xsl:when test=".='Clearfield CLEARDVD'">10040438-6856-5939-8c58-5738126ced73</xsl:when>
        <xsl:when test=".='Clearfield CLEARINSTD'">d950a566-ba50-538b-874d-49b513aae3d4</xsl:when>
        <xsl:when test=".='Clearfield CLEARARC'">5456b3d6-cf5d-56ea-829c-90020b92734d</xsl:when>
        <xsl:when test="starts-with(., 'Clearfield')">15197fd1-1a46-532d-88fe-af1d6a7a916c</xsl:when> <!-- Unmapped (Clearfield)-->
        <xsl:when test=".='MAN 1FN'">a7a3de1d-723b-52ab-829d-20faa3a8e5bc</xsl:when>
        <xsl:when test=".='MAN 1FS'">d9b4758a-dff2-5318-bcc8-96056c1ca034</xsl:when>
        <xsl:when test=".='MAN CSTK'">7213fa04-16d6-54e3-ad33-3fb27501f9bd</xsl:when>
        <xsl:when test=".='MAN 4FN'">66d2ffa1-d4a0-5532-bbb3-1e47f5f5db2b</xsl:when>
        <xsl:when test=".='MAN 4FS'">86e2813c-f8ab-5e7f-a8d3-7cd142f2e43a</xsl:when>
        <xsl:when test=".='MAN 3FN'">37eb08b1-5efd-5db6-b493-efcad8c949e1</xsl:when>
        <xsl:when test=".='MAN 3FS'">76021564-40b9-52ab-bb9b-256f59e2b95c</xsl:when>
        <xsl:when test=".='MAN 2FN'">29308d49-5207-50dd-a5f5-a5b38be136f2</xsl:when>
        <xsl:when test=".='MAN ATR3'">d050a292-926d-5f39-9d5c-7d0ebe6a44e6</xsl:when>
        <xsl:when test=".='MAN ATR2'">5debc1a1-5867-5067-be43-4ae9b9e0e698</xsl:when>
        <xsl:when test=".='MAN ATR1'">c239153e-bb06-53dc-ba66-9b53599dfcfb</xsl:when>
        <xsl:when test=".='MAN 2FS'">dba26ac2-8b27-59ef-87d3-ea3975bded74</xsl:when>
        <xsl:when test="starts-with(., 'MAN')">6b1b2160-23e2-5686-aef3-266f393fafe3</xsl:when> <!-- Unmapped (MAN)-->
        <xsl:when test=".='Stevenson CALD'">482d09ce-2a8d-53d3-a806-a58b96f58a36</xsl:when>
        <xsl:when test=".='Stevenson CDMUS'">58e76a37-1134-50a9-b5ad-b49ba3f84a8c</xsl:when>
        <xsl:when test=".='Stevenson CHIL'">1f46d356-77d5-5769-9916-83464d982ac2</xsl:when>
        <xsl:when test=".='Stevenson CUR'">75ba77bc-5a97-5e17-9df1-148b76804146</xsl:when>
        <xsl:when test=".='Stevenson E-CHIL'">f3284fce-f55f-54cb-b3bc-178d6059e124</xsl:when>
        <xsl:when test=".='Stevenson FOL'">a88f7901-b741-5ec6-aeb3-8567b2091b29</xsl:when>
        <xsl:when test=".='Stevenson LREAD'">f0844a2a-67bd-57e1-ac24-e235aa94a5a6</xsl:when>
        <xsl:when test=".='Stevenson MAIN'">e034b3f6-b434-5b66-83e7-8a5c5598fa88</xsl:when>
        <xsl:when test=".='Stevenson NBC'">1aa2069c-9881-5b3c-bef1-f5b11c8b6cf4</xsl:when>
        <xsl:when test=".='Stevenson NBS'">f8f6354f-ac7d-55c9-905c-7391f7637ded</xsl:when>
        <xsl:when test=".='Stevenson NEWBERY'">a158b7f8-fdeb-506f-8cfe-566e7d1f1ecb</xsl:when>
        <xsl:when test=".='Stevenson PER'">cc91997c-84bb-5d28-8e96-580745f1e3a3</xsl:when>
        <xsl:when test=".='Stevenson PICBOO'">ce6fc295-17c5-58a3-b038-a725df99065d</xsl:when>
        <xsl:when test=".='Stevenson TFOL'">1a3a956c-2b6d-52cd-be42-72a493c49ff9</xsl:when>
        <xsl:when test=".='Stevenson ARCHIVES'">ec8da73a-1567-5f97-896f-f726cdfedadb</xsl:when>
        <xsl:when test=".='Stevenson MFC'">2fbaec06-021d-5590-93b9-bd6b7a85c174</xsl:when>
        <xsl:when test=".='Stevenson MICR'">d6be4e5b-abfd-5c7b-8d1b-c179c223e817</xsl:when>
        <xsl:when test=".='Stevenson REF'">35fd6c5f-7818-5c91-863b-5677e32b0daa</xsl:when>
        <xsl:when test=".='Stevenson DVD'">724d5686-592a-52dd-86aa-e44d8c5e14f5</xsl:when>
        <xsl:when test=".='Stevenson DVDACT'">f16123f2-c3c6-575a-8177-326d06adfb98</xsl:when>
        <xsl:when test=".='Stevenson DVDANI'">79091652-49d4-5722-b6ce-8cc62e03df9a</xsl:when>
        <xsl:when test=".='Stevenson DVDC'">4da3d519-5ef1-5ee8-90e2-28a25c1cf288</xsl:when>
        <xsl:when test=".='Stevenson DVDCAR'">ec6010fa-cb7d-5760-85c5-3b3249523e9a</xsl:when>
        <xsl:when test=".='Stevenson DVDCOM'">d2bb5fb0-d1fd-5a77-b78f-71468f4ff56e</xsl:when>
        <xsl:when test=".='Stevenson DVDDOC'">12b36611-09a3-52a2-a733-c8a2f528fa4e</xsl:when>
        <xsl:when test=".='Stevenson DVDHOR'">d8007ee4-4aef-55de-a8d0-9a19be7be7ba</xsl:when>
        <xsl:when test=".='Stevenson DVDMYS'">13624229-494c-5b77-ad68-f907da469ef9</xsl:when>
        <xsl:when test=".='Stevenson DVDPER'">b81d4582-9c1c-5129-963a-645fe876451a</xsl:when>
        <xsl:when test=".='Stevenson DVDSCI'">7b608b3d-b5c0-56c0-a636-8c9c1bf73c2d</xsl:when>
        <xsl:when test=".='Stevenson DVDTV'">389b1f0b-37a0-5ace-a8a6-0482bf10e5e5</xsl:when>
        <xsl:when test=".='Stevenson DVDWAR'">6cab9713-bc54-5950-a6ba-71af2c7b222f</xsl:when>
        <xsl:when test=".='Stevenson DVDWES'">10bfd231-a120-57b4-b776-4c091fc1010f</xsl:when>
        <xsl:when test=".='Stevenson TRREF'">5b629b94-d5e8-50c6-bef0-8c659c4ef455</xsl:when>
        <xsl:when test=".='Stevenson TRRM'">863fe7b2-b09c-5d38-8437-59411c793857</xsl:when>
        <xsl:when test=".='Stevenson UNPER'">aa27ea24-7685-5c32-bb64-377c1b0d2b97</xsl:when>
        <xsl:when test=".='Stevenson VIDEO'">31097bb4-6521-51d3-89c8-d08c3cbd6ca9</xsl:when>
        <xsl:when test="starts-with(., 'Stevenson')">c28fbb05-9c24-50dd-80d0-3a318ebc9830</xsl:when> <!-- Unmapped (Stevenson)-->
        <xsl:when test=".='bloom GENCOLL'">7c8e6c70-9b08-5787-a1ef-1108f5104dff</xsl:when>
        <xsl:when test=".='bloom GENCOLLOV'">0ab91385-e008-5f5f-8503-b6975594164c</xsl:when>
        <xsl:when test=".='bloom JUVENILE'">3a8053b4-6e2a-5b13-946c-7cec5e9afedf</xsl:when>
        <xsl:when test=".='bloom JUVENILEOV'">9620a5ce-ae2f-5619-9b07-0e67402ef066</xsl:when>
        <xsl:when test=".='bloom JUVFIC'">2f3889f6-2cea-504e-a02f-c550b29477a7</xsl:when>
        <xsl:when test=".='bloom JUVFICOV'">58fcd4ca-c961-5872-a25a-3404ac8c31e0</xsl:when>
        <xsl:when test=".='bloom JUVNONFIC'">f1597b9e-13f1-591e-aeaf-c8c09a242148</xsl:when>
        <xsl:when test=".='bloom JUVNONFOV'">1339af8b-76ed-595b-8bf8-2b5054e8f627</xsl:when>
        <xsl:when test=".='bloom NewBooks'">6668092a-611e-5a21-9a4c-b9da622024d7</xsl:when>
        <xsl:when test=".='bloom AfroAmImpr'">ec575868-e687-5359-9d7a-c667e655c9dc</xsl:when>
        <xsl:when test=".='bloom BNDPERIOD'">9bf7b3fb-debe-5730-8e81-f5aebcbcb60d</xsl:when>
        <xsl:when test=".='bloom Cataloging'">e6731916-aa07-535c-9ad7-872308168041</xsl:when>
        <xsl:when test=".='bloom COMPACTDSC'">741fc13e-c9d4-588b-8dca-c9bb312c78d6</xsl:when>
        <xsl:when test=".='bloom CmpctShlvg'">57743647-fe52-5de3-a861-8dfc47afdbbb</xsl:when>
        <xsl:when test=".='bloom IntCredoRf'">94488d57-7ce0-5561-814f-fab5b2492800</xsl:when>
        <xsl:when test=".='bloom CURPERIOD'">1209f2fd-43c9-54e6-b2d8-4f1240c75888</xsl:when>
        <xsl:when test=".='bloom CURRCOLL'">514ae3b7-dcc0-5684-8c35-846140563e73</xsl:when>
        <xsl:when test=".='bloom CURRCOLLOV'">1ad82826-8984-5e33-8f42-c56b68989330</xsl:when>
        <xsl:when test=".='bloom DVD'">ed9c7a04-8fc3-5b20-bc6f-2a73fcec2816</xsl:when>
        <xsl:when test=".='bloom IntrEbrKLN'">46700348-9740-5aca-bf76-e338ee7e4c1a</xsl:when>
        <xsl:when test=".='bloom IntrEbrOwn'">1d073520-b4d6-5a77-b7c9-5fce482f9d4c</xsl:when>
        <xsl:when test=".='bloom IntrEbrPDA'">dba0acec-29f0-5cf7-9cb2-0002771819cb</xsl:when>
        <xsl:when test=".='bloom InternetEb'">a95bff7f-da42-5fe3-bbe3-21b7700f7543</xsl:when>
        <xsl:when test=".='bloom IntEbrUPS'">c62618d8-5794-5c36-8eeb-83ae376f088c</xsl:when>
        <xsl:when test=".='bloom EbscKLNDDA'">26f5288e-891b-5e45-a5c7-48721e2c2d74</xsl:when>
        <xsl:when test=".='bloom EoKDDAOwn'">419e2326-05a3-51c2-97ad-8097fdd6cbf5</xsl:when>
        <xsl:when test=".='bloom IntrNetKLN'">e36834d3-642b-5630-a02a-f20c6351b116</xsl:when>
        <xsl:when test=".='bloom IntrNetOwn'">04b320df-a23e-5c0b-8723-5b1caa6b1b32</xsl:when>
        <xsl:when test=".='bloom EDMED'">0cfbaf17-ff6d-5ef9-b83f-fc123b20a5dc</xsl:when>
        <xsl:when test=".='bloom EDMEDSFTW'">c83bce3e-60fc-524f-a80a-e7ecb700d315</xsl:when>
        <xsl:when test=".='bloom EDMEDREC'">edad06a5-d7ad-5c42-b279-c155040419de</xsl:when>
        <xsl:when test=".='bloom EDMEDVID'">ba1fdd52-5c51-5dd1-8dbf-85233600b709</xsl:when>
        <xsl:when test=".='bloom IntEvans1'">45c0b927-c6c5-5cb2-9e35-4d3e32ba5351</xsl:when>
        <xsl:when test=".='bloom EZB'">c1a624e0-5740-578a-823d-3de70109379a</xsl:when>
        <xsl:when test=".='bloom EZB-lend'">9940f395-988c-53a8-b12f-eeb06e8e0895</xsl:when>
        <xsl:when test=".='bloom InterntFOD'">7fe80924-e7a8-508b-b59a-24cbaf066da2</xsl:when>
        <xsl:when test=".='bloom GENCOLOVOV'">1b0b344c-25ac-56e7-bae0-521743824828</xsl:when>
        <xsl:when test=".='bloom GOVDOCWKRM'">fcfe9dbb-21bc-5474-91f0-6e79ef317678</xsl:when>
        <xsl:when test=".='bloom Illiad-Bor'">4a20471e-82e5-5e85-b866-b89cd25ae569</xsl:when>
        <xsl:when test=".='bloom Illiad-Len'">13a4ad47-9ad6-551e-9280-aa879cbb289d</xsl:when>
        <xsl:when test=".='bloom ILL'">5a0c7fcc-8ac7-5bf9-8f6e-97c5915905bd</xsl:when>
        <xsl:when test=".='bloom Internet'">1d14ceaf-5161-5693-beec-5ef7f62276b2</xsl:when>
        <xsl:when test=".='bloom JSTebaPALC'">7bbbcab4-e595-5dd6-84ca-e4f33d74882b</xsl:when>
        <xsl:when test=".='bloom JSTebOpAcc'">9d2a78f8-6237-5a1e-abf2-304c7aacdf1e</xsl:when>
        <xsl:when test=".='bloom JSTebPalOw'">6b1bcc8c-7999-5768-80cf-8aa3616c64c7</xsl:when>
        <xsl:when test=".='bloom JuvBkDsplF'">efc890be-41ad-55a8-a35c-2acb71e161a7</xsl:when>
        <xsl:when test=".='bloom JuvBkDspNF'">212e1273-4142-5ce2-a639-c6d4194318c0</xsl:when>
        <xsl:when test=".='bloom CircDesk'">482dc2cd-8d9e-5f01-ba5f-c91b4c1e5b63</xsl:when>
        <xsl:when test=".='bloom MAPCOLL'">2f91712b-4fc0-58c9-984f-b84201f08f91</xsl:when>
        <xsl:when test=".='bloom MICROFICHE'">02e922a8-be1b-5c14-9dba-395230d14206</xsl:when>
        <xsl:when test=".='bloom MICROFILM'">abe62bbb-f002-5790-99e1-14e5544b0bf5</xsl:when>
        <xsl:when test=".='bloom MICRFLMPER'">5d3eba32-ecf5-5b10-b0fb-85ba37873935</xsl:when>
        <xsl:when test=".='bloom MicroGuide'">6ce618e2-344c-5ae5-841b-a2d63ae99368</xsl:when>
        <xsl:when test=".='bloom MICROPRINT'">1d3540ed-20c1-5d1b-bdad-456470364106</xsl:when>
        <xsl:when test=".='bloom InternetNL'">8b8b9364-569b-564c-acff-25b84d630e98</xsl:when>
        <xsl:when test=".='bloom ONDISPLAY'">a2a8c585-9e95-5564-be28-c87e19a36c88</xsl:when>
        <xsl:when test=".='bloom PADOC'">1a774f46-d654-5e27-a87e-deda58717fb9</xsl:when>
        <xsl:when test=".='bloom PADOCOV'">e988bf29-5dbc-5b5c-8623-ea135770a9b1</xsl:when>
        <xsl:when test=".='bloom PADOCMAP'">5e5c4c36-1eab-575f-b6e7-fa3e0b611a5b</xsl:when>
        <xsl:when test=".='bloom PADOCMD'">cdfde8fe-1ef1-5ee7-a2f0-230c21fd1949</xsl:when>
        <xsl:when test=".='bloom PERMRES'">d7801c50-e0e1-5aab-88ee-25b5b1ead091</xsl:when>
        <xsl:when test=".='bloom PHONODISC'">83e4a299-efed-5e24-a8ef-cc2d19a7aa99</xsl:when>
        <xsl:when test=".='bloom PopRead'">4ea07fff-f05d-5cb0-95e7-b04fcc222dc0</xsl:when>
        <xsl:when test=".='bloom IntMuOAebo'">4ac46b31-a32d-5146-806c-264f315a53d8</xsl:when>
        <xsl:when test=".='bloom REFERENCE'">20552c93-4824-552a-98e8-c7f887ef69c5</xsl:when>
        <xsl:when test=".='bloom SCORES'">e73f9ea9-18ef-5c4e-a5dd-91f28bee8916</xsl:when>
        <xsl:when test=".='bloom SPECIALCOL'">147c8de7-eee6-5e3f-94f8-46c6fb363b3e</xsl:when>
        <xsl:when test=".='bloom SPECOLOVOV'">e8a1f625-e186-5926-b939-34cf043b7116</xsl:when>
        <xsl:when test=".='bloom SPECCOLLOV'">e25d468a-179b-58cc-a023-8738c2b71c0a</xsl:when>
        <xsl:when test=".='bloom TODELETE'">7756cd8e-87c6-57f7-bb91-4d6dc65b4189</xsl:when>
        <xsl:when test=".='bloom UNASSIGNED'">885a3b0e-9de8-55ee-995d-e7a76505fc4a</xsl:when>
        <xsl:when test=".='bloom ARCHIVES'">0a6b41a7-f216-598c-9074-f302ad654e6f</xsl:when>
        <xsl:when test=".='bloom USGOVDOC'">7754a063-273c-5e7f-8563-ba09017f8d09</xsl:when>
        <xsl:when test=".='bloom USGOVDOCMP'">1bd193e2-dae5-58b4-a23b-76d932b1482f</xsl:when>
        <xsl:when test=".='bloom USGOVDOCMD'">889135e8-3582-5cc1-8de1-c740b4b8ea2e</xsl:when>
        <xsl:when test=".='bloom USGOVDOCMF'">6f88c13b-303c-5e64-aff0-d2cb36f033b8</xsl:when>
        <xsl:when test=".='bloom USGOVDOCOV'">b9f03858-cac9-5b97-a4d3-fa1f8a7a55b1</xsl:when>
        <xsl:when test=".='bloom USGOVDOCPL'">f9bbb257-b601-5434-8c25-3d032139d1d1</xsl:when>
        <xsl:when test=".='bloom VIDEOCASS'">58231472-aced-59f8-bb6e-d33dea38bda4</xsl:when>
        <xsl:when test=".='bloom VIDEOOVR'">0fbcd57d-caec-5d05-af70-1e7fcae45d6c</xsl:when>
        <xsl:when test=".='bloom Withdrawn'">046d7aa9-f51f-5949-8dae-d2ee927ef287</xsl:when>
        <xsl:otherwise>cfab0c13-cb1e-5f74-8b91-270bc02170f6</xsl:otherwise> <!-- Unmapped (bloom) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>06fd5731-a4fa-52a7-848c-fe39327f5c63</institutionId>
  </xsl:template>

</xsl:stylesheet>
