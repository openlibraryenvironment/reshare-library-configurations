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
    <identifierTypeId>6210c24b-addd-5f7f-9aae-f4320c410619</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='AnnenLib annb'">dda48ee0-dca6-545f-bd99-8bf56200b010</xsl:when>
        <xsl:when test=".='AnnenLib annbcirc'">2308a768-6e9e-5331-8985-81553e16d64c</xsl:when>
        <xsl:when test=".='AnnenLib annbgovt'">a960e8d6-8a66-53b9-ba37-e67afe649326</xsl:when>
        <xsl:when test=".='AnnenLib annbinde'">859a3c8a-51ec-5151-93f5-32287141bb23</xsl:when>
        <xsl:when test=".='AnnenLib annbnewbk'">594abd3e-0f48-5f89-95c1-d5ef28759c1c</xsl:when>
        <xsl:when test=".='AnnenLib annbrefe'">5bd78bbf-7fbc-5247-b348-bc9024ba1e0d</xsl:when>
        <xsl:when test=".='AnnenLib annbrese'">6ce680f8-293d-5a4d-b71b-78ef7b72d2ca</xsl:when>
        <xsl:when test=".='AnnenLib annbthes'">3e91dd11-0e1e-5d1b-bc5b-f5136f574eb4</xsl:when>
        <xsl:when test="starts-with(., 'AnnenLib')">99ef81ce-151b-5975-a973-c368c4c0b4f2</xsl:when> <!-- Unmapped (AnnenLib)-->
        <xsl:when test=".='ArborLib arbor'">e34f1b65-d1a1-5d13-b08d-3e061bcb60ac</xsl:when>
        <xsl:when test="starts-with(., 'ArborLib')">01ecef48-86b7-5b6f-b085-4d4a2ac90f20</xsl:when> <!-- Unmapped (ArborLib)-->
        <xsl:when test=".='AthLib amimp'">285b32f2-e53b-5c12-bb82-4c11beb115f8</xsl:when>
        <xsl:when test=".='AthLib atlas'">fb483c91-f977-5836-97e9-a80ad0ecc06e</xsl:when>
        <xsl:when test=".='AthLib britimp'">37665f2b-37ba-5bac-8a5a-519d545daba9</xsl:when>
        <xsl:when test=".='AthLib catoffice'">20f137e3-3bf2-5e9b-864a-4421d9d5435b</xsl:when>
        <xsl:when test=".='AthLib cidirbusrm'">79a49d2f-606b-5e0e-a489-d6b87bc2a3f7</xsl:when>
        <xsl:when test=".='AthLib circcoll'">fb63e6a5-3332-5bc1-84ae-9a0ec2eff7c3</xsl:when>
        <xsl:when test=".='AthLib collcare'">ba85adb4-b313-54e8-963e-506db0862c57</xsl:when>
        <xsl:when test=".='AthLib fic'">576b206d-5422-5567-9d7d-c314be898822</xsl:when>
        <xsl:when test=".='AthLib forimp'">7f5379ab-3c5a-5179-a0ab-2ed7d39303a6</xsl:when>
        <xsl:when test=".='AthLib litaward'">2528d276-9406-5c68-9fda-d67c89704416</xsl:when>
        <xsl:when test=".='AthLib newacqu'">a45baccb-82e2-5260-9381-4df79a01e0fd</xsl:when>
        <xsl:when test=".='AthLib offsitede'">bb4a5070-d979-50a5-9e38-78d571775830</xsl:when>
        <xsl:when test=".='AthLib rarecoll'">b2139f3b-ba4c-5254-9214-c0e9f0a3ccf8</xsl:when>
        <xsl:when test=".='AthLib reevecoll'">49485c9d-70c9-5500-89d7-04447e90ffb5</xsl:when>
        <xsl:when test=".='AthLib ref'">1927fa7f-0015-5b2a-bbdf-72a099d46da4</xsl:when>
        <xsl:when test=".='AthLib ruppcoll'">23f04483-921e-5381-8e2b-c8494c9853ba</xsl:when>
        <xsl:when test=".='AthLib serials'">49147450-f919-57ff-87f3-27e85993db7c</xsl:when>
        <xsl:when test=".='AthLib tradecat'">4f12de8e-3fcb-52de-aca6-0fde8340fd63</xsl:when>
        <xsl:when test="starts-with(., 'AthLib')">f0ecfa73-bcde-5a45-87d0-bcb135576e37</xsl:when> <!-- Unmapped (AthLib)-->
        <xsl:when test=".='BatesCntr nursarch'">f257f602-4599-59b0-a12e-461d2afca479</xsl:when>
        <xsl:when test="starts-with(., 'BatesCntr')">f1796b53-00aa-5817-8a82-9316d065987f</xsl:when> <!-- Unmapped (BatesCntr)-->
        <xsl:when test=".='BiomLib biom'">235e8206-91a4-514b-83c7-ea49029e673f</xsl:when>
        <xsl:when test=".='BiomLib biomhist'">21b88294-d952-5cce-8564-c40066136394</xsl:when>
        <xsl:when test=".='BiomLib biomlibr'">c0607230-9849-5865-9348-5c2919cb6761</xsl:when>
        <xsl:when test=".='BiomLib biomperi'">68ee6116-6cf5-5c08-ae38-68f8730bf4b3</xsl:when>
        <xsl:when test=".='BiomLib biomrede'">e630a31c-ea39-5701-8b0e-3108a55455f8</xsl:when>
        <xsl:when test=".='BiomLib biomrefe'">5f072872-b890-5965-b8cc-28a3524e08d1</xsl:when>
        <xsl:when test=".='BiomLib biomrese'">62c8c575-b2b7-5a84-9d04-e24a25cf7fc0</xsl:when>
        <xsl:when test="starts-with(., 'BiomLib')">9b9bfd5f-0aed-5601-b06e-0c85e72de0ff</xsl:when> <!-- Unmapped (BiomLib)-->
        <xsl:when test=".='ChemLib chcirc'">f453b63b-fff8-5dd8-b044-999ce87d8d32</xsl:when>
        <xsl:when test=".='ChemLib chem'">5dae601f-3b04-5e03-9d13-77b0afc90f13</xsl:when>
        <xsl:when test=".='ChemLib chemnewbk'">19ed7c3f-3dd4-5a48-8522-998a6487220d</xsl:when>
        <xsl:when test=".='ChemLib chemrdrm'">f0a451e0-b7a4-567f-8b3a-46d7b372ab8e</xsl:when>
        <xsl:when test=".='ChemLib chemrefe'">bf07c951-f853-5b17-8680-ff35e4984b37</xsl:when>
        <xsl:when test=".='ChemLib chemrese'">3b0da53e-4eca-53d4-9547-d55213258729</xsl:when>
        <xsl:when test="starts-with(., 'ChemLib')">44c1d1da-dc4d-5b9e-a843-7048f1c96775</xsl:when> <!-- Unmapped (ChemLib)-->
        <xsl:when test=".='DentalLib dent'">48f218dc-6f0c-577d-ad48-578ef878fbad</xsl:when>
        <xsl:when test=".='DentalLib dentnewbks'">82894c65-aa6c-5396-a126-ef7f1e94780e</xsl:when>
        <xsl:when test=".='DentalLib dentrare'">b10fbd32-0c06-5420-82f5-b4fc8ca8ec9d</xsl:when>
        <xsl:when test=".='DentalLib dentrefe'">f4329000-ab8d-5349-b76c-b77261b9a27d</xsl:when>
        <xsl:when test=".='DentalLib dentrese'">33e2587e-a89b-594f-ba07-846fd6ba11cb</xsl:when>
        <xsl:when test=".='DentalLib dentshils'">4ec60d20-dbfa-5e83-b8aa-551a34aaabb9</xsl:when>
        <xsl:when test=".='DentalLib dncirc'">34414345-f304-573c-b1a2-7c5e3ff47fd6</xsl:when>
        <xsl:when test="starts-with(., 'DentalLib')">ea0c1580-8c3b-5b67-a547-d7a42bef6386</xsl:when> <!-- Unmapped (DentalLib)-->
        <xsl:when test=".='FisherFAL facirc'">3294b333-e165-5126-9d51-29b688b57430</xsl:when>
        <xsl:when test=".='FisherFAL fanewbook'">7eb63638-dfd9-5560-93d1-9bd2ce0d6c32</xsl:when>
        <xsl:when test=".='FisherFAL fine'">3a5d87f0-1471-54bc-a8c7-5357c30895e4</xsl:when>
        <xsl:when test=".='FisherFAL finecage'">3d3d2c63-5827-5040-9f62-5701aaa89706</xsl:when>
        <xsl:when test=".='FisherFAL finecirc'">d5bb871e-2b84-5106-a1f8-2f26f0a939ad</xsl:when>
        <xsl:when test=".='FisherFAL finecore'">6be8e2e4-c975-5e65-b344-6bf12d123cb9</xsl:when>
        <xsl:when test=".='FisherFAL finelock'">887b9569-04e3-5922-beee-5be4cef95961</xsl:when>
        <xsl:when test=".='FisherFAL finerare'">b510abce-947e-5b4b-945c-6e707fbf7b11</xsl:when>
        <xsl:when test=".='FisherFAL finerefe'">baa11673-bb9e-52b7-8235-8d6a82adf36b</xsl:when>
        <xsl:when test=".='FisherFAL finerese'">4fc97c6f-3f51-5e69-b2a3-42e1c2e8903b</xsl:when>
        <xsl:when test=".='FisherFAL fineslid'">0d7ab58c-f6a0-5bd5-a27b-20c5cfc746c9</xsl:when>
        <xsl:when test=".='FisherFAL finestudio'">80df13c1-9a72-5be8-a2af-5c5ab68704bd</xsl:when>
        <xsl:when test="starts-with(., 'FisherFAL')">0b86157c-4e52-5aa9-8b8b-61a36150e648</xsl:when> <!-- Unmapped (FisherFAL)-->
        <xsl:when test=".='KatzLib cjs'">8f3a02bf-ed1e-582e-a7ed-c7c200810050</xsl:when>
        <xsl:when test=".='KatzLib cjsambx'">28b47c3d-4b8b-531d-a35d-6c9bb3fdf64f</xsl:when>
        <xsl:when test=".='KatzLib cjsarc'">2688314e-722d-5a24-b3e1-9c3117fca5a8</xsl:when>
        <xsl:when test=".='KatzLib cjsarcms'">485b343d-a7fb-5bc8-a160-72ac531c2168</xsl:when>
        <xsl:when test=".='KatzLib cjsarcths'">50d799cb-dded-55c0-9f7b-98eca5c94a12</xsl:when>
        <xsl:when test=".='KatzLib cjsbox1'">48a14e82-8993-5d55-86b5-d4a9863dc1c6</xsl:when>
        <xsl:when test=".='KatzLib cjsbox2'">cd482421-ef68-5f2f-998b-0f5d313fbbeb</xsl:when>
        <xsl:when test=".='KatzLib cjsbox3'">53749a9a-7275-50c4-b998-0e1d4a2423b5</xsl:when>
        <xsl:when test=".='KatzLib cjscdrom'">e12fa257-2b30-5d35-a1d4-984cab00be6f</xsl:when>
        <xsl:when test=".='KatzLib cjsdir'">54d84250-73cf-5718-a3d0-024ce4a4bc10</xsl:when>
        <xsl:when test=".='KatzLib cjsencyc'">c2b6d443-2613-55d1-b5d0-031fe7b346a6</xsl:when>
        <xsl:when test=".='KatzLib cjsfol'">9e52c053-8306-553e-b0d8-e8323db22737</xsl:when>
        <xsl:when test=".='KatzLib cjshur'">6c775ed2-45fe-5320-ad39-a20283566c22</xsl:when>
        <xsl:when test=".='KatzLib cjsinproc'">ce1d2c09-d9a3-5faf-8cd8-849af8795a53</xsl:when>
        <xsl:when test=".='KatzLib cjsinprocn'">2e3d341a-5de8-5456-abf5-1359396af4b6</xsl:when>
        <xsl:when test=".='KatzLib cjsmar'">faa183f6-81c9-5c6b-a2c4-61ede0153ce3</xsl:when>
        <xsl:when test=".='KatzLib cjsmemor'">8a4e8d15-3510-54f8-9280-62d14b3769c5</xsl:when>
        <xsl:when test=".='KatzLib cjsmini'">477fb40e-05a7-537c-8d96-ce3acbb47bbe</xsl:when>
        <xsl:when test=".='KatzLib cjsoffice'">94a0041a-a41d-5ad8-b9bf-fb3793ce73d0</xsl:when>
        <xsl:when test=".='KatzLib cjsover'">41378fa8-de09-5775-9861-0e9cccf40959</xsl:when>
        <xsl:when test=".='KatzLib cjspergal'">df790fc3-75b0-50ec-98aa-d7aa16fe3b94</xsl:when>
        <xsl:when test=".='KatzLib cjsrar'">a03b493b-6203-5c10-9cac-9c1782fbeed4</xsl:when>
        <xsl:when test=".='KatzLib cjsraram'">47684773-68df-5710-96e8-8546284fc56d</xsl:when>
        <xsl:when test=".='KatzLib cjsrarbx1'">7e49cc10-eeb0-5965-912d-650358b7c3ed</xsl:when>
        <xsl:when test=".='KatzLib cjsrarbx2'">d5e29e44-d5b6-5ebc-a15c-cc9302851479</xsl:when>
        <xsl:when test=".='KatzLib cjsrarfol'">14043e56-f4e0-528d-a088-33708f5ca55f</xsl:when>
        <xsl:when test=".='KatzLib cjsrarmini'">961ea42c-44f5-55b7-bfb8-63d5a2dae49f</xsl:when>
        <xsl:when test=".='KatzLib cjsrarms'">0367df3f-f9b7-5202-a875-71e1157adc84</xsl:when>
        <xsl:when test=".='KatzLib cjsrarover'">24e1ca5e-677d-5585-ac13-99cf595fb58c</xsl:when>
        <xsl:when test=".='KatzLib cjsref'">0604a6eb-5b66-5847-ac25-4cfed2064776</xsl:when>
        <xsl:when test=".='KatzLib cjsreffol'">76e8b296-f0e4-55e0-affc-c612f400fb15</xsl:when>
        <xsl:when test=".='KatzLib cjsreffol+'">e1c5e4be-34ea-57ac-9fe5-efb035c63857</xsl:when>
        <xsl:when test=".='KatzLib cjsspec'">3c655713-d57f-5205-9599-c63c666f845b</xsl:when>
        <xsl:when test="starts-with(., 'KatzLib')">e210bab6-e61f-5201-b0d1-9867c99b24e0</xsl:when> <!-- Unmapped (KatzLib)-->
        <xsl:when test=".='KislakCntr sc1100c'">e8964e01-bcab-5d78-a43c-aad92d0bf834</xsl:when>
        <xsl:when test=".='KislakCntr scadams'">5c0d336d-8737-5a04-89c5-c2ccf00f550b</xsl:when>
        <xsl:when test=".='KislakCntr scartbk'">37c7fa51-d9e9-5458-881d-fb8040d6a316</xsl:when>
        <xsl:when test=".='KislakCntr scbanks'">dc07897d-53e3-5343-a2e3-afd63cac3293</xsl:when>
        <xsl:when test=".='KislakCntr scblank'">8b5e3c0b-49f0-59a3-9440-7e2508519014</xsl:when>
        <xsl:when test=".='KislakCntr sccomics'">ad72a1da-2a3f-5feb-ad19-18e578ffed15</xsl:when>
        <xsl:when test=".='KislakCntr scdech'">bc124cea-7d30-5128-9941-7ab822b60064</xsl:when>
        <xsl:when test=".='KislakCntr scdreis'">9d38029a-7d2d-5f34-9ddd-f25fc21cbf19</xsl:when>
        <xsl:when test=".='KislakCntr scdrey'">0e629929-7f30-5d58-b8d7-89f0a5456a81</xsl:when>
        <xsl:when test=".='KislakCntr scelias'">99ab88ef-5e4c-5cd0-ad8d-916aca164a07</xsl:when>
        <xsl:when test=".='KislakCntr scelz'">ee9cf4ad-b3c7-57f1-9775-b832cc5b00d3</xsl:when>
        <xsl:when test=".='KislakCntr scfast'">7bff226c-f6fa-5645-860b-32c9f33fe866</xsl:when>
        <xsl:when test=".='KislakCntr scforr'">e3ce0bb4-4fda-5ed2-ae5f-dc8f2ae186f6</xsl:when>
        <xsl:when test=".='KislakCntr scfoun'">eaa7652a-34bf-57ed-b240-829e90fb8492</xsl:when>
        <xsl:when test=".='KislakCntr scfreed'">88c8d9b6-566f-5de1-a985-a5c7cfcc898d</xsl:when>
        <xsl:when test=".='KislakCntr scfurn'">9c9ea4ac-258e-55dd-a77a-d86b4f20543d</xsl:when>
        <xsl:when test=".='KislakCntr scfurnlib'">2a18d7d1-cb42-5a20-9bd0-ff1a10d8617d</xsl:when>
        <xsl:when test=".='KislakCntr scfurnst'">a7cf815a-0370-56d2-a99f-b79767401ad6</xsl:when>
        <xsl:when test=".='KislakCntr scgull'">e4083eee-68aa-5569-b026-159d74c777ec</xsl:when>
        <xsl:when test=".='KislakCntr sclea'">14752459-1ab2-5822-926c-7b70fc05488a</xsl:when>
        <xsl:when test=".='KislakCntr scmain'">ea52349d-cdf1-5173-93f6-23a89a018b2b</xsl:when>
        <xsl:when test=".='KislakCntr scparts'">1fbf70cb-b9bf-51a3-81cb-88df2f397775</xsl:when>
        <xsl:when test=".='KislakCntr scpspa'">29fbeabb-b426-5c82-99d3-f688227b364e</xsl:when>
        <xsl:when test=".='KislakCntr scrare'">6e47d8d2-985e-5c3c-8f5b-5998028707d4</xsl:when>
        <xsl:when test=".='KislakCntr screading'">3857884e-3a87-5873-91bb-8c1a7867c7e2</xsl:when>
        <xsl:when test=".='KislakCntr screfe'">4f4bd6ff-0bdc-53fe-b890-e24d835a8456</xsl:when>
        <xsl:when test=".='KislakCntr scschimmel'">889d72d2-d1d3-5ed8-af0b-d0d9f9c041b5</xsl:when>
        <xsl:when test=".='KislakCntr scsing'">bdc3cc05-4ae4-550b-8342-d9f4870abba0</xsl:when>
        <xsl:when test=".='KislakCntr scsmith'">f7b2ee18-22a9-5338-b932-77a215078a3e</xsl:when>
        <xsl:when test=".='KislakCntr scsmithst'">d1906c2b-5f94-5c06-97d1-24cdaac58f56</xsl:when>
        <xsl:when test=".='KislakCntr scsterne'">3010cda6-83ef-5afe-acb9-61ff3f798083</xsl:when>
        <xsl:when test=".='KislakCntr scstor'">dae6e4ef-e01f-5cb4-a795-e33ca7ca8a4c</xsl:when>
        <xsl:when test=".='KislakCntr scteer'">337dcc97-8d8f-57b3-a543-a7bdb7ce3f86</xsl:when>
        <xsl:when test=".='KislakCntr sctehon'">c0da3b96-3dd8-581f-8f6e-f7690aa21be4</xsl:when>
        <xsl:when test=".='KislakCntr scvilain'">66b7c9ac-d594-525d-b56f-9b63d929a120</xsl:when>
        <xsl:when test=".='KislakCntr scwhit'">b39ea0a1-a087-571c-bd4b-5612af389da5</xsl:when>
        <xsl:when test=".='KislakCntr scyarn'">5695adb9-c69f-5b40-9460-f15c4da2aee8</xsl:when>
        <xsl:when test="starts-with(., 'KislakCntr')">73dbf6af-c62f-5c95-a871-8a0f76cbbd03</xsl:when> <!-- Unmapped (KislakCntr)-->
        <xsl:when test=".='Libra UNASSIGNED'">980aff32-b82d-5424-a09c-4aec9008ad15</xsl:when>
        <xsl:when test=".='Libra athstor'">d24f9368-122c-56b0-aa46-fa400bbddf6a</xsl:when>
        <xsl:when test=".='Libra athstorcir'">ffffa1f4-9c2a-5307-b372-020c50f83a3f</xsl:when>
        <xsl:when test=".='Libra stor'">d4073c8a-5d75-569c-a661-6f0698f84006</xsl:when>
        <xsl:when test=".='Libra storcirc'">80c7c2f9-1b84-5af3-9631-0a0262f54800</xsl:when>
        <xsl:when test=".='Libra storcrstxt'">7b7c1e14-aeca-52b8-8033-307305909dfe</xsl:when>
        <xsl:when test=".='Libra storfine'">ff5b26b8-56d3-50ae-96db-21ed8bef84a1</xsl:when>
        <xsl:when test=".='Libra storlimit'">7364b917-dd92-5740-9fb0-c3cb8c22ac84</xsl:when>
        <xsl:when test=".='Libra storm'">f718850e-7f6c-5ae4-ac9c-b9140a11df4c</xsl:when>
        <xsl:when test=".='Libra storrare'">92e74705-7aad-572c-976c-065869237e4e</xsl:when>
        <xsl:when test=".='Libra storspec'">3363d01a-d223-5fa4-9f35-1cf177d6e127</xsl:when>
        <xsl:when test="starts-with(., 'Libra')">b6ccd58f-627e-525c-b930-ab5264372b8f</xsl:when> <!-- Unmapped (Libra)-->
        <xsl:when test=".='LippLib UNASSIGNED'">e4b81c44-ebb4-5b26-96e7-7c9cf8008fcd</xsl:when>
        <xsl:when test=".='LippLib lipp'">191d507d-7489-5fe5-a0da-1a1c7b26bab2</xsl:when>
        <xsl:when test=".='LippLib lippbtrend'">5e729a38-4e8d-5202-b53f-e14179bd7731</xsl:when>
        <xsl:when test=".='LippLib lipplipm'">0b8d1b40-08a0-5ca7-bab3-380236d72950</xsl:when>
        <xsl:when test=".='LippLib lipppeck'">d3beb197-f6fd-564d-8883-375e72c8e5cc</xsl:when>
        <xsl:when test=".='LippLib lipprefdsk'">949d4666-f23d-578a-8230-0f0daf5d43b6</xsl:when>
        <xsl:when test=".='LippLib lipprefe'">1a068e13-f6d5-5ea6-845e-ec18376d3a71</xsl:when>
        <xsl:when test=".='LippLib lipprese'">e458c1dc-8355-5f3e-a5cf-54ffd6469df0</xsl:when>
        <xsl:when test=".='LippLib lippreseds'">b8115c14-50f6-5f26-917b-e0fbd76522e4</xsl:when>
        <xsl:when test="starts-with(., 'LippLib')">74526bcb-ea75-5e90-8563-bfea6677c371</xsl:when> <!-- Unmapped (LippLib)-->
        <xsl:when test=".='MPALib math'">7fbe27b9-1d23-568b-889b-f4638a9f64d5</xsl:when>
        <xsl:when test=".='MPALib mathcirc'">463002be-d36d-5459-b47e-536a11fad2db</xsl:when>
        <xsl:when test=".='MPALib mathnewbk'">219e4e1b-37dc-50d2-8211-d85ff5c2fb4a</xsl:when>
        <xsl:when test=".='MPALib mathperi'">53c1874d-0c78-514f-9ad5-c201973fd84a</xsl:when>
        <xsl:when test=".='MPALib mathrese'">e631bdeb-5425-5f52-beba-5ad8d0fb26a1</xsl:when>
        <xsl:when test="starts-with(., 'MPALib')">e3fa4dc9-b907-5720-83d5-39b31f0b3fa3</xsl:when> <!-- Unmapped (MPALib)-->
        <xsl:when test=".='MuseumLib muse'">4850b053-6ab6-5dfc-af21-66a4e94cfa85</xsl:when>
        <xsl:when test=".='MuseumLib musebrin'">dffc5a69-5f51-5470-998f-d67812070a47</xsl:when>
        <xsl:when test=".='MuseumLib musedesk'">913523a8-4c8a-5aa6-947e-ea907fdca7d8</xsl:when>
        <xsl:when test=".='MuseumLib museegyp'">6edbe297-87d3-5336-b6c4-1f50dc358388</xsl:when>
        <xsl:when test=".='MuseumLib museegypov'">0360210f-965f-5679-b393-3b779fee6363</xsl:when>
        <xsl:when test=".='MuseumLib musefolio'">84edae73-d676-5115-9fcc-89da91fcb3ae</xsl:when>
        <xsl:when test=".='MuseumLib muselock'">aac07531-63ce-5dba-8033-ab07cb99e401</xsl:when>
        <xsl:when test=".='MuseumLib museover'">e32277b9-a9a3-5b2e-9ce6-544463b1035a</xsl:when>
        <xsl:when test=".='MuseumLib muserefe'">5a6e3f11-fae3-5ca5-8c06-0f8adf7a05ba</xsl:when>
        <xsl:when test=".='MuseumLib muserese'">3b21bc77-470d-58bc-97e1-4f941df647e8</xsl:when>
        <xsl:when test="starts-with(., 'MuseumLib')">6c95e5dd-a1b4-5215-ae85-13bb4887edab</xsl:when> <!-- Unmapped (MuseumLib)-->
        <xsl:when test=".='MusicLib musiclist'">2f6d63a0-a7c6-56c7-b620-dac3f5ca0965</xsl:when>
        <xsl:when test=".='MusicLib musicrese'">39d63587-1e12-5b1f-8ceb-0e0a56eec5e1</xsl:when>
        <xsl:when test=".='MusicLib musicsem'">f69c27c8-5d43-50f7-80a0-ce416f9c86f6</xsl:when>
        <xsl:when test=".='MusicLib musictech'">8a3ce9ab-68e1-5752-aed9-c6cf1766c424</xsl:when>
        <xsl:when test=".='MusicLib musinwbk'">e52d82d6-e78d-5371-a178-262d277897dc</xsl:when>
        <xsl:when test=".='MusicLib musisemres'">7de3269c-e0b3-523a-bb63-bb38a4029377</xsl:when>
        <xsl:when test="starts-with(., 'MusicLib')">10c16d06-ae1f-50ea-92ac-e2e324c89b2e</xsl:when> <!-- Unmapped (MusicLib)-->
        <xsl:when test=".='PAHospLib pah'">5c739aea-8ea2-58be-aaf1-6438e24e6a05</xsl:when>
        <xsl:when test=".='PAHospLib pahhist'">b2fdc14f-eefa-5cc7-af2c-ba3d5579b752</xsl:when>
        <xsl:when test=".='PAHospLib pahiph'">832a0f01-041a-5d05-aa6e-657d39657cee</xsl:when>
        <xsl:when test=".='PAHospLib pahiphf'">3514fc48-30b2-533e-80ab-655e38f24977</xsl:when>
        <xsl:when test=".='PAHospLib pahiphhist'">627ff586-1fb4-5258-918e-1e28fa6991bf</xsl:when>
        <xsl:when test=".='PAHospLib pahiphref'">933b3d49-39b9-543a-882b-c83aecb24bda</xsl:when>
        <xsl:when test=".='PAHospLib pahiphrr'">c69b0aec-6369-5d29-98fc-100444a94f09</xsl:when>
        <xsl:when test=".='PAHospLib pahiphstk'">9a334cc6-170d-5175-9cc7-69ce6ffc2a83</xsl:when>
        <xsl:when test=".='PAHospLib pahref'">8fd8c812-f597-5305-be93-27f22d94e60b</xsl:when>
        <xsl:when test=".='PAHospLib pahres'">2276522c-0153-5b58-96b5-df2285b0c7d3</xsl:when>
        <xsl:when test="starts-with(., 'PAHospLib')">8b6c0ce8-4172-50d7-83e6-ac5f1ed3824e</xsl:when> <!-- Unmapped (PAHospLib)-->
        <xsl:when test=".='ROTCLib rotc'">fc4571de-8be4-5fc8-87ca-c0712068c548</xsl:when>
        <xsl:when test="starts-with(., 'ROTCLib')">6cf2b04a-a0a8-5002-8400-d4d5186f3208</xsl:when> <!-- Unmapped (ROTCLib)-->
        <xsl:when test=".='UnivArcLib univarch'">44407568-5a00-53f9-b6d9-4b0e3cd37042</xsl:when>
        <xsl:when test="starts-with(., 'UnivArcLib')">6ac58a6d-59bf-5447-a32a-9ce9a47da8aa</xsl:when> <!-- Unmapped (UnivArcLib)-->
        <xsl:when test=".='VanPeltLib afro'">410d5f06-1091-57b7-b707-25757abe4e0f</xsl:when>
        <xsl:when test=".='VanPeltLib classics'">d1bc5590-e96f-5857-b852-30334441a90e</xsl:when>
        <xsl:when test=".='VanPeltLib easiacmx'">5da297c1-7dcc-54d3-bac5-8d44f0a72c59</xsl:when>
        <xsl:when test=".='VanPeltLib easiaover'">012e54da-e309-5a09-acfe-aab19907f1e1</xsl:when>
        <xsl:when test=".='VanPeltLib easiasem'">53636f1c-eb41-5e7d-97b5-17e98b2fd8fa</xsl:when>
        <xsl:when test=".='VanPeltLib eastasia'">d67d0be4-ee16-5fdc-a5b2-f592feb31bec</xsl:when>
        <xsl:when test=".='VanPeltLib judaica'">72dda19b-affd-5392-91f1-250857c475fe</xsl:when>
        <xsl:when test=".='VanPeltLib medieval'">d97ac0f9-76d7-5b69-8d8c-0bcd314fced3</xsl:when>
        <xsl:when test=".='VanPeltLib mideast'">4b4533ee-520c-5c29-a8c3-6586f49bf347</xsl:when>
        <xsl:when test=".='VanPeltLib sasiarefe'">219f59bd-e72c-544f-8947-ad33c75df152</xsl:when>
        <xsl:when test=".='VanPeltLib slavic'">1b8b665a-60fa-5ec6-8605-f44d376d503f</xsl:when>
        <xsl:when test=".='VanPeltLib staffuse'">969df857-d6c5-50e4-a492-e4c08d7b4e51</xsl:when>
        <xsl:when test=".='VanPeltLib unknownloc'">d1a7394f-01c5-5fa8-b7c8-038ff7a111e5</xsl:when>
        <xsl:when test=".='VanPeltLib vanp'">f117d3b4-d565-5bee-ac2b-dd347fc39974</xsl:when>
        <xsl:when test=".='VanPeltLib vanpNocirc'">662f8611-f927-5102-bc6a-dfa95797b77d</xsl:when>
        <xsl:when test=".='VanPeltLib vanpbest'">383a36f8-6723-5096-95b6-47a8e0039c38</xsl:when>
        <xsl:when test=".='VanPeltLib vanpinfo'">15235919-f4dc-52f5-a960-d4487f9fd8b5</xsl:when>
        <xsl:when test=".='VanPeltLib vanpmicro'">e85ccbd5-41bc-5ea2-964b-c68c3ded4793</xsl:when>
        <xsl:when test=".='VanPeltLib vanporig'">806a4f76-8fdf-5d45-b179-d4e6dd179c14</xsl:when>
        <xsl:when test=".='VanPeltLib vanpvideo'">26c8c003-1404-5ef2-af14-90c22fd7652c</xsl:when>
        <xsl:when test=".='VanPeltLib vpcirc'">6f7ae4ef-fdec-580f-990c-8e63cc4d20ad</xsl:when>
        <xsl:when test=".='VanPeltLib vpnewbook'">f21caa3a-5b94-53fa-8e08-0276ff190db4</xsl:when>
        <xsl:when test=".='VanPeltLib vpref'">d6ded5e8-e7d6-5186-ae1f-88d8887eb395</xsl:when>
        <xsl:when test=".='VanPeltLib vprefbip'">f35ea918-6a10-5d7f-b5be-397230544db0</xsl:when>
        <xsl:when test=".='VanPeltLib vpreffin'">88f7f962-9bea-574b-ab10-8ee22a9f559e</xsl:when>
        <xsl:when test=".='VanPeltLib vprefmoel'">7624f221-c512-5459-be6b-cdab3763328d</xsl:when>
        <xsl:when test=".='VanPeltLib vprefover'">513790f1-ae77-5d8a-8746-4d1ca0326090</xsl:when>
        <xsl:when test=".='VanPeltLib vpresdesk'">d2345f6e-8c0d-5282-aea9-c15e223914ad</xsl:when>
        <xsl:when test=".='VanPeltLib vpwicref'">3470e88f-f141-59ff-a663-ea8ab2f335c2</xsl:when>
        <xsl:when test=".='VanPeltLib women'">a7aa5619-87f2-5b3f-b202-bef9234df074</xsl:when>
        <xsl:when test=".='VanPeltLib woody'">7f6d7b15-a637-51cc-979d-3d5592490914</xsl:when>
        <xsl:when test=".='VanPeltLib yarn'">c8ec5fde-18cf-57b6-8fa9-b6941c77fbfa</xsl:when>
        <xsl:when test="starts-with(., 'VanPeltLib')">7d69f7dd-da14-58b5-8db7-13df70633046</xsl:when> <!-- Unmapped (VanPeltLib)-->
        <xsl:when test=".='VetNBLib newb'">fbc43991-9900-5169-b845-cd5d8ef110a0</xsl:when>
        <xsl:when test=".='VetNBLib newbofc'">eecdea93-e5cc-570d-bae1-b082e0468e7e</xsl:when>
        <xsl:when test=".='VetNBLib newbrare'">80665d06-0a6b-58cf-ab8f-9a36fc2ee612</xsl:when>
        <xsl:when test=".='VetNBLib newbrese'">9d2ece8b-8934-5121-95d4-2c39ffb77b13</xsl:when>
        <xsl:when test="starts-with(., 'VetNBLib')">9a0454d3-1463-5dac-983e-2a4b7311e5da</xsl:when> <!-- Unmapped (VetNBLib)-->
        <xsl:when test=".='VetPennLib vete'">30b8c30a-85eb-59d6-a4fd-02e9ca6f1b2d</xsl:when>
        <xsl:when test=".='VetPennLib vetedisp'">e17c1470-120d-54b1-8b17-73f919f7f66a</xsl:when>
        <xsl:when test=".='VetPennLib vetelibr'">2f20340e-b5a3-543e-99de-70c4369b10d5</xsl:when>
        <xsl:when test=".='VetPennLib veteover'">07dc3998-10e2-512d-8afe-0984da3be59e</xsl:when>
        <xsl:when test=".='VetPennLib veterefe'">6e2d3ef4-42d5-5916-a15b-b73987c15638</xsl:when>
        <xsl:when test=".='VetPennLib veterese'">b5014945-4569-5821-87f2-6301742014cb</xsl:when>
        <xsl:when test=".='VetPennLib veteresov'">ccce0358-acca-5a27-a541-f390ba855435</xsl:when>
        <xsl:otherwise>3a536133-aefa-5b6f-9698-a97e5940a8c2</xsl:otherwise> <!-- Unmapped (VetPennLib) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>cc4efc42-1d99-519b-b238-b30d2ceb63a2</institutionId>
  </xsl:template>

</xsl:stylesheet>
