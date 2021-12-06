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
    <identifierTypeId>8a16d4a7-5e8d-5717-a3a9-71ffdf788fcb</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='BOARDGAME '">3f5ef27c-a33e-590e-b430-472cd18e856c</xsl:when>
        <xsl:when test=".='CDROM '">b75a07dc-aa31-5313-a419-1cd349bd03fe</xsl:when>
        <xsl:when test=".='CHDVD '">ab2e9b92-06df-5d29-a7a5-033540f0b66c</xsl:when>
        <xsl:when test=".='COMPACTDSC '">0358dc44-6967-5fe5-a209-81dbe845e81a</xsl:when>
        <xsl:when test=".='CONSHEALTH '">0de7fc44-58ce-57cd-9847-c35bdee12b49</xsl:when>
        <xsl:when test=".='COOK '">5532d8ed-6d10-5039-a579-985b01332d74</xsl:when>
        <xsl:when test=".='COOK EASY '">afefe31e-dec9-5769-937b-e894bda3e027</xsl:when>
        <xsl:when test=".='COOKOVRSIZ '">339414b7-1bfe-52df-96cc-65acad26d41f</xsl:when>
        <xsl:when test=".='COOKTHESIS '">5cd36365-aaba-5821-ac01-2ce2c5b53983</xsl:when>
        <xsl:when test=".='DEPOSITORY '">2eab4514-520f-5512-8ce0-c42f1d45b5a7</xsl:when>
        <xsl:when test=".='DEWEY '">4b5e8b8e-0485-5a55-ac32-87db3f30a151</xsl:when>
        <xsl:when test=".='DVD '">b3168476-f6a2-5daa-8ba4-26a5e3c4dfd3</xsl:when>
        <xsl:when test=".='EAFOLIO '">a785dabf-3ded-5613-9571-c8d8623e6824</xsl:when>
        <xsl:when test=".='EAOVRSIZE '">27053d63-b2bb-5567-ab38-fde849d9738d</xsl:when>
        <xsl:when test=".='EASTASIAN '">861ff7b0-7887-5611-be68-857dde3d4bac</xsl:when>
        <xsl:when test=".='EVANS '">bbc3896c-896c-50c2-911a-abdc33b1e08b</xsl:when>
        <xsl:when test=".='EVANSCDROM '">09a07a45-e977-5111-94ed-0b9a5362aec6</xsl:when>
        <xsl:when test=".='EVANSCIA '">40f98fa8-97c6-53d6-b997-0e294daf886f</xsl:when>
        <xsl:when test=".='EVANSSPEC '">8b7a1927-4c52-521a-8cb9-4d7212594c15</xsl:when>
        <xsl:when test=".='FELDATBKR '">8ce0486d-ed27-5175-b7d1-d7553541edd4</xsl:when>
        <xsl:when test=".='FOLIO '">be9fa191-7f33-5862-bb94-62581ba9898a</xsl:when>
        <xsl:when test=".='GOVDOCS '">fd6376ae-6984-5d33-9206-1ed82de43201</xsl:when>
        <xsl:when test=".='HARVARDCOL '">0a28b699-d73a-5538-aee8-b2d2bc4259dc</xsl:when>
        <xsl:when test=".='JAPAN '">f9e61143-bf27-5ffa-9038-ac9d095498ac</xsl:when>
        <xsl:when test=".='JONESMSTR '">a09727c7-21d7-5f40-952f-212512e4d0ea</xsl:when>
        <xsl:when test=".='JPNREF '">be1a87e2-1205-540c-9115-a1fa40623b27</xsl:when>
        <xsl:when test=".='KOREA '">65ed0eff-5267-5949-8ae2-bc155bd1eeb0</xsl:when>
        <xsl:when test=".='MUSREF '">51db3c9c-49b2-5c63-a6e0-217fa3fe923e</xsl:when>
        <xsl:when test=".='NASH '">cffdaec0-c17d-5a78-8dc3-e12006340119</xsl:when>
        <xsl:when test=".='NOTCATRSRV '">d3496e25-6e6d-5b1b-b1a3-056095b27518</xsl:when>
        <xsl:when test=".='OLD DART '">e3022f19-147b-5f27-abfe-79e07be9daeb</xsl:when>
        <xsl:when test=".='OVERSIZE '">1a52bea5-91a5-571e-9e5b-fcd9cf99e022</xsl:when>
        <xsl:when test=".='PERMRSRV '">483612f2-4956-5609-a29d-c4107a0f06e3</xsl:when>
        <xsl:when test=".='PHONODISC '">8d024e26-d6a1-5842-8b87-3bc64951f26e</xsl:when>
        <xsl:when test=".='PHONOTAPE '">f250dced-8605-56b8-aa5a-e0e3a113cacc</xsl:when>
        <xsl:when test=".='PHYSSCIJOU '">0ce5d1ac-d693-54d4-9de9-8c4ed61a4922</xsl:when>
        <xsl:when test=".='PHYSSCITHE '">175b442e-5834-5e08-905e-74c49b841193</xsl:when>
        <xsl:when test=".='POPSCI '">93ad34ad-c730-5178-8f63-18389a633f10</xsl:when>
        <xsl:when test=".='REFERENCE '">ec64ee14-c4e4-5d10-8972-06f3770788a0</xsl:when>
        <xsl:when test=".='RESERVEFCH '">45066647-3697-5aa8-96f9-16ab28cff11f</xsl:when>
        <xsl:when test=".='SPECIAL '">89d34140-4aab-5d54-95f7-c763603c4ab5</xsl:when>
        <xsl:when test=".='STACKS '">5586467c-717c-5b71-b5a1-3cc327d01614</xsl:when>
        <xsl:when test=".='TOWERROOM '">e91a3a52-ca62-5ff6-866c-8f65792c457b</xsl:when>
        <xsl:when test=".='TOWERROOMT '">5ef3cc12-174b-5541-a9ed-74affdf76198</xsl:when>
        <xsl:when test=".='VIDEOTAPE '">02ee32a8-ffb9-5c7c-9fe5-aabdad685ad9</xsl:when>
        <xsl:when test=".='W1926 '">27ddb1a2-6e4d-55fa-82e7-486c941c035a</xsl:when>
        <xsl:when test=".='WALU '">35ff037b-fac4-5809-afd7-b571ad43be09</xsl:when>
        <xsl:when test=".='WBIE '">d315f55b-8192-581a-8123-30ee84d4a7e5</xsl:when>
        <xsl:when test=".='WBIN '">097571d2-1c23-5ecd-9614-9cff6466fab3</xsl:when>
        <xsl:when test=".='WBRL '">ddd87eb7-de3e-5f18-8e54-d9ae0c4cbf32</xsl:when>
        <xsl:when test=".='WBRO '">abdf4b47-2c46-5437-965d-c272ae43a25d</xsl:when>
        <xsl:when test=".='WBRY '">35f3fe3b-52cf-5543-9dea-151f2cf5c32c</xsl:when>
        <xsl:when test=".='WBUR '">c6ceec6b-b038-534b-bac3-68c337c03a56</xsl:when>
        <xsl:when test=".='WCAD '">6d21a661-b220-5064-b230-59f8d7a7bea5</xsl:when>
        <xsl:when test=".='WCAL '">62ebe365-1a4c-5fba-8d70-4e3820033a8a</xsl:when>
        <xsl:when test=".='WCAN '">4601fc70-0046-5fe8-b2ed-6786ad0729c9</xsl:when>
        <xsl:when test=".='WCHN '">fb9835c1-2b3f-588e-a721-e088dd87bd80</xsl:when>
        <xsl:when test=".='WCHSB '">e8848c5e-c076-5120-96de-1222aa61efcc</xsl:when>
        <xsl:when test=".='WCON '">a17d7889-d9d8-5872-bf15-5860894f4d83</xsl:when>
        <xsl:when test=".='WCRA '">42fde964-227b-52b1-a477-0e02c65cafc8</xsl:when>
        <xsl:when test=".='WDCH '">0573a48c-37d0-593b-a7b4-9519431f8b60</xsl:when>
        <xsl:when test=".='WDCL '">5e0e346b-37c9-5b2f-861a-0272ccd7f09a</xsl:when>
        <xsl:when test=".='WDCO '">d21dfdd0-e9ce-597e-87da-9a014362c05e</xsl:when>
        <xsl:when test=".='WDCT '">955f1698-514c-585f-8a86-e34f418213f2</xsl:when>
        <xsl:when test=".='WDEW '">c1ba93af-8235-5850-b38b-b9a9ca24bf7b</xsl:when>
        <xsl:when test=".='WEBE '">741ef5d5-05bf-5d94-9762-3381e1b488be</xsl:when>
        <xsl:when test=".='WEDT '">f79b21ee-c30e-53c0-a774-e052bfd7bb26</xsl:when>
        <xsl:when test=".='WFRO '">728113b4-c0a1-5840-abc8-e784b2b5a057</xsl:when>
        <xsl:when test=".='WGIL '">e85a227f-d2ec-591f-abb1-00a7bc5e15d0</xsl:when>
        <xsl:when test=".='WHEW '">bb68dd87-db60-59bc-a93f-b1d852ec5a3e</xsl:when>
        <xsl:when test=".='WHIC '">54ea009c-71ff-52b0-8600-0f1aca721588</xsl:when>
        <xsl:when test=".='WHUD '">23c3743a-0559-5d81-94b4-41d487973fb3</xsl:when>
        <xsl:when test=".='WHUX '">988d73a6-e348-5d4d-a23d-ae9c6f25e2b1</xsl:when>
        <xsl:when test=".='WILL '">416e2275-e26e-5ee2-b9ba-df65dd5ac71d</xsl:when>
        <xsl:when test=".='WINC '">01bc053f-7e13-5395-b106-ec45fd5e553e</xsl:when>
        <xsl:when test=".='WLAN '">1235bd6d-2210-5594-9364-21a652502f06</xsl:when>
        <xsl:when test=".='WLAW '">93798b0c-8cbb-5e84-9176-a1ea9b0cb9d8</xsl:when>
        <xsl:when test=".='WLIN '">8c54c41b-a599-5cfc-ae81-acac160c2682</xsl:when>
        <xsl:when test=".='WLOG '">ab5a801a-cc40-54d3-9cbf-f83ffd10eb66</xsl:when>
        <xsl:when test=".='WLON '">69286da7-59d1-5b5a-a408-a52fccb5bca8</xsl:when>
        <xsl:when test=".='WMAN '">d63fe594-86a8-5d48-86da-95001e0eba15</xsl:when>
        <xsl:when test=".='WMCG '">806c6c9e-886c-5fec-895e-0422fb5393b8</xsl:when>
        <xsl:when test=".='WMEL '">4c3c27ae-7680-556c-80a0-5aaaaa5eda99</xsl:when>
        <xsl:when test=".='WMEN '">354920ec-0791-5a90-8ee4-4d5825e35a80</xsl:when>
        <xsl:when test=".='WMFR '">9ee25bd9-5fb2-5c76-8df2-25e2ba23adb0</xsl:when>
        <xsl:when test=".='WMIN '">f3f684ab-6885-59ab-b53b-fe7d14335202</xsl:when>
        <xsl:when test=".='WMNC '">6bcc814b-b7b5-576e-b13f-feafa6cb6eef</xsl:when>
        <xsl:when test=".='WMST '">a0ee3f0a-80a1-544b-a140-058f359dcedf</xsl:when>
        <xsl:when test=".='WMWE '">2319005e-3e7d-5a1e-a09f-cc2471f3f58b</xsl:when>
        <xsl:when test=".='WNAM '">84172ea6-e763-5e7a-8bea-b0b1eff7031a</xsl:when>
        <xsl:when test=".='WNCA '">ae212232-9a14-51cc-8330-9904c05bc3ea</xsl:when>
        <xsl:when test=".='WNCN '">50999f27-70da-5c53-99d6-e4a9d7599c79</xsl:when>
        <xsl:when test=".='WNDO '">23424883-9255-5519-a6e9-5d3916f5ab62</xsl:when>
        <xsl:when test=".='WNEX '">d9818ebc-b445-5767-ac51-998a29c29227</xsl:when>
        <xsl:when test=".='WNHI '">5c726106-3bab-5c04-aeee-a3a88c746c2d</xsl:when>
        <xsl:when test=".='WNMR '">afface12-6a9c-52d0-b73d-ce2ad01aa7ca</xsl:when>
        <xsl:when test=".='WNNA '">ee69fad7-f392-5f19-9c7f-c4566134b7c4</xsl:when>
        <xsl:when test=".='WNPO '">7187bdce-d535-50ab-8f12-567ae560234f</xsl:when>
        <xsl:when test=".='WNPT '">603cfd02-4d8a-575f-b9f1-e74783c3fb41</xsl:when>
        <xsl:when test=".='WNST '">7d728981-90cd-55a6-abf4-dc5c56c1a4c4</xsl:when>
        <xsl:when test=".='WNSV '">3cc976d0-edf2-5260-952d-811a90fcc6ee</xsl:when>
        <xsl:when test=".='WNWL '">244520eb-418f-5fab-8b27-899ce390b700</xsl:when>
        <xsl:when test=".='WOLI '">a359297b-5842-5c74-897b-54cac36d1680</xsl:when>
        <xsl:when test=".='WONE '">d870addc-bfbb-5cdc-b3d7-fdb39a46e93e</xsl:when>
        <xsl:when test=".='WPRE '">3eb01938-14ee-5345-8c5b-a82085a6414e</xsl:when>
        <xsl:when test=".='WPREB '">26b4ef72-c593-5450-bbe5-09e1cf097462</xsl:when>
        <xsl:when test=".='WQUI '">947e2e48-a8d3-5788-a651-0dbc9934b008</xsl:when>
        <xsl:when test=".='WRAB '">084a545f-7c13-54ad-b86b-c720ce120526</xsl:when>
        <xsl:when test=".='WRAI '">160d2a5f-ff86-58ba-b84f-e84313c3bfe5</xsl:when>
        <xsl:when test=".='WRAUA '">5bc7c85f-d124-5411-8bea-8e8f87ff9dd9</xsl:when>
        <xsl:when test=".='WRAUB '">2a9dc224-b0c0-5295-a3a6-a0e74e2c7d69</xsl:when>
        <xsl:when test=".='WRAUI '">f4d6a0a6-c41f-5374-9ee1-ea2209094d2b</xsl:when>
        <xsl:when test=".='WRAUV '">da59f207-2f51-5f0c-83f8-f49e797d6033</xsl:when>
        <xsl:when test=".='WRAUZ '">72d13ce7-2684-51e4-b40d-9a1353098c6e</xsl:when>
        <xsl:when test=".='WRED '">4c6e7b39-48bd-5588-beeb-b8cdc668c616</xsl:when>
        <xsl:when test=".='WROB '">09deef6b-3817-5266-aafb-794f0eeae5f2</xsl:when>
        <xsl:when test=".='WROI '">6921d451-09e8-516e-a8ff-b463c951b299</xsl:when>
        <xsl:when test=".='WROL '">395890a2-90a6-52ca-b786-24ad1a6f8257</xsl:when>
        <xsl:when test=".='WRRF '">391f5b60-e545-59d6-ab95-bf8b0e0a7635</xsl:when>
        <xsl:when test=".='WRUZ '">41b73960-06ff-5520-b672-533a80728ec0</xsl:when>
        <xsl:when test=".='WSCH '">d0665e7a-35fb-57fc-8397-e47523d9335f</xsl:when>
        <xsl:when test=".='WSCR '">1d792b69-95f2-510e-a56f-2f38a55af65e</xsl:when>
        <xsl:when test=".='WSEF '">46ea6684-f3a4-5358-8650-ee65e9b70bf9</xsl:when>
        <xsl:when test=".='WSHE '">7fcc4d3f-432b-53a3-bbb5-2aebf371d900</xsl:when>
        <xsl:when test=".='WSIN '">4b446808-3d68-5f01-9094-a83b8ba2bef4</xsl:when>
        <xsl:when test=".='WSIS '">fa3b8f8e-cce6-5190-b3a2-e2e5f81683ad</xsl:when>
        <xsl:when test=".='WSMJ '">b660fd19-ca84-5eea-ad59-fa4dd8ad192a</xsl:when>
        <xsl:when test=".='WSTA '">0dd0f1d9-db8c-53a4-a814-72e788e1be17</xsl:when>
        <xsl:when test=".='WSTE '">c4aa3c57-2534-5b2e-bb13-ca78109f2435</xsl:when>
        <xsl:when test=".='WSTV '">99f09d96-c57c-5fdf-aaad-437a5912a669</xsl:when>
        <xsl:when test=".='WTAG '">8560f69b-d8ef-5a5f-b781-c433a76cdb07</xsl:when>
        <xsl:when test=".='WTHO '">5adbfaf9-c4f2-5e59-8b50-909abb8e2f42</xsl:when>
        <xsl:when test=".='WTHS '">e204adbb-ec5f-571f-aa64-b3b192967b90</xsl:when>
        <xsl:when test=".='WTIC '">c071fcc2-3c2e-55b7-84f8-bb25857903ae</xsl:when>
        <xsl:when test=".='WTOM '">92a30f23-3438-5875-b30f-b7078a7c88c1</xsl:when>
        <xsl:when test=".='WVAL '">f242fc3f-b8c6-5f79-8935-16dcefdb2f5f</xsl:when>
        <xsl:when test=".='WWEB '">77807b21-9bd2-5523-9579-2a03ab515977</xsl:when>
        <xsl:when test=".='WWEBS '">1d10a6b5-78dd-5dc8-8348-a6fd572876e6</xsl:when>
        <xsl:when test=".='WWHI '">9c3eacb2-900c-5933-a8ba-c9da96029031</xsl:when>
        <xsl:when test=".='WWIL '">09378cc4-2a76-506f-96c2-9f7638a21603</xsl:when>
        <xsl:when test=".='WWLW '">3f74e4f4-8e7c-597b-aa61-d4d28ca822e7</xsl:when>
        <xsl:when test=".='WWOO '">73888386-5403-5cef-adc8-695a55ce8ed2</xsl:when>
        <xsl:otherwise>0ddad25a-e9f4-596b-9de4-605ec99622ed</xsl:otherwise> <!-- Unmapped (US-NhD) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>7624f243-5141-57ca-9ade-085f467b14ed</institutionId>
  </xsl:template>

</xsl:stylesheet>
