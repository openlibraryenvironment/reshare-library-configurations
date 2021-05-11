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
    <identifierTypeId>4241b13d-74d4-5c1f-8925-1dc6eac2554a</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='MORA Bookstacks'">210e0e6a-11ce-5f21-8a18-29c6dd2500a2</xsl:when>
        <xsl:when test=".='MORA Alumni Collection'">290680c5-fd0b-573a-bb55-836183992155</xsl:when>
        <xsl:when test=".='MORA Archives'">93a26def-69c2-588e-874e-04b3f099b27d</xsl:when>
        <xsl:when test=".='MORA Ask Library Staff for Assistance'">d9d400e0-5ffd-5a9e-9b24-6a3907e54b94</xsl:when>
        <xsl:when test=".='MORA Best Sellers'">f551ef27-f6b4-5531-ab09-1fb63ecfeef1</xsl:when>
        <xsl:when test=".='MORA Bindery'">f3e27120-b2a6-58e8-877a-a3c2c312fe79</xsl:when>
        <xsl:when test=".='MORA Bound Journals'">db1a77bf-dcf9-5879-828a-f06ea07b1863</xsl:when>
        <xsl:when test=".=&quot;MORA Children's Collection&quot;">54ee3ca1-165f-5ea7-a6ef-b6d8c5e5dc24</xsl:when>
        <xsl:when test=".='MORA Circulation Desk'">a79554e6-b20e-5455-bee4-64edb1e1e1b0</xsl:when>
        <xsl:when test=".='MORA Committee for the Advancement of Teaching Display'">1a6ebe6e-1bde-5cc6-86c8-0780d6deb188</xsl:when>
        <xsl:when test=".='MORA Educational Curriculum Materials'">976b976d-7c45-58b0-826f-b61bc429e74e</xsl:when>
        <xsl:when test=".='MORA Educational Department Films'">26aa4ccd-54e9-5743-8e8a-e52af5dbdb5a</xsl:when>
        <xsl:when test=".='MORA EZ-Borrow'">1bb73918-fbfe-53bd-9df2-945da6f4f7ca</xsl:when>
        <xsl:when test=".='MORA Faculty owned Reserves, 2 hours'">a5c7563b-39e5-5f68-a568-e2849ea1c79b</xsl:when>
        <xsl:when test=".='MORA Faculty owned Reserves, 24 hours'">40828b81-997e-5246-acb9-4d5376978d17</xsl:when>
        <xsl:when test=".='MORA Faculty owned Reserves, 3 days'">662b7208-8af0-5b4c-a718-6496cfbf9de0</xsl:when>
        <xsl:when test=".='MORA Faculty Publications'">81db675e-349a-5dc4-8921-6422527530ad</xsl:when>
        <xsl:when test=".='MORA Female Seminary'">4b7545a7-5ae4-5181-b24a-f0e055568794</xsl:when>
        <xsl:when test=".='MORA Films'">16921faa-3717-5c7f-8da6-466e83158291</xsl:when>
        <xsl:when test=".='MORA GRAD'">5d755845-6ff3-5bde-8c36-450178a4b1ac</xsl:when>
        <xsl:when test=".='MORA Groenfeldt Collection'">527cb954-abe6-53a7-92a9-f3d601e259c4</xsl:when>
        <xsl:when test=".='MORA ILL'">b9d6bf94-ac26-5f03-808d-34f513502b39</xsl:when>
        <xsl:when test=".='MORA In Processing'">e3e019a9-b390-5bf1-9c6b-c00af74ef652</xsl:when>
        <xsl:when test=".='MORA Media Center Equipment'">d454fa24-a49f-57ff-bad9-a7dfcce652b9</xsl:when>
        <xsl:when test=".=&quot;MORA Men's Seminary Collection&quot;">bed0f119-5884-5696-8361-032e5b0cafc9</xsl:when>
        <xsl:when test=".='MORA Mending'">25cda5fa-82b8-5e21-8d2e-b6218cef345d</xsl:when>
        <xsl:when test=".='MORA Microfilm'">0ec90f65-eb22-5076-af61-61f8d79f345f</xsl:when>
        <xsl:when test=".='MORA New Books'">50a2c48f-b00b-55b4-8f26-6b75a4696170</xsl:when>
        <xsl:when test=".='MORA Newspapers'">0f51580e-51b2-501e-8715-841701d0317f</xsl:when>
        <xsl:when test=".='MORA Periodicals'">c4592d09-5403-5a08-baf2-45786c00cbb3</xsl:when>
        <xsl:when test=".='MORA Rare Books Room'">9aaf4f21-82a8-50bc-a5af-84a4fe4f53e3</xsl:when>
        <xsl:when test=".='MORA Rare Books Room,  Oversized'">9aa99202-b55b-57fe-abb5-bdb352b4ec2c</xsl:when>
        <xsl:when test=".='MORA Rare Books Teaching Collection'">5d9d2f40-6333-505b-b86d-c42812d90729</xsl:when>
        <xsl:when test=".='MORA Reference'">ef5a57e8-4b37-53dc-b414-bfd8d903b56a</xsl:when>
        <xsl:when test=".='MORA Reference in the General Collection'">42d203ab-7682-5f56-be11-7afcb0fe704d</xsl:when>
        <xsl:when test=".='MORA Reserves Photocopy,'">6542b691-cc05-52a6-810d-16d808ae5787</xsl:when>
        <xsl:when test=".='MORA 2 hours'">bfba9b8e-057e-5164-95cc-f960d406b630</xsl:when>
        <xsl:when test=".='MORA Reserves Photocopy, 24 hours'">68772aa1-aff3-5f20-be6c-461e2de294a4</xsl:when>
        <xsl:when test=".='MORA Reserves Photocopy, 3 days'">b1dc3931-6f35-5d45-a43e-4ed48a2f7554</xsl:when>
        <xsl:when test=".='MORA Reserves, 2 hours'">5bf5a334-ffa3-5bf5-8841-cf7a0d1c5a51</xsl:when>
        <xsl:when test=".='MORA Reserves, 24 hours'">a8e60187-b587-557f-973b-ece896486d46</xsl:when>
        <xsl:when test=".='MORA Reserves, 3 days'">47f8eaaa-66ec-5d1e-b7f4-7370b6e87989</xsl:when>
        <xsl:when test=".='MORA Staff Collection'">acd33c48-d863-5055-a17b-b31346137f31</xsl:when>
        <xsl:when test=".='MORA Streaming'">8d738d32-f153-55a2-8315-259d82613fef</xsl:when>
        <xsl:when test=".='College Theses/Seminary/College/Graduate'">80fdb688-61f8-57f4-9c6f-ba26136973e8</xsl:when>
        <xsl:when test=".='MORA Young Adult Collection'">05ec6e36-e4bf-5cbd-b51a-3bfc19143888</xsl:when>
        <xsl:when test="starts-with(., 'MORA')">7a8cb913-be90-56bc-9e3b-e3b47fca7dde</xsl:when> <!-- Unmapped (MORA)-->
        <xsl:when test=".='MORM CD Collection'">2bb33280-15ca-5db3-8dbe-d2317e644c9f</xsl:when>
        <xsl:when test=".='MORM Chamber Music'">beed9636-19b7-57ad-8dbe-a0c097c63767</xsl:when>
        <xsl:when test=".='MORM Chamber Music, Oversized'">9149afba-94ff-531c-824e-7f4d72593f10</xsl:when>
        <xsl:when test=".='MORM Computer Equipment'">cd5f1404-1dde-5941-88d3-a95a256a3ab4</xsl:when>
        <xsl:when test=".='MORM Dance'">f8429cd4-fcbe-5890-9c91-65c4fbcdfcb6</xsl:when>
        <xsl:when test=".='MORM Ed Curriculum'">5edeb81b-8ac9-5e1f-bd8a-fcdc62a0e286</xsl:when>
        <xsl:when test=".='MORM Films'">a9a04045-2866-57d7-9d30-60801e00fdb0</xsl:when>
        <xsl:when test=".='MORM General Collection'">891f861b-34d5-5ed4-b4f0-3a8919cf0e60</xsl:when>
        <xsl:when test=".='MORM In Processing'">5bcbc452-1576-50c0-99b4-21c30184a263</xsl:when>
        <xsl:when test=".='MORM Instruments'">41bc344f-df0a-5640-970f-ea873e45385e</xsl:when>
        <xsl:when test=".='MORM Miniature Scores'">97edd1db-d043-50d9-8ff0-bbb979aca99b</xsl:when>
        <xsl:when test=".='MORM Oversized Scores'">4bc42c4a-1e14-504c-a736-69400347213d</xsl:when>
        <xsl:when test=".='MORM Photography Equipment'">f9d0f45d-e593-5380-8b45-34c283f4353e</xsl:when>
        <xsl:when test=".='MORM Reserves'">ccdb31c6-c9dd-50ac-8b89-fee861377fd0</xsl:when>
        <xsl:otherwise>68f8186a-dbb4-58c5-95b3-ca09d0840b29</xsl:otherwise> <!-- Unmapped (MORM) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>31c83f0c-d40c-541b-bd90-ecabdd736d1e</institutionId>
  </xsl:template>

</xsl:stylesheet>
