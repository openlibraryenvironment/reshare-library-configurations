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
    <identifierTypeId>c0e76bab-f6e1-540f-b9b9-57a9b7192667</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='sldocspa'">823d12a7-82d7-5cc0-80d6-4d7be575f8c5</xsl:when>
        <xsl:when test=".='sldocsus'">69aa583e-f678-5c8f-a3f4-c5db0eaef5f6</xsl:when>
        <xsl:when test=".='slmain'">4beab732-b81f-5899-867c-71559105e641</xsl:when>
        <xsl:when test=".='slmainovr'">54058a73-0a54-56fa-bc27-2f77c2eddb09</xsl:when>
        <xsl:when test=".='slstks'">35ae0105-1ab8-5629-a79f-9999887c9d05</xsl:when>
        <xsl:when test=".='slstkover'">3a59d568-da25-5212-8cf7-c8f3360905e8</xsl:when>
        <xsl:when test=".='slstkrovr'">fc29ef36-c81c-5b7f-9498-b258ff743524</xsl:when>
        <xsl:when test=".='Newspapers'">02fa3daa-a735-59c4-b0cb-a42f9c5217db</xsl:when>
        <xsl:when test=".='sldocscd'">8cb30c8a-f4da-5fad-8f43-3b4a01a89643</xsl:when>
        <xsl:when test=".='sldocscis'">f61722d5-b696-59c5-b1d8-9f1eda246e67</xsl:when>
        <xsl:when test=".='sldocsdvd'">594a35a4-7233-57ee-b9a7-44addf7986ec</xsl:when>
        <xsl:when test=".='sldocsfilm'">3225354c-6d79-5ff0-b15a-60a06648aab0</xsl:when>
        <xsl:when test=".='sldocsmf'">45449273-5161-5632-b7f7-381bda66d71a</xsl:when>
        <xsl:when test=".='sldocspacd'">bfccf44c-5e40-573c-b0b7-f3afad5edb1c</xsl:when>
        <xsl:when test=".='sldocspam'">23c90ef7-4b27-5f47-bd5e-c604c24115e7</xsl:when>
        <xsl:when test=".='sldocspamf'">62d252ba-64e0-5de1-b36b-40dfae54f2c2</xsl:when>
        <xsl:when test=".='sldocusvid'">b9d889e6-bae3-5529-8d37-58b407caa475</xsl:when>
        <xsl:when test=".='slgeno'">2b04654e-4a8c-5f76-afc5-7c1a98d4fe19</xsl:when>
        <xsl:when test=".='slgenoill'">76ccfcd7-1dd8-5092-8e2f-f8fe7eb4f98c</xsl:when>
        <xsl:when test=".='slgenorfc'">53578507-b544-5d69-a25f-7b72ad8cee5a</xsl:when>
        <xsl:when test=".='slgenorfm'">51877ea5-724c-58ed-b6bb-f2398cd08c17</xsl:when>
        <xsl:when test=".='slgenosfc'">a91b7a7b-2702-57ab-bf66-0f150a6f5d02</xsl:when>
        <xsl:when test=".='slgenosfm'">ee657363-ef68-5600-9c6b-af01088d8997</xsl:when>
        <xsl:when test=".='sllaw'">0dc70b6c-40b5-5704-98d7-0b16b2e46994</xsl:when>
        <xsl:when test=".='sllawcase'">46f2572b-7aa8-589e-80fd-24d767cff659</xsl:when>
        <xsl:when test=".='sllawcd'">68226cb6-1ea0-5e53-8986-b57060e0d7ef</xsl:when>
        <xsl:when test=".='sllawfm'">b294fce0-5150-5b34-98ce-595162365beb</xsl:when>
        <xsl:when test=".='sllawper'">d077345e-0c69-5c6e-a258-a61a6aa17191</xsl:when>
        <xsl:when test=".='sllawref'">013837c6-d327-50db-8249-9f12ae5a05f1</xsl:when>
        <xsl:when test=".='sllawrfc'">eb75f2cb-732d-5400-b61a-fa8a28dc5a0a</xsl:when>
        <xsl:when test=".='sllawsfc'">ce320b31-1bbf-5fb3-9703-9d3d5ab63457</xsl:when>
        <xsl:when test=".='sllawstat'">16d40701-4b79-5e36-b7b2-0a7624c15dbc</xsl:when>
        <xsl:when test=".='sllawstks'">4db7793a-60c9-5fc9-8933-539e71482ad2</xsl:when>
        <xsl:when test=".='sllawstor'">3247ee28-ec8e-5c4c-a3b4-e8438cb0fd1d</xsl:when>
        <xsl:when test=".='sllc'">bed5a227-9c39-5d80-9b64-5f1d38660840</xsl:when>
        <xsl:when test=".='sllcovr'">a226eaa3-9829-5c26-864a-4a8cb8113eb9</xsl:when>
        <xsl:when test=".='sllcref'">05c70923-0d3e-5801-91cf-b703b42f09d9</xsl:when>
        <xsl:when test=".='sllcrefovr'">1b84bc1a-323e-5d7c-a040-f461acd6a415</xsl:when>
        <xsl:when test=".='sllcstk'">9241e552-f331-5177-862f-95e005fa03bb</xsl:when>
        <xsl:when test=".='sllcstkovr'">b6b54cce-726d-5d65-a0fa-8796da688e8e</xsl:when>
        <xsl:when test=".='slmainfc'">941dc7e7-cbee-5baf-a420-7064fec3b186</xsl:when>
        <xsl:when test=".='slmainfm'">b5a1c50d-8a1e-5b1e-96cc-dfb5dcd7477c</xsl:when>
        <xsl:when test=".='slmainfol'">502d1808-12be-5374-877e-aea40666cb4a</xsl:when>
        <xsl:when test=".='slmainmap'">4433b923-22a2-5027-b40f-887a1264edce</xsl:when>
        <xsl:when test=".='slmainnl'">afccb19b-7936-5178-9eaa-c43432b6ffce</xsl:when>
        <xsl:when test=".='slmainper'">5cf61489-84f7-5eb8-b0ae-b5bcd4050853</xsl:when>
        <xsl:when test=".='slmicrper'">da8d447f-1494-531a-a092-56e0a51a6f66</xsl:when>
        <xsl:when test=".='slnewmicr'">414cb565-16d3-5491-85e5-698d66194c6b</xsl:when>
        <xsl:when test=".='slneworig'">246d9308-12f7-52a5-9b69-2c5e12d92bdf</xsl:when>
        <xsl:when test=".='slrare'">442932cb-2252-502f-a5d3-3277e367defc</xsl:when>
        <xsl:when test=".='slrarea'">24e2c0ce-5494-53bc-8d95-799fa7d266ed</xsl:when>
        <xsl:when test=".='slraredoc'">0eede880-2312-540e-bfe0-da85bc86d7cf</xsl:when>
        <xsl:when test=".='slrareflfl'">02d9b92d-393d-5a03-9af7-737da7a1f895</xsl:when>
        <xsl:when test=".='slrarefofl'">694424e4-88fc-5c8c-ae30-44e0a04e9694</xsl:when>
        <xsl:when test=".='slrarehill'">396de60f-ec80-5058-89c7-3db09e0f20b8</xsl:when>
        <xsl:when test=".='slrarejudy'">83713cad-87bb-56c6-9aeb-ab1e553bf0f2</xsl:when>
        <xsl:when test=".='slrarenews'">9c8a2fc7-2252-5d70-89f8-2fcc49717de0</xsl:when>
        <xsl:when test=".='slrarenr'">7a879447-6406-5268-81d6-1fb24c7823a6</xsl:when>
        <xsl:when test=".='slrareover'">e6c9a7b0-66cf-5859-bd01-af0da7964cdb</xsl:when>
        <xsl:when test=".='slrarepa'">b105a476-1e5d-5ce1-a065-63fbb248c62e</xsl:when>
        <xsl:when test=".='slrareqfl'">f1ec0cd7-8b1d-5c5c-bb53-5957e004ca44</xsl:when>
        <xsl:when test=".='slrareref'">2b7baa58-f03f-5379-9e71-5557b34f2dbe</xsl:when>
        <xsl:when test=".='slrarewk'">ba391765-96cb-5e95-a6b6-ff2128b817b2</xsl:when>
        <xsl:when test=".='slref'">5158cf30-960a-5062-b823-6ec458bf9aad</xsl:when>
        <xsl:when test=".='slrefatla'">fd2cf87c-e921-5b73-8c3b-0bc2a66a3a5b</xsl:when>
        <xsl:when test=".='slreffoli'">29a62a42-ceb6-5195-bf4c-395235455d54</xsl:when>
        <xsl:when test=".='slrefover'">7db5b9ca-1c47-5655-8c82-6e25c34656ac</xsl:when>
        <xsl:when test=".='slrefrdy'">68ee302b-60c0-5112-997b-5188a68034cd</xsl:when>
        <xsl:when test=".='slstkatls'">2873c7ca-673d-505d-986a-5c6897be5dbe</xsl:when>
        <xsl:when test=".='slstkfc'">5284ae9d-7177-5f00-92e2-996b6dc17abc</xsl:when>
        <xsl:when test=".='slstkfm'">1755d555-e658-5ea1-ab8e-a7cb2ff33113</xsl:when>
        <xsl:when test=".='slstkfoli'">ee83e69b-ff2a-5640-b6d8-ffb3d8d9e79e</xsl:when>
        <xsl:when test=".='slstkreffl'">7eb116e8-7544-54e2-b197-1cce26e8d6ef</xsl:when>
        <xsl:otherwise>e2f820a0-467f-510a-85b2-3520ca19f95f</xsl:otherwise> <!-- Unmapped (US-P) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>c4a31b1d-1b97-5b50-bb15-56a70222ab34</institutionId>
  </xsl:template>

</xsl:stylesheet>
