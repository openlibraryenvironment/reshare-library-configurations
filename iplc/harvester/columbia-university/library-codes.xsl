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
    <identifierTypeId>5fdc16f2-51a3-5939-9261-8aeeafa99c6f</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='afst'">f3662c71-8f8f-50f0-ba14-1d8a151e325f</xsl:when>
        <xsl:when test=".='ava'">2a7840a4-4f92-597d-9b05-0b3e869cbfd6</xsl:when>
        <xsl:when test=".='ave'">7a9a6cd9-c2ef-5819-984b-ccbdd8b2044d</xsl:when>
        <xsl:when test=".='avr'">b5609673-097e-5a29-8f99-49595f5721ab</xsl:when>
        <xsl:when test=".='avr4off'">946f7cf8-7ac3-507a-adfe-5b01d142ac55</xsl:when>
        <xsl:when test=".='bar'">ceea89d6-02d7-5fda-82af-cfee4b6cd52d</xsl:when>
        <xsl:when test=".='alum'">68497938-953c-5e8e-bac9-33fa763bb83a</xsl:when>
        <xsl:when test=".='bda'">3f00d30f-8053-5f3c-b5ef-3ab74e86275f</xsl:when>
        <xsl:when test=".='flip'">ef687f66-d1d7-50dc-a874-eb00ea413e8e</xsl:when>
        <xsl:when test=".='over'">89407b3d-4a0a-546b-86b2-cdab22ab3673</xsl:when>
        <xsl:when test=".='stor'">c093e9d2-753d-5aaa-8dfa-eced4a41e9fe</xsl:when>
        <xsl:when test=".='bio'">9910e8c2-6913-5980-9ac1-3ec0c16fa720</xsl:when>
        <xsl:when test=".='busn'">5610f587-d7af-575f-81e9-cdec13e427cc</xsl:when>
        <xsl:when test=".='bwc'">e5dca974-f17c-539d-84fb-0f7b89e3a861</xsl:when>
        <xsl:when test=".='che'">d9c37310-1fd4-5758-b2a9-5420710c88f6</xsl:when>
        <xsl:when test=".='clm'">27f98da5-69f2-565d-8caf-f558dc876fb5</xsl:when>
        <xsl:when test=".='comp'">1ac91505-b575-527f-a485-aab82b5bc53f</xsl:when>
        <xsl:when test=".='eal'">44609e73-8076-50e1-835c-04bfc7152d1a</xsl:when>
        <xsl:when test=".='ref'">2ff9a175-36fb-5512-b3a9-84ff3ff35dde</xsl:when>
        <xsl:when test=".='egyp'">26963723-8554-52ee-b5ce-0bbe6a533171</xsl:when>
        <xsl:when test=".='eng'">a8fb69f7-0cab-50a9-8140-0c38cdc7a5ae</xsl:when>
        <xsl:when test=".='euro'">ecf7653b-36ff-51a8-ad47-fb7cc5d12bdf</xsl:when>
        <xsl:when test=".='fax'">b8592cf7-4d07-58f8-93f1-e0e283e5f590</xsl:when>
        <xsl:when test=".='gax'">6235fea3-9e96-5255-9368-8d4fc59920ce</xsl:when>
        <xsl:when test=".='glg'">ad43bce9-aebe-555e-9c69-b799178f0b80</xsl:when>
        <xsl:when test=".='keyj'">511ab815-de5c-5063-8a99-f16fb453108d</xsl:when>
        <xsl:when test=".='glx'">9b7894a9-750c-5b06-994c-78025996d043</xsl:when>
        <xsl:when test=".='fol'">bf6d16ce-1dd0-5549-ac8f-2c81a051bd00</xsl:when>
        <xsl:when test=".='glx4off'">07c9f892-85a5-540b-8d86-556d485bbf0d</xsl:when>
        <xsl:when test=".='gnc'">0871ef9a-45c9-5985-ac48-48fb5bfc785e</xsl:when>
        <xsl:when test=".='rbka'">09424189-0112-50af-a5f1-0f0f9456f02e</xsl:when>
        <xsl:when test=".='islm'">ab7e30d5-f678-50a4-9577-6236dc4413a8</xsl:when>
        <xsl:when test=".='lata'">b1a0c1f7-bbe7-5d1c-9b58-ec1c9bebe2c0</xsl:when>
        <xsl:when test=".='leh'">93890f72-9d63-5c81-abe7-44f9a345c542</xsl:when>
        <xsl:when test=".='bdis'">d292b666-5a19-5a04-8cbf-8b951f656b5c</xsl:when>
        <xsl:when test=".='lsp'">17c81c64-e6c4-5fc4-a131-75da854ecdae</xsl:when>
        <xsl:when test=".='res'">96060985-056a-5db1-9dd5-bd3b80f06d70</xsl:when>
        <xsl:when test=".='lweb'">37510a1b-0f6a-5ad4-9e6d-ad29f30a92b5</xsl:when>
        <xsl:when test=".='manc'">404a9746-be6b-5de1-8312-baf22eed338e</xsl:when>
        <xsl:when test=".='mat'">101a88ec-5317-530e-8e89-4847d6000d47</xsl:when>
        <xsl:when test=".='ser'">9ffde63a-8f84-5fc8-8f85-f3bd246e5e88</xsl:when>
        <xsl:when test=".='mil'">838368e8-cafd-5155-972c-e9d40bf34a2e</xsl:when>
        <xsl:when test=".='stdy'">f115ca20-1149-570c-9862-d2d5e5c247ed</xsl:when>
        <xsl:when test=".='morl'">580ede67-99a7-5ec0-80ed-88a19bd0eda5</xsl:when>
        <xsl:when test=".='mrr'">2306e21e-667f-5315-b707-e64c5cd43034</xsl:when>
        <xsl:when test=".='msc'">05f263c9-edec-5178-aca1-2846db78b3c8</xsl:when>
        <xsl:when test=".='msr'">68b639ac-e2bd-5f11-801b-020e55950ac5</xsl:when>
        <xsl:when test=".='msr4off'">50e1538b-6d65-5d08-9fc4-fe20b56d5679</xsl:when>
        <xsl:when test=".='mus'">2726f852-4739-5440-b372-39e3df6abeae</xsl:when>
        <xsl:when test=".='bus'">5e9f3e2d-8f93-584a-992f-52a1f17b3821</xsl:when>
        <xsl:when test=".='dic'">809b7163-4849-5d35-a58e-a09a7b287df4</xsl:when>
        <xsl:when test=".='docs'">e10a3c24-5436-5abe-b86b-d4c80be92fe7</xsl:when>
        <xsl:when test=".='far'">fdfb8a48-05b8-5869-bcaa-6aab42af0678</xsl:when>
        <xsl:when test=".='hsl'">65024924-f4f4-5a61-a0aa-2784e824df76</xsl:when>
        <xsl:when test=".='hsr'">ad2b0815-4712-5cf2-b2fd-2ac5659c01d8</xsl:when>
        <xsl:when test=".='phy'">6b718ac9-45f9-585d-b962-457e862a3fda</xsl:when>
        <xsl:when test=".='prd'">9dff76cd-b816-50aa-9b2a-47398a7917f4</xsl:when>
        <xsl:when test=".='psy'">977da5c8-2735-5f5d-9ab9-8d00567bb1b0</xsl:when>
        <xsl:when test=".='rbx'">4de462b6-5638-5363-ae80-f72d6e6b0494</xsl:when>
        <xsl:when test=".='sci'">c692f80c-eb78-5b28-bf6f-0183fc4d9b1c</xsl:when>
        <xsl:when test=".='swx'">c329546d-bd1f-5661-9b2a-1ee6b55c4818</xsl:when>
        <xsl:when test=".='uts'">0776cd02-0b08-5eb2-b8c0-2ca0802a87d5</xsl:when>
        <xsl:when test=".='war'">341d5a1d-7aff-5755-89ed-a83759b30204</xsl:when>
        <xsl:when test=".='pap'">5603842f-3ac0-51b6-a423-e3748c63cddc</xsl:when>
        <xsl:when test=".='pat'">a4da8f0f-a26a-5b01-8870-88aea6159d58</xsl:when>
        <xsl:when test=".='atl'">1b183ac6-7f2c-5b45-a57b-0bdcc5faf19d</xsl:when>
        <xsl:when test=".='ind'">0f153ebc-e498-5032-bb0c-73cbced29d02</xsl:when>
        <xsl:when test=".='said'">a3390531-5ea0-53c8-9274-0d29d80ce451</xsl:when>
        <xsl:when test=".='sasi'">ec241097-4140-575e-b6bf-a3b3aeeb2394</xsl:when>
        <xsl:when test=".='cage'">4bd7d8d1-8ffa-508a-a066-2f39a1a5ca9b</xsl:when>
        <xsl:when test=".='tcx'">fa313302-19e4-5534-bcea-b574decbb655</xsl:when>
        <xsl:when test=".='ushi'">a1cb99d6-bbf3-5225-b66b-6e71d8c3c113</xsl:when>
        <xsl:when test=".='macxxf'">71326e0b-ca20-5efa-b0d9-1454f9addf89</xsl:when>
        <xsl:when test=".='unnr'">f16128ef-dd77-5b5c-968c-4ce04e062eba</xsl:when>
        <xsl:otherwise>fe8c2571-42e9-588b-992b-18a0441c48f1</xsl:otherwise> <!-- Unmapped (US-NNC) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>c766aa6b-3553-518e-8280-9ca862a4114b</institutionId>
  </xsl:template>

</xsl:stylesheet>
