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
    <identifierTypeId>4dd952f6-80e1-52b9-92ce-1d99e1e3abc6</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='WVUA Appalachian Collection'">c0f1534d-09ce-5aca-95da-086b6e701a27</xsl:when>
        <xsl:when test=".='WVUA Closed Stacks'">4c925422-b2da-58f6-8ca4-735e3d6bc479</xsl:when>
        <xsl:when test=".='WVUA Closed Stacks In Library Circulating'">59cf0df5-f7b6-556d-9757-cebecdc339fd</xsl:when>
        <xsl:when test=".='WVUA DVD'">f41864f1-94bd-5d52-a39f-bf61b37951ab</xsl:when>
        <xsl:when test=".='WVUA Eliza's'">89e5a7ef-56e8-5d43-8edc-85a7d7793a94</xsl:when>
        <xsl:when test=".='WVUA Government Documents'">9cd760a9-2bdd-5297-aa98-2414b52f56c3</xsl:when>
        <xsl:when test=".='WVUA Government Documents Census'">9efbdc64-8851-5cb6-b098-8741bc2864b8</xsl:when>
        <xsl:when test=".='WVUA Government Documents Index'">899a5a28-e9d2-5514-8305-dd98f9ba523b</xsl:when>
        <xsl:when test=".='WVUA Government Documents Maps'">92ea6b29-7427-59c1-b130-eba385bb9912</xsl:when>
        <xsl:when test=".='WVUA Government Documents Media'">a5d0fe7b-630c-5ecd-9d9f-43fbeb0de3ab</xsl:when>
        <xsl:when test=".='WVUA Government Documents Microfiche'">cf8f829a-8c9a-5c8d-a4df-d79d3c56bc9b</xsl:when>
        <xsl:when test=".='WVUA Government Documents Microfilm'">2131e4d9-c4cc-5ca3-bc60-9d968216e1be</xsl:when>
        <xsl:when test=".='WVUA Government Documents Prints'">a1df3841-8f4f-507b-9c1a-8f4fc18fcc6a</xsl:when>
        <xsl:when test=".='WVUA Government Documents West Virginia'">2ac08b43-60df-5f50-a932-04bd0742d464</xsl:when>
        <xsl:when test=".='WVUA Government Documents West Virginia Media'">1ab513e2-1fcc-5116-8b3a-b67faf628f42</xsl:when>
        <xsl:when test=".='WVUA Microcard'">cb548eae-41b8-5f8a-bd33-64854578b71d</xsl:when>
        <xsl:when test=".='WVUA Microfiche'">5c333652-250d-5880-8f7d-7f7489ce34c8</xsl:when>
        <xsl:when test=".='WVUA Microfilm'">9dce34f9-0f5d-56be-8e21-1108eb06afa8</xsl:when>
        <xsl:when test=".='WVUA Microphotography'">782e06ff-c969-533a-b17c-b495cea44839</xsl:when>
        <xsl:when test=".='WVUA Stacks'">8abe0be2-c0a0-5f9f-b547-56d437b72264</xsl:when>
        <xsl:when test=".='WVUA Stacks Oversize'">43284387-1386-5fea-94a1-465f0c568899</xsl:when>
        <xsl:when test=".='WVUA WVU Electronic Theses and Dissertations'">bbe44c45-9d2d-5302-b2fc-28245bc28d16</xsl:when>
        <xsl:when test=".='WVUA Acquisitions'">2df62d4c-22ca-520e-bd72-580a0986b8a6</xsl:when>
        <xsl:when test=".='WVUA Bindery'">0661022e-77b1-5144-83f5-37f49703f248</xsl:when>
        <xsl:when test=".='WVUA Bound Periodicals'">5d62ee0e-c5e9-5b08-b9c9-53171c522469</xsl:when>
        <xsl:when test=".='WVUA CircCleanup'">32a63e47-00b7-517b-96a0-46b27490cf43</xsl:when>
        <xsl:when test=".='WVUA Closed Stacks Non Circulating'">5bfb758c-fc21-5e3b-a69f-952b1d65cf18</xsl:when>
        <xsl:when test=".='WVUA Current Periodicals'">d31146a1-e3a7-553b-b157-eeb1aab3847e</xsl:when>
        <xsl:when test=".='WVUA Deans Office'">f7d69e52-97b1-5bde-848c-52a9ab0d83c2</xsl:when>
        <xsl:when test=".='WVUA E-ZBorrow Temporary Loans'">85ae72c5-49f2-5213-9f07-98e2ea259539</xsl:when>
        <xsl:when test=".='WVUA Faculty Office'">7224a5a7-203e-5354-a9d5-b5fcacd34cb6</xsl:when>
        <xsl:when test=".='WVUA KARM'">27bfe160-ac78-5226-a3c4-5de34770ca2b</xsl:when>
        <xsl:when test=".='WVUA Karm Storage'">aa591c2e-2283-560c-9f98-31bcc297e52a</xsl:when>
        <xsl:when test=".='WVUA Laptops'">a387d7df-fc98-51a9-b173-620cf2aa0756</xsl:when>
        <xsl:when test=".='WVUA Media Services Equipment 1 day'">5762f1f3-4f67-5854-b39c-d77bcc1114b2</xsl:when>
        <xsl:when test=".='WVUA Media Services Equipment 4 hours'">296cfc7e-9eba-556e-be85-61d44de0c3ba</xsl:when>
        <xsl:when test=".='WVUA Media Services Equipment 7 day'">e6ae20b3-7922-5178-82a1-cbc4e35410b9</xsl:when>
        <xsl:when test=".='WVUA Media Services Headphones'">07b14cef-e4b6-53e4-b5ad-ec93aa975c05</xsl:when>
        <xsl:when test=".='WVUA Online'">cb8e04dd-9603-5e20-bd6b-402f0d384e71</xsl:when>
        <xsl:when test=".='WVUA Order Print Book'">833cbf2d-7878-59f1-a9cb-5c782c624cf9</xsl:when>
        <xsl:when test=".='WVUA Reference'">13776031-b690-5ed7-b5f3-5552d9557030</xsl:when>
        <xsl:when test=".='WVUA Reference-Test Prep'">66b3d379-1341-55e1-8f25-c225b8436df8</xsl:when>
        <xsl:when test=".='WVUA Reserve'">32e9801b-364c-5156-8162-d3180ef60a4f</xsl:when>
        <xsl:when test=".='WVUA Reserve Folder'">ea605f76-25c8-5d13-a8a9-5be82caff32c</xsl:when>
        <xsl:when test=".='WVUA Reserve Grants'">3f1ea433-eaa5-5913-ab08-3264474d6aaf</xsl:when>
        <xsl:when test=".='WVUA Reserve Media'">0e32d5d8-386e-5978-ba24-5a72869aa59d</xsl:when>
        <xsl:when test="starts-with(., 'WVUA')">8e64fc08-93fa-5771-81b5-6b335a5a0a7d</xsl:when> <!-- Unmapped (WVUA)-->
        <xsl:when test=".='WVUC Archives & Manuscripts'">188dee6a-0146-5e84-875c-b976abe65ff0</xsl:when>
        <xsl:when test=".='WVUC Bindery'">ae881a00-39ce-53d4-94e0-9f1dc149bad8</xsl:when>
        <xsl:when test=".='WVUC Closed Stacks'">e3486b0b-52e4-5374-864a-0d948dcb0ed8</xsl:when>
        <xsl:when test=".='WVUC Depository - request before arrival'">2dd61f82-cfcd-51e4-94a2-f4aaca866f20</xsl:when>
        <xsl:when test=".='WVUC Faculty Office'">2c1936eb-78cb-5bfb-a084-5fceed3df393</xsl:when>
        <xsl:when test=".='WVUC Microfiche'">4c34f3f3-9677-59c5-b825-4e97736d9f56</xsl:when>
        <xsl:when test=".='WVUC Microfilm'">df44d6e1-ef2c-5029-accb-327b5731cd38</xsl:when>
        <xsl:when test=".='WVUC Microphotography'">bd3d3e54-a9af-528e-ab85-b7723dc720ee</xsl:when>
        <xsl:when test=".='WVUC Rare Book Room'">f30237a7-3026-5f65-a9d5-8e1a52fab066</xsl:when>
        <xsl:when test=".='WVUC Rare Book Room West Virginia'">2a513c96-dd0b-5bf7-99a6-28c9842e43e8</xsl:when>
        <xsl:when test=".='WVUC Stacks'">16bddbf3-dfd5-5c4f-ba61-ae21195eacd1</xsl:when>
        <xsl:when test="starts-with(., 'WVUC')">087e9f1e-9c2c-5f27-84a2-ca61953a8c25</xsl:when> <!-- Unmapped (WVUC)-->
        <xsl:when test=".='WVUD Closed Stacks'">6a4a658d-8222-5cf3-bb17-6a495689b133</xsl:when>
        <xsl:when test=".='WVUD Closed Stacks In Library Circulating'">90618d3b-bc25-552d-a71e-49bc1b162c50</xsl:when>
        <xsl:when test=".='WVUD Microfiche'">62de1f4d-726e-5a2d-afa2-3468a17bff5e</xsl:when>
        <xsl:when test=".='WVUD Microfilm'">f73deb94-9a19-5654-bfb7-7faa2a22347e</xsl:when>
        <xsl:when test=".='WVUD Bindery'">1a64050d-aa39-5b6b-b9ea-af047af2f6b0</xsl:when>
        <xsl:when test=".='WVUD Closed Stacks Non Circulating'">330df670-76b6-51f9-aa5f-f6c6cc4b2800</xsl:when>
        <xsl:when test="starts-with(., 'WVUD')">b965fb49-247f-5168-ac0f-d28f611f639f</xsl:when> <!-- Unmapped (WVUD)-->
        <xsl:when test=".='WVUE Children's Award Winners Collection'">a431b050-23c4-50a9-9048-e1c09784f492</xsl:when>
        <xsl:when test=".='WVUE Children's Collection'">63682644-aedf-5ee1-a60b-4ff8ca3ab443</xsl:when>
        <xsl:when test=".='WVUE Closed Stacks'">3a79ab94-b3d8-51a8-b3c6-8a86016dd119</xsl:when>
        <xsl:when test=".='WVUE Closed Stacks In Library Circulating'">cc0fd358-01e9-511f-9451-1aa62574f632</xsl:when>
        <xsl:when test=".='WVUE Compact Shelving'">4ff38c9c-34d6-55bb-a891-1620fdbc644b</xsl:when>
        <xsl:when test=".='WVUE Cookbook Collection'">db0aeff1-b966-53d6-80b0-b096c5f5e241</xsl:when>
        <xsl:when test=".='WVUE DVD'">05863b60-e9ef-542f-8ca7-c429d821d897</xsl:when>
        <xsl:when test=".='WVUE Government Documents'">ead7a6bd-1512-5d90-b453-6fd9456acbc1</xsl:when>
        <xsl:when test=".='WVUE Leisure Reading'">ba36bd13-a1b3-580d-816d-d2f6c23214af</xsl:when>
        <xsl:when test=".='WVUE Microfiche'">9fd3ea10-7080-5eb1-a5d2-e7cced0320f6</xsl:when>
        <xsl:when test=".='WVUE Microfilm'">3d8ed82a-9ae7-5a1f-8e13-b9abe3536e3a</xsl:when>
        <xsl:when test=".='WVUE Miniature Score'">eed259d5-f87a-5fcd-a8cf-eea1a51fb95a</xsl:when>
        <xsl:when test=".='WVUE Oversize'">2a9d7709-f328-5d40-be3a-72bce9feecfb</xsl:when>
        <xsl:when test=".='WVUE Patent'">56af6b96-ee03-5e1c-9040-905b1eaa7408</xsl:when>
        <xsl:when test=".='WVUE Stacks'">b3ea63a0-f4c7-5486-ab90-51b466229fa2</xsl:when>
        <xsl:when test=".='WVUE Access Services Desk - Audio Cassette'">2487f928-64ac-5385-b27c-a4345bd5366f</xsl:when>
        <xsl:when test=".='WVUE Access Services Desk - Audio Compact Disc'">615a131d-66dc-5a50-9820-186c0240b238</xsl:when>
        <xsl:when test=".='WVUE Access Services Desk - Compact Disc'">023a726f-0e80-5166-b03c-c8d630380604</xsl:when>
        <xsl:when test=".='WVUE Access Services Desk - Laptop'">a844c217-8cbd-53a9-969e-825d164edb49</xsl:when>
        <xsl:when test=".='WVUE Access Services Desk - Permanent Reserve 2 hour'">b26340bb-09bb-520a-8d29-d22514b1f2f4</xsl:when>
        <xsl:when test=".='WVUE Access Services Desk - Permanent Reserve 7 Day'">91efb573-5f2e-546e-a4cb-8663c484335f</xsl:when>
        <xsl:when test=".='WVUE Access Services Desk - Reserve 2 hour'">19400436-ce2f-5881-8090-64a93a3368d6</xsl:when>
        <xsl:when test=".='WVUE Access Services Desk - Reserve 7 Day'">3d4e350a-983a-55cc-94f1-f61be205f62a</xsl:when>
        <xsl:when test=".='WVUE Access Services Desk - Tech Equipment 7 Day'">d37ea6d6-29c0-5c34-8396-682b239070a8</xsl:when>
        <xsl:when test=".='WVUE Access Services Desk - Tech Equipment 8 hour'">f242abc1-8588-5aac-96d7-654858e77f99</xsl:when>
        <xsl:when test=".='WVUE Access Services Desk Reserve'">ed1480f0-8d97-5c58-8225-50e5b1abec1f</xsl:when>
        <xsl:when test=".='WVUE Bindery'">7c01e38b-78e2-52de-a76d-49473bed9e07</xsl:when>
        <xsl:when test=".='WVUE Closed Stacks Non Circulating'">84db3a2c-51cd-5885-8875-42d647be7f71</xsl:when>
        <xsl:when test=".='WVUE Current Periodicals'">34290ed8-34a2-5208-a78c-28beec09c8f3</xsl:when>
        <xsl:when test=".='WVUE Children's Reference Collection'">e4b09266-2849-5da0-a8b2-bdc7a5829482</xsl:when>
        <xsl:when test=".='WVUE Cleanup'">5709f9f4-abb2-5e49-ae9a-ac13b4bbe3cc</xsl:when>
        <xsl:when test=".='WVUE E-ZBorrow Temporary Loans'">ce0a1952-aefe-5f7b-b963-85952c4095e8</xsl:when>
        <xsl:when test=".='WVUE Faculty Office'">50bf9b43-3f56-5494-ad7d-4352a925b240</xsl:when>
        <xsl:when test=".='WVUE KARM Storage'">4459e472-30ef-5cbd-b376-363ee5ec97f0</xsl:when>
        <xsl:when test=".='WVUE Lockers - Ask at Access Services Desk'">8d37ef3f-6201-5ad5-915b-3d70b9f8232c</xsl:when>
        <xsl:when test=".='WVUE OCIS Tech Equipment - 14 Day'">d481c533-424d-5c2b-b5b3-6def50c755c4</xsl:when>
        <xsl:when test=".='WVUE Plays'">14a7a9da-fa02-589b-9d31-0e9e2e74cf5d</xsl:when>
        <xsl:when test=".='WVUE Reference'">10cf4478-cef7-5e14-8611-b878070a863d</xsl:when>
        <xsl:when test=".='WVUE Reference Test Prep'">649e5c4b-000d-51cb-8d9e-59dd2799d542</xsl:when>
        <xsl:when test="starts-with(., 'WVUE')">20f8fe01-b202-5484-ad31-e96d7ccf68f7</xsl:when> <!-- Unmapped (WVUE)-->
        <xsl:when test=".='WVUH Audiovisuals'">e832579f-b5ae-54ae-b04b-e5b15dcfc0dd</xsl:when>
        <xsl:when test=".='WVUH CD-ROM'">63137424-9096-5120-8b4d-1b0ffa4d0dc5</xsl:when>
        <xsl:when test=".='WVUH Closed Stacks'">b9cbd4d6-ffef-54ff-b063-0148ae1d46f3</xsl:when>
        <xsl:when test=".='WVUH Closed Stacks In Library Circulating'">2a2f271f-91f3-5378-a019-559e05c28391</xsl:when>
        <xsl:when test=".='WVUH Current Stacks'">e9a8c5d3-a995-5cab-9b9b-b8dcb4939bf3</xsl:when>
        <xsl:when test=".='WVUH DVDS'">55f44c25-9586-59ac-bcc3-4b5714495b40</xsl:when>
        <xsl:when test=".='WVUH Government Documents'">f0581ee6-a3c1-5dcd-94d5-c1f858a19ed7</xsl:when>
        <xsl:when test=".='WVUH Leisure Reading Collection'">8ec54f6c-fd39-5fbb-b4ee-3386b81df45e</xsl:when>
        <xsl:when test=".='WVUH Microfiche'">f1a3bca8-84db-5ff8-a7b7-8e6da48f882c</xsl:when>
        <xsl:when test=".='WVUH Microfilm'">4d1ca16a-160c-5081-af77-212f2cfd7f37</xsl:when>
        <xsl:when test=".='WVUH Bindery'">c277a1e8-711a-5660-bbcf-93d7cfa0a98e</xsl:when>
        <xsl:when test=".='WVUH Cleanup'">83d307f0-ca58-550f-b7ad-638c8ce328f7</xsl:when>
        <xsl:when test=".='WVUH Closed Stacks Non Circulating'">75b15a48-1bbd-5c7a-8c43-84a0040c6aeb</xsl:when>
        <xsl:when test=".='WVUH Course Reserves'">e5eef965-bc80-5c08-a0f8-2b448008779f</xsl:when>
        <xsl:when test=".='WVUH Current Periodicals'">077d9af9-f1ca-5f02-9b1b-5ffc65e29f87</xsl:when>
        <xsl:when test=".='WVUH E-ZBorrow Temporary Loans'">aae151b8-88a4-5811-8d87-5172761e3801</xsl:when>
        <xsl:when test=".='WVUH Equipment'">5312613e-a817-5d2f-bb6a-ba422f4768a6</xsl:when>
        <xsl:when test=".='WVUH Faculty Office'">23216a04-ef76-5059-9ca5-9bbb996313e0</xsl:when>
        <xsl:when test=".='WVUH History of Medicine Collection'">bbcf03fd-5706-5e10-a6a0-dd4e4d78ca37</xsl:when>
        <xsl:when test=".='WVUH History of Medicine Collection Restricted'">779f5fc7-5969-541d-bf7f-a0f5861805ce</xsl:when>
        <xsl:when test=".='WVUH Online'">f988b044-60fe-5ee2-94ed-aac4ad55dd6a</xsl:when>
        <xsl:when test=".='WVUH Periodicals'">1adec8f9-04bf-58d0-a4eb-6cb8e405e8c9</xsl:when>
        <xsl:when test=".='WVUH Reference'">d01c0392-a622-58ac-9ac8-776ba1752aea</xsl:when>
        <xsl:when test=".='WVUH West Virginia Medical History Collection'">f3a41410-3c87-563e-b79f-4e33f37443bd</xsl:when>
        <xsl:when test=".='WVUH Women's Health Collection'">47b92ff9-5a16-5f3e-a4aa-cc06a7199fc8</xsl:when>
        <xsl:when test="starts-with(., 'WVUH')">42c27d5d-2457-5772-9d2e-85765758f53c</xsl:when> <!-- Unmapped (WVUH)-->
        <xsl:when test=".='WVUL General Collection'">3bf562e2-dbe0-5b22-8c4d-e013a3999607</xsl:when>
        <xsl:when test=".='WVUL General Collection Non-Circulating'">ff8f9c7a-38a7-5968-b526-f49838f9c27b</xsl:when>
        <xsl:when test=".='WVUL Law Cleanup'">a9370063-de3d-5a57-9472-39304db873b7</xsl:when>
        <xsl:when test=".='WVUL Legal Leisure'">7eb88ffa-f93e-5494-8d51-d80f42588a2f</xsl:when>
        <xsl:when test=".='WVUL Media'">12a9fa57-9616-5efe-b8c7-a1220a90002e</xsl:when>
        <xsl:when test=".='WVUL Media Services Equipment 4 hours'">1d03aacf-25b4-5918-83b9-b396ba07a280</xsl:when>
        <xsl:when test=".='WVUL Media Services Equipment 7 day'">de3bc1c4-f9dd-5dfc-bc60-667f7b4f8206</xsl:when>
        <xsl:when test=".='WVUL Online'">99b488ee-6425-5d20-a856-bc7c2036d5c3</xsl:when>
        <xsl:when test=".='WVUL Oversize'">63357c57-ab49-5a76-8167-11a6d45bb6ed</xsl:when>
        <xsl:when test=".='WVUL Racial Justice Collection'">9832db86-f61b-5049-8ffd-a13b414245d8</xsl:when>
        <xsl:when test=".='WVUL Rare Book Room'">8391d1a1-7f33-5167-a663-5f477cdb8a01</xsl:when>
        <xsl:when test=".='WVUL Reference'">52c92eea-769e-526a-98ed-2fb594062be1</xsl:when>
        <xsl:when test=".='WVUL Reserve'">1a9f4f0f-778c-508c-ac78-676d63492afa</xsl:when>
        <xsl:when test=".='WVUL Storage'">185a2adf-786e-5d7f-84bc-31764560ece1</xsl:when>
        <xsl:when test=".='WVUL Study Aids'">5223511f-8a15-549b-afa2-2af88f033a67</xsl:when>
        <xsl:when test=".='WVUL Video Collection'">09060f11-fa31-5d8f-85cd-de7ee65de563</xsl:when>
        <xsl:when test=".='WVUL West Virginia Collection'">67d74d56-ab92-5d11-a771-1c05f2580a58</xsl:when>
        <xsl:when test=".='WVUL West Virginia Collection Non-Circulating'">7fcc30bf-517b-5160-aaff-3f05e1d09565</xsl:when>
        <xsl:when test=".='WVUL Animal Law Collection'">a2a7918e-20c8-5f2a-933f-72f86326fe6a</xsl:when>
        <xsl:when test=".='WVUL Archive Room'">0980f71a-9a29-587a-be80-7a559df95071</xsl:when>
        <xsl:when test=".='WVUL Audio Collection'">786bf757-62c8-5992-a239-478043116773</xsl:when>
        <xsl:when test=".='WVUL Bar Reserve'">c4cb2d17-b327-5a24-a529-121ddabc2250</xsl:when>
        <xsl:when test=".='WVUL Bindery'">8b993d50-19f4-5ed9-b4fa-e218ed905e3d</xsl:when>
        <xsl:when test=".='WVUL Career Serices'">99e0c947-9ebf-5779-8c1f-cbd0402718c5</xsl:when>
        <xsl:when test=".='WVUL CDRom Collection'">906e41c8-b704-5496-b5db-2e355239120b</xsl:when>
        <xsl:when test=".='WVUL Circulation Desk'">dc957a61-2674-5349-91fb-3aa3fdf321e7</xsl:when>
        <xsl:when test=".='WVUL E-ZBorrow Temporary Loans'">4feb87dd-f831-5976-9333-9e9b45d0699a</xsl:when>
        <xsl:when test=".='WVUL Entrepreneur'">8ceaecb0-7a78-5bbb-9639-5a71d0abf91e</xsl:when>
        <xsl:when test=".='WVUL Faculty Office'">2b0aa577-ce3b-5d23-93b7-eec133a0a438</xsl:when>
        <xsl:when test=".='WVUL Faculty Scholarship'">9d02ad99-a145-5d1d-9e06-5e9f85b4d0be</xsl:when>
        <xsl:otherwise>ca764fc7-e00c-513f-9d95-8a31ce153033</xsl:otherwise> <!-- Unmapped (WVUL) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>bf7e9358-d23b-572b-8ad9-4a578e77e95d</institutionId>
  </xsl:template>

</xsl:stylesheet>
