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
    <identifierTypeId>595f900e-ef0f-5529-82bd-47a01c83ccca</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='ARTLCKL'">e4f8fc9b-ee47-57f7-a452-91ed15191a7e</xsl:when>
        <xsl:when test=".='ARTLCKM'">dee3cc08-08cd-55dc-9a75-d5e16787f687</xsl:when>
        <xsl:when test=".='ARTLCKS'">fd712231-6bfd-5aba-b0ea-bae380ff4701</xsl:when>
        <xsl:when test=".='BARCHAS'">02951697-d46f-5e0e-b035-432902269ec0</xsl:when>
        <xsl:when test=".='BASEMENT'">593c59ca-f9e8-5044-8a26-102581533968</xsl:when>
        <xsl:when test=".='BENDER'">ea2974f6-d5cb-57e3-9699-96cc6a8d7687</xsl:when>
        <xsl:when test=".='BIB-INDEX'">2e60ccdb-e2ed-57fc-92dd-6534043a0c2d</xsl:when>
        <xsl:when test=".='BOX-COLL'">391c2ec9-4222-54df-b4ff-62ac68e9f8a8</xsl:when>
        <xsl:when test=".='BRIT-DOCS'">9521871f-80a8-593a-bf3f-56ae6eb36735</xsl:when>
        <xsl:when test=".='CALIF-DOCS'">324961ea-9da7-57b0-90a4-a166966760a8</xsl:when>
        <xsl:when test=".='EXPEDITION'">88c4bb51-2695-5757-a4a1-61f9379c7725</xsl:when>
        <xsl:when test=".='FED-DOCS'">95d8ba85-0416-5436-825b-a18456811833</xsl:when>
        <xsl:when test=".='FELTON'">8ee31320-9ba1-5166-977c-cd7dc1a83bec</xsl:when>
        <xsl:when test=".='FOLIO'">a530a90a-48f8-53e9-b0d2-a25b1d56b23c</xsl:when>
        <xsl:when test=".='FOLIO-BAS'">89a04961-2973-551e-a9f2-032e446fa5ad</xsl:when>
        <xsl:when test=".='FOLIO-FLAT'">3479e9a0-1b21-5910-a279-6d99b2e745ba</xsl:when>
        <xsl:when test=".='GUNST'">9a68643c-a417-518f-98ef-ae58f7e3e573</xsl:when>
        <xsl:when test=".='HAS-CA'">b71b50d3-6b25-5dfe-816f-ec53c379f37e</xsl:when>
        <xsl:when test=".='HAS-RR'">2b0f5a37-3501-5552-a167-eb4ab17aa43f</xsl:when>
        <xsl:when test=".='HASRC'">d6f7827d-85a4-5ea8-92fe-0dbf6f43b6e5</xsl:when>
        <xsl:when test=".='IC'">61ae3e71-dff0-512b-a44c-1c462b9c059d</xsl:when>
        <xsl:when test=".='INPROCESS'">00b67a52-15d0-5d63-94d7-7f10032a4933</xsl:when>
        <xsl:when test=".='INTERNET'">702c487c-68c3-592f-8b8c-921b6eab933c</xsl:when>
        <xsl:when test=".='INTL-DOCS'">3c88d64f-1684-5d35-9352-7abd2a079978</xsl:when>
        <xsl:when test=".='LCK-STOR'">7d271e30-301e-516e-9da9-bf7e21ffff50</xsl:when>
        <xsl:when test=".='LL-NEWS'">2122af81-8f46-585b-96ed-8d1994450577</xsl:when>
        <xsl:when test=".='LOCKED-STK'">2b3c1abe-1625-5b2b-8ac5-5a88f1f8c999</xsl:when>
        <xsl:when test=".='MANUSCRIPT'">37613bd1-061f-5b82-a99a-a6db58122084</xsl:when>
        <xsl:when test=".='MAP-CASES'">4b0583cd-fe0a-51d2-8fe7-1556b06dac0d</xsl:when>
        <xsl:when test=".='MAP-FILE'">87043bab-9161-528c-b077-ec30fba77b46</xsl:when>
        <xsl:when test=".='MEDIA-MTXT'">9d727a89-e201-5773-920a-e7a9c0b1f3b5</xsl:when>
        <xsl:when test=".='MICROFICHE'">ad1ebfcd-31d3-5da8-a2bf-b384895e4bae</xsl:when>
        <xsl:when test=".='MICROFILM'">124767b3-39ca-5945-a984-a0c68274c2de</xsl:when>
        <xsl:when test=".='MICROTEXT'">9b92f2ed-71cc-5569-b471-cf02c11b91a4</xsl:when>
        <xsl:when test=".='MINIATURE'">690b1b65-132b-59f2-ac3a-8d5d166ab51e</xsl:when>
        <xsl:when test=".='MISSING'">58cf50db-06f5-50bf-b587-913005627e6a</xsl:when>
        <xsl:when test=".='MM-CDCAB'">f07d9e20-cf45-50a9-8c81-0786c2ea31c6</xsl:when>
        <xsl:when test=".='MM-DIZOCAB'">0adee205-4372-56d7-ad00-0819fb0fb392</xsl:when>
        <xsl:when test=".='MM-OVERSIZ'">e0f71ed1-b084-51fb-93f9-98a7aabfbad6</xsl:when>
        <xsl:when test=".='MM-STACKS'">64827c27-bb0d-5b36-b81b-1c2d7a7b4dec</xsl:when>
        <xsl:when test=".='NEWS-STKS'">736e5bde-9c0d-5943-97e4-6496000b0186</xsl:when>
        <xsl:when test=".='NEWTON'">cf05d582-6575-5b27-a019-8404aafa8c53</xsl:when>
        <xsl:when test=".='OVERSIZED'">9031d035-1760-5f15-9522-8622057406c2</xsl:when>
        <xsl:when test=".='PAGE-AR'">8b4c2412-30de-5add-af86-f26781800a9a</xsl:when>
        <xsl:when test=".='PAGE-AS'">24e89ce1-44ea-5e68-996c-6710b16ecda0</xsl:when>
        <xsl:when test=".='PAGE-GR'">fb6c38bd-9552-5ec8-80bc-e4eeb2b72fae</xsl:when>
        <xsl:when test=".='PAGE-LP'">a68b0ae1-c554-5971-a0ab-2228e9686a24</xsl:when>
        <xsl:when test=".='PAGE-MD'">5b5d0447-8848-51aa-8efb-175cdfc4f1ad</xsl:when>
        <xsl:when test=".='PAGE-MP'">aae265ac-e2bb-5b57-b4e4-047482b1dded</xsl:when>
        <xsl:when test=".='PAGE-MU'">4bef0621-dbad-54a5-97a8-0f8dea27de59</xsl:when>
        <xsl:when test=".='PAGE-SP'">a3d2dec7-b814-5236-a8f6-4e609d784281</xsl:when>
        <xsl:when test=".='R-STACKS'">f6978558-1f14-5aa0-97fe-cbee1ba5b191</xsl:when>
        <xsl:when test=".='RARE-BOOKS'">4ad031ac-51e7-52ab-9f5d-ed8ba0305701</xsl:when>
        <xsl:when test=".='RAUB-COLL'">e59c6c79-675e-5aae-af4b-890f9c6afcfa</xsl:when>
        <xsl:when test=".='RAUB-NUM'">95ff9e28-8886-5694-89a8-14111f1a6805</xsl:when>
        <xsl:when test=".='RBC-30'">976c90e8-6c97-57d5-b754-6c75a7271e02</xsl:when>
        <xsl:when test=".='RECORDINGS'">06dd53fd-d8ef-53e4-9428-ccf6f5a15ccb</xsl:when>
        <xsl:when test=".='REFERENCE'">95023227-bba6-5ee4-8a54-7e18b679fa32</xsl:when>
        <xsl:when test=".='SAL-FOLIO'">cd884002-7edb-5e77-b617-5c3834363782</xsl:when>
        <xsl:when test=".='SAL-PAGE'">83da2745-7b2c-5123-b04a-5aee4a6bbb0f</xsl:when>
        <xsl:when test=".='SAL-TEMP'">169f7178-6264-5a79-adcd-a56aec14dfc3</xsl:when>
        <xsl:when test=".='SALTURKISH'">c010b00d-0f11-539f-bac4-4d1f18c0bdaa</xsl:when>
        <xsl:when test=".='SCORES'">477c0428-f0d7-5a87-8dc7-e65bf45967d5</xsl:when>
        <xsl:when test=".='SEE-OTHER'">8eea8891-8249-5283-9635-e7acf7a3232d</xsl:when>
        <xsl:when test=".='SHELBYSER'">ea71de6c-d578-50cb-b273-d5b3e0e15f9b</xsl:when>
        <xsl:when test=".='SHELBYTITL'">0fad6c94-e1b6-55c6-8e7d-867ca06be985</xsl:when>
        <xsl:when test=".='SOUTH-MEZZ'">a058bb89-06b3-5f8f-abd3-337dc29a417d</xsl:when>
        <xsl:when test=".='SSRC'">b3ad8808-109e-5932-afd1-0554f748c9b2</xsl:when>
        <xsl:when test=".='SSRC-FICHE'">7a2b8945-09a8-5aac-9b06-27e0e3578741</xsl:when>
        <xsl:when test=".='SSRC-FILM'">48551d06-fe5c-51bb-a046-6068e2a23665</xsl:when>
        <xsl:when test=".='SSRC-SSDS'">918ee461-88fa-5582-9aca-a24427de9864</xsl:when>
        <xsl:when test=".='SSRC-STATS'">410356b6-1e37-5a77-a29d-dd396b0446f4</xsl:when>
        <xsl:when test=".='STACKS'">6c290638-8012-59d4-9c85-51cdc90cfe37</xsl:when>
        <xsl:when test=".='STORAGE'">12ff98fa-267b-5c96-a54f-49175d01874e</xsl:when>
        <xsl:when test=".='THESES'">edd4d58e-1637-57a4-a7c0-02e76d7e45ce</xsl:when>
        <xsl:when test=".='TIMO-COLL'">69b949f1-362c-5871-9a8b-17d9f6f8b0a6</xsl:when>
        <xsl:when test=".='TINY'">e4f18eda-5c63-5058-9974-5bb6ed63543d</xsl:when>
        <xsl:when test=".='U-ARCHIVES'">87207e5e-a69c-5cfb-a888-3de61969b680</xsl:when>
        <xsl:when test=".='UARCH-30'">b1281ace-06a5-5f39-88a0-dafdfd45eb61</xsl:when>
        <xsl:when test=".='UNCAT'">05506f7e-d5a6-59b2-8f59-70721ccdccb9</xsl:when>
        <xsl:when test=".='VAULT'">ff08f18c-1f00-5499-8e0b-cad83786ce62</xsl:when>
        <xsl:otherwise>9b8ea9cb-9caf-5b7f-8473-a9c06d2fb3cc</xsl:otherwise> <!-- Unmapped (US-CSt) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>a1decabf-302e-5e4f-9bbe-f11cbcde7296</institutionId>
  </xsl:template>

</xsl:stylesheet>
