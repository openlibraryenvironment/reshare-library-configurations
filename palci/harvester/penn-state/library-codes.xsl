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
    <identifierTypeId>d5038b19-8327-58cd-9434-22ac4c441325</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='ABINGTON STACKS-AA'">66f43ae6-07f9-5fff-99b8-d5616c39af72</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-AB'">2c13b924-e9fe-5077-b09a-9a894bcd1efc</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-BD'">6bf70dfc-2d43-5ec0-be41-5baf5cfb85ff</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-BK'">47acb9ed-f36b-5d98-afe1-7ce5172fec16</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-BR'">862553cc-e8a6-5bf0-908f-76ebafa1a501</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-DE'">b30a0f8f-e0d2-5572-8cd9-f0a67f76eba7</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-DS'">80fc3f1a-ec63-5d4c-87f1-972648f1bd83</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-FE'">772889fe-26cf-528c-98d1-585106282c0e</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-HB2'">f9541c60-a475-5a8b-a041-4abd0ed605d2</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-HB3'">0386bf2a-fa3b-584b-8773-36ee0e789777</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-HN'">83e6cbb4-5d17-5b37-8a06-2c5d20747708</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-LV2'">fb780fe0-a2ee-5db0-9a55-177577db37a8</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-MA'">a0e12264-0f2a-5033-ae7b-2b48df49b9c3</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-MK'">56b0036f-f379-5498-aba2-5a18b2ae8896</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-NK'">615b5a3e-d05e-58ef-a882-7bcdf2ec943e</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-SL'">dc9905c2-91dd-55a4-9ebf-7df3b24b894d</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-SV'">f4435620-4332-5b3c-8f31-733094aa16ec</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-WB'">915b6a22-1ed0-5f1f-8b2e-6c1a10d21791</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-WS'">f5798c2d-c20e-55c6-a5cc-5bc4608c2a8f</xsl:when>
        <xsl:when test=".='ABINGTON STACKS-YK'">1b7c58ea-f323-5574-83b0-d177c78a7f18</xsl:when>
        <xsl:when test="starts-with(., 'ABINGTON')">7948848b-f70b-5742-ae90-cc89651f743a</xsl:when> <!-- Unmapped (ABINGTON)-->
        <xsl:when test=".='ALTOONA JUVENILEAA'">fb35cde0-6387-534d-a236-ff194def5a03</xsl:when>
        <xsl:when test=".='ALTOONA MEDIA-AA'">860deb1a-68fe-5e6b-8edb-0740ca8564cf</xsl:when>
        <xsl:when test=".='ALTOONA OVERSIZEAA'">e3523923-baad-592e-a468-20697b6a8cc9</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-AA'">5ee250ef-9324-56c7-87c1-f42db7bc20e3</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-AB'">bfe81e2c-cf7e-565d-9d2e-fc905283fba3</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-BD'">4b25d6e9-2526-5288-8d20-66ff3e563bee</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-BK'">803fa977-20a7-52bd-9003-a01df220467a</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-BR'">ea0675a2-44cc-5508-9762-67d7733b87d5</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-DE'">6b73fc40-ed85-54c1-bec9-c80874ebf290</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-DS'">0a3cc045-fa08-520d-a8bc-a68a9f492e4b</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-FE'">b7caec27-e36a-5ee0-8298-1d4c5684f771</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-HB2'">6f6ae482-fc9d-5e3c-ba2c-caa53c3f588c</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-HB3'">ad45debf-5ae1-5201-b38f-da023b52daf4</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-HN'">e6cbbc14-b085-5b58-aabe-7e34479d5e3f</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-LV2'">731864bb-45da-5dba-9ea4-4301863e6eb9</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-MA'">b3ac7359-4547-542f-a8ec-c6b9d1d0f47b</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-MK'">a60932a1-2070-5552-a45a-b948c075be04</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-NK'">16b3842b-d845-5a92-8b00-51e0d33cfb00</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-SL'">4d7df4f8-f470-5a04-b923-212cf22d5f17</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-SV'">34d3d4d4-08ce-53ee-89d9-345c4010687c</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-WB'">b5cd2a4e-d6ba-5d87-b526-9c25b495c839</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-WS'">fcf36d0d-398b-5124-9ab6-2c9cf25b1760</xsl:when>
        <xsl:when test=".='ALTOONA STACKS-YK'">962a8f6d-516b-5b27-850c-9024b07ab07b</xsl:when>
        <xsl:when test="starts-with(., 'ALTOONA')">e94a8392-ea30-52b8-bf50-dc835c6a735a</xsl:when> <!-- Unmapped (ALTOONA)-->
        <xsl:when test=".='BEAVER AFRIC-AMER'">0fa73c48-a2fe-5251-86f3-5a9638fccf83</xsl:when>
        <xsl:when test=".='BEAVER GRFCNOV-BR'">ae5a618a-0982-507c-ae5b-229a332a6204</xsl:when>
        <xsl:when test=".='BEAVER STACKS-AA'">a85c76b4-72d1-5b79-bf63-3f5ded861879</xsl:when>
        <xsl:when test=".='BEAVER STACKS-AB'">842341fd-b107-571d-8e52-ebff8ffa9ff2</xsl:when>
        <xsl:when test=".='BEAVER STACKS-BD'">dc3169ae-efdb-5d4e-9534-74db197d7294</xsl:when>
        <xsl:when test=".='BEAVER STACKS-BK'">10d70ec4-1606-5db8-81fa-8a7207ca3bce</xsl:when>
        <xsl:when test=".='BEAVER STACKS-BR'">3eac7111-6ccd-5b57-bc9b-a1c2f5d5002e</xsl:when>
        <xsl:when test=".='BEAVER STACKS-DE'">8ac102f8-9140-50a1-883c-7d80af2d7704</xsl:when>
        <xsl:when test=".='BEAVER STACKS-DS'">e464a725-e902-5134-8f1f-35ec15234eba</xsl:when>
        <xsl:when test=".='BEAVER STACKS-FE'">766cba43-d587-546f-9b1e-ac0129aa7a4d</xsl:when>
        <xsl:when test=".='BEAVER STACKS-HB2'">21d07ac5-f6d9-5440-92fc-e099a0f2fac7</xsl:when>
        <xsl:when test=".='BEAVER STACKS-HB3'">bda6c5db-fe2b-5f9b-bd20-d2491e35f177</xsl:when>
        <xsl:when test=".='BEAVER STACKS-HN'">4e0ea179-e60d-5c16-81e5-dbef8228d2d7</xsl:when>
        <xsl:when test=".='BEAVER STACKS-LV2'">5d53da06-3564-569d-ba1c-f9ed92e6d315</xsl:when>
        <xsl:when test=".='BEAVER STACKS-MA'">ed3a3c43-558c-518c-9ed0-09097f68c701</xsl:when>
        <xsl:when test=".='BEAVER STACKS-MK'">e668936c-d519-5ff4-a8b9-85b527142515</xsl:when>
        <xsl:when test=".='BEAVER STACKS-NK'">cd6ed263-b6bd-5ff1-a6d8-7e744c0fbe16</xsl:when>
        <xsl:when test=".='BEAVER STACKS-SL'">2e05e261-ea83-5c66-8c2a-d6a10ade3206</xsl:when>
        <xsl:when test=".='BEAVER STACKS-SV'">ceb09126-acab-528e-8478-7fcf893e52ca</xsl:when>
        <xsl:when test=".='BEAVER STACKS-WB'">4da1ca3b-67c8-54d2-be37-8452cbae2beb</xsl:when>
        <xsl:when test=".='BEAVER STACKS-WS'">c4265f63-eede-5145-86f7-9bf409baaf01</xsl:when>
        <xsl:when test=".='BEAVER STACKS-YK'">65a05215-4f13-5136-b0e3-b51cdd77d60f</xsl:when>
        <xsl:when test="starts-with(., 'BEAVER')">1604b744-c09a-5f0e-ba05-143fab6abb32</xsl:when> <!-- Unmapped (BEAVER)-->
        <xsl:when test=".='BEHREND BROWSINGBD'">6ee2bb92-824f-5604-a487-82910a1e4c16</xsl:when>
        <xsl:when test=".='BEHREND FACULTY-BD'">0e372540-e17b-5a2c-b06d-27c54e501c06</xsl:when>
        <xsl:when test=".='BEHREND INDEP-LRNG'">6818c1fb-a80b-5de6-8d33-1e5448faf1f6</xsl:when>
        <xsl:when test=".='BEHREND OVERSIZEBD'">c8ea3534-77dc-55f6-a75d-f0e930bd5753</xsl:when>
        <xsl:when test=".='BEHREND STACKS-AA'">eb7ac4bd-2cfb-5d65-b906-d9a065f948ca</xsl:when>
        <xsl:when test=".='BEHREND STACKS-AB'">18b557d4-5aaf-5aad-9ca2-05d879fe95ff</xsl:when>
        <xsl:when test=".='BEHREND STACKS-BD'">0062ac55-9590-5e9b-a3ca-84073f9bf7d0</xsl:when>
        <xsl:when test=".='BEHREND STACKS-BK'">af44a5b8-7040-58df-97e6-283df43cbc6e</xsl:when>
        <xsl:when test=".='BEHREND STACKS-BR'">f9a6813d-5ac7-5593-9eb5-534185c629da</xsl:when>
        <xsl:when test=".='BEHREND STACKS-DE'">eec9dbd2-5017-5c00-b128-f392ff10a6ee</xsl:when>
        <xsl:when test=".='BEHREND STACKS-DS'">bdc79b43-f8bd-574c-88a4-2826e015e7d6</xsl:when>
        <xsl:when test=".='BEHREND STACKS-FE'">dff55844-07e9-5286-a8f4-a3a908ffcf89</xsl:when>
        <xsl:when test=".='BEHREND STACKS-HB2'">13b22b59-af5d-559f-80dc-a52d5e0c7650</xsl:when>
        <xsl:when test=".='BEHREND STACKS-HB3'">0aaf5a43-2386-57ee-a3a5-5bca874f1979</xsl:when>
        <xsl:when test=".='BEHREND STACKS-HN'">a41d6666-789f-5090-8d0e-f24dfc0b8fac</xsl:when>
        <xsl:when test=".='BEHREND STACKS-LV2'">00031de6-542a-517d-9a66-91e4d17401af</xsl:when>
        <xsl:when test=".='BEHREND STACKS-MA'">dfc108c8-dad2-580c-9860-2c0348146aa8</xsl:when>
        <xsl:when test=".='BEHREND STACKS-MK'">94b4cb28-4882-57de-9588-b5c96ca027c1</xsl:when>
        <xsl:when test=".='BEHREND STACKS-NK'">adaaffd2-c508-5b8d-b5b3-e9806f22d13b</xsl:when>
        <xsl:when test=".='BEHREND STACKS-SL'">9c8333f1-474b-5f91-b6ad-61061465fc21</xsl:when>
        <xsl:when test=".='BEHREND STACKS-SV'">3b430393-f304-537c-b2e6-554bf9e46a87</xsl:when>
        <xsl:when test=".='BEHREND STACKS-WB'">4d5a66ac-ac2b-5db2-aebb-f1cd412ab70b</xsl:when>
        <xsl:when test=".='BEHREND STACKS-WS'">80092ccf-1d23-599a-beb4-63829a207d26</xsl:when>
        <xsl:when test=".='BEHREND STACKS-YK'">0b67382b-1933-59e2-8702-7e5a3c60548d</xsl:when>
        <xsl:when test=".='BEHREND THESIS-BD'">7d91f0c2-6e1b-5f88-8475-bd90b3cc75ec</xsl:when>
        <xsl:when test="starts-with(., 'BEHREND')">4d882605-4c6f-51eb-bdf6-5f911a360112</xsl:when> <!-- Unmapped (BEHREND)-->
        <xsl:when test=".='BERKS DISPLAY-BK'">ba7f95ea-b044-58bc-aae8-bc17f7ba8432</xsl:when>
        <xsl:when test=".='BERKS NEWBOOK-BK'">31d03392-ce6f-52a2-acf0-a8a5fae7daa8</xsl:when>
        <xsl:when test=".='BERKS STACKS-AA'">31a32695-c0b5-5ee6-a91b-e8e957985b59</xsl:when>
        <xsl:when test=".='BERKS STACKS-AB'">77c96b5f-5ac8-522f-bd10-e19bf707629d</xsl:when>
        <xsl:when test=".='BERKS STACKS-BD'">118917fb-7f29-5716-b937-a85808698422</xsl:when>
        <xsl:when test=".='BERKS STACKS-BK'">ba822485-c279-5500-98e2-0b62132166c7</xsl:when>
        <xsl:when test=".='BERKS STACKS-BR'">a21ac2f4-dfd0-5b4a-98ea-b5d4649002d2</xsl:when>
        <xsl:when test=".='BERKS STACKS-DE'">481be620-8082-5055-a4f6-95ae7a2d9cb2</xsl:when>
        <xsl:when test=".='BERKS STACKS-DS'">af216e91-2595-5f37-8b94-6158ad5173d5</xsl:when>
        <xsl:when test=".='BERKS STACKS-FE'">96ebc567-bb93-5a58-88a0-c9928cb3e4be</xsl:when>
        <xsl:when test=".='BERKS STACKS-HB2'">08356135-e9fe-5573-917d-7431a970731e</xsl:when>
        <xsl:when test=".='BERKS STACKS-HB3'">01a837b4-ef3d-50ad-8980-e1a0636e6436</xsl:when>
        <xsl:when test=".='BERKS STACKS-HN'">29c13041-7dad-5244-aed7-8220e39d7b5a</xsl:when>
        <xsl:when test=".='BERKS STACKS-LV2'">6aec2781-d2e1-57d0-9744-d842f0f992bd</xsl:when>
        <xsl:when test=".='BERKS STACKS-MA'">c9f5a28f-30c4-55ed-9b4e-25b9442d98c7</xsl:when>
        <xsl:when test=".='BERKS STACKS-MK'">78c10130-ce56-5ea4-b735-0bd5cfba7bc0</xsl:when>
        <xsl:when test=".='BERKS STACKS-NK'">e5e5b33d-4922-5c26-b726-0761280dfd8f</xsl:when>
        <xsl:when test=".='BERKS STACKS-SL'">7164309b-9edf-5c65-b1d6-4d0a1caa710e</xsl:when>
        <xsl:when test=".='BERKS STACKS-SV'">51869618-b99d-5acb-ad03-cf77e4a72364</xsl:when>
        <xsl:when test=".='BERKS STACKS-WB'">d4ba3a79-bdb0-5e76-a2e5-0093bb5e4779</xsl:when>
        <xsl:when test=".='BERKS STACKS-WS'">8d1ffc20-b06c-5c3e-922b-a0d08b724080</xsl:when>
        <xsl:when test=".='BERKS STACKS-YK'">3b5f284d-412c-5780-838c-5ab97a657d07</xsl:when>
        <xsl:when test="starts-with(., 'BERKS')">fb48fce7-664b-5d73-889f-aab46d16acc5</xsl:when> <!-- Unmapped (BERKS)-->
        <xsl:when test=".='BRANDYWINE GRFCNOV-DE'">d4529326-317a-5717-8835-349c260a66fb</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-AA'">ffa39a3b-31a1-5bcf-bb3f-c61822b6ef3a</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-AB'">859916e7-c579-526d-93d4-45aca987b006</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-BD'">185d9bc0-048d-5cac-bff9-577863edb488</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-BK'">4e6f5f9a-00a7-5941-893c-682b218a50f9</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-BR'">26eae7ea-5045-57a1-8998-ab9dd72b74db</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-DE'">a64e9a1f-9355-5a80-b437-5f6662256a4c</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-DS'">71b1a788-3025-5804-a9f8-bbda50ba687c</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-FE'">4e11c5bd-eb4b-5342-b29e-2732d83c522f</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-HB2'">1c3170bf-2f97-54d0-82e8-4fdc45bff976</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-HB3'">91037d2d-9547-535b-8425-7c99fa644403</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-HN'">81977a15-0e83-5b3f-baa2-7ff3d61d0ef5</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-LV2'">6e429bab-6b6c-53be-b88c-b10471a80733</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-MA'">a17e83e2-92cf-5a96-b88c-e3336c39142e</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-MK'">f9cdc897-5ee7-53f2-98fb-fbb8c4939a6c</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-NK'">d511ea7f-1330-5e2a-b040-43cbb5f74a0b</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-SL'">63e46c45-f420-5401-b19e-ccec6ebff6ea</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-SV'">cb04de99-a31e-553e-b869-7e709252c701</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-WB'">7a83e400-7a01-57f1-9648-72b6fd638996</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-WS'">b3040133-aaa9-5808-b449-52dff78d5902</xsl:when>
        <xsl:when test=".='BRANDYWINE STACKS-YK'">e3050702-9c84-5204-960d-8596eea708e0</xsl:when>
        <xsl:when test="starts-with(., 'BRANDYWINE')">9018ead9-06af-592a-9028-9bc90eee7206</xsl:when> <!-- Unmapped (BRANDYWINE)-->
        <xsl:when test=".='DUBOIS STACKS-AA'">17fe6636-6c3a-5171-949f-6656d61de88a</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-AB'">d7ffa67d-8bef-5612-a08b-3074a8a657e4</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-BD'">2afa6c13-a9bf-5830-a5fe-ffbc11265173</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-BK'">1751b890-2833-5f0e-9daf-34fe6d16d241</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-BR'">b55190b6-237b-5d20-977e-f1009c562379</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-DE'">67ea4754-a099-5281-834f-dc999209cf19</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-DS'">bc8df59c-9c24-50db-86c0-9a94e9ef1449</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-FE'">31d93aa5-6c27-5646-bd15-fe4c47871869</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-HB2'">11e57e54-fe76-5b26-97e0-fa1da05d0407</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-HB3'">5e930dde-8c1e-5cde-8112-7596d2abd92b</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-HN'">62743802-fef0-52ac-bab7-57a7c75ab266</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-LV2'">d5569b5e-8a31-575e-9ce9-dcfa5ca3dfea</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-MA'">ab954e41-81cd-50a3-99c1-41666da0964b</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-MK'">42ed8d3d-7a0d-5b1c-ba6b-12027df0b4a3</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-NK'">5976182c-edac-5cc2-b8e6-04a0223ca3cc</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-SL'">00caa1b0-b98d-5232-bff3-d0f4245f650d</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-SV'">5dadba32-3772-5503-a242-f02896304e74</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-WB'">092562de-25e4-5c09-b14f-4349be71c465</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-WS'">85aef4fc-ad56-510c-a892-34f6d3930c26</xsl:when>
        <xsl:when test=".='DUBOIS STACKS-YK'">e3fc4ec9-ee4f-50c2-b1c9-f34bedd2c9b3</xsl:when>
        <xsl:when test="starts-with(., 'DUBOIS')">af83a945-68a3-5775-b5c6-a004944310f1</xsl:when> <!-- Unmapped (DUBOIS)-->
        <xsl:when test=".='FAYETTE GRFCNOV-FE'">09253ae0-f9f8-513f-8b4e-4be6d84df567</xsl:when>
        <xsl:when test=".='FAYETTE JUVENILEFE'">d31c60f0-4dc1-51a6-90d2-c97527924763</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-AA'">6e864480-643b-5806-908b-0d26bf4c41b1</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-AB'">7d87fea2-8554-5690-9dbd-02608bfbb610</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-BD'">8b68977e-24f5-5165-b4c5-2e8ff9bbe4e8</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-BK'">931f509c-36cd-5928-9016-6b4c0599b5e6</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-BR'">220dd6ef-84a7-5b66-8ed1-6ecb82bfe2f9</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-DE'">5bfc3a0c-9daf-5538-b199-40f1c3d6c268</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-DS'">2e74fe04-df8f-5c85-8ac6-6b407221d16d</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-FE'">7f49a000-4082-52f6-8414-421441fcfacf</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-HB2'">44cf512a-a3b8-50db-99fc-abe9a9652445</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-HB3'">44a278e6-3b82-5bf2-a821-71b8804b7d35</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-HN'">7bad551b-b631-5175-b47a-9acca389e759</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-LV2'">1c37ff4c-a4db-5ddc-a8da-67d732c3f39e</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-MA'">c073a52b-e014-500c-b97f-4118f03d389a</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-MK'">2c12fc72-bc99-52d9-93d9-032cf9e76703</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-NK'">aed9561d-3897-594e-97b2-b90b6075b95d</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-SL'">2008fe47-504d-5eeb-b835-c57973807cd7</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-SV'">774d51af-0fca-5910-9934-4d9d0e88b95c</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-WB'">85b5437e-a8de-551d-b0b8-b4aa8f39407e</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-WS'">87eb99b5-cbc0-59de-a7df-19f292586d8d</xsl:when>
        <xsl:when test=".='FAYETTE STACKS-YK'">178d24c7-c46d-5380-be99-82f694b7c6af</xsl:when>
        <xsl:when test="starts-with(., 'FAYETTE')">f15338bd-7b3b-5903-a69a-ee07a324ee5d</xsl:when> <!-- Unmapped (FAYETTE)-->
        <xsl:when test=".='GALLEGHENY BROWSINGMK'">253befa2-b4fa-5014-99b6-a598961c33b4</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-AA'">5148c122-0621-5b50-bcab-a2bb9530ed15</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-AB'">6eff250c-005d-5b03-910b-03cf5cfb646f</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-BD'">85b74e28-a16a-5e41-9927-996830f6c6fd</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-BK'">4d3b4086-27af-5c64-b361-96ab6936b6e4</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-BR'">70514dc1-b8b2-51a1-b7bb-62f0bdf72235</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-DE'">3f6db42a-44c0-5734-93c0-403603f7f0c5</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-DS'">258e0481-4d93-5b14-b540-6f49f50de974</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-FE'">45c3e297-a17a-52d4-8c42-b686d118a288</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-HB2'">cd5f3929-9182-59b4-8232-b33ecce1ffbb</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-HB3'">83ef9f10-8f92-57b6-956c-edadd104f9fa</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-HN'">15c5a5db-2532-505c-a694-363ea9e03729</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-LV2'">9972d527-1029-5602-b890-2cf0c7c63713</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-MA'">2f089779-d1ec-5829-b2d3-0e62ac1dd0cf</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-MK'">62e1346f-6ec2-5ebd-b498-080a390809ff</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-NK'">ddbc8d8f-1f5d-5201-910b-133a23bc3d7a</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-SL'">5fd05701-4dbc-5d5f-a7e8-d7e2223dc0dd</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-SV'">1a5ee955-9d69-5fed-a74d-ab7bbd652025</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-WB'">8cf259db-856f-5d6a-9ded-968087e6068b</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-WS'">7c0813ff-7e77-51c5-ab0e-4b54b2258fe4</xsl:when>
        <xsl:when test=".='GALLEGHENY STACKS-YK'">1699d3dc-f5ac-5ebe-82a1-d49f84440eb1</xsl:when>
        <xsl:when test="starts-with(., 'GALLEGHENY')">fc3fea51-416b-57d1-ab01-20b3e9df43ff</xsl:when> <!-- Unmapped (GALLEGHENY)-->
        <xsl:when test=".='GREATVLY CURRIC-GV'">b35495dc-21e5-54d7-84f8-e18fc27ec9d3</xsl:when>
        <xsl:when test=".='GREATVLY NONPRINTGV'">e00caf72-20cd-5624-abb7-ded66f567637</xsl:when>
        <xsl:when test=".='GREATVLY STACKS-GV'">7f3ec6b3-6ac4-51a3-b737-2c7f0157a0b6</xsl:when>
        <xsl:when test=".='GREATVLY THESIS-GV'">a66aeb66-b847-57da-a1e4-6d10bcab5078</xsl:when>
        <xsl:when test="starts-with(., 'GREATVLY')">05d31abe-0493-5322-94cc-c9d0375ed517</xsl:when> <!-- Unmapped (GREATVLY)-->
        <xsl:when test=".='HARRISBURG AUDIO-HB'">24155f39-052f-5d6f-b409-df359ae3e0a2</xsl:when>
        <xsl:when test=".='HARRISBURG CD-HB'">12223ecd-d198-542c-a09c-61eb38718fd1</xsl:when>
        <xsl:when test=".='HARRISBURG CURRIC-HB'">678575ec-433d-5d7e-8a7c-14c0911d1856</xsl:when>
        <xsl:when test=".='HARRISBURG DOCS-HB'">52becb8c-e6e3-573e-ab61-9597da4e29b7</xsl:when>
        <xsl:when test=".='HARRISBURG JUVENILEHB'">eff711a4-947f-5692-9c9d-4222eb067faf</xsl:when>
        <xsl:when test=".='HARRISBURG MAPS-HB'">48e2399b-f17e-5e24-88be-05290e0f7925</xsl:when>
        <xsl:when test=".='HARRISBURG OVERSIZEHB'">3ae983bf-b13e-52c8-874a-1adfc1322188</xsl:when>
        <xsl:when test=".='HARRISBURG PHONO-HB'">bb8244c3-9302-54be-9279-c8a123d4eff7</xsl:when>
        <xsl:when test=".='HARRISBURG REPORTS-HB'">e6211b9a-c9d0-5230-97be-8a3a619aaa2e</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-AA'">a69e37c5-eaba-5001-98c8-8974b515f5c6</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-AB'">9dc366bd-1148-59bd-a9f8-8d940e0f1134</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-BD'">20b6dc99-c7ce-5ed3-acf3-426b641fbcf5</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-BK'">6812f23f-c5ab-51eb-aca2-e85a470a4bbb</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-BR'">961687f9-bce9-5d83-97b2-13ab1184412a</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-DE'">c5a2549a-01cd-5dc3-855d-8021f1a953a2</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-DS'">86a8393d-f6c1-5a86-8b35-1dd04b7fedee</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-FE'">f453f4d2-494e-5818-85f3-8331fbc61ef1</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-HB2'">d67d9e76-d206-5092-8261-a8f7e6996511</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-HB3'">4b38b9ca-9d98-5218-97f4-43c5a8c85b93</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-HN'">3ed9d198-5d70-5d34-b576-94eb88ba18cb</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-LV2'">874ed4af-6855-5273-bdf2-728b5e5a60ff</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-MA'">34445329-7805-5832-8eb8-4c875cc2da85</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-MK'">a7d74241-62c2-55c2-9ace-452598dd9af1</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-NK'">dda473bd-dfa4-5392-bd6b-b570f6c16de3</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-SL'">c5d3cb79-e9b3-5592-9bae-b1ad82c6aefe</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-SV'">8759ab39-570c-5edb-b62b-a677c19a95c8</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-WB'">cfb55995-c585-5890-983c-0b9427f1f186</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-WS'">fdbda6ef-b5a5-540e-992a-a18d1b362a78</xsl:when>
        <xsl:when test=".='HARRISBURG STACKS-YK'">32ac8a7a-6811-508c-8662-da82a275494b</xsl:when>
        <xsl:when test=".='HARRISBURG THESIS-HBY'">01dc4ae0-3e51-5da4-9049-032484df6baf</xsl:when>
        <xsl:when test="starts-with(., 'HARRISBURG')">50938f6a-9040-5ed0-a323-fbe3152aecda</xsl:when> <!-- Unmapped (HARRISBURG)-->
        <xsl:when test=".='HAZLETON BROWSINGHN'">e000392b-8c3a-5ebd-9da1-7807e834e8ec</xsl:when>
        <xsl:when test=".='HAZLETON MAPS-HN'">1bc1d768-03e8-5923-8d81-0141f2c8d5fe</xsl:when>
        <xsl:when test=".='HAZLETON STACKS-BD'">6da2357d-cf92-5d55-ad0c-dfaa5a8fb25f</xsl:when>
        <xsl:when test=".='HAZLETON STACKS-HN'">6ebb8137-58c4-57d1-8893-af02cf2b5339</xsl:when>
        <xsl:when test=".='HAZLETON STACKS-LV2'">d1df347e-14f6-51bc-aaea-806523274dcb</xsl:when>
        <xsl:when test=".='HAZLETON STACKS-MA'">9e7b923c-c2a8-5c9f-947e-e15d6bb82745</xsl:when>
        <xsl:when test=".='HAZLETON STACKS-MK'">5a805817-5418-568b-98b6-b01c565b3cb2</xsl:when>
        <xsl:when test=".='HAZLETON STACKS-SL'">ba611c8c-89b7-5276-b712-ff4a40760a69</xsl:when>
        <xsl:when test=".='HAZLETON STACKS-SV'">e0580bdc-76ba-51c4-b818-09068f671a13</xsl:when>
        <xsl:when test=".='HAZLETON STORAGE-HN'">ba946202-d7c9-5c26-86dc-61ccf8191148</xsl:when>
        <xsl:when test="starts-with(., 'HAZLETON')">2b33870f-8a96-5a65-b87b-b6ca5103c502</xsl:when> <!-- Unmapped (HAZLETON)-->
        <xsl:when test=".='LEHIGHVLY CAREERS-LV'">3fb2515d-fa2f-51c9-a447-ec4101f0fb11</xsl:when>
        <xsl:when test=".='LEHIGHVLY JUVENILELV'">7b714858-dc58-57b5-87c3-9f90cc2e3e9a</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-AA'">98b40bfe-3b44-5441-9fe4-771c8a7eed5e</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-AB'">c3184a94-b947-58ea-a2e8-e44fed764ffe</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-BD'">b0d87200-ba99-5b03-b62a-f10b88117280</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-BK'">277a8414-be1c-5c06-8ccd-7078a22aace1</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-BR'">ed792414-971f-5db1-b4d8-9d1a036a3ef6</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-DE'">01b27280-885a-562d-ba70-a6866d999912</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-DS'">c9fc267d-49ee-590e-9494-a2e32cac4944</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-FE'">7ec83ea5-842d-502b-a27b-75849bd5676d</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-HB2'">1ae08ecb-81f0-5a6d-a4a6-3a5ee9096c2b</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-HB3'">e923cff9-4664-5242-943d-5a9848b28fa6</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-HN'">c6ac0418-b92b-5d09-b903-16274fdf1339</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-LV'">d517c3a8-71ff-554c-9ba6-23548e0798b7</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-LV2'">764e2aec-2853-511b-9470-511d82038c64</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-MA'">2d557d85-8fb7-5faf-af95-4d80f9c950dd</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-MK'">4575d7dc-0488-5bc8-8052-03fc76db0d04</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-NK'">8cbc90af-cb05-5909-8f87-87445e8ceaf9</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-SL'">82d62175-4e93-5347-9a6d-9995823b5ce5</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-SV'">00ba257d-0e48-59ba-8e80-e1f6965bc20f</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-WB'">0ce3f173-b214-563c-82a4-0838064ec837</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-WS'">ed682f00-0cad-5a7d-b8d8-4deff2bb00cc</xsl:when>
        <xsl:when test=".='LEHIGHVLY STACKS-YK'">d26172a2-1fec-5d72-af9b-1bff6e959316</xsl:when>
        <xsl:when test="starts-with(., 'LEHIGHVLY')">ff9460ce-6c64-5718-8149-df3f6102dff4</xsl:when> <!-- Unmapped (LEHIGHVLY)-->
        <xsl:when test=".='MONTALTO CIRCDESKMA'">c4c5c679-a8ae-51ed-88d6-572049303d7a</xsl:when>
        <xsl:when test=".='MONTALTO OVERSIZEMA'">59e27aca-8f1c-527a-bc05-5fe7ada27120</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-AA'">fcd47f1f-1033-5f28-ad51-32fb2606d229</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-AB'">a56b1789-2e0f-5844-bd7a-44b215a4c3a9</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-BD'">7624d684-9398-5ede-8eef-da2401e27703</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-BK'">784c4c80-dac5-5998-874a-6559193144ba</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-BR'">a1fda80a-fd92-5904-bc29-2a8c8842740f</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-DE'">3ac0d804-de4f-5b44-8958-a3b653b75cd8</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-DS'">9e5fcbf7-71a8-58fa-b680-176cf5a0abed</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-FE'">bd7f2f53-169b-531e-9d56-457a4dae553e</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-HB2'">409c3e3c-148a-5e56-864e-8f275018c32b</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-HB3'">136cb6d9-eab6-55e1-a511-486b7da560c4</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-HN'">c73637d6-6dc7-5df6-a9f3-1ec8600690df</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-LV2'">d11301f4-91a5-519c-b9ee-9326b807327e</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-MA'">713f53bc-3b13-597b-9161-f785c8102586</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-MK'">43639cda-9087-5dde-a770-0a13eb98a7af</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-NK'">7bacccaf-3717-5faa-8d63-e5ac8dd54cc5</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-SL'">00d917f7-fa80-5524-b19e-9961deeb20dc</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-SV'">0f63c5fb-7631-508f-a12d-ffd248b0248a</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-WB'">a8b7acee-da6b-51a4-9a00-df66da5f92d2</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-WS'">ee32dea7-dbca-5565-8959-c389fe857766</xsl:when>
        <xsl:when test=".='MONTALTO STACKS-YK'">6ac2b674-90b9-5a58-a1de-84bb5f06f58a</xsl:when>
        <xsl:when test="starts-with(., 'MONTALTO')">7864d96f-3d54-5d55-ba2c-f44fb19f47ca</xsl:when> <!-- Unmapped (MONTALTO)-->
        <xsl:when test=".='NEWKEN CIRCDESKNK'">757a9b52-0e94-5085-acf5-9d0f70d07987</xsl:when>
        <xsl:when test=".='NEWKEN DOCS-NK'">ca959fbc-e466-5800-bd07-db02d9ecf27e</xsl:when>
        <xsl:when test=".='NEWKEN OVERSIZENK'">de7167d9-fb56-5612-847f-93a0571db6c3</xsl:when>
        <xsl:when test=".='NEWKEN POPNON-NK'">e632b5fd-0197-5ba4-a7be-ee560a2c1c76</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-AA'">71a7c2c8-17a9-5038-9bc3-eb937664a9d9</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-AB'">dd5a35bc-dd43-5ef7-bc2a-9fceb96dd345</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-BD'">837aa5b6-162b-5208-aa18-362c6f0acecc</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-BK'">fae1044d-65f8-59ef-813c-5634626e2382</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-BR'">9c0b9197-7bcd-5a3a-9a62-9ed30f458a9d</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-DE'">63a4154a-28e7-51f4-9a63-f456929aac45</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-DS'">c90dfd83-330a-591d-ad55-996182cfed83</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-FE'">65c3ec75-6d66-57bd-b0a0-ad606a010382</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-HB2'">ffbd64e7-7160-5c9a-bebb-4f48dd4dad81</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-HB3'">35e5a635-9649-5c9c-9157-388a1a6e3a21</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-HN'">07fdc714-2c52-5752-be81-3f0a702a39cf</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-LV2'">082cfd5d-fc16-5e44-90e8-08b905e1ef04</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-MA'">8d377767-02ce-5433-9292-0d0f0e40dbab</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-MK'">c276388d-200a-5bac-8718-0a5dc6a5b047</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-NK'">7b3d1511-0337-5a51-9ee2-a685e29d5291</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-SL'">d4c5fea3-2106-5df3-88d7-9405d719c900</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-SV'">a0f0290e-cc21-56c6-a56e-4137694c5d97</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-WB'">2a6678f2-1559-5576-9c4a-f01c4a07d1f5</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-WS'">98397857-a19e-5f47-a317-5e7a889369bb</xsl:when>
        <xsl:when test=".='NEWKEN STACKS-YK'">b5b21359-c7c4-5b66-a21c-d5b5f849ecc7</xsl:when>
        <xsl:when test="starts-with(., 'NEWKEN')">4c2c53ad-e6b4-5964-a710-e5c04d4fa0c4</xsl:when> <!-- Unmapped (NEWKEN)-->
        <xsl:when test=".='SCHUYLKILL STACKS-AA'">976d361a-d5c2-572d-bd24-a568c3aa46ad</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-AB'">6d5e12a9-09fd-5a66-8a92-cd04d86157d3</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-BD'">363488b0-8928-5ae9-912d-b94d11150414</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-BK'">e21a385b-897a-5a4f-9154-05c7c2ba1e39</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-BR'">51e6a376-9f24-58fd-9913-19b45ac582c2</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-DE'">68ddba3d-25d5-5c04-9792-6fc8bb9f0276</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-DS'">3cd66bfe-83dc-5e14-9fc7-b9768908ec5a</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-FE'">4c80050a-d580-569a-b5d3-7819644e5a5e</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-HB2'">527cb8a0-e79c-5d36-913d-0ae5ee75719a</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-HB3'">c665e37d-5b4e-5a4e-a616-bca8bf4f54ea</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-HN'">d3f24b3c-d6d7-59f4-8b8f-70fcc8d56571</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-LV2'">e2cd696b-ac66-565d-af1a-98a0df81a511</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-MA'">e15cbdc2-a4ef-5385-803e-a8980b673aee</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-MK'">b4e1d82a-abe9-55c5-8e1d-09daae301f65</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-NK'">f2a8790c-edc1-54ef-9e18-ca2eefbe2723</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-SL'">fcde0f2f-7066-578a-a1aa-bce90982a114</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-SV'">9bcb103a-288b-5680-bf6f-2b9840eabd5b</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-WB'">66ddbde5-ade0-5c95-ba57-3cbc2d9f4bda</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-WS'">f4993f7e-174f-527b-8d57-2cc45e1a3d29</xsl:when>
        <xsl:when test=".='SCHUYLKILL STACKS-YK'">66a0f31d-67fb-5166-a62a-5582f0e8407a</xsl:when>
        <xsl:when test="starts-with(., 'SCHUYLKILL')">d3179bbd-ed1a-5f3f-b64a-c5e31662cdbe</xsl:when> <!-- Unmapped (SCHUYLKILL)-->
        <xsl:when test=".='SHENANGO BNNF-SV'">047f6a8c-af20-558c-9a36-1a465873c2b6</xsl:when>
        <xsl:when test=".='SHENANGO BOOKNOOKSV'">6314ce4d-7f14-52a1-96e9-673b86e83334</xsl:when>
        <xsl:when test=".='SHENANGO LGBTQ-SV'">47aa1a89-3e57-563f-a278-edf47f079613</xsl:when>
        <xsl:when test=".='SHENANGO MCDOWELLSV'">6f7654ae-7e97-5fb4-a4be-7e316cf7f599</xsl:when>
        <xsl:when test=".='SHENANGO MEDIA-SV'">4ac47ce9-f254-5e78-ba7f-eab179731c2a</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-AA'">81d90018-65aa-5fc7-8fef-7488f05620e0</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-AB'">74e3db94-7d05-5842-abc3-a27fb6fde305</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-BD'">d0ed76ae-e263-564d-80bf-26801b522f0d</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-BK'">c79e9faf-f708-568e-89de-962cd975e575</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-BR'">4e6abe56-98b7-5766-b076-30cf59f3656b</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-DE'">77d2e3c7-86ba-5145-91e3-e89a0360db20</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-DS'">3f9771b8-385d-5052-afe8-a4de7643d74e</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-FE'">f2721a1c-0fdb-56dd-9d6f-d672eaf21ef8</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-HB2'">d559a247-5a07-59d9-b6f3-16eaf4683926</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-HB3'">0658fa8e-4a35-5ceb-99e3-bff8c9d1ce9f</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-HN'">26458bde-abee-5327-bc32-41d632b4e3df</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-LV2'">b91497f8-fd0f-5f2a-a786-3e66626be60a</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-MA'">9f44edc9-673b-5dd3-9b1b-91fe3c9f028b</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-MK'">c4f8452f-77ad-5c0e-b09a-448de65f473e</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-NK'">ef66856b-63b4-5a27-8297-ced19a3f4061</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-SL'">b9a4e478-9e8f-5cc4-a822-a43eabc6e453</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-SV'">a383c4c1-f32f-522b-b93c-8468b9160d41</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-WB'">2c9a49ba-1b73-556b-ac29-f2e8ea8ead88</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-WS'">9e83abb3-1d7b-5561-acf3-21a357333eae</xsl:when>
        <xsl:when test=".='SHENANGO STACKS-YK'">1daa34dd-8efe-5df9-b48b-a68263f7735f</xsl:when>
        <xsl:when test="starts-with(., 'SHENANGO')">f4fbe864-fc72-5731-80dd-9992fca53317</xsl:when> <!-- Unmapped (SHENANGO)-->
        <xsl:when test=".='UP-ANNEX ACAD-BLDG'">73511fac-63c7-5e9c-9c74-7d17c577af03</xsl:when>
        <xsl:when test=".='UP-ANNEX ANNEX'">c8e2de8d-2b87-5fbb-8134-c1ae1b937a78</xsl:when>
        <xsl:when test=".='UP-ANNEX CATO-2'">e15fb0cd-c6f3-5b01-a5ec-e9a7f7b0f772</xsl:when>
        <xsl:when test=".='UP-ANNEX CATO-PARK'">c94e9793-08d9-5363-a4a0-cadad6a6a011</xsl:when>
        <xsl:when test="starts-with(., 'UP-ANNEX')">54dbd136-7959-570d-b730-cfdf5dcdec5c</xsl:when> <!-- Unmapped (UP-ANNEX)-->
        <xsl:when test=".='UP-ARCHIT FOLIO-AC'">99d7640f-b528-566f-93f5-6d3056221384</xsl:when>
        <xsl:when test=".='UP-ARCHIT STACKS-AC'">8f9bc6b4-4bd8-5ac5-8519-ebd607b27d7a</xsl:when>
        <xsl:when test="starts-with(., 'UP-ARCHIT')">87e7d1f9-4ff3-5692-ac2d-f27112bf1725</xsl:when> <!-- Unmapped (UP-ARCHIT)-->
        <xsl:when test=".='UP-ARTSHUM MUSIC-CTR'">a44651b4-0209-5ce6-8328-99471857575c</xsl:when>
        <xsl:when test=".='UP-ARTSHUM PAT-RDG-RM'">ab030864-5748-5494-bd26-8d48ac05bfb4</xsl:when>
        <xsl:when test="starts-with(., 'UP-ARTSHUM')">30173eb6-94a9-5f98-955d-038ad547c633</xsl:when> <!-- Unmapped (UP-ARTSHUM)-->
        <xsl:when test=".='UP-EMS MAPS-EM'">58553c50-21ee-5d5f-9513-d7937ef824be</xsl:when>
        <xsl:when test=".='UP-EMS MICROS-EM'">88912839-3079-50cf-b898-4997537e2de7</xsl:when>
        <xsl:when test=".='UP-EMS OVERSIZEEM'">38b96716-336b-5cd0-9230-189ffb196122</xsl:when>
        <xsl:when test=".='UP-EMS STACKS-EM'">33d23822-62a3-5878-bbde-c15cad3b884f</xsl:when>
        <xsl:when test="starts-with(., 'UP-EMS')">5116e227-90b9-5124-840c-d756a51a5613</xsl:when> <!-- Unmapped (UP-EMS)-->
        <xsl:when test=".='UP-ENGIN POPULAR-EG'">d4892a08-d7ec-57e0-81be-79954404c020</xsl:when>
        <xsl:when test=".='UP-ENGIN STACKS-EG'">1f77d190-197e-5c14-9670-234f15c43c28</xsl:when>
        <xsl:when test="starts-with(., 'UP-ENGIN')">407e9c42-0bf9-54c5-8097-c4981360040e</xsl:when> <!-- Unmapped (UP-ENGIN)-->
        <xsl:when test=".='UP-MAPS MAP-GUIDES'">c28c14fc-5abc-5381-8b9f-a21a2e341a08</xsl:when>
        <xsl:when test=".='UP-MAPS MAPS-MP'">342aaa6e-ebf2-516e-bc4e-cdab853a6291</xsl:when>
        <xsl:when test=".='UP-MAPS OVERSIZEMP'">62ff5be9-6bbd-5389-a03b-b1964b92409f</xsl:when>
        <xsl:when test=".='UP-MAPS STORAGE-MP'">1f30ed17-bf61-5831-8890-00623a278cd2</xsl:when>
        <xsl:when test="starts-with(., 'UP-MAPS')">ec5930e4-bc9d-5b8c-b6bc-252e61e658ac</xsl:when> <!-- Unmapped (UP-MAPS)-->
        <xsl:when test=".='UP-PAMS NEWBOOK-PM'">c25affe5-e230-5b92-b52d-1c328b77b549</xsl:when>
        <xsl:when test=".='UP-PAMS POPSCI-PM'">c9983d4c-d4e1-5c3b-ad8c-527843c2f21d</xsl:when>
        <xsl:when test=".='UP-PAMS STACKS-PM'">d8ae9395-4643-5d24-bdf3-7f02bfff8b83</xsl:when>
        <xsl:when test="starts-with(., 'UP-PAMS')">0bb1f14e-e71b-55f4-8678-a7efd1a9e392</xsl:when> <!-- Unmapped (UP-PAMS)-->
        <xsl:when test=".='UP-PAT DOC-INTL'">a6254287-1697-5e3f-a1ae-c1d82f60f0a1</xsl:when>
        <xsl:when test=".='UP-PAT DOC-US'">a4ea3aad-383f-526c-abae-7a2f5a9f5651</xsl:when>
        <xsl:when test=".='UP-PAT FOLIO-BU'">63d7949f-f983-5211-9803-627f615bb19c</xsl:when>
        <xsl:when test=".='UP-PAT FOLIO-ED'">6a005463-8451-5447-985b-78e79894522a</xsl:when>
        <xsl:when test=".='UP-PAT FOLIO-IN'">ad776fa2-c0e7-5e43-9ae8-577e5328cd1a</xsl:when>
        <xsl:when test=".='UP-PAT FOLIO-LS'">749a36f3-cccc-5a41-84ac-d88f8a067faf</xsl:when>
        <xsl:when test=".='UP-PAT FOLIO-SS'">8db4bbf2-f840-51e1-8acd-589c6703df42</xsl:when>
        <xsl:when test=".='UP-PAT FOLIO-US'">83938774-406d-5d7c-9f3f-c26d01572047</xsl:when>
        <xsl:when test=".='UP-PAT JUVBIGBOOK'">e8cf0a8b-5ec6-5b2a-8e18-00b7c12e2451</xsl:when>
        <xsl:when test=".='UP-PAT MINISCO'">7313ae4f-dcdf-5e5f-b6ee-d0b37f0680fb</xsl:when>
        <xsl:when test=".='UP-PAT NEWBOOK-SS'">1754aebf-c5be-5317-82f7-b496cb114ea4</xsl:when>
        <xsl:when test=".='UP-PAT OVERSIZEBU'">c109d26d-5798-50aa-a322-e5737b46c855</xsl:when>
        <xsl:when test=".='UP-PAT OVERSIZEED'">b9953f57-ea8a-5911-8625-033e845ebead</xsl:when>
        <xsl:when test=".='UP-PAT OVERSIZEIN'">60d43a4c-29bb-5fd5-b6b4-2f27c2d26379</xsl:when>
        <xsl:when test=".='UP-PAT OVERSIZELS'">62ffe657-579f-5c60-ac3c-ef80c696b239</xsl:when>
        <xsl:when test=".='UP-PAT OVERSIZEPA'">8d3a03f4-33bd-5166-b588-eba0c02629da</xsl:when>
        <xsl:when test=".='UP-PAT OVERSIZESS'">392310c8-ab53-5d22-80bf-57009b47f194</xsl:when>
        <xsl:when test=".='UP-PAT OVERSIZEUS'">6ddca277-2869-5a15-a241-b9f40cb529fd</xsl:when>
        <xsl:when test=".='UP-PAT PATERNO-2'">0c914178-eaaa-558c-9628-184c58638e93</xsl:when>
        <xsl:when test=".='UP-PAT PATERNO-3'">ac7e77c4-7543-549c-b20e-f36e522bff8d</xsl:when>
        <xsl:when test=".='UP-PAT PATERNO-4'">97c8ebd3-2cfc-5dcb-b678-f3a04d58658e</xsl:when>
        <xsl:when test=".='UP-PAT PATERNO-5'">ec92d3c0-0ec2-5c93-b4ce-04ecaf5f7025</xsl:when>
        <xsl:when test=".='UP-PAT PAT-RDG-RM'">2d94af3e-b0fe-5bcd-a819-9940394d924f</xsl:when>
        <xsl:when test=".='UP-PAT PATTEE-1'">5fd35022-c49c-58a9-a665-e249cbc16922</xsl:when>
        <xsl:when test=".='UP-PAT PATTEE-1A'">b4b9ad7e-2539-576f-928f-de9cd07625b8</xsl:when>
        <xsl:when test=".='UP-PAT PATTEE-2'">a60e0bad-5e11-563f-881e-ae49518d0210</xsl:when>
        <xsl:when test=".='UP-PAT PATTEE-2A'">113bf905-8c87-5dda-b622-746d10e68fa5</xsl:when>
        <xsl:when test=".='UP-PAT PATTEE-3'">b80ed434-6cfa-5237-b885-1b8bec3443f1</xsl:when>
        <xsl:when test=".='UP-PAT PATTEE-B'">83f849bc-c8bd-5642-a474-f23985a735cf</xsl:when>
        <xsl:when test=".='UP-PAT PATTEE-BA'">09efbb7c-a1b7-52ff-a357-bda90bfed7b3</xsl:when>
        <xsl:when test=".='UP-PAT PATTEE-W1'">ea7a7908-24bd-558f-ac57-7d39eea735a5</xsl:when>
        <xsl:when test=".='UP-PAT PATTEE-W2'">f9587e42-d1a5-5698-bdf6-72bdf031a516</xsl:when>
        <xsl:when test=".='UP-PAT PATTEE-W2F'">746c785e-5520-527a-b7cb-bdaed94c92c9</xsl:when>
        <xsl:when test=".='UP-PAT PATTEE-W3'">9e7054df-a270-57dc-9436-aec5a7d169be</xsl:when>
        <xsl:when test="starts-with(., 'UP-PAT')">7407e910-19ca-5694-9a4a-bc078f018b77</xsl:when> <!-- Unmapped (UP-PAT)-->
        <xsl:when test=".='WILKESBAR OVERSIZEWB'">360cf219-4edb-57e1-9881-8ba163859a26</xsl:when>
        <xsl:when test=".='WILKESBAR PENNSYLVAN'">5f6fa378-44d2-5bc4-9d27-112713336c56</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-AA'">a1e75321-5645-5d4a-b2e9-899f729b8889</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-AB'">8da55267-ceea-5707-9dce-86c566398d3a</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-BD'">9092c388-9516-55c5-abe3-3b311f5ce497</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-BK'">79bc7d6d-0a12-5241-b6bf-18f2dd9d08fa</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-BR'">45f133a2-a880-55c4-92d1-e606c812c805</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-DE'">26330c98-0da8-50cb-9c63-b9583cb2804c</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-DS'">ef189b8e-a29b-5beb-b3f4-b5b89b2ac59e</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-FE'">8bbe832c-663d-5441-a43f-0024ae2c1403</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-HB2'">d19b5791-959a-5c95-b615-bb20bbf255d7</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-HB3'">e57b74e9-847b-5327-90fb-d8bbdae85034</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-HN'">547acf35-fca1-5043-9d4e-86c699bfd9ef</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-LV2'">930b09a0-8d9c-53e6-b99b-24b4ae02658b</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-MA'">b239ecaf-2231-563d-9fff-35dc64fc4412</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-MK'">123b5d35-04af-5b99-b9c9-15b3cc96581b</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-NK'">e0038813-03a2-5d44-8990-80dc0de8d383</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-SL'">4fffd230-ccba-5c51-8209-3ee06482fb38</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-SV'">f9aeead6-2b02-5aa9-b340-dfbb12fcb84b</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-WB'">b51d0b9c-c93e-5339-9714-5c0d0ce6dc3c</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-WS'">f05ba6aa-2679-570f-86d9-2290bf26b7ab</xsl:when>
        <xsl:when test=".='WILKESBAR STACKS-YK'">d132a3b9-a5cc-5191-909c-984c8ed2ed1a</xsl:when>
        <xsl:when test="starts-with(., 'WILKESBAR')">4dff5ae6-7d1d-5889-b2b3-b657c3b5d614</xsl:when> <!-- Unmapped (WILKESBAR)-->
        <xsl:when test=".='WSCRANTON ARCHIVE-WS'">451a2874-23be-5711-a805-72e86dcf0f18</xsl:when>
        <xsl:when test=".='WSCRANTON ATLASES-WS'">de2bdce4-df45-5273-890d-bad7b7f7931b</xsl:when>
        <xsl:when test=".='WSCRANTON MAPS-WS'">f65c0e4c-d181-595a-9126-002a68d576ec</xsl:when>
        <xsl:when test=".='WSCRANTON SPECCOL-WS'">b3130d8a-53fb-5b15-94fb-71af2fb9b624</xsl:when>
        <xsl:when test=".='WSCRANTON OVERSIZEWS'">ec0ddafc-e86c-51ba-9831-0a825e16d6cd</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-AA'">924f7ff2-1ddc-5afb-ac13-5a7ef9bcdec4</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-AB'">e2f7dfff-1ac9-5d87-8d32-9db5f3eaee00</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-BD'">3f31f7da-a2a8-5630-b8f4-2a2324bf140f</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-BK'">48bed5cb-b4fb-5a95-9f25-67683e5f0bea</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-BR'">70cace5e-e763-545c-8f4f-0bad4e8b71c2</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-DE'">606e1bfd-7ebd-5248-b262-edd3df49bc48</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-DS'">ca11537d-d697-525f-a9a9-f643d75d46fa</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-FE'">0c4d33d9-b0e8-576f-98ba-b87d4104cc49</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-HB2'">74d78b1d-e994-54d8-8f18-5fe60e372c44</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-HB3'">d250831d-1fab-564d-9e45-5ea5b92d7724</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-HN'">d40ce565-c131-5c99-921b-2b9f1869cbd4</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-LV2'">880b55a9-d8bc-5b1b-b264-a8271bab73c6</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-MA'">f15474e7-519c-5c36-9995-687bc922b77a</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-MK'">945aa640-9e01-54ff-87e6-04cfd239ed66</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-NK'">9ae3f38e-4457-59ec-943a-0f1a244c7cc5</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-SL'">6180e398-f099-5e9e-850b-b41b5ba65ae1</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-SV'">8c5278c1-537b-5883-be27-b05ac143a75d</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-WB'">e5711614-7a1b-5d41-bf69-61a66b257280</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-WS'">28a26540-2327-50c8-ac2e-53c19ad0e1d5</xsl:when>
        <xsl:when test=".='WSCRANTON STACKS-YK'">ed4a24e5-5db4-5dea-a534-baae579373a0</xsl:when>
        <xsl:when test="starts-with(., 'WSCRANTON')">7894c32e-c3ef-5012-946e-f84bb57138e9</xsl:when> <!-- Unmapped (WSCRANTON)-->
        <xsl:when test=".='YORK MEDIA-YK'">1c80759d-431e-5b67-9262-645b488f4dd3</xsl:when>
        <xsl:when test=".='YORK STACKS-AA'">2c39eccd-321b-5713-828a-452384a8e5f8</xsl:when>
        <xsl:when test=".='YORK STACKS-AB'">57adf88c-a05a-56fd-9d31-a97e625a6d97</xsl:when>
        <xsl:when test=".='YORK STACKS-BD'">7d92a279-1300-5047-a6ab-a9383f5c083b</xsl:when>
        <xsl:when test=".='YORK STACKS-BK'">5e1a94b9-5010-5cac-bce1-a288203c0444</xsl:when>
        <xsl:when test=".='YORK STACKS-BR'">05f89f4d-e1cc-58ed-a82e-546891b17c90</xsl:when>
        <xsl:when test=".='YORK STACKS-DE'">00c9c7e1-2873-5958-89ca-028b147725b2</xsl:when>
        <xsl:when test=".='YORK STACKS-DS'">7d4606bd-f319-53f3-9a1a-dba39481a509</xsl:when>
        <xsl:when test=".='YORK STACKS-FE'">9a6d9337-7733-5543-a355-146b2931ab91</xsl:when>
        <xsl:when test=".='YORK STACKS-HB2'">7da0464a-2a71-53f1-9769-50566b3d9464</xsl:when>
        <xsl:when test=".='YORK STACKS-HB3'">5e1a3275-c324-5cf8-abde-7911c271ffb8</xsl:when>
        <xsl:when test=".='YORK STACKS-HN'">b4da413a-631d-5e55-bc27-f3a2cc91eb2d</xsl:when>
        <xsl:when test=".='YORK STACKS-LV2'">d3d2eb94-91e2-5e14-9537-ed2e33386cfe</xsl:when>
        <xsl:when test=".='YORK STACKS-MA'">ef2fe6c4-7875-5fb3-b97f-8e10691d9550</xsl:when>
        <xsl:when test=".='YORK STACKS-MK'">25268f15-7030-5e41-837e-757bb4a38937</xsl:when>
        <xsl:when test=".='YORK STACKS-NK'">1090ea72-c4b7-55ec-a851-af858120de29</xsl:when>
        <xsl:when test=".='YORK STACKS-SL'">5e1e79b3-140c-5641-9837-017eb08c40b6</xsl:when>
        <xsl:when test=".='YORK STACKS-SV'">e17e7b44-312e-5be7-a8f4-c6978138980a</xsl:when>
        <xsl:when test=".='YORK STACKS-WB'">28c26427-2f75-53b3-97b7-b3037d04d8cd</xsl:when>
        <xsl:when test=".='YORK STACKS-WS'">83658aae-1ff2-52f1-98b8-91e9c3cb421d</xsl:when>
        <xsl:when test=".='YORK STACKS-YK'">cce79a82-1457-5da1-85c8-31949e9f38a8</xsl:when>
        <xsl:when test=".='YORK SWARTZ'">c390e919-0682-53c8-a0e4-840228388447</xsl:when>
        <xsl:when test=".='YORK SWARTZ-MID'">aee03d97-ba92-5745-825d-1df0ee10aa99</xsl:when>
        <xsl:when test=".='YORK SWARTZ-PIC'">0b9954d6-724d-5e61-8c48-21ab30c7e5b2</xsl:when>
        <xsl:when test=".='YORK SWARTZ-YA'">be2ff83b-ee1a-5d1d-85a2-1276e527c0bd</xsl:when>
        <xsl:otherwise>18c9a27a-0d95-5f7b-a58d-48281f16a28a</xsl:otherwise> <!-- Unmapped (YORK) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>51553a3c-c31d-5102-93b7-fce0bc9d4925</institutionId>
  </xsl:template>

</xsl:stylesheet>
