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
    <identifierTypeId>4bf16c4e-ab72-5a36-bd2b-1c20bdf5e947</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='English 18 '">4c041164-345a-5566-82e7-326a9f3e875e</xsl:when>
        <xsl:when test=".='English 19 '">03fe4e84-35bd-5161-a3a1-6ec3d719d719</xsl:when>
        <xsl:when test=".='English 20 '">983042df-1108-5f8f-9466-9252c9eb71aa</xsl:when>
        <xsl:when test=".='European 18 '">0fdbab57-ce4a-5fe3-9e47-17474eba3398</xsl:when>
        <xsl:when test=".='GRAD '">e96c6b34-6fd6-51ec-9fca-677537d5d125</xsl:when>
        <xsl:when test=".='MAIN '">52be2d56-a904-586e-807e-a4c370b252dd</xsl:when>
        <xsl:when test=".='Manuscripts '">ff4137b2-05c2-5849-8769-daa299ed998a</xsl:when>
        <xsl:when test=".='Non-Roman -- Chinese '">f1947de4-2bb8-5fa7-9bd5-0ac7eb097086</xsl:when>
        <xsl:when test=".='Non-Roman -- Japanese'">2b7fe4ea-dbfb-500b-b186-034e6b397e29</xsl:when>
        <xsl:when test=".='Non-Roman -- Japanese '">2542e2ae-d506-5206-8c9d-e24fbd7f96c9</xsl:when>
        <xsl:when test=".='OFFAD '">966142b9-d12b-5a86-b10b-4134a578c735</xsl:when>
        <xsl:when test=".='Oversize'">ecafd082-8eac-5ef9-a71b-5d80249f23c1</xsl:when>
        <xsl:when test=".='Oversize '">a7a40a18-3c96-51ba-b75a-ee2dd920fce0</xsl:when>
        <xsl:when test=".='Pamphlets -- European 20 -- Turkish -- Box 3 '">06b87d61-56f8-5a03-8f26-ee2dfaa296b5</xsl:when>
        <xsl:when test=".='Pamphlets -- Non-Roman -- Hebrew -- Box 5 '">8fac5bf8-40e4-57ac-af46-510aa58dc978</xsl:when>
        <xsl:when test=".='Pams / NR / Chinese / Box 253 '">5c8f19b4-fb4a-5639-9f3d-3d11bdf0e319</xsl:when>
        <xsl:when test=".='Pams / NR / Japanese / Box 135 '">6c8849cf-9834-5251-b0c5-2a12d905138a</xsl:when>
        <xsl:when test=".='Pams / NR / Japanese / Box 24 '">62617a1d-4ea9-5eda-be03-94eaaa9b6ac7</xsl:when>
        <xsl:when test=".='Pams / NR / Korean / Box 3 '">e5bd681d-f60b-504c-b01a-744816082848</xsl:when>
        <xsl:when test=".='Pams / NR 20 / Arabic / Box 8 '">f3bd98e7-463d-5876-918a-c7f8af96e63d</xsl:when>
        <xsl:when test=".='Pams / NR 20 / Chinese / Box 104 '">36293a4b-b996-5605-8f17-8e781ee9923f</xsl:when>
        <xsl:when test=".='Pams / NR 20 / Chinese / Box 122 '">261120bd-c855-5ea2-a167-fd272c19974b</xsl:when>
        <xsl:when test=".='Pams / NR 20 / Chinese / Box 153 '">19e2c678-22da-529d-ac8e-37c0a7ea2c81</xsl:when>
        <xsl:when test=".='Pams / NR 20 / Chinese / Box 164 '">57598426-5ecd-5ba5-a41d-1d0d6a4e7e67</xsl:when>
        <xsl:when test=".='Pams / NR 20 / Chinese / Box 180 '">c7e5207d-7944-519c-8f40-a0a1d9244c1b</xsl:when>
        <xsl:when test=".='Pams / NR 20 / Chinese / Box 186 '">91e8e288-3a99-5e14-905c-c12a5d2f6d85</xsl:when>
        <xsl:when test=".='Pams / NR 20 / Chinese / Box 189 '">6a907973-8d87-5c2e-90aa-a643c91aa4ae</xsl:when>
        <xsl:when test=".='Pams / NR 20 / Chinese / Box 192 '">fb9a38e4-29a8-5dbe-8fb1-8785e6dccff1</xsl:when>
        <xsl:when test=".='Pams / NR 20 / Chinese / Box 208 '">acc6b586-e3ad-5f51-8ae5-e0c3bedd6c35</xsl:when>
        <xsl:when test=".='Pams / NR 20 / Chinese / Box 238 '">4ebdf427-726e-547c-a710-3e21a551692e</xsl:when>
        <xsl:when test=".='Pams / NR 20 / Chinese / Box 50 '">a27071f3-e2cb-5552-a2c1-dbc095dabf69</xsl:when>
        <xsl:when test=".='Pams / NR 20 / Chinese / Box 61 '">1a967689-4991-5b70-887f-4297ff108596</xsl:when>
        <xsl:when test=".='Pams / NR 20 / Chinese / Box 88 '">f9ccac09-891f-5f4a-87a6-c1268257173d</xsl:when>
        <xsl:when test=".='RUBLC '">f1a05bea-0253-5f0d-a073-c3bb54430d91</xsl:when>
        <xsl:when test=".='Reference '">ad849c92-3621-5823-aedb-1d82a5a3fd07</xsl:when>
        <xsl:when test=".='aas '">50765bf5-3d8a-5eae-9616-224ce9f0fa2d</xsl:when>
        <xsl:when test=".='beac '">1645fe08-11fa-54e1-90bf-75762aeeaffb</xsl:when>
        <xsl:when test=".='circ '">4390d3ef-da73-5816-9f2d-7266c3c604a0</xsl:when>
        <xsl:when test=".='cjk '">f7f2e7dc-6e2c-549c-b2c2-f869b802c5c3</xsl:when>
        <xsl:when test=".='cjkref '">f3f703ba-2d7f-55c3-99f4-614d7f9790bc</xsl:when>
        <xsl:when test=".='clas '">ad7fecba-93a2-5531-875e-b8842efa18a8</xsl:when>
        <xsl:when test=".='ctsn '">f8bb9de1-43d8-59e4-9c9c-443483d5ba16</xsl:when>
        <xsl:when test=".='dixn '">e3d37aea-c569-5c1e-82ad-0d26e775756f</xsl:when>
        <xsl:when test=".='doc '">924fce98-cbd1-534e-9300-d5ddd5293063</xsl:when>
        <xsl:when test=".='docs '">4a852df5-b72f-591f-af5b-4b522fb18c24</xsl:when>
        <xsl:when test=".='docsm '">ab0130f7-cf38-5642-9139-0d485a12eab6</xsl:when>
        <xsl:when test=".='dr '">2cab9037-91e4-57d5-9d44-ecd7b10328df</xsl:when>
        <xsl:when test=".='dss '">37d29014-6b28-58c5-b937-b5196a5ed52e</xsl:when>
        <xsl:when test=".='elf1 '">6bec45a6-a74d-50ee-a865-05b22beb73f8</xsl:when>
        <xsl:when test=".='elf3 '">1c5e208a-dcae-5d48-935a-c82d81a2e91f</xsl:when>
        <xsl:when test=".='ex '">87e3dc7c-1fdf-5256-ac04-ce48d5ed22a4</xsl:when>
        <xsl:when test=".='exb '">62ed1de6-c367-5771-b51e-38a488141bae</xsl:when>
        <xsl:when test=".='exc '">4970a82c-86ad-5d05-b7b0-461fd52a619f</xsl:when>
        <xsl:when test=".='exca '">e75d2982-8f90-54a3-ae93-4bb3ad3d4eea</xsl:when>
        <xsl:when test=".='exho '">5abcb245-218e-5136-a54d-1720a6e99316</xsl:when>
        <xsl:when test=".='exki '">08367598-2165-525b-b540-42d30d22b09a</xsl:when>
        <xsl:when test=".='exme '">98f28cb5-351d-5e33-bcc6-81e8e9639233</xsl:when>
        <xsl:when test=".='exov '">4bc2694b-c8a3-58f4-9e53-f9e52b0ea6d9</xsl:when>
        <xsl:when test=".='expa '">7f86e7a9-7e3c-562d-b20a-d717894006d8</xsl:when>
        <xsl:when test=".='exrl '">aeaf51bd-d171-5d4f-8f65-a2179d101417</xsl:when>
        <xsl:when test=".='exw '">53140caf-4c9a-5b95-817a-78c00fb9b69c</xsl:when>
        <xsl:when test=".='fac '">10be5b41-8a4f-539b-aad3-082a869cb6a2</xsl:when>
        <xsl:when test=".='facs '">0e5d8b50-1265-551c-ad33-3f4273c802c0</xsl:when>
        <xsl:when test=".='flm '">6e8fddc7-0779-58a5-a3a7-8bf7bf5adfc8</xsl:when>
        <xsl:when test=".='flmb '">e51c35cb-fbc2-5ed8-a9e3-b06a80a90993</xsl:when>
        <xsl:when test=".='fst '">28eec2a3-8641-5ce8-a504-e07647decfbc</xsl:when>
        <xsl:when test=".='ga '">99502192-4a61-55eb-83be-68dec80d03fb</xsl:when>
        <xsl:when test=".='gax '">12a6235f-1fb9-5183-a83c-3d5938f8e5b9</xsl:when>
        <xsl:when test=".='gest '">319b6f7e-b93a-509a-8e10-d490bac1c9b5</xsl:when>
        <xsl:when test=".='gestpe '">631d78d4-7f1b-5822-8d28-f326635b7092</xsl:when>
        <xsl:when test=".='gp '">9322e19f-4aa1-57d7-b5b6-e30af0baad4b</xsl:when>
        <xsl:when test=".='gss '">2d776667-3543-52aa-be0e-f46a5d3e8900</xsl:when>
        <xsl:when test=".='hldn '">81945965-064e-51c5-a7d3-0a4b4a331457</xsl:when>
        <xsl:when test=".='hsvc '">a4e37df3-2d62-5cb3-9f31-f807b4731ed4</xsl:when>
        <xsl:when test=".='hsvm '">6061c249-5ace-5251-85ee-d99ca1ba3285</xsl:when>
        <xsl:when test=".='hsvr '">f7412292-71ed-5a7f-a630-965e4923688c</xsl:when>
        <xsl:when test=".='htn '">5763286e-1c4c-5cd6-806f-aefd7208f8b1</xsl:when>
        <xsl:when test=".='hy '">3c53bd8c-22fc-5bc2-8094-fd81301ef311</xsl:when>
        <xsl:when test=".='hygf '">518a3977-7c1b-53ae-aecf-925aec87ad64</xsl:when>
        <xsl:when test=".='hype '">e440be23-5f4f-5ed0-a5c6-3291d48276ca</xsl:when>
        <xsl:when test=".='hyref '">91aa7c0e-15a8-54a4-b91a-ebfa84408969</xsl:when>
        <xsl:when test=".='laf '">ee44836b-2232-526e-aacc-e81950aee007</xsl:when>
        <xsl:when test=".='locked '">fbd72f12-b9fd-529e-910d-bbd45b837888</xsl:when>
        <xsl:when test=".='map '">c19e4c8a-bb83-5d21-aef6-855949c52ae4</xsl:when>
        <xsl:when test=".='maplf '">c17b2f9e-0314-56a7-9676-7a2e28b84237</xsl:when>
        <xsl:when test=".='mapmc '">a2b02f89-5f23-5614-90ad-eb80ee864de2</xsl:when>
        <xsl:when test=".='mic '">cc7ee710-ace9-5e48-9f5f-d42375a7a2ee</xsl:when>
        <xsl:when test=".='mss '">d7842307-890c-5dc0-bf41-1147c9e8b648</xsl:when>
        <xsl:when test=".='nec '">20da0572-c6dd-5146-95e2-565aab386958</xsl:when>
        <xsl:when test=".='noncirc '">70a95cb6-5180-526d-9421-44fece8475e0</xsl:when>
        <xsl:when test=".='numrf '">710e7ebd-582a-54b5-8758-4ce078eb8331</xsl:when>
        <xsl:when test=".='pa '">4d7f4831-5469-551d-b4d7-2d8e5fbe87a8</xsl:when>
        <xsl:when test=".='pam '">edd0d100-9b68-568c-a96d-37a965568655</xsl:when>
        <xsl:when test=".='pb '">aaff1042-1e08-53bd-b0f8-c0e40f3af7ba</xsl:when>
        <xsl:when test=".='pe '">291f7916-1c75-5b84-93e9-3eba07d311d5</xsl:when>
        <xsl:when test=".='pf '">c305b648-ae59-5ef5-8bb8-549a7e52eaa4</xsl:when>
        <xsl:when test=".='ph '">9bcd2c50-7a43-565c-ae1e-dfb8c0d1061a</xsl:when>
        <xsl:when test=".='pj '">680a0a73-a504-57f3-b645-5ab0950dc159</xsl:when>
        <xsl:when test=".='pk '">d6bd58b7-a5ad-5a21-a805-5c795cbc4c0b</xsl:when>
        <xsl:when test=".='pl '">2bc6054e-80f8-53f6-af32-7e51930e3b25</xsl:when>
        <xsl:when test=".='pn '">734e5393-343c-5492-a627-7bf9c6c8f228</xsl:when>
        <xsl:when test=".='pres '">ad1bdf27-2ef2-5fd7-be70-3021566d598c</xsl:when>
        <xsl:when test=".='princeton '">16805498-75e4-51e2-b410-e29956fca3a7</xsl:when>
        <xsl:when test=".='pt '">481c950d-d5a9-5c4f-95a8-28d23ee9a54a</xsl:when>
        <xsl:when test=".='pw '">4310f502-3ea3-574e-ad9b-b91cd44a41e4</xsl:when>
        <xsl:when test=".='pz '">32560ea4-53e4-5962-b3b5-e7e29ff32162</xsl:when>
        <xsl:when test=".='qk '">aa9b063a-d34b-55f0-86fc-748918234173</xsl:when>
        <xsl:when test=".='ql '">8309b8d9-06b0-5c4e-a8da-9d193b2edea9</xsl:when>
        <xsl:when test=".='qv '">21c8840d-0e22-532d-928d-d9a711ca8cb1</xsl:when>
        <xsl:when test=".='rcppa '">837de897-2809-5d6f-b45d-f7705840d654</xsl:when>
        <xsl:when test=".='rdr '">20cc13c8-1c1f-54f3-a520-a33b86926934</xsl:when>
        <xsl:when test=".='ref '">b5deee15-99eb-54cf-9c5d-c4f795562a3b</xsl:when>
        <xsl:when test=".='reserve '">2deb0586-c64f-5889-9cc5-83b6d7dd14e7</xsl:when>
        <xsl:when test=".='resterm '">8780c754-b519-5d9f-a81e-e1edd19e1a1b</xsl:when>
        <xsl:when test=".='sc '">19b1c593-cb79-594c-899e-86cf540f664d</xsl:when>
        <xsl:when test=".='sd '">9bb872f3-421c-59e6-befd-a47d117659dd</xsl:when>
        <xsl:when test=".='se '">fd9bc4d8-a5f1-588c-ac83-d7b6164f4985</xsl:when>
        <xsl:when test=".='serial '">0beee00d-594e-5ef9-9b70-6c9a95d6fdcc</xsl:when>
        <xsl:when test=".='shs '">c65f8098-72c0-57de-95fb-e1dac1dd5418</xsl:when>
        <xsl:when test=".='slav '">9c2a1f2f-faa2-526e-91ab-ab6c6b10273c</xsl:when>
        <xsl:when test=".='spia '">5f1f5903-ca15-52ee-83de-64c3f3a8ebef</xsl:when>
        <xsl:when test=".='spr '">8a59660a-aa79-5345-9025-91166cd95ba1</xsl:when>
        <xsl:when test=".='stacks '">f13ab59a-8fb8-5777-a43e-21d8b934f135</xsl:when>
        <xsl:when test=".='sudoc '">9d17a4a2-71fa-5ac7-b843-f94b2dbdd34a</xsl:when>
        <xsl:when test=".='theses '">6f7f17a4-6d1d-5a7d-99cd-3631419c4c54</xsl:when>
        <xsl:when test=".='thx '">b38e7b7e-54f6-5bcd-9de6-45c5dfd54af4</xsl:when>
        <xsl:when test=".='trv '">4d4ab883-bc07-526a-9df9-3132d6a95cff</xsl:when>
        <xsl:when test=".='un '">c23097ae-6dc7-552c-a9be-2c6d5f6d84ac</xsl:when>
        <xsl:when test=".='vidl '">3e5aad88-bd8c-5e31-bf5f-ce1a87d32359</xsl:when>
        <xsl:when test=".='vrg '">4fad1dde-5b1f-54e6-a2d9-0bfc313bf165</xsl:when>
        <xsl:when test=".='w '">948b6fa6-e63b-5bbc-99b2-480bb8bee159</xsl:when>
        <xsl:when test=".='wa '">4c4cb0f9-898c-58c5-a374-a11330c2e259</xsl:when>
        <xsl:when test=".='whs '">2c5582d2-6f58-564d-b3f7-8ef4531cbd08</xsl:when>
        <xsl:when test=".='wit '">306eeb2f-4f72-5d20-97d6-524b23284a99</xsl:when>
        <xsl:when test=".='x '">30537876-8388-503d-9769-f999ef4a3640</xsl:when>
        <xsl:when test=".='xc '">dc2c89fe-28b1-5bdf-a603-46dc4531cc8b</xsl:when>
        <xsl:when test=".='xg '">8b8ecd63-7cf3-5cb3-bc4d-48621865cd8b</xsl:when>
        <xsl:when test=".='xr '">9b39e5f0-09d6-511e-a7d1-c7ec9f8c2a5b</xsl:when>
        <xsl:when test=".='xw '">8a570687-ddc0-5c29-8e3d-953fbab4a99a</xsl:when>
        <xsl:when test=".='xx '">8b1b4938-5f11-599b-9818-47f6ce1d6ce3</xsl:when>
        <xsl:when test=".='zeiss '">c90ab8c4-df47-5859-9490-d5a13239f224</xsl:when>
        <xsl:otherwise>affe87f7-5bc4-5c7d-912a-5f414596d0c8</xsl:otherwise> <!-- Unmapped (US-NjP) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>33f4d173-c75d-5ba8-9489-e3fdb2c487ab</institutionId>
  </xsl:template>

</xsl:stylesheet>
