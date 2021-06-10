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
    <identifierTypeId>51a6606f-287d-5c48-8fb9-5365083f1eeb</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='ART per'">e4465fb3-71cc-5fc3-bf08-89ee2e074814</xsl:when>
        <xsl:when test=".='ART ref'">fedc993e-c225-59c7-944a-dd809a26a90b</xsl:when>
        <xsl:when test=".='ART res'">c7add55a-c43e-542d-bebb-5d2c929319d7</xsl:when>
        <xsl:when test=".='ART spec'">3b573e01-0c95-56df-a160-9c44d7f5a59f</xsl:when>
        <xsl:when test=".='ART stks'">44b16c67-07e9-5e05-9239-972350b95e79</xsl:when>
        <xsl:when test=".='ART stkscourse'">9e571be7-d26f-5105-8cc2-310509829769</xsl:when>
        <xsl:when test=".='ART stksfac'">e5e6282e-ddbf-5631-ae75-dd860480109c</xsl:when>
        <xsl:when test=".='ART stksnc'">332470e9-6d15-5ad7-9b50-206a0f7bbf57</xsl:when>
        <xsl:when test=".='ART stksrr'">5fab6bc9-8a34-57a4-9401-32d819054978</xsl:when>
        <xsl:when test=".='ART thes'">e7b76692-f5ad-5567-b202-7bcf2abe7c03</xsl:when>
        <xsl:when test=".='ART zzcirc'">281cefd6-55c9-5e1a-af3e-540dd0f04a19</xsl:when>
        <xsl:when test=".='ART zzprob'">7f557a09-5ea9-5839-801c-e13aeaaf980f</xsl:when>
        <xsl:when test="starts-with(., 'ART')">2a8e46be-74c9-5ce3-8c89-775cbf239f3c</xsl:when> <!-- Unmapped (ART)-->
        <xsl:when test=".='CAM spec'">db3c14e8-07b4-57ee-9e15-5fb56144deec</xsl:when>
        <xsl:when test=".='CAM vault'">764e810a-9ce7-5390-891d-09d378853448</xsl:when>
        <xsl:when test="starts-with(., 'CAM')">d02da846-33db-5633-a28f-ec104d1b73c2</xsl:when> <!-- Unmapped (CAM)-->
        <xsl:when test=".='CHEM media'">59e86d90-8774-522b-a580-56920f1be3a3</xsl:when>
        <xsl:when test=".='CHEM per'">3c42886c-f41a-51f2-8fea-90ded16adc64</xsl:when>
        <xsl:when test=".='CHEM ref'">69b7f741-edd0-53bd-bba5-ba63b0321f8a</xsl:when>
        <xsl:when test=".='CHEM res'">bfb32d0a-6625-5339-a747-f7a0420468ef</xsl:when>
        <xsl:when test=".='CHEM stks'">e6985b2e-2ce7-55e1-9867-16a94da16cb7</xsl:when>
        <xsl:when test=".='CHEM zzprob'">f466c8f8-fc22-54ea-8905-428ab61e03de</xsl:when>
        <xsl:when test="starts-with(., 'CHEM')">ce45f6e0-aab1-5a55-9f98-b5ff8a95411a</xsl:when> <!-- Unmapped (CHEM)-->
        <xsl:when test=".='ENGR equip'">f8cf5c60-2628-58a7-aa1c-5f6902cf7258</xsl:when>
        <xsl:when test=".='ENGR media'">03720b3f-db49-5517-95cd-4900de5fda75</xsl:when>
        <xsl:when test=".='ENGR per'">2371a19e-9624-5a91-bf16-642058dcf56a</xsl:when>
        <xsl:when test=".='ENGR ref'">3836e0aa-ca02-59ef-9e0a-f5bae6268290</xsl:when>
        <xsl:when test=".='ENGR res'">6fa8b419-c137-5d20-84e0-3426b3a6cfe6</xsl:when>
        <xsl:when test=".='ENGR stks'">978aa3c6-988c-516c-89e3-c94d77b6bfa2</xsl:when>
        <xsl:when test=".='ENGR zzcirc'">1b9e8ff9-819b-5cfe-b6fd-4d0297b4a90c</xsl:when>
        <xsl:when test=".='ENGR zzprob'">ddf05f15-ca5a-5e81-84e1-3e1471debdf5</xsl:when>
        <xsl:when test="starts-with(., 'ENGR')">f5791adf-e2a3-5491-8f07-75c535cf6d81</xsl:when> <!-- Unmapped (ENGR)-->
        <xsl:when test=".='HILL dis'">9ed6d5d4-f6c1-5e27-84ce-39b1484257b9</xsl:when>
        <xsl:when test=".='HILL doc'">bc98a423-fb2a-5281-b023-c8d51efb0e92</xsl:when>
        <xsl:when test=".='HILL ill'">99790e52-b7de-5fc8-b2f6-4a74a0e7280a</xsl:when>
        <xsl:when test=".='HILL lap'">7a9f1a31-774f-5356-a448-1fed7a003dd0</xsl:when>
        <xsl:when test=".='HILL mob'">ee8cd728-f86f-5c64-940b-d7ace336f63a</xsl:when>
        <xsl:when test=".='HILL palci'">e0e9f487-4bc7-5563-9538-5705eac0fc72</xsl:when>
        <xsl:when test=".='HILL per'">ec11b134-2d5b-5ddc-b890-48bdb46d0c7b</xsl:when>
        <xsl:when test=".='HILL perea'">c6c06241-0576-5b38-9316-99aaa8646167</xsl:when>
        <xsl:when test=".='HILL pereac'">5680f7c7-c909-5e20-94b3-b316669faf6a</xsl:when>
        <xsl:when test=".='HILL ref'">0e1779f4-7dff-566f-b597-d621ea8a6ffa</xsl:when>
        <xsl:when test=".='HILL refafro'">2eee074d-c428-503d-a7a5-bbce95aea074</xsl:when>
        <xsl:when test=".='HILL refbuhl'">f96ca16f-3311-511d-9e37-8d28d8129965</xsl:when>
        <xsl:when test=".='HILL refeac'">ac4d8f63-1886-5fa6-b313-b6aca465b51b</xsl:when>
        <xsl:when test=".='HILL refeaj'">833eeb7d-9113-5733-9ef1-80ea7c469f24</xsl:when>
        <xsl:when test=".='HILL refeak'">e4a01707-40d2-5b9e-90e9-e980cbd62c36</xsl:when>
        <xsl:when test=".='HILL res'">abcebeb1-ed76-5cd2-8c52-2db0908a6b9c</xsl:when>
        <xsl:when test=".='HILL stks'">6281acc5-0d78-54cc-a63b-8b68eefb6e48</xsl:when>
        <xsl:when test=".='HILL stksafro'">b3f0ff53-d39d-5f33-ab7a-e53b133fcbdb</xsl:when>
        <xsl:when test=".='HILL stksalld'">6d674b46-07c7-5e83-b2b1-4847eb933096</xsl:when>
        <xsl:when test=".='HILL stkseac'">87f4581e-3376-5fad-823a-a215b1821483</xsl:when>
        <xsl:when test=".='HILL stkseaj'">615e9278-831c-5f06-a54b-cf45b144299a</xsl:when>
        <xsl:when test=".='HILL stkseak'">65854549-2810-5141-955b-da6cd534ed46</xsl:when>
        <xsl:when test=".='HILL ulsacq'">74c890e1-23a1-5872-996d-1d9fb2c03713</xsl:when>
        <xsl:when test=".='HILL web'">87b0f075-11c9-5cda-9ce7-aa04703da133</xsl:when>
        <xsl:when test=".='HILL zzcirc'">131e9836-a700-571d-be2e-55e4e22ddd02</xsl:when>
        <xsl:when test=".='HILL zzdel'">8a49d8d5-e300-5601-89c8-f3cf0cb5989b</xsl:when>
        <xsl:when test=".='HILL zzprob'">927cb5c8-5279-5fbb-a335-57893364e70e</xsl:when>
        <xsl:when test=".='HILL equip'">b2e21a43-4c4b-5529-9434-fe3034b9146a</xsl:when>
        <xsl:when test=".='HILL UNASSIGNED'">55592410-1dbd-54eb-ae57-2613517f8507</xsl:when>
        <xsl:when test=".='HILL arch'">78f0daec-0165-5eed-9f98-64a199c91f06</xsl:when>
        <xsl:when test=".='HILL spec'">793c2f8a-fbf0-5e02-a3a8-65434d022f41</xsl:when>
        <xsl:when test=".='HILL specper'">0fe5ad51-d442-5e5c-a47e-4998b659d47f</xsl:when>
        <xsl:when test=".='HILL media'">6e280c75-fd36-5f55-ac87-ee9ebc8e59fb</xsl:when>
        <xsl:when test="starts-with(., 'HILL')">dad36f89-d080-5f5a-ba3c-8733bb01f905</xsl:when> <!-- Unmapped (HILL)-->
        <xsl:when test=".='HILLEQUIP equip'">86a160ab-d8cc-5012-af05-1f91ad428328</xsl:when>
        <xsl:when test="starts-with(., 'HILLEQUIP')">50f53f55-af77-5bc9-a090-9a614339d6a9</xsl:when> <!-- Unmapped (HILLEQUIP)-->
        <xsl:when test=".='HILLSPEC UNASSIGNED'">56103a85-1958-5ee8-86a0-71705151d4a9</xsl:when>
        <xsl:when test=".='HILLSPEC arch'">324a9146-b503-55e4-b1e4-1729c3ea2db0</xsl:when>
        <xsl:when test=".='HILLSPEC spec'">935986a7-ca43-588d-9642-348d44ef5440</xsl:when>
        <xsl:when test=".='HILLSPEC specper'">35a5d744-6885-55e3-ad01-e6b83aa75dd0</xsl:when>
        <xsl:when test="starts-with(., 'HILLSPEC')">6c786134-bd35-50a8-aeb0-1cedf6ba1fc8</xsl:when> <!-- Unmapped (HILLSPEC)-->
        <xsl:when test=".='HILLSTARK media'">b74aa417-9c9b-5183-83c5-06b1008d2009</xsl:when>
        <xsl:when test=".='HILLSTARK per'">73b21bf9-ee84-5812-8530-811e5079f150</xsl:when>
        <xsl:when test=".='HILLSTARK res'">8a1aa7d7-5d72-53b1-a2a9-57f45025677a</xsl:when>
        <xsl:when test=".='HILLSTARK stks'">696422bf-9860-58a8-af81-10857b3237f8</xsl:when>
        <xsl:when test="starts-with(., 'HILLSTARK')">3eb065c5-61c6-5f85-9079-33ada80d86ec</xsl:when> <!-- Unmapped (HILLSTARK)-->
        <xsl:when test=".='HSLS falk'">62890e15-16a6-5963-8a02-a89408d51735</xsl:when>
        <xsl:when test=".='HSLS falkav'">b00d6fb3-f6dc-50ca-905a-66e7cf0f34ea</xsl:when>
        <xsl:when test=".='HSLS falkclo'">22dcd2ad-2a80-5d2c-af91-5db74f3d33ef</xsl:when>
        <xsl:when test=".='HSLS falkcres'">e5d4897c-ea93-58df-bd74-5ddf4bc3220c</xsl:when>
        <xsl:when test=".='HSLS falkcurr'">0be8446c-0e90-5ec3-bf84-8fac09af5fd5</xsl:when>
        <xsl:when test=".='HSLS falkh'">99ef7c1d-19b2-5e8d-8c02-c47fdf05cfb1</xsl:when>
        <xsl:when test=".='HSLS falkhrare'">7b15bbeb-2669-5c17-8f36-f2c44edf9947</xsl:when>
        <xsl:when test=".='HSLS falkhum'">9b831664-b67c-5b37-baf1-c1d0c6f2dfdd</xsl:when>
        <xsl:when test=".='HSLS falkleis'">c5d8d6b1-12b1-5e99-afb6-71a07bb59e44</xsl:when>
        <xsl:when test=".='HSLS falkmar'">57c7f62c-83e6-5aee-8d19-e291da0df0d7</xsl:when>
        <xsl:when test=".='HSLS falkover'">57d826e2-c84b-58f6-a4d8-07eb8fc7ea76</xsl:when>
        <xsl:when test=".='HSLS falkper'">331d3a93-77c0-5b73-8e34-046689529b27</xsl:when>
        <xsl:when test=".='HSLS falkres'">a502e360-e608-5ee8-b6ab-3e48e1749970</xsl:when>
        <xsl:when test=".='HSLS falktech'">f682d066-e172-5c85-8203-da32a0d08fc0</xsl:when>
        <xsl:when test=".='HSLS falkweb'">075e6c19-9d5b-5858-9f20-d43c150e319f</xsl:when>
        <xsl:when test=".='HSLS falkwebb'">1f1c188f-7cab-5bd9-81fe-99d14a5ee2f4</xsl:when>
        <xsl:when test=".='HSLS falkwebd'">3c9f77d2-72ed-5f52-9e84-1cf311e96936</xsl:when>
        <xsl:when test=".='HSLS falkwebp'">cb31ca31-189a-5999-97e6-001d63c6d168</xsl:when>
        <xsl:when test=".='HSLS falkwebsm'">57142309-cc62-5a08-adf5-f615204ea9d8</xsl:when>
        <xsl:when test=".='HSLS zzdel'">c6e42823-37d8-51fc-a225-94620c6c448e</xsl:when>
        <xsl:when test=".='HSLS zzhslsacq'">5f4b9ce7-bec8-5795-bf4a-f6d5b0e51eea</xsl:when>
        <xsl:when test=".='HSLS zzhslsprob'">660a8643-73c0-52c8-9271-68efb0cd07c0</xsl:when>
        <xsl:when test="starts-with(., 'HSLS')">e2b6aca0-17a9-5437-9224-f18466bccc73</xsl:when> <!-- Unmapped (HSLS)-->
        <xsl:when test=".='LANG media'">f675c88a-d668-5afa-8252-f377e3c5bce2</xsl:when>
        <xsl:when test=".='LANG over'">1d6d425b-1a29-5420-984a-b0291f0c504c</xsl:when>
        <xsl:when test=".='LANG per'">8265ab84-6b5f-5ace-95f8-567c3d920edf</xsl:when>
        <xsl:when test=".='LANG ref'">cfe49864-26d6-5f12-bda0-c8c7102c5319</xsl:when>
        <xsl:when test=".='LANG res'">9de3e9e3-6e70-5b11-a8af-646abb0b2c90</xsl:when>
        <xsl:when test=".='LANG stks'">d8fd7b4b-4e14-58c5-af34-21c2eadcf2cd</xsl:when>
        <xsl:when test=".='LANG zzcirc'">d3a9825b-68ce-52e3-81ad-af0404c1d4e8</xsl:when>
        <xsl:when test=".='LANG zzprob'">8bfcae75-7a8a-51ef-a2b4-523df76704c5</xsl:when>
        <xsl:when test="starts-with(., 'LANG')">2dbd0b66-5c75-5214-a556-d01de66a2c2b</xsl:when> <!-- Unmapped (LANG)-->
        <xsl:when test=".='LAW age'">900fb0d0-2ee1-52ec-a1f3-bf0da65ca252</xsl:when>
        <xsl:when test=".='LAW bell'">1a2bea8a-fcba-55da-b612-6128306d1eb4</xsl:when>
        <xsl:when test=".='LAW comm'">5979f71d-0c2b-57a2-84ef-934ee6eb3231</xsl:when>
        <xsl:when test=".='LAW fac'">10d9ed55-8b5b-572e-9544-00af395e5f9b</xsl:when>
        <xsl:when test=".='LAW genn'">abf5b5a2-94f8-529c-a9ab-29479f49419a</xsl:when>
        <xsl:when test=".='LAW ind'">7a224182-6e9e-5390-9da1-d380b215b255</xsl:when>
        <xsl:when test=".='LAW int'">910244f0-9114-5666-9ac9-ac175667d982</xsl:when>
        <xsl:when test=".='LAW intn'">dd703087-6ab2-57b1-80db-21acc73f432a</xsl:when>
        <xsl:when test=".='LAW lawaq'">8a5e5fb4-a050-5a5a-87d1-7d5bc0a42ee7</xsl:when>
        <xsl:when test=".='LAW lawca'">3f299414-17f6-5ea0-978b-f6c51e00beaa</xsl:when>
        <xsl:when test=".='LAW lawstor'">4a9341e5-d5a8-5783-ae1f-715ef362dc18</xsl:when>
        <xsl:when test=".='LAW med'">6581e6fb-fa32-525b-917f-c4fe51bd86a1</xsl:when>
        <xsl:when test=".='LAW micro'">a21f34f4-e767-5fc9-baf8-c783be4aa719</xsl:when>
        <xsl:when test=".='LAW pa'">a7b3de59-0ed3-5bdd-909c-4daa85f76d8c</xsl:when>
        <xsl:when test=".='LAW pan'">29f94cd9-d9de-55c4-9530-25efc541708b</xsl:when>
        <xsl:when test=".='LAW per'">ba806831-ae28-5621-a021-170fbf5c21a4</xsl:when>
        <xsl:when test=".='LAW rare'">fbf0798b-8157-54de-b9de-7a5498e31ec8</xsl:when>
        <xsl:when test=".='LAW ref'">2a9ca5d9-0432-5220-aa51-d58b5e678bdd</xsl:when>
        <xsl:when test=".='LAW res'">1d42b9ab-c4b2-5661-a004-7fb3b679b69e</xsl:when>
        <xsl:when test=".='LAW stan'">914c37d0-2138-5756-9dbd-45684685be44</xsl:when>
        <xsl:when test=".='LAW stfn'">3d5abed3-16a6-50c5-a4a3-f74539d4b3eb</xsl:when>
        <xsl:when test=".='LAW tre'">3f0de702-9c23-5440-a615-8fdef3c14eee</xsl:when>
        <xsl:when test=".='LAW tren'">885b029e-2c39-5560-b478-c3fae40d7f33</xsl:when>
        <xsl:when test=".='LAW web'">46b909e0-9d40-5418-8a42-f5ded6eb9678</xsl:when>
        <xsl:when test="starts-with(., 'LAW')">fd3d7893-a2d8-5cdb-a6fc-e56e38bedba3</xsl:when> <!-- Unmapped (LAW)-->
        <xsl:when test=".='MUS facs'">7db6e5b3-a8b9-510b-ae8b-c3c967179c3d</xsl:when>
        <xsl:when test=".='MUS folio'">3cf07361-1fc5-586d-b227-78235a8486a6</xsl:when>
        <xsl:when test=".='MUS media'">8bd97c01-db6f-5e14-a6a8-e7b9ba3681ec</xsl:when>
        <xsl:when test=".='MUS over'">073a9938-0428-519e-822f-7b81cdd6037b</xsl:when>
        <xsl:when test=".='MUS per'">278ad65b-b0f1-5bd2-81b8-2a34bc9a0f8c</xsl:when>
        <xsl:when test=".='MUS ref'">c3b8c0ce-e509-52c0-bf99-618d185cc88f</xsl:when>
        <xsl:when test=".='MUS res'">e9b9adfc-afe9-5d3a-8b29-74ee00c673da</xsl:when>
        <xsl:when test=".='MUS spec'">b9722a48-4a6b-5c53-be44-6740730837ea</xsl:when>
        <xsl:when test=".='MUS stks'">6419d982-9841-52e8-9318-38c1bcb1c186</xsl:when>
        <xsl:when test=".='MUS zzcirc'">2333bc3e-4e71-5002-a0e2-c724141bc444</xsl:when>
        <xsl:when test="starts-with(., 'MUS')">98e09b10-5e86-58e6-b05b-62ce8effc55d</xsl:when> <!-- Unmapped (MUS)-->
        <xsl:when test=".='RES_SHARE IN_RS_REQ'">954b9835-e0da-5d62-8b57-03c79068a540</xsl:when>
        <xsl:when test=".='RES_SHARE OUT_RS_REQ'">dde2281e-5289-52d0-9e2b-00d141a548ac</xsl:when>
        <xsl:when test="starts-with(., 'RES_SHARE')">2d7fd873-3ef4-57db-9428-57a723ac49ab</xsl:when> <!-- Unmapped (RES_SHARE)-->
        <xsl:when test=".='THOM presmfma'">2b7e4cee-7af1-50e8-a3fe-e7d258778403</xsl:when>
        <xsl:when test=".='THOM presmfpn'">cb939e6b-c007-5b86-a829-8c5fef327e9d</xsl:when>
        <xsl:when test=".='THOM stor'">2f0ff88a-0db8-5fbf-a05e-55544aa67928</xsl:when>
        <xsl:when test=".='THOM storarch'">7c9ccbd0-7baf-5f70-b1b6-01eeba5aa190</xsl:when>
        <xsl:when test=".='THOM stordoc'">0738d85d-87e4-5cf2-aef2-eef8b2451430</xsl:when>
        <xsl:when test=".='THOM stormap'">3e6a1445-a1da-5009-8531-d85a76557482</xsl:when>
        <xsl:when test=".='THOM stormicro'">afca9021-00e8-5ad2-9018-2656bc14cc54</xsl:when>
        <xsl:when test=".='THOM storper'">3bf4ca4d-a244-58c3-bf0e-1706048770c8</xsl:when>
        <xsl:when test=".='THOM storspec'">1daf4d41-b783-5b10-a306-5bc9b20dc08e</xsl:when>
        <xsl:when test=".='THOM ulsacq'">87b0d5b7-3b22-5675-b4a1-61ac648dc71f</xsl:when>
        <xsl:when test=".='THOM zzcirc'">99b5b9c2-1541-5672-b69f-07e00735d9e1</xsl:when>
        <xsl:when test=".='THOM zzdel'">95f82b56-a8c6-5852-88e1-ac2e496fefa0</xsl:when>
        <xsl:when test=".='THOM zzdocper'">3f738ab8-bafc-5afc-b787-6a6505b5de56</xsl:when>
        <xsl:when test=".='THOM zzprob'">c728e46d-3d08-5423-89c3-4d7b60194878</xsl:when>
        <xsl:when test=".='THOM zzthes'">afbaf28a-16d8-53e4-8d4a-4fb7d9d64ac3</xsl:when>
        <xsl:when test=".='THOM archasc'">d4a5875c-11c9-5220-9bce-eb49422bffc0</xsl:when>
        <xsl:when test=".='THOM mediaasc'">2291c42f-c494-5f45-aa01-12a0102bed40</xsl:when>
        <xsl:when test=".='THOM microasc'">cfb61051-61b9-5a86-8ceb-16799fc7db97</xsl:when>
        <xsl:when test=".='THOM perasc'">c716aae9-5e4f-56c6-ac27-f86151f19fdd</xsl:when>
        <xsl:when test=".='THOM specasc'">8299e550-f641-5975-abe4-18f49d6a3323</xsl:when>
        <xsl:when test=".='THOM thesasc'">ed09c663-3022-5688-a2e6-d2b431ac13c5</xsl:when>
        <xsl:when test="starts-with(., 'THOM')">52223993-d91c-56f7-b80b-01e932fde976</xsl:when> <!-- Unmapped (THOM)-->
        <xsl:when test=".='THOMASC archasc'">4f93524d-f3b7-5c61-85f6-d8e40bf5200d</xsl:when>
        <xsl:when test=".='THOMASC mediaasc'">6fa192ec-679e-5b6b-a3f4-35c6df3407a4</xsl:when>
        <xsl:when test=".='THOMASC microasc'">d8202f02-1aee-52f1-ae3d-794b0ca47437</xsl:when>
        <xsl:when test=".='THOMASC perasc'">078ec641-f178-5821-9371-214a34ed9723</xsl:when>
        <xsl:when test=".='THOMASC specasc'">e4974144-72e4-57d7-9359-3b26df71e2ed</xsl:when>
        <xsl:when test=".='THOMASC thesasc'">b488792a-c711-530a-a59b-2bb6f891cfeb</xsl:when>
        <xsl:when test="starts-with(., 'THOMASC')">1498f01e-c0b3-5081-a1a1-85c47b47ccc6</xsl:when> <!-- Unmapped (THOMASC)-->
        <xsl:when test=".='ULS dups'">d8a871e8-95bd-599e-bef4-390d339c52ba</xsl:when>
        <xsl:when test=".='ULS staff'">99985418-227a-5f4c-8d66-dd6525ef21af</xsl:when>
        <xsl:when test=".='ULS ulsacq'">474c2b82-1382-56fa-bd87-37ade6b74368</xsl:when>
        <xsl:when test=".='ULS web'">28ae9eb5-5be3-5357-822c-8c6babde2a3a</xsl:when>
        <xsl:when test=".='ULS zzdel'">69eae9e0-3a20-5586-bb9c-fc1e4edffd51</xsl:when>
        <xsl:when test="starts-with(., 'ULS')">1338ba48-d9ec-5510-9df4-0eb6e3c9dc3c</xsl:when> <!-- Unmapped (ULS)-->
        <xsl:when test=".='UPB arch'">aa350d65-6dc9-5e78-9db5-9600f26c2ffc</xsl:when>
        <xsl:when test=".='UPB curr'">3b7d84ca-e541-57c8-ab24-97e51346435b</xsl:when>
        <xsl:when test=".='UPB frnd'">5de117c6-cc0c-5535-9612-f954bb6a96c7</xsl:when>
        <xsl:when test=".='UPB intl'">1e8897d3-1408-5ede-839f-758abbbcc7d0</xsl:when>
        <xsl:when test=".='UPB lap'">9984ce94-424c-57ac-a073-54d424d492dd</xsl:when>
        <xsl:when test=".='UPB map'">84dcd022-d746-5665-9374-454fc0fb376a</xsl:when>
        <xsl:when test=".='UPB media'">f95c8b28-2821-52a3-8713-9a5ea20fac6a</xsl:when>
        <xsl:when test=".='UPB micro'">bbc493c4-5279-58dc-98b6-10ae69769ef2</xsl:when>
        <xsl:when test=".='UPB over'">6413db7d-2aef-569c-a362-9ac54bacdecb</xsl:when>
        <xsl:when test=".='UPB per'">80d2555f-6f87-5ecb-ac0a-2e90a17bf143</xsl:when>
        <xsl:when test=".='UPB ref'">4dabcd21-a98a-57db-9e81-d767a96b1f43</xsl:when>
        <xsl:when test=".='UPB res'">f4bb81f9-7d47-590b-a158-590d3ae48580</xsl:when>
        <xsl:when test=".='UPB spec'">b50bbe4f-152d-562f-959c-5ab98af368a7</xsl:when>
        <xsl:when test=".='UPB specstor'">f4f447ce-4c78-56e7-b32e-678182fd987e</xsl:when>
        <xsl:when test=".='UPB staff'">00996326-677f-5524-8055-2435f576eb53</xsl:when>
        <xsl:when test=".='UPB stks'">7d74f8d6-924b-5b8b-9386-14254e54408d</xsl:when>
        <xsl:when test=".='UPB stor'">471a914a-b734-57fc-b8c5-73751ee7072c</xsl:when>
        <xsl:when test=".='UPB upbacq'">0a87bee9-6ae0-5048-b5b1-a57b044697e8</xsl:when>
        <xsl:when test=".='UPB zzprob'">4d69b728-253b-5a95-aa5b-fef7d1ca47dc</xsl:when>
        <xsl:when test="starts-with(., 'UPB')">e323a19c-c5f1-56b1-a0d2-4ff8abecec4a</xsl:when> <!-- Unmapped (UPB)-->
        <xsl:when test=".='UPG arch'">9a2e3f9d-ead4-5203-9f2b-80a4be1f3c34</xsl:when>
        <xsl:when test=".='UPG child'">a819998a-354d-58e5-84f3-700c7c9e02db</xsl:when>
        <xsl:when test=".='UPG curr'">d9331a78-53bf-5493-a732-01e61d856804</xsl:when>
        <xsl:when test=".='UPG equip'">b6b227bd-0a71-5d6d-83e2-41dca036a8af</xsl:when>
        <xsl:when test=".='UPG graph'">c6fcabe7-61f0-516c-a7db-70ecfbaea563</xsl:when>
        <xsl:when test=".='UPG lapequip'">4036ebc8-ec48-57ab-841e-c92386e67f79</xsl:when>
        <xsl:when test=".='UPG mediaaud'">3741103f-ef8d-5620-a04f-c897a4fe940f</xsl:when>
        <xsl:when test=".='UPG mediacd'">809fdd48-e747-5d0e-83f2-1f0caa513e44</xsl:when>
        <xsl:when test=".='UPG mediadvd'">d4de86ca-4d10-58c6-b199-186d2b971c3b</xsl:when>
        <xsl:when test=".='UPG micro'">ade07e43-d904-53d4-9d52-24e7336be291</xsl:when>
        <xsl:when test=".='UPG per'">0784280e-7a6d-58f3-a2d7-a4b2e41c0a5e</xsl:when>
        <xsl:when test=".='UPG ref'">6f1bdb0d-e14b-528f-a2b5-9faae0a5b48d</xsl:when>
        <xsl:when test=".='UPG res'">925323b2-f986-5cd4-a2b6-233fff8bb707</xsl:when>
        <xsl:when test=".='UPG score'">c998f8dc-0293-51dc-a1d7-83bdc5d0584d</xsl:when>
        <xsl:when test=".='UPG spec'">ffa67d2e-b193-5836-87e2-c472aa9e2e49</xsl:when>
        <xsl:when test=".='UPG stks'">4fcda309-0971-5ad3-8ef3-286c98158873</xsl:when>
        <xsl:when test=".='UPG upgacq'">d9ed0afb-c8b8-590f-ba97-1b2db2c57fe0</xsl:when>
        <xsl:when test=".='UPG young'">fb303b2d-17ba-5418-9c68-cb71de9caba4</xsl:when>
        <xsl:when test=".='UPG zzcirc'">10c9941a-6414-549a-bb93-24f748e088a9</xsl:when>
        <xsl:when test=".='UPG zzhapp'">620a9276-c54d-5b1d-b54b-0b6c5e829e3f</xsl:when>
        <xsl:when test=".='UPG zzprob'">7afca82c-f6ee-5150-a47f-c7508978dc08</xsl:when>
        <xsl:when test="starts-with(., 'UPG')">d57f782f-4f54-54dd-bdb4-9588fa829271</xsl:when> <!-- Unmapped (UPG)-->
        <xsl:when test=".='UPJ arch'">69d6d923-cba6-5eef-be6c-a6b49ddd8b3b</xsl:when>
        <xsl:when test=".='UPJ curr'">fae29060-ce23-5d4c-aca8-ade8136eb50c</xsl:when>
        <xsl:when test=".='UPJ curraid'">aa903327-32cd-5bfb-b394-dc96b841d9f7</xsl:when>
        <xsl:when test=".='UPJ equip'">4b8ed02a-c613-54a9-8d64-9d903847a748</xsl:when>
        <xsl:when test=".='UPJ game'">b3d0bcba-3457-5dc4-bdb3-4bf129d54d3a</xsl:when>
        <xsl:when test=".='UPJ graph'">9be3b0e3-a7ee-5941-bdf4-822c55ad3ed3</xsl:when>
        <xsl:when test=".='UPJ map'">318531ee-3562-54f4-b69b-6e779493e50a</xsl:when>
        <xsl:when test=".='UPJ mediacd'">93c0b3e4-2818-5041-ae1c-d0e8f1a1a6f7</xsl:when>
        <xsl:when test=".='UPJ mediavid'">1fd79a68-24b8-54cd-b6c5-1952acc568f9</xsl:when>
        <xsl:when test=".='UPJ micro'">9dae84f9-6151-50b1-a267-736ae6bbd90c</xsl:when>
        <xsl:when test=".='UPJ per'">91b981c4-eb60-5ae0-940d-9c92752fa181</xsl:when>
        <xsl:when test=".='UPJ ref'">7b591cf8-6d48-5e9f-98d1-f007cb9c54f0</xsl:when>
        <xsl:when test=".='UPJ refatlas'">f4165809-1d39-51e9-8427-6806f472345d</xsl:when>
        <xsl:when test=".='UPJ res'">682f3b84-03a8-5e84-992c-22ead3868de8</xsl:when>
        <xsl:when test=".='UPJ spec'">3637f553-deb2-5964-8310-b00c064fd362</xsl:when>
        <xsl:when test=".='UPJ staff'">b0df21f7-7c3a-54d3-93a7-65632b16f403</xsl:when>
        <xsl:when test=".='UPJ stks'">671808aa-2b83-5f97-8c3d-cb02c2a49ab7</xsl:when>
        <xsl:when test=".='UPJ stor'">a7adf09f-b66d-50c8-aedf-990cf47f7bba</xsl:when>
        <xsl:when test=".='UPJ zzcirc'">36259f99-1f38-5d9f-85ea-750b44ca7e76</xsl:when>
        <xsl:when test=".='UPJ zzhapp'">c11776db-0327-5579-b535-095b06a589db</xsl:when>
        <xsl:when test=".='UPJ zzprob'">d252c786-1bba-5622-9e7f-75384c4ddf44</xsl:when>
        <xsl:when test="starts-with(., 'UPJ')">4b73d1b9-6ccc-5400-b5d5-d04e7f7d1fc6</xsl:when> <!-- Unmapped (UPJ)-->
        <xsl:when test=".='UPT media'">e7aafb47-c86c-525e-8b44-f2b8294d5c30</xsl:when>
        <xsl:when test=".='UPT mob'">b84ebee6-22be-5f65-9f36-764caa435c87</xsl:when>
        <xsl:when test=".='UPT per'">e50d78dc-13c9-5961-aebe-6bb47fd68f2b</xsl:when>
        <xsl:when test=".='UPT ref'">567deb15-b6f6-57d4-80d7-1e22cdf19d85</xsl:when>
        <xsl:when test=".='UPT resstrk'">91c47896-9af2-52a0-97e7-c34107963385</xsl:when>
        <xsl:when test=".='UPT spec'">fb194f4a-a215-5620-918f-44400be31dbb</xsl:when>
        <xsl:when test=".='UPT stks'">23e7e624-af64-509f-aeb5-1729acfe7ca9</xsl:when>
        <xsl:when test=".='UPT zzhapp'">6543856c-7359-5b0d-9115-6ce90668e06f</xsl:when>
        <xsl:when test=".='UPT zzprob'">6bf0bb13-2e78-53b2-8a04-ed714f82c4c2</xsl:when>
        <xsl:otherwise>08fabe9d-67c0-5d08-9371-7ec6f0e9bb4b</xsl:otherwise> <!-- Unmapped (UPT) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>1d548511-e82b-5a01-ac67-c69f2194edaf</institutionId>
  </xsl:template>

</xsl:stylesheet>
