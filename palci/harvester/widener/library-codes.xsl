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
    <identifierTypeId>2442e95d-5383-5734-9805-280d4ede6a06</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='mcir'">d158cf87-023e-598a-a9e6-ca357649d3fa</xsl:when>
        <xsl:when test=".='mcurc'">9c8470a8-916a-5dcf-99fb-248818bee5cd</xsl:when>
        <xsl:when test=".='mcurn'">156ba760-217d-5d88-899b-1cdc8a4723df</xsl:when>
        <xsl:when test=".='mtxc'">ce38d8f2-17dd-5650-8dd6-6dcd56229789</xsl:when>
        <xsl:when test=".='dalum'">970b0783-7ecd-5a9e-8728-d2c6195f0bad</xsl:when>
        <xsl:when test=".='darch'">84c6aaed-c46a-564c-82fa-da67b5506cf1</xsl:when>
        <xsl:when test=".='dav'">f4bcf196-d7be-53f8-ad56-fb9041cd7147</xsl:when>
        <xsl:when test=".='dbvhc'">bfbe1af2-1d9c-53c7-9f4f-f76f545b40d8</xsl:when>
        <xsl:when test=".='dcare'">62c38758-d9bc-5ad4-8118-ad6f80f06b8c</xsl:when>
        <xsl:when test=".='dcdr1'">bf39710e-c5bc-58ae-ae9f-8c3ef9936b1e</xsl:when>
        <xsl:when test=".='del'">2251ea51-b7af-5854-a8f8-2a9a46930f30</xsl:when>
        <xsl:when test=".='delcl'">818589b7-1f71-558b-a84f-ac8730996eb0</xsl:when>
        <xsl:when test=".='dfac'">9aa398f1-e9be-523d-9f20-b9360f11de60</xsl:when>
        <xsl:when test=".='dfich'">ce963840-fbd3-5616-b0cc-b0cdba9a7b06</xsl:when>
        <xsl:when test=".='dfilm'">2f8972fe-ec17-53aa-80de-3dbe6d8a7084</xsl:when>
        <xsl:when test=".='dheal'">cb721641-d995-5767-91d5-59265ac84b5a</xsl:when>
        <xsl:when test=".='dillb'">6f6138c5-44a3-52a3-bcaa-620282b04e42</xsl:when>
        <xsl:when test=".='dillc'">e1e04eb3-a453-5973-a24e-993eaf1b6dc1</xsl:when>
        <xsl:when test=".='dilld'">a5a88a6e-6af9-5aa8-994d-f288cc145b75</xsl:when>
        <xsl:when test=".='dillg'">0692f42f-6be6-5b05-8781-70230f44a804</xsl:when>
        <xsl:when test=".='dillj'">4a28f5ee-c7fa-5426-b868-8f1a526ed778</xsl:when>
        <xsl:when test=".='dillp'">86f2d785-4170-5a5a-a462-4b93e38d7fd5</xsl:when>
        <xsl:when test=".='dillt'">ee022325-85ce-5781-a56d-cc32ab3af75d</xsl:when>
        <xsl:when test=".='dlae'">29f01279-787a-5a36-b265-6479a9df085e</xsl:when>
        <xsl:when test=".='dlar'">c1127a00-c4da-537b-b6a8-bde59ceae763</xsl:when>
        <xsl:when test=".='dlaw'">7a389ba0-ca4d-57e3-9f8b-5fa25bff7c0d</xsl:when>
        <xsl:when test=".='dlei'">3f1aab35-6801-57ad-855f-404b73d1c304</xsl:when>
        <xsl:when test=".='dloff'">b4f4625a-d5bd-53a4-bdeb-e3d4752ec7a3</xsl:when>
        <xsl:when test=".='dmain'">a7a6989c-d8f2-50d1-a09f-4998c06586e3</xsl:when>
        <xsl:when test=".='dnew'">950e8397-d51d-507a-80ae-7039387e9834</xsl:when>
        <xsl:when test=".='dpcla'">27e022bb-4626-5ea1-beac-9bf7d88f73b8</xsl:when>
        <xsl:when test=".='dpirc'">6a39379e-f469-56a2-a12e-a9cac24d9c47</xsl:when>
        <xsl:when test=".='dstul'">c9510f58-6733-54bc-b522-2de1d99a3c4f</xsl:when>
        <xsl:when test=".='dtech'">c19f7933-1ade-547a-9136-972d6538f94d</xsl:when>
        <xsl:when test=".='ext'">fdcbb2f8-6d83-59b7-a9cb-b2d92a881a23</xsl:when>
        <xsl:when test=".='f500'">8e696899-d7a0-59da-b8d7-a331d37c4f0e</xsl:when>
        <xsl:when test=".='gov'">2a6ff8b6-75f7-561c-8f62-835b79784626</xsl:when>
        <xsl:when test=".='h us'">9eb6cc34-756d-5ea9-86d7-505dbec4fdcd</xsl:when>
        <xsl:when test=".='har'">7473cec2-3caa-5c9c-8803-57fd5bfd5104</xsl:when>
        <xsl:when test=".='hcare'">368cd228-e285-5738-9986-419c7612567d</xsl:when>
        <xsl:when test=".='hcdro'">9c97e5d7-d03b-5334-b8a4-c90d972b141b</xsl:when>
        <xsl:when test=".='hcl'">f37252f8-59a2-5bc4-88c8-d8658e9d4abe</xsl:when>
        <xsl:when test=".='hcomp'">7e7732a8-bfb9-52a1-9ac6-87f55341b2a3</xsl:when>
        <xsl:when test=".='hcres'">bea5285a-e1be-5f4f-b80d-c4a2ece15e4d</xsl:when>
        <xsl:when test=".='hfac'">ebd7df0b-c20d-535a-8a29-140c528739be</xsl:when>
        <xsl:when test=".='hfdoc'">0703dfae-8523-540b-b664-0bf6b744099d</xsl:when>
        <xsl:when test=".='hfich'">ce9866f3-ec82-5ce7-92f0-23c52c8e8543</xsl:when>
        <xsl:when test=".='hfilm'">783f2ccb-ef24-54f6-b9aa-0f8b68f2a258</xsl:when>
        <xsl:when test=".='hgov'">b0334709-7b38-5084-a0e8-4894276c7e20</xsl:when>
        <xsl:when test=".='hillb'">5f92ebba-20de-5673-bf1c-5e842671140e</xsl:when>
        <xsl:when test=".='hillc'">0a59c19c-10ac-5e12-9699-98ac78e1f8cf</xsl:when>
        <xsl:when test=".='hilld'">f0b502c0-8c8f-546a-8452-c11b24e6a876</xsl:when>
        <xsl:when test=".='hillg'">88ce3f51-8097-5f87-abeb-b2fe0b393f01</xsl:when>
        <xsl:when test=".='hillj'">5a283080-a19d-5a6a-868c-2de7b29458a9</xsl:when>
        <xsl:when test=".='hillp'">d4588aaa-68f3-5676-9cb9-738c25490cd6</xsl:when>
        <xsl:when test=".='hillt'">c9e68f45-f37e-5846-9800-4f67dbcd483e</xsl:when>
        <xsl:when test=".='hlawr'">deb125a0-beeb-5d9b-a913-1887337a0c83</xsl:when>
        <xsl:when test=".='hloff'">8f0d294e-cc78-57ca-9399-09c1561a3f1f</xsl:when>
        <xsl:when test=".='hlrof'">101a69d0-6584-5c1d-801a-7f4e65ed5f6c</xsl:when>
        <xsl:when test=".='hmai2'">de4be969-aaac-514f-a609-297fd63fb056</xsl:when>
        <xsl:when test=".='hmain'">7fb319fa-1f8b-585e-983e-44a03d1b70b4</xsl:when>
        <xsl:when test=".='hmicf'">93415e6e-4953-55e3-b018-3c24542dca76</xsl:when>
        <xsl:when test=".='hmicr'">05049bde-1d2f-520f-b935-ccf1de28f9ef</xsl:when>
        <xsl:when test=".='hnew'">28d234f6-d72a-5ceb-a998-1174f4fbe71d</xsl:when>
        <xsl:when test=".='hnurs'">10709904-cee9-5bb4-82b5-ea29f457af52</xsl:when>
        <xsl:when test=".='hpcla'">1a774a65-3de0-5ba4-ac5a-aff35945e5d1</xsl:when>
        <xsl:when test=".='hpub'">82b488de-956d-5603-817a-ed91dd98b3e7</xsl:when>
        <xsl:when test=".='href'">801c2e6d-0989-564c-8030-ef7d75304eb1</xsl:when>
        <xsl:when test=".='hrefd'">934a8b87-2df8-5f52-bd1a-8e68684b4072</xsl:when>
        <xsl:when test=".='hres'">38cb4dfe-d3c3-5a9f-ac2e-9b7feb6df12e</xsl:when>
        <xsl:when test=".='hres2'">35c97b1d-d4f2-5b5e-9864-a78d35d34a4b</xsl:when>
        <xsl:when test=".='hstud'">a6df7aa5-d504-579b-92d8-66e4b1141fa5</xsl:when>
        <xsl:when test=".='htech'">5d677309-b3d3-5fd6-8497-c22dec58d185</xsl:when>
        <xsl:when test=".='jour1'">f6ded672-6cbd-5ec4-8b3c-58a7c395d7f7</xsl:when>
        <xsl:when test=".='journ'">a9060645-e357-5a82-a320-075bd82890e0</xsl:when>
        <xsl:when test=".='lawre'">10ad065c-e0ef-5808-a25d-119f6c668751</xsl:when>
        <xsl:when test=".='linte'">baca7e98-b53e-5bc7-9a92-dcd19deff014</xsl:when>
        <xsl:when test=".='mabs'">0d7dc449-497f-5eb5-a062-886b06ff83cf</xsl:when>
        <xsl:when test=".='main'">337b7133-ae9e-525f-825a-87195dca3945</xsl:when>
        <xsl:when test=".='mar'">3ae1e61c-0618-58c8-887a-0f9ff0642c62</xsl:when>
        <xsl:when test=".='marc'">6d07e1c2-5aae-54f3-8575-c21b810b1dcd</xsl:when>
        <xsl:when test=".='marcr'">6f9689f9-63f1-5c93-8690-f78b63aa979b</xsl:when>
        <xsl:when test=".='mcas'">1b567c02-780e-5f10-8ea0-a175cd367c27</xsl:when>
        <xsl:when test=".='mcc'">fed54ea8-2527-521c-b703-802f7a13c643</xsl:when>
        <xsl:when test=".='mcd'">38b15d14-7bb0-5dc3-b4e7-4ce59e455b1d</xsl:when>
        <xsl:when test=".='mdrf'">b86ffec3-6173-5d0d-8354-0a76ca1256c0</xsl:when>
        <xsl:when test=".='mds'">2aa7d884-e8e2-5b00-92e1-5682bd951aa1</xsl:when>
        <xsl:when test=".='mdvd'">bd682331-582c-5de3-a139-9d5d1f433a0f</xsl:when>
        <xsl:when test=".='mequi'">55aac795-8cd7-5118-8d19-32223a330d3a</xsl:when>
        <xsl:when test=".='mfsp'">99b4e060-1d66-5ac8-85d7-58de40f44604</xsl:when>
        <xsl:when test=".='mill'">28b5d7a3-b4ef-55ef-a937-1c1f91599b11</xsl:when>
        <xsl:when test=".='millb'">f1abf350-6f54-5f1f-8f66-74b489afde12</xsl:when>
        <xsl:when test=".='millc'">302f1e54-0fbf-5990-a5e9-80d227ef971f</xsl:when>
        <xsl:when test=".='milld'">803d6a52-9a8a-5f10-b391-2365d4d573d7</xsl:when>
        <xsl:when test=".='millg'">45a38f1f-2a02-5113-bc30-f67d39f8ec96</xsl:when>
        <xsl:when test=".='millj'">51f0a6a9-b0d6-5185-8855-b4875165d388</xsl:when>
        <xsl:when test=".='millp'">22b4987e-48e7-5f89-8c0b-431301096d88</xsl:when>
        <xsl:when test=".='millt'">48311610-d0af-5fb5-aec3-533ebdeeec90</xsl:when>
        <xsl:when test=".='mimr'">d90c789e-59b1-5410-bfae-a59ab5cc5112</xsl:when>
        <xsl:when test=".='mims'">9b34b313-7786-5ae6-83d0-430e32cb35f4</xsl:when>
        <xsl:when test=".='mind'">a6364573-1df5-56f3-bd9e-3daf42fe353a</xsl:when>
        <xsl:when test=".='mkey'">fcf5da3b-5172-5653-82b0-b66af79b0f62</xsl:when>
        <xsl:when test=".='mld'">6a51d833-0a8f-5eb5-b73d-7e30eaca1cd0</xsl:when>
        <xsl:when test=".='mlinc'">05de3a77-493d-52ea-bd07-f37bb5d4e153</xsl:when>
        <xsl:when test=".='mlinn'">7cdfbb45-826a-5544-88ab-df1115541995</xsl:when>
        <xsl:when test=".='mmap'">deaa5cd1-7011-52a2-aa13-530cef1a3449</xsl:when>
        <xsl:when test=".='mmcn'">84b51eab-2bb5-5668-b0a5-466dfc337dfb</xsl:when>
        <xsl:when test=".='mmen'">e7947c47-c354-5099-b622-bfce67b99a0a</xsl:when>
        <xsl:when test=".='mmfic'">98ca6abd-ae22-50e4-a302-1f5b2fc3e986</xsl:when>
        <xsl:when test=".='mmfil'">e07aadb6-0813-599f-a6e0-e79534c123ee</xsl:when>
        <xsl:when test=".='moo'">645c8a61-a297-5743-83ce-6505ca7eed44</xsl:when>
        <xsl:when test=".='mpam'">0c895774-1eef-5f9d-9669-a2ba9f5488bf</xsl:when>
        <xsl:when test=".='mper'">1c4cae88-f29a-5a24-8604-3fdebd69c87e</xsl:when>
        <xsl:when test=".='mrbr'">f8f5c53c-7ff3-5bcb-a089-75ff4e29353e</xsl:when>
        <xsl:when test=".='mrec'">1e347604-9a1b-5d29-a382-50969bd94460</xsl:when>
        <xsl:when test=".='mref'">1d7294e5-d024-53f5-b032-962695828d01</xsl:when>
        <xsl:when test=".='mrefc'">9ad90f3f-ed77-5c06-b146-9a492fbd775a</xsl:when>
        <xsl:when test=".='mres'">4040054e-1843-527d-a253-c1cf1c847433</xsl:when>
        <xsl:when test=".='mrom'">f402dc19-9d25-5308-a6cf-9d693896a5ea</xsl:when>
        <xsl:when test=".='mroom'">cb4ed1ac-8065-5259-a9ee-28e574338163</xsl:when>
        <xsl:when test=".='msco'">01b810bf-f8f4-5e92-a7f0-a7d4c32ebd6a</xsl:when>
        <xsl:when test=".='msex'">af4cc485-a94f-5fdb-8864-9a3ec8e6c06d</xsl:when>
        <xsl:when test=".='msld'">d5885b93-841a-5a69-932e-4500e876de38</xsl:when>
        <xsl:when test=".='mtxr'">4497187a-5bf6-58ea-b020-65739e9abab7</xsl:when>
        <xsl:when test=".='mvid'">e7407712-c9fb-5458-abf7-26d15d525e0a</xsl:when>
        <xsl:when test=".='mweb'">728ac6fd-5a86-544f-8f5a-8b314620461d</xsl:when>
        <xsl:when test=".='mwolf'">3a1693f4-3da2-5c9a-a093-effa20c756f2</xsl:when>
        <xsl:when test=".='pabcl'">8f4b8025-5015-555d-8af1-8bddd98c4d86</xsl:when>
        <xsl:when test=".='pacl'">d6f4da78-da32-5091-9a86-4f20cbf9b3c7</xsl:when>
        <xsl:when test=".='palci'">7914faaf-f226-5642-b5a7-804b4b7d436b</xsl:when>
        <xsl:when test=".='ref'">12aa8e27-2878-55fe-a1e6-d1135d94378e</xsl:when>
        <xsl:when test=".='ref2'">cfe47f3d-af2c-529e-9031-def1ce50423a</xsl:when>
        <xsl:when test=".='res'">03c45ac3-c53e-575e-a52c-913a5bd8a7cb</xsl:when>
        <xsl:when test=".='res2'">40b73581-9750-578d-9b3a-845678bc55c3</xsl:when>
        <xsl:when test=".='spec'">49f87b43-b3be-5d56-94a2-4985d2ed72d7</xsl:when>
        <xsl:when test=".='trea3'">6460280d-5c27-5c75-b3ef-64ff1b3896b5</xsl:when>
        <xsl:when test=".='trea4'">93f9b2eb-7392-5836-8ffe-d76d5d9fb9f0</xsl:when>
        <xsl:when test=".='treat'">396d8b2f-a296-54b4-b281-16dfe79de64d</xsl:when>
        <xsl:when test=".='tres'">0f03dd8e-b5d2-5c95-921b-f37330ae78f3</xsl:when>
        <xsl:when test=".='us'">6dc1bf5a-e0d4-551c-8d76-3e28164b4a23</xsl:when>
        <xsl:when test=".='us1'">709af7e7-aa73-52d2-b707-f53192a0561a</xsl:when>
        <xsl:when test=".='us2'">f8763b5b-355c-5c6d-8ceb-cfd434ac7a22</xsl:when>
        <xsl:when test=".='us3'">7d95d6fd-2f36-50dd-9529-286e78734b2d</xsl:when>
        <xsl:otherwise>fdbe6494-1a79-551c-8769-9bf5f7df8a37</xsl:otherwise> <!-- Unmapped (US-PCW) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>c813540c-91d1-551e-a9ea-faed6e1fa2b2</institutionId>
  </xsl:template>

</xsl:stylesheet>
