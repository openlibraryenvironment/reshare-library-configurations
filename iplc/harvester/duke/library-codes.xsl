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
    <identifierTypeId>b15795d1-ccaf-51bb-a5e1-10952ead84fc</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='DK '">999959fc-aca1-55c5-8cbb-c7d806b89ffe</xsl:when>
        <xsl:when test=".='DKS '">ca07749a-e9ff-5119-bf4f-9439974b3d4c</xsl:when>
        <xsl:when test=".='DPRES '">a87e901c-1d59-53dd-be2e-f0d91db8379a</xsl:when>
        <xsl:when test=".='FRD '">93c9d8dc-7331-5aa6-a712-37f0f2066851</xsl:when>
        <xsl:when test=".='FRDOS '">c6b525b8-0262-5289-9793-1d71aeeea71f</xsl:when>
        <xsl:when test=".='FRDR '">7d798250-6a43-5ed9-9806-94bfdc413cd1</xsl:when>
        <xsl:when test=".='KEEPR '">99e4a30e-bd34-510d-888f-a05efc08c2aa</xsl:when>
        <xsl:when test=".='LCHRI '">0feb0dc8-e8cd-5175-984b-43ef01f217ed</xsl:when>
        <xsl:when test=".='LCOX '">76920321-2cb1-5fef-bf5f-e4a7632fb5ab</xsl:when>
        <xsl:when test=".='LDOC '">de6c762a-5a28-59e1-9025-364500d692a0</xsl:when>
        <xsl:when test=".='LDOCI '">0e8009da-59e2-58b8-85cc-f3fca03e1b04</xsl:when>
        <xsl:when test=".='LFAC '">045381d5-4af0-513b-bb12-8551d2e8c1ab</xsl:when>
        <xsl:when test=".='LGEN '">84f8e363-8132-50af-bf28-0c30ede8e79a</xsl:when>
        <xsl:when test=".='LGENI '">b0737ab3-9b72-5c15-af21-d9ff17e921d0</xsl:when>
        <xsl:when test=".='LLSC '">27c59e79-8343-5762-b52a-040a25bef69c</xsl:when>
        <xsl:when test=".='LLSCR '">5f10075a-36e2-51e3-9607-f3959c592b5a</xsl:when>
        <xsl:when test=".='LMICR '">70bface3-10b9-54a3-93e6-5d2374795482</xsl:when>
        <xsl:when test=".='LNCAL '">7f4b0fc4-5269-51b7-a90a-dbf71b0cddd9</xsl:when>
        <xsl:when test=".='LPER '">cc09b0f8-ae12-516a-b644-1945b67c89eb</xsl:when>
        <xsl:when test=".='LPERC '">962e9f78-678d-59e4-af87-67792aed2e36</xsl:when>
        <xsl:when test=".='LPROF '">39ee6de7-ba32-5cbd-86d2-dd6b999a9f7f</xsl:when>
        <xsl:when test=".='LRA1 '">2d33dfaf-48a5-5b44-b0cc-899b008febf6</xsl:when>
        <xsl:when test=".='LRARE '">97c500a4-1457-50ed-b5d1-ad9ba187a44d</xsl:when>
        <xsl:when test=".='LRECB '">0d1e84dc-970e-5a4d-bbc5-c33e0332db97</xsl:when>
        <xsl:when test=".='LREF '">fb906f1b-543a-5c13-8068-cbcaf35b0a10</xsl:when>
        <xsl:when test=".='LRES '">5c73d4e0-b90e-5a81-ba4c-9d8fe950aaf9</xsl:when>
        <xsl:when test=".='LRIDC '">ba37f6ad-9fe3-5fa5-8d03-1bcde373647f</xsl:when>
        <xsl:when test=".='LRIDP '">bb4c1656-49df-5f60-b18c-1e9d58c1bece</xsl:when>
        <xsl:when test=".='LRIDS '">983845ee-2bda-58a0-ae4a-0a99fad00402</xsl:when>
        <xsl:when test=".='LSCO '">26f53007-4dbc-51b9-a853-ed4c4574dd01</xsl:when>
        <xsl:when test=".='LSSCO '">ae627a54-f82e-540d-a2f7-2b9aa566da82</xsl:when>
        <xsl:when test=".='LSSLO '">6255e69b-c516-5d1c-aa0f-cb9c74e5b87c</xsl:when>
        <xsl:when test=".='LSSRF '">6b7855af-ac9b-5201-be17-73c3906349b9</xsl:when>
        <xsl:when test=".='LUNCL '">77cd0d97-54e3-5891-b3eb-25eae281c0d5</xsl:when>
        <xsl:when test=".='MENGL '">fc92bcdd-79f7-5955-8097-8e8a5c379ece</xsl:when>
        <xsl:when test=".='MHDB '">b8846d26-7756-5c09-a7e7-14655797b77c</xsl:when>
        <xsl:when test=".='MHDC '">eb5d472b-b253-5035-b7ff-7a526ca72257</xsl:when>
        <xsl:when test=".='MHDF '">76b00aba-4980-5a6b-85b4-e50abaf845dd</xsl:when>
        <xsl:when test=".='MJNLA '">d46d64ed-9f8d-5d14-99b8-6be822092d02</xsl:when>
        <xsl:when test=".='MLSCG '">bb88084d-3f92-56a3-990d-1218c7144886</xsl:when>
        <xsl:when test=".='MOFFS '">d782673e-035f-5046-9206-596558274b3b</xsl:when>
        <xsl:when test=".='MRF '">fa102101-a49c-5fa2-9a9a-d9b6777fc2d4</xsl:when>
        <xsl:when test=".='MSTKS '">e1be1063-e52d-5c4d-bb99-cfcfb6d0c8eb</xsl:when>
        <xsl:when test=".='PA '">25f03c47-7df6-5ea3-a540-042eed413f93</xsl:when>
        <xsl:when test=".='PAQ '">11f3255e-5d49-542f-b2f9-6ede803c8b20</xsl:when>
        <xsl:when test=".='PBF '">d811e7a8-b04b-5c1f-923c-167884608a5b</xsl:when>
        <xsl:when test=".='PBH '">edda74a3-5047-5b6d-9995-f30389a2f8d6</xsl:when>
        <xsl:when test=".='PBLL1 '">fa9dd291-a2d9-56ef-a16a-560919829258</xsl:when>
        <xsl:when test=".='PBLL2 '">0c3a01ba-0892-504d-b2e9-5f2cfd0bbc13</xsl:when>
        <xsl:when test=".='PBLL3 '">ef5b2c39-4f2d-51b2-ae7e-612520cf252c</xsl:when>
        <xsl:when test=".='PD '">cd86ac65-8248-5e5a-8276-f601783d70b7</xsl:when>
        <xsl:when test=".='PDB '">b6500979-862f-501c-a683-aa1a5df55c7c</xsl:when>
        <xsl:when test=".='PDBQ '">61b445a3-e662-5502-81db-c5b9b39e1346</xsl:when>
        <xsl:when test=".='PDF '">537d3de8-cc35-559c-b1f7-7afb06014a07</xsl:when>
        <xsl:when test=".='PDM '">aa096570-8b38-5806-8ba1-f8f9ea35c1c1</xsl:when>
        <xsl:when test=".='PDPI '">822db922-4931-566a-aea6-cd5b2ebcbdb4</xsl:when>
        <xsl:when test=".='PDQ '">f1fc2c9a-daaf-5719-a37b-1d76185908ee</xsl:when>
        <xsl:when test=".='PDR '">131aa372-2847-5140-b5d2-dbd6bdeb5881</xsl:when>
        <xsl:when test=".='PDRQ '">88d07a67-d3ad-5b93-ae11-49e3cae5d285</xsl:when>
        <xsl:when test=".='PDT '">5983b2a7-8fc3-59f4-8a3b-213d3dd3e59d</xsl:when>
        <xsl:when test=".='PDU '">87f7711e-d520-5f29-9675-c4dc644568ee</xsl:when>
        <xsl:when test=".='PDUQ '">ade148a1-e899-5446-9aea-0f4328f7306b</xsl:when>
        <xsl:when test=".='PGD '">b6f7427d-5928-5604-a9bb-db75b79781f4</xsl:when>
        <xsl:when test=".='PGDH '">22a8a265-43a6-5773-b234-0740a3d8d6ae</xsl:when>
        <xsl:when test=".='PGDR '">39ae44b6-e9ac-51fc-8c9d-50da50fc3363</xsl:when>
        <xsl:when test=".='PGEM '">6214a4b2-c357-58e7-b539-8103fbae249a</xsl:when>
        <xsl:when test=".='PGER '">dde63095-3e23-5607-a420-21bcacad9650</xsl:when>
        <xsl:when test=".='PGH '">fda6467a-c317-561e-906a-1798166dcd42</xsl:when>
        <xsl:when test=".='PGN '">8c2e8e22-2949-510d-921d-ade8b730d1c5</xsl:when>
        <xsl:when test=".='PGNL '">4194d871-a16b-5139-8968-4f3a6ac9e0a4</xsl:when>
        <xsl:when test=".='PGRIN '">9e57808c-b5d4-5818-b3bc-6f6d034a014f</xsl:when>
        <xsl:when test=".='PGS '">4fc5b1b4-4df8-5e3a-b03d-c114c3afe43a</xsl:when>
        <xsl:when test=".='PGSM '">75926dd4-9ec0-5c94-8afb-8a9b09019b11</xsl:when>
        <xsl:when test=".='PK '">b8a2952b-481a-5c93-baeb-c1535041cb10</xsl:when>
        <xsl:when test=".='PK6 '">1b5829e5-d94b-501c-8ea4-d956659edb98</xsl:when>
        <xsl:when test=".='PK6A '">0556bc93-6154-5904-8f8e-fed2617bbd8a</xsl:when>
        <xsl:when test=".='PKE '">c6d22da5-ce30-5baa-bfa8-444e67b879b6</xsl:when>
        <xsl:when test=".='PKEM2 '">a334a804-0a29-5bc7-a953-229d5343ad79</xsl:when>
        <xsl:when test=".='PKEPI '">27294604-203d-59bc-aac7-c1a5086950c6</xsl:when>
        <xsl:when test=".='PKEQ '">b67b86a4-048a-5635-848a-32e5c4b6838a</xsl:when>
        <xsl:when test=".='PKF '">ed46c3d7-9f72-5479-b79c-ffa1985e7919</xsl:when>
        <xsl:when test=".='PKJ '">c6df2478-a249-5370-a19f-62de9456d296</xsl:when>
        <xsl:when test=".='PKL '">9e7b8387-7700-516f-ab36-e88d97572e5a</xsl:when>
        <xsl:when test=".='PKLQ '">04cd9a08-5cb2-525a-843e-d14039758cbe</xsl:when>
        <xsl:when test=".='PKM1 '">ab7f738b-bad6-5c00-bb51-9018beb38751</xsl:when>
        <xsl:when test=".='PKM1C '">27010ce0-ae44-5a54-91fb-d4f19d9b9121</xsl:when>
        <xsl:when test=".='PKM2 '">70bb9027-622f-5ece-9569-be81e200b4b8</xsl:when>
        <xsl:when test=".='PKMB '">918adeaf-e77e-5cd7-bbe7-ebc0d5584cbe</xsl:when>
        <xsl:when test=".='PKML '">98e553b6-9b48-54e1-b280-8c465e3da137</xsl:when>
        <xsl:when test=".='PKO5 '">dd611d14-7707-5a10-9509-8f110bb6b1c9</xsl:when>
        <xsl:when test=".='PKOQ '">904dbaac-7b09-55dd-827f-9ccf0c650d09</xsl:when>
        <xsl:when test=".='PKP '">f777ca0d-9e55-5e32-b5a0-c15773453b87</xsl:when>
        <xsl:when test=".='PKPI '">273e3286-4e75-596b-a9b4-4e4247f8a425</xsl:when>
        <xsl:when test=".='PKR '">564a6dfc-ecfb-57e5-bfaf-a5018d9b0e37</xsl:when>
        <xsl:when test=".='PKR3 '">4a264c76-e61f-55ae-a77e-3cfc843fef57</xsl:when>
        <xsl:when test=".='PKRQ '">e5879d58-395a-54f9-826b-86f3c9ac4a2b</xsl:when>
        <xsl:when test=".='PKRS '">2be09430-f01b-5a7a-b509-066b4af8f985</xsl:when>
        <xsl:when test=".='PKT '">b287c05e-8699-5941-bdb3-d72b26ea6d25</xsl:when>
        <xsl:when test=".='PKU '">5ee6d9f6-42b8-5ae8-ab6e-bddf05deff8e</xsl:when>
        <xsl:when test=".='PKX '">7e6cf743-1a9c-5818-9fe6-3880d3657e87</xsl:when>
        <xsl:when test=".='PKXY '">943c3198-d9a6-585f-bccf-9e85b0f34b06</xsl:when>
        <xsl:when test=".='PLI '">33f7fb14-11c9-5350-8348-81ba1f3a19fa</xsl:when>
        <xsl:when test=".='PLL1 '">11d43550-89a2-5832-a3ba-9a5129a56a31</xsl:when>
        <xsl:when test=".='PLL2 '">9f5e9846-e6eb-5e23-8e72-c9c6919ba7dd</xsl:when>
        <xsl:when test=".='PLM '">1eaee0ac-5fe3-5231-afc3-3d1a1a42f73c</xsl:when>
        <xsl:when test=".='PLP '">cd116cda-5b63-56b8-aaff-aab8116c2fc0</xsl:when>
        <xsl:when test=".='PLPI '">5d887ef0-9427-5447-9b93-0da1e756a50a</xsl:when>
        <xsl:when test=".='PLR '">511168b7-4977-5a89-aaff-2550c6b6250f</xsl:when>
        <xsl:when test=".='PLRR '">4b101bce-d174-522b-9954-85f0078d6135</xsl:when>
        <xsl:when test=".='PLV6 '">67d14961-d650-58ad-8b57-cb80295132a2</xsl:when>
        <xsl:when test=".='PLV7 '">9b6c4b6c-2561-53a2-b93f-5686bcb53fb5</xsl:when>
        <xsl:when test=".='PLVM '">11e2e88a-fdfc-56f0-96d8-34fe3b439387</xsl:when>
        <xsl:when test=".='PM '">b1aa08cf-5171-577b-91af-363d6691ea67</xsl:when>
        <xsl:when test=".='PMF '">001b9bb0-7a13-5b1d-892b-bd391dcaa61a</xsl:when>
        <xsl:when test=".='PML '">7d78c147-522e-583e-886c-535ee0518397</xsl:when>
        <xsl:when test=".='PMMCM '">bfcc5765-d3a8-5a7a-b21f-69eac4038b29</xsl:when>
        <xsl:when test=".='PMMS '">b6b8c425-dcd2-55b1-9e76-849c3c72f964</xsl:when>
        <xsl:when test=".='PMP '">b7ce0395-0eac-5b15-9a98-5076ee90a1a4</xsl:when>
        <xsl:when test=".='PMPI '">764d0067-ed21-589c-84fd-793020bf4507</xsl:when>
        <xsl:when test=".='PMR '">55713a76-5d73-556a-ad8b-85384a058ffc</xsl:when>
        <xsl:when test=".='PMV '">d5121816-5c64-5b8d-a8c6-e87cb7501dbf</xsl:when>
        <xsl:when test=".='POB '">cdb701d7-8126-5fe8-93da-ecbb8faf364c</xsl:when>
        <xsl:when test=".='POGS '">6a8e8813-b382-5d5e-9625-0123825a4503</xsl:when>
        <xsl:when test=".='POK '">6adb3bb6-2d07-5bc9-bd32-3b3c6016a77f</xsl:when>
        <xsl:when test=".='POKQ '">41af3718-5c61-552b-90e4-012dd76fa528</xsl:when>
        <xsl:when test=".='POL '">4606da62-62a2-5dbf-9d5a-3c14d3abf71d</xsl:when>
        <xsl:when test=".='POV2 '">6db33bc7-5647-5ade-8ddc-49f6635bd4e5</xsl:when>
        <xsl:when test=".='POV2P '">ed11d40d-6b9e-5bbc-97d7-d9f49a047738</xsl:when>
        <xsl:when test=".='POV3P '">7321ae6e-6a43-550f-820a-ac838d50e586</xsl:when>
        <xsl:when test=".='PR '">cde0a56d-002e-551e-be28-08e1376bbc37</xsl:when>
        <xsl:when test=".='PRB '">f2dfcb9c-7f17-547a-bcab-630c19774902</xsl:when>
        <xsl:when test=".='PRBCA '">0ceae5bc-9f8f-581a-9c67-6f24804f9f34</xsl:when>
        <xsl:when test=".='PRBD '">37c80356-34a7-5903-84c4-8f1c00e3e0af</xsl:when>
        <xsl:when test=".='PRBF '">0c5250e5-2035-5b49-a753-a3c619946045</xsl:when>
        <xsl:when test=".='PRBG '">bb4e409a-11f2-551c-a9b1-01a46197906d</xsl:when>
        <xsl:when test=".='PRBO '">26bba33a-9265-5e75-865b-0e86524f4129</xsl:when>
        <xsl:when test=".='PRBQ '">f695fe53-57a9-5b81-a75b-6ee196fc7809</xsl:when>
        <xsl:when test=".='PRBSA '">6ccf4654-ac80-5e0a-a594-f7b2bdc452ed</xsl:when>
        <xsl:when test=".='PRBSB '">7ea5a94d-ccc1-5f65-bdf9-78acaa695f54</xsl:when>
        <xsl:when test=".='PRBX '">7818c055-0ca0-5bd4-ac87-1905dca4e093</xsl:when>
        <xsl:when test=".='PRH '">01f6ba65-7275-570a-a013-3d7265855a7d</xsl:when>
        <xsl:when test=".='PRL '">d9cded49-1f77-5b03-a0a4-335a6b14bbb1</xsl:when>
        <xsl:when test=".='PRLX '">e8213572-92b3-54a4-a35a-6e547cf6b775</xsl:when>
        <xsl:when test=".='PRMS '">352264fa-3325-553c-9fa0-81d93a5a121d</xsl:when>
        <xsl:when test=".='PRMSA '">dd99ee90-426a-53ec-81da-b89a08d53bad</xsl:when>
        <xsl:when test=".='PRN '">aa83afa4-5481-54f7-9f12-91af3ff42abe</xsl:when>
        <xsl:when test=".='PRR '">3e5484c2-4ba9-54f2-81cb-11e349b4f5f0</xsl:when>
        <xsl:when test=".='PRSBD '">d961ff64-d347-53f9-9292-8f878ff953f5</xsl:when>
        <xsl:when test=".='PRSBF '">bd8cca9f-a77c-5db3-afc0-60be95f078ed</xsl:when>
        <xsl:when test=".='PRSBO '">d03a0302-f6ce-562a-96e3-3a2dda6a7521</xsl:when>
        <xsl:when test=".='PRSBQ '">8a3f5176-a00f-55c1-a76c-291d17a8b726</xsl:when>
        <xsl:when test=".='PRSMS '">7162088a-4e04-5927-b75f-e2c5febffe33</xsl:when>
        <xsl:when test=".='PRSN '">52d7dd9b-c9ed-580f-a2c5-5e2171f601ef</xsl:when>
        <xsl:when test=".='PSA '">df022640-e74c-585f-90cf-d99408d23889</xsl:when>
        <xsl:when test=".='PSAT '">a5b54a4c-aa1f-51e4-bbe6-6fc7e79fbc0a</xsl:when>
        <xsl:when test=".='PSB '">3f3b8993-fc4c-5b5e-bd28-25dcbcf50f48</xsl:when>
        <xsl:when test=".='PSBP '">a88589bc-6b42-5763-a7b6-c164cd09bc62</xsl:when>
        <xsl:when test=".='PSC '">bcd0ee56-450f-579e-a32f-50caa89848d5</xsl:when>
        <xsl:when test=".='PSCP '">7d8a9138-25e3-5b53-b84f-bbada12f0efb</xsl:when>
        <xsl:when test=".='PSCT '">8a3a35a2-351a-58e0-9e45-14e7a23ba739</xsl:when>
        <xsl:when test=".='PSD '">08a0d43e-2e77-5d4c-ad04-734e94051d1a</xsl:when>
        <xsl:when test=".='PSDF '">1da768f7-a76d-578b-919e-ed643dd278ec</xsl:when>
        <xsl:when test=".='PSDP '">ff939fb5-046b-5066-94ed-2a6a8ee4b905</xsl:when>
        <xsl:when test=".='PSDQ '">eee7a2d5-836d-52b7-adc2-dec3e495969f</xsl:when>
        <xsl:when test=".='PSGN '">ddda7a3d-f9c7-55f6-a784-bcc97532cf8e</xsl:when>
        <xsl:when test=".='PSGS '">39d410dc-b941-58fd-94c9-e189f14d2f20</xsl:when>
        <xsl:when test=".='PSGZ '">ccf90b4a-c9c0-5ae2-98b6-f65b05b34c92</xsl:when>
        <xsl:when test=".='PSK '">8a3edd09-9c5d-5fb8-9872-f61432e39ab6</xsl:when>
        <xsl:when test=".='PSK2 '">b018b124-1a84-563e-9899-b28bc3a08d6c</xsl:when>
        <xsl:when test=".='PSKE '">7f5a6a05-5352-54b5-a620-8758f38babe8</xsl:when>
        <xsl:when test=".='PSKEM '">11ad0f11-70a8-5fc6-8b19-7c09e4338ce3</xsl:when>
        <xsl:when test=".='PSKEP '">e4a96d3a-9915-5a18-8e0f-26e7c0c89c88</xsl:when>
        <xsl:when test=".='PSKF '">6f51bff1-849e-58e0-b752-0d0abcbcf1a3</xsl:when>
        <xsl:when test=".='PSKJ '">564e6ed2-8265-5239-a342-0381f2bf94c9</xsl:when>
        <xsl:when test=".='PSKM2 '">af31076f-3616-5f21-b94b-15f7381c678c</xsl:when>
        <xsl:when test=".='PSKML '">8e2f9b3e-6727-5809-baea-89e81b14ecdd</xsl:when>
        <xsl:when test=".='PSKP '">d892e660-b38e-59c2-acb7-5418f59763c4</xsl:when>
        <xsl:when test=".='PSL '">23da1fef-8321-5b96-a4dd-2207ec2583fa</xsl:when>
        <xsl:when test=".='PSLP '">ac085ac6-de4c-5cd5-ba1b-15eb8f8417a3</xsl:when>
        <xsl:when test=".='PSLV '">1dc38c2b-3bf6-5819-aa96-32a7195b6c52</xsl:when>
        <xsl:when test=".='PSLV2 '">b2e9760c-d895-5819-8b56-1f09930ebd0e</xsl:when>
        <xsl:when test=".='PSLV5 '">70e0c749-60f1-5592-807f-08a65c03eff7</xsl:when>
        <xsl:when test=".='PSLV6 '">b5013904-ed7e-59b0-8a22-dae18edf36e8</xsl:when>
        <xsl:when test=".='PSLV7 '">b8e4b326-a7ab-5791-a77a-eaf8c81fd9eb</xsl:when>
        <xsl:when test=".='PSLVL '">949b571c-055b-5077-9a8c-4c59bc002fc5</xsl:when>
        <xsl:when test=".='PSM '">f02b0a2e-872b-5c48-9cd3-1c233ae352ff</xsl:when>
        <xsl:when test=".='PSMP '">f8bd6716-e147-571b-9a61-d1f8b7ec7e02</xsl:when>
        <xsl:when test=".='PSMV '">1ea46c55-66ff-5efb-8611-c359284d475e</xsl:when>
        <xsl:when test=".='PSV '">8c0ba7fe-e48c-51c1-ae8c-f9b200917f60</xsl:when>
        <xsl:when test=".='PSV2 '">28915157-5ead-5764-bbb7-f739dba39217</xsl:when>
        <xsl:when test=".='PSV2P '">03cef0ff-fdf3-5462-8b5a-2650afcdd03a</xsl:when>
        <xsl:when test=".='PSV2T '">6c49e50f-1021-51b9-9136-ea4d13a81755</xsl:when>
        <xsl:when test=".='PSV3P '">ff83486a-462b-56b1-b019-63b4f9f91cf7</xsl:when>
        <xsl:when test=".='PSVP '">4f5a0210-1fe9-56ca-bdd5-18c476114397</xsl:when>
        <xsl:when test=".='PSVT '">0d87343d-0204-534f-b935-3652d00a7094</xsl:when>
        <xsl:when test=".='PSZ '">7d9d8f58-24e1-5660-8e79-b88f6be37414</xsl:when>
        <xsl:when test=".='PSZP '">41072be5-b386-5bd6-b7fa-92d4f27a9105</xsl:when>
        <xsl:when test=".='PZ '">81530ff2-c6d8-59d5-9ae5-c22a17af1650</xsl:when>
        <xsl:when test=".='TAP '">ea889321-9cff-5f8f-a38b-b9bbb953373e</xsl:when>
        <xsl:otherwise>6ec34f13-714f-5d5f-8fa6-9adc239bdf66</xsl:otherwise> <!-- Unmapped (US-NcD) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>cc595b56-ce08-59e1-a837-144a97c7cc75</institutionId>
  </xsl:template>

</xsl:stylesheet>
