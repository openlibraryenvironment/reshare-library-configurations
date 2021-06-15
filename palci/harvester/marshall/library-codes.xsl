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
    <identifierTypeId>21e2837b-7fc0-58f8-be29-5d707bab39c6</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='Cl'">0d50b5a4-bd77-511f-9bba-39c72b72b2d1</xsl:when>
        <xsl:when test=".='Clg'">cc94c08b-0625-5b48-b7d8-9f7d666ecad7</xsl:when>
        <xsl:when test="starts-with(., 'cl')">590a1e75-e654-5166-8229-1c1898eeb96b</xsl:when> <!-- Unmapped (CL)-->
        <xsl:when test=".='Cmd'">a7689cf6-9df9-5835-92a5-01a06d8654ba</xsl:when>
        <xsl:when test="starts-with(., 'Cmd')">ff36d539-b301-5462-b813-2924e4a84418</xsl:when> <!-- Unmapped (CMD)-->
        <xsl:when test=".='Dr'">836a4263-d709-59c6-a539-b75fe527c19f</xsl:when>
        <xsl:when test=".='drapp'">ba71ab03-9050-5928-a83b-65f17250f653</xsl:when>
        <xsl:when test=".='drcd'">e62e0309-e46a-5959-ad7f-c5ddf539402a</xsl:when>
        <xsl:when test=".='drco'">895b69c2-8b57-54a6-ad89-5634507b9a19</xsl:when>
        <xsl:when test=".='drd'">e05bde60-fba1-5f9a-9a8e-e299d3ffe8f2</xsl:when>
        <xsl:when test=".='drg'">30072359-e25d-5e1a-b3b5-9205e5795178</xsl:when>
        <xsl:when test=".='drgn'">cb9f4cbb-4d2e-5f35-90d5-3b7b27acb360</xsl:when>
        <xsl:when test=".='drj'">fe2e8178-5823-52a5-b6f2-a93e90448e94</xsl:when>
        <xsl:when test=".='drm'">5b02e3c9-db23-5d60-89ef-062f4a031934</xsl:when>
        <xsl:when test=".='drmb'">e2001b86-6bde-5be7-a768-58a6e5efe791</xsl:when>
        <xsl:when test=".='drmfo'">5ae5cfe6-63bd-5567-85c9-861b4a3ec459</xsl:when>
        <xsl:when test=".='drmm'">ded1eaf4-bf89-586f-9311-2b2a30d86256</xsl:when>
        <xsl:when test=".='drmrf'">46917120-7083-59d5-8d9b-9106f62fb80a</xsl:when>
        <xsl:when test=".='drmvc'">eb1f4a1e-88a4-5218-85b7-1f97c9dd9182</xsl:when>
        <xsl:when test=".='drn'">37dcdf3d-e415-540b-b364-0fbb5b90065b</xsl:when>
        <xsl:when test=".='drp'">e7ff6a8c-f916-5daa-b62f-24f1f9377355</xsl:when>
        <xsl:when test=".='drpop'">8a39cf4c-e03d-5f13-9525-2ad3e2d6821b</xsl:when>
        <xsl:when test=".='drr'">a61b89f0-ccc1-5d2c-9652-18415a5a5314</xsl:when>
        <xsl:when test=".='drrf'">a8b39782-bf9d-5382-a2be-00700bd175c3</xsl:when>
        <xsl:when test=".='drrfa'">55b33969-4c78-5d40-9dc0-efca760e6854</xsl:when>
        <xsl:when test=".='drrfb'">9146fc49-391d-5f2c-93ed-c54bbb8decb2</xsl:when>
        <xsl:when test=".='drrfd'">ad733ca3-2da9-5869-81f4-e9ae4de8e455</xsl:when>
        <xsl:when test=".='drro'">02a39c70-576d-5f4d-bfec-8c106865f95f</xsl:when>
        <xsl:when test=".='drsc'">db5928dc-aa95-5693-a317-280e20ea2639</xsl:when>
        <xsl:when test=".='drsel'">9a177fc1-aa24-5f68-b1a8-cb69d5b9a128</xsl:when>
        <xsl:when test=".='drt'">217bdcdf-63ef-5b7f-8983-ab5457796ed4</xsl:when>
        <xsl:when test=".='drts'">d71e0c38-d519-5965-839f-79c53cd8ac8d</xsl:when>
        <xsl:when test=".='drva'">275dc195-bca4-54f2-b012-e970c8d84460</xsl:when>
        <xsl:when test="starts-with(., 'dr')">8997f0fe-0626-5b9f-885d-70148b698261</xsl:when> <!-- Unmapped (DR)-->
        <xsl:when test=".='gc'">d14eb48e-63ce-58e2-a220-543a4f03d913</xsl:when>
        <xsl:when test=".='gcg'">c7fb02b1-3cdc-5a86-8b04-3ec3766c451c</xsl:when>
        <xsl:when test=".='gcp'">fa808f35-19f7-549c-92fb-996309fddf9d</xsl:when>
        <xsl:when test=".='gcr'">640f45a1-3d26-5625-83ac-4acd744cdbdf</xsl:when>
        <xsl:when test=".='gcrf  '">2de65d44-48c2-50a6-98f4-5e7a50760dd5</xsl:when>
        <xsl:when test=".='gct'">68838943-e9ab-596a-82b5-34f75a2b7ecd</xsl:when>
        <xsl:when test="starts-with(., 'gc')">f0e2b9c0-494f-52c3-b56a-852e82efcb28</xsl:when> <!-- Unmapped (GC)-->
        <xsl:when test=".='hs'">cb1b9cb5-db03-5afc-8515-8b915b239def</xsl:when>
        <xsl:when test=".='hsav'">321dd7d1-75c9-5bb3-b65b-af560e0660c2</xsl:when>
        <xsl:when test=".='hse'">045cce0f-7055-5e03-b753-f39b689e20c7</xsl:when>
        <xsl:when test=".='hsf'">e6c4c4fa-3cf9-5408-a772-73aaa37dff12</xsl:when>
        <xsl:when test=".='hsg'">7a2ed357-e1c6-5dee-a29e-bc7750237e62</xsl:when>
        <xsl:when test=".='hsort'">263e1617-15fe-5d3c-bde5-a37954b6cfae</xsl:when>
        <xsl:when test=".='hsp'">d30122fd-4a66-5116-8222-ce6b2922cdac</xsl:when>
        <xsl:when test=".='hsr'">8c234ed8-c9e9-5667-b00a-55ffa953f645</xsl:when>
        <xsl:when test=".='hsrf'">84986c74-d882-59ba-a6ff-1ca5ceeccae6</xsl:when>
        <xsl:when test="starts-with(., 'hs')">a09e3645-7a6d-5efa-948b-8664a05d377c</xsl:when> <!-- Unmapped (HSL)-->
        <xsl:when test=".='vamcr'">46ec0157-fd1a-53cd-b2bb-eb6142346d5a</xsl:when>
        <xsl:when test="starts-with(., 'vam')">6341f47e-d3b7-5666-89ac-696179046404</xsl:when> <!-- Unmapped (MEB)-->
        <xsl:when test=".='gd'">0aed9272-206a-56e7-8df3-a1f9fa8c91d1</xsl:when>
        <xsl:when test=".='gdf'">58a45b74-df45-50ec-ad3b-24c054475434</xsl:when>
        <xsl:when test=".='gdg'">3bf8aab2-c7c8-5a3b-9e11-20c6eab96ec0</xsl:when>
        <xsl:when test=".='gdrf'">0f9a75e9-c0c0-52a4-9a04-3dad611d722e</xsl:when>
        <xsl:when test=".='mdsto'">523e2129-63f5-5a2d-8417-bde99cf90971</xsl:when>
        <xsl:when test=".='mmlp'">432154b4-4076-5ecd-a605-cd4314e45e85</xsl:when>
        <xsl:when test=".='mmvc'">57080d30-fc6c-5cf6-a60c-32521bcd716c</xsl:when>
        <xsl:when test=".='mog'">7f9b56cd-97ee-54b5-b0e8-e80f4df21260</xsl:when>
        <xsl:when test=".='ms'">0cfb52cb-9c76-50ac-ab1e-b3779874c768</xsl:when>
        <xsl:when test=".='msf'">e63f8d10-32dc-5484-84ac-00ce063fc275</xsl:when>
        <xsl:when test=".='msg'">fe23cb32-7952-5a05-b8ff-f0e68cafb11b</xsl:when>
        <xsl:when test=".='msop'">c3f50905-e72c-5091-9c1d-3d0e48a7685f</xsl:when>
        <xsl:when test=".='msp'">3e156849-7027-54f9-b7b9-b363add5db50</xsl:when>
        <xsl:when test=".='onl'">62657f9c-db9d-552a-b2a9-6e498a4fff89</xsl:when>
        <xsl:when test=".='sc'">97bd7e48-519c-5d33-a8ce-856e1532ff7c</xsl:when>
        <xsl:when test=".='sca'">7111197d-fe26-53e5-b90b-e08cb86ac2e3</xsl:when>
        <xsl:when test=".='scb'">93765a2f-dfda-5470-b095-c38666ab26d1</xsl:when>
        <xsl:when test=".='scg'">f20939af-e288-523c-a126-0bfff4b8b223</xsl:when>
        <xsl:when test=".='scgh'">4c4fa8a8-d7f7-55e7-8161-f7a8bcabf2ca</xsl:when>
        <xsl:when test=".='sch'">edaf2248-87b9-56c3-8385-88f6b9817520</xsl:when>
        <xsl:when test=".='scka'">de8adbd7-afb7-5c7e-9dd2-e0dcac4ff3c9</xsl:when>
        <xsl:when test=".='scm'">c8214556-04b2-5220-8791-d6c352123ab6</xsl:when>
        <xsl:when test=".='sco'">25a5dded-189d-5df6-9668-08c95641305f</xsl:when>
        <xsl:when test=".='scp'">00157293-3823-5c74-92c7-79f85d9e5de2</xsl:when>
        <xsl:when test=".='scr'">d30cfa38-1bb8-5ab6-9426-a184a4b82bd0</xsl:when>
        <xsl:when test=".='scref'">027b8203-6050-573e-83b1-2164b7329e9b</xsl:when>
        <xsl:when test=".='scsc'">5ce6a1f6-f0c0-5937-b0be-9d4a97881acf</xsl:when>
        <xsl:when test=".='scsh'">837dc4ee-c547-5eda-a337-b945e0d9e306</xsl:when>
        <xsl:when test=".='scwv'">15bcded2-3994-5623-a22d-a7aca4fea954</xsl:when>
        <xsl:when test=".='scwvd'">fc8dee90-925f-5866-b9c4-44e23361d436</xsl:when>
        <xsl:when test=".='ursa'">311d5b54-26a5-5a31-ac9d-641743e0c3c1</xsl:when>
        <xsl:when test=".='vac'">971d8371-6e18-5b18-9367-589ddd9dc251</xsl:when>
        <xsl:otherwise>51dd9f34-96a4-55fe-b032-f53c37753a38</xsl:otherwise> <!-- Unmapped (MOR) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>b581e6c0-2485-5683-975e-35d16d22654c</institutionId>
  </xsl:template>

</xsl:stylesheet>
