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
    <identifierTypeId>2654f974-00d6-5b3a-91e3-9782c872176b</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='birnc'">4c89c9b7-7df8-535a-8579-2b301a014982</xsl:when>
        <xsl:when test=".='birnf'">081bce34-7f75-5b90-aba4-080d04d2a00a</xsl:when>
        <xsl:when test=".='bmain'">38f3fe61-400c-5a22-93b8-45c8eb484f97</xsl:when>
        <xsl:when test=".='mcirc'">b1582c18-f97d-5157-ab74-5cca30252216</xsl:when>
        <xsl:when test=".='mcres'">1abcd3d9-b79c-5c2c-8e5f-83158194a207</xsl:when>
        <xsl:when test=".='mllm'">2c2f1daa-4649-501a-8ccd-0d39c265c781</xsl:when>
        <xsl:when test=".='mort'">c961a7a6-925e-54f9-b361-99516bfa0a04</xsl:when>
        <xsl:when test=".='mainm'">cc3380b9-86ed-508c-a12d-a86cf8774bbb</xsl:when>
        <xsl:when test=".='lawl'">0a145377-26bb-5eab-8d8e-9a7c2c2a715c</xsl:when>
        <xsl:when test=".='9adel'">a7295b80-74b7-51e9-80fa-b22fdf96af54</xsl:when>
        <xsl:when test=".='9bard'">d47f36b9-78ea-5a6c-8173-c6e31b4a90e3</xsl:when>
        <xsl:when test=".='9bate'">bd22b319-0985-52f7-bf94-825e79454b3a</xsl:when>
        <xsl:when test=".='9bowd'">fa34a9ec-29a4-5b39-8da8-c30e55fd6aba</xsl:when>
        <xsl:when test=".='9cani'">18defe6c-5cac-59d8-8786-93210412b21b</xsl:when>
        <xsl:when test=".='9caze'">c4dda62e-b1ee-51bd-9a4e-68a87991262b</xsl:when>
        <xsl:when test=".='9cbbc'">66dc1cce-e9d0-5940-b08f-f111efe091f6</xsl:when>
        <xsl:when test=".='9colb'">9a1ecaa8-6425-56f0-be32-3a0c704ab238</xsl:when>
        <xsl:when test=".='9colg'">2332328a-33c4-52d6-8d46-ec61d8e49a8f</xsl:when>
        <xsl:when test=".='9lemo'">f2d86843-fb89-531f-9ed4-84347a8aa799</xsl:when>
        <xsl:when test=".='9mari'">f3fdbd1d-b855-5eb9-a4c0-86e030bae198</xsl:when>
        <xsl:when test=".='9mbry'">3c8754d1-83a2-521d-a1fe-acd66a83c1a0</xsl:when>
        <xsl:when test=".='9meda'">48f36314-26fa-5bb3-8d13-471e2d94a70b</xsl:when>
        <xsl:when test=".='9nyhc'">54af820d-6ca8-5fa9-afbe-5567c95aaa70</xsl:when>
        <xsl:when test=".='9nyhw'">19d66b4a-4382-5ed7-a0eb-6339e3900da8</xsl:when>
        <xsl:when test=".='9nysc'">bc5c5f60-6c84-5be3-934e-5a5b352d3816</xsl:when>
        <xsl:when test=".='9pace'">aae5e0a3-5470-51ce-a9ff-85ac55bada5f</xsl:when>
        <xsl:when test=".='9prat'">4870aa5b-a327-50ed-9540-59c00d4fd7ec</xsl:when>
        <xsl:when test=".='9ritu'">f7b25f14-4128-5a62-b9bb-1c3cf13f28a3</xsl:when>
        <xsl:when test=".='9rpiu'">fee29b39-2015-5da1-80a8-6dce76018356</xsl:when>
        <xsl:when test=".='9sien'">de592574-f3ac-5ebe-8413-e9ad22ee8ecb</xsl:when>
        <xsl:when test=".='9stlu'">4e306bbb-b2a8-5ce4-970e-bd54f828af4e</xsl:when>
        <xsl:when test=".='9unio'">3c68b2c0-981c-5848-8c39-2b5498cb4435</xsl:when>
        <xsl:when test=".='9usma'">c70c00e1-b26b-53fb-9939-ba94e5c51513</xsl:when>
        <xsl:when test=".='9usmm'">b90a739d-b6aa-5402-b993-13d4c947a749</xsl:when>
        <xsl:when test=".='9vass'">822bd450-e91c-55de-a07b-b0bc822c0070</xsl:when>
        <xsl:when test=".='9well'">ab11c873-4774-5557-9d13-bb19816fc98b</xsl:when>
        <xsl:when test=".='9will'">7aa647c5-2e5d-5eae-8e58-1d5e242fd63d</xsl:when>
        <xsl:when test=".='arcvi'">b12024ae-7cee-5ab3-8610-53cd56b186fd</xsl:when>
        <xsl:when test=".='artb'">4546c3ef-d1ac-550d-90cb-61161dac539d</xsl:when>
        <xsl:when test=".='bcsd'">6579751d-a7ba-55e9-8329-f2bcd4b88f9e</xsl:when>
        <xsl:when test=".='bircc'">b1b057e3-371d-5e6b-bc69-03da74d8bcfb</xsl:when>
        <xsl:when test=".='birlc'">757a781a-c431-5561-8e0d-ed38ae646528</xsl:when>
        <xsl:when test=".='birno'">6af456c7-484c-5207-a305-7e4e17a8d6f7</xsl:when>
        <xsl:when test=".='birra'">837e54f3-b873-5c8a-a8f9-8084d9fc422d</xsl:when>
        <xsl:when test=".='birrc'">90e1ba58-ddf4-51fb-8f2f-a52c11dfc8df</xsl:when>
        <xsl:when test=".='birrd'">d596209b-59b7-572d-9df1-1437e1b38081</xsl:when>
        <xsl:when test=".='birrf'">c3aed164-c7b2-57d5-80f6-48ca08112a36</xsl:when>
        <xsl:when test=".='birri'">d176d3e5-2102-593e-a7f9-d27c9f7a91a0</xsl:when>
        <xsl:when test=".='birro'">6e26d729-6b6c-54a5-92bc-bd0f94e8e03e</xsl:when>
        <xsl:when test=".='bper'">3d646f78-5743-5883-a5c5-fc8097f73ece</xsl:when>
        <xsl:when test=".='brare'">b56ebe21-36a8-5f04-bfee-b4c6150e92e1</xsl:when>
        <xsl:when test=".='bsys'">1f45724d-f84c-507e-8a5a-3c89c2d00438</xsl:when>
        <xsl:when test=".='cr0zz'">369e55e4-fe91-5761-b80b-918f373b1da6</xsl:when>
        <xsl:when test=".='ill'">dedf66af-6b2d-51e2-872c-e66dad00be1f</xsl:when>
        <xsl:when test=".='lawap'">134fcb78-f14c-5f43-bd9e-0b8869fba23e</xsl:when>
        <xsl:when test=".='lawar'">a15445de-fd96-52ec-b368-d837e34d70f6</xsl:when>
        <xsl:when test=".='lawas'">42510e32-6021-5ccd-abd6-e32f50cb00d5</xsl:when>
        <xsl:when test=".='lawav'">1ef69549-8170-57a8-b28b-b2667595acd7</xsl:when>
        <xsl:when test=".='lawc2'">b9ed83a3-e48e-55e4-b22a-b28603e82785</xsl:when>
        <xsl:when test=".='lawc3'">a8b052ae-634c-5042-a664-271fdb6eecb0</xsl:when>
        <xsl:when test=".='lawc4'">e5f2b3c9-90d3-57c7-ad38-a3688e201c03</xsl:when>
        <xsl:when test=".='lawc5'">8b8151df-a577-55f6-9059-0f82dc78eef8</xsl:when>
        <xsl:when test=".='lawcr'">2c308f93-ec5a-5d76-ba39-a64d8d00b22e</xsl:when>
        <xsl:when test=".='lawet'">e3e61a5f-35ee-50be-b760-ec461d6d22a8</xsl:when>
        <xsl:when test=".='lawfa'">a3f9e5f1-69b5-519a-a3c7-5868265d0dd0</xsl:when>
        <xsl:when test=".='lawfc'">9a7cf6f1-1113-5beb-8e13-1be65d1646f7</xsl:when>
        <xsl:when test=".='lawh'">97e3fd54-2a2e-5a52-97e6-b6bef02a409b</xsl:when>
        <xsl:when test=".='lawhp'">614df862-50d4-54b6-988a-d19395a044de</xsl:when>
        <xsl:when test=".='lawmc'">31ef95af-6e0f-5b4c-8980-335f82e5517f</xsl:when>
        <xsl:when test=".='lawmf'">6b663a1e-4236-5268-9a36-cad03f788cb7</xsl:when>
        <xsl:when test=".='lawnt'">bc540ede-477f-5e08-b12e-4a882d850327</xsl:when>
        <xsl:when test=".='lawpr'">a5192680-be84-56ab-9499-1f6e791b732f</xsl:when>
        <xsl:when test=".='lawrb'">8ae2c1d9-3119-5809-9cd9-1b635cd760ee</xsl:when>
        <xsl:when test=".='lawso'">dcd2254f-e9c4-5aa7-94c7-3510b1f73b8a</xsl:when>
        <xsl:when test=".='libel'">93142ab8-54a2-513a-b5d8-4dbcb311f101</xsl:when>
        <xsl:when test=".='llm'">36a83e2f-ab50-5f04-8dc1-bc9f2d8f32e0</xsl:when>
        <xsl:when test=".='ma-v'">c5e16444-01a1-5867-8bc4-d03311c58953</xsl:when>
        <xsl:when test=".='mav'">7a78923b-40ef-5ecd-9f36-ef3ab84bddf0</xsl:when>
        <xsl:when test=".='mdell'">dbcdd360-b619-5160-b483-c609050682ef</xsl:when>
        <xsl:when test=".='mdubo'">260b4606-a050-591e-a687-3d1c3b41eac5</xsl:when>
        <xsl:when test=".='micrm'">d73ef7ba-b18c-5bc9-a620-4e381b64996f</xsl:when>
        <xsl:when test=".='mlock'">6780f8e9-6549-5a90-a3b2-7044084998cd</xsl:when>
        <xsl:when test=".='mper'">7c6b15a7-8113-5854-b136-f792034f1626</xsl:when>
        <xsl:when test=".='munid'">712a1cb6-83fd-5b7f-8b9c-2ee0a8dede55</xsl:when>
        <xsl:when test=".='mush'">6c628c32-a68d-50d2-ae48-c112204b404a</xsl:when>
        <xsl:when test=".='perm'">5a70ead6-a51f-5605-a867-c8d71d426c53</xsl:when>
        <xsl:when test=".='rbanx'">0be95b27-491b-5540-b5c3-70f1370e6df9</xsl:when>
        <xsl:when test=".='refb'">ebedaa67-7d1f-5d6a-9bc9-100e1604fc12</xsl:when>
        <xsl:when test=".='refl'">8dc441d4-d24c-58da-8812-94ca4a7c6cfd</xsl:when>
        <xsl:when test=".='reflm'">08abe844-ecbd-5e0e-aecd-3c7cb8eddba5</xsl:when>
        <xsl:when test=".='refm'">6f394202-01c7-5dfc-936c-e3f100b105c9</xsl:when>
        <xsl:when test=".='refma'">d2c43959-173f-59e3-a4b1-54ed6603f98d</xsl:when>
        <xsl:when test=".='refmr'">2a330493-9ab3-5209-a813-434aa3e7ee00</xsl:when>
        <xsl:when test=".='resb'">a038283f-928e-5266-ba74-e7f8b7fdfd1c</xsl:when>
        <xsl:when test=".='resbr'">a0f06009-3c6e-5706-b26f-e7f549ce0aa1</xsl:when>
        <xsl:when test=".='resl'">78405d1e-9ae8-5576-9a29-d85f76ad3294</xsl:when>
        <xsl:when test=".='reslp'">b26e58c2-2ce1-5791-9c8d-dace50b5ace0</xsl:when>
        <xsl:when test=".='reslr'">f6fa8907-d66f-5306-bff5-7f880023a711</xsl:when>
        <xsl:when test=".='resm'">4c2d11c9-f2fc-5100-b261-a2d3e32ffdff</xsl:when>
        <xsl:when test=".='resme'">72daa433-1140-5599-8215-cdbd6c15fc9c</xsl:when>
        <xsl:when test=".='resmn'">8215c6c0-2a8a-5571-80ab-3537bb627f8e</xsl:when>
        <xsl:when test=".='resmr'">307a591d-9ae9-59f5-bc3d-ffb3c3cc9941</xsl:when>
        <xsl:when test=".='resmw'">dc062f0b-f271-562e-ba59-a78370413369</xsl:when>
        <xsl:when test=".='rlibw'">646fa41c-6c5d-50a7-af05-23eb7700a78b</xsl:when>
        <xsl:when test=".='rresm'">2bd71901-f074-5996-bb20-99e651b87df8</xsl:when>
        <xsl:when test=".='sien'">7cd19b2f-ab27-5707-b4e1-2c14c226ba45</xsl:when>
        <xsl:when test=".='unidm'">5615502f-7e5b-5da8-9fdf-c08358e2baa2</xsl:when>
        <xsl:when test=".='xxxxx'">ae31ea23-5018-5e7d-a824-b9055122d59f</xsl:when>
        <xsl:when test=".='y0100'">1a14298b-a858-5c97-889b-f6a5a6411426</xsl:when>
        <xsl:when test=".='y0101'">9ffc31f0-f632-5f9a-ace2-17ff0490d52d</xsl:when>
        <xsl:when test=".='y0110'">2e2d6130-f81b-57fe-8b1c-008913b0474a</xsl:when>
        <xsl:when test=".='y0120'">55f47388-3302-572c-afae-a2582e8f4799</xsl:when>
        <xsl:when test=".='y0140'">7c5ce758-e813-55d8-9e7c-a85d2e1e43ba</xsl:when>
        <xsl:when test=".='y0150'">a768831e-e056-59e3-a1d1-00b88c64825d</xsl:when>
        <xsl:when test=".='y0160'">caab3867-24db-5994-9091-fc9480d23172</xsl:when>
        <xsl:when test=".='y0161'">6c008181-3b46-51f2-8a21-215a5a13dca2</xsl:when>
        <xsl:when test=".='y0170'">5c200c88-cd68-582e-b27c-eccd597bc011</xsl:when>
        <xsl:when test=".='y0171'">b0dd46fb-a298-5e67-9364-89d98a32dc73</xsl:when>
        <xsl:when test=".='y0172'">4b364c41-4d85-5769-b73b-8a0204d835e3</xsl:when>
        <xsl:when test=".='y0180'">ed68e503-783e-58e1-bedd-c8fb34223847</xsl:when>
        <xsl:when test=".='y0181'">66da6d1a-2149-5d3a-89e7-0a63588ce391</xsl:when>
        <xsl:when test=".='y0190'">3d4a2dae-e15e-5d78-b1d3-60d424b1997e</xsl:when>
        <xsl:when test=".='y0200'">a5ecd238-7cd3-5c2e-85cc-11e78d7d0f3a</xsl:when>
        <xsl:when test=".='y0210'">d231e4f9-b90d-5490-8ee9-66ca91b51218</xsl:when>
        <xsl:when test=".='y0220'">8ffef7a1-524e-5c05-9b4f-3dbc744b5d80</xsl:when>
        <xsl:when test=".='y0230'">7810752f-5f3f-598c-9657-11e614335f7e</xsl:when>
        <xsl:when test=".='zzzzz'">fb43f8ee-dc24-5008-a9b4-4aba5274ce49</xsl:when>
        <xsl:otherwise>a888675d-9d86-53ca-a5b2-230caea084a1</xsl:otherwise> <!-- Unmapped (US-NNPC) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>a7a78ded-27a6-5c96-9a28-ed8d2014a96d</institutionId>
  </xsl:template>

</xsl:stylesheet>
