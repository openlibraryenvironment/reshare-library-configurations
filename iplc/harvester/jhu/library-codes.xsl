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
    <identifierTypeId>8d4b5a3a-83d7-57f1-bb3e-322abbbea5ed</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='arch'">fba5318f-023c-5f89-b54c-ef287cd05907</xsl:when>
        <xsl:when test=".='arrf'">8687942e-4c48-58c4-bdfb-8af1a43a2d2d</xsl:when>
        <xsl:when test=".='av'">4d37bba3-f94c-5ccb-b683-e9cf44b7211c</xsl:when>
        <xsl:when test=".='ava'">63e00cf7-2139-558f-8272-7a402cb10f42</xsl:when>
        <xsl:when test=".='blue'">bef33912-0847-5004-aa5f-223a42d7788f</xsl:when>
        <xsl:when test=".='cage'">d36ae64f-59b1-5198-95ae-074113d1761e</xsl:when>
        <xsl:when test=".='colu'">ac48ca34-708e-546a-b58e-80ebefe4f0ee</xsl:when>
        <xsl:when test=".='desk'">ac5af4b5-715f-5552-af9a-f6ad80445f6e</xsl:when>
        <xsl:when test=".='dntn'">f313912f-45f9-538d-9dd6-378bbb3fd00b</xsl:when>
        <xsl:when test=".='dorf'">42415449-592d-52d5-9589-808eef12a1b5</xsl:when>
        <xsl:when test=".='erc'">c4a7d95e-2ff4-5d79-9ec7-487688959ab5</xsl:when>
        <xsl:when test=".='frie'">176aa8ab-b574-5264-a6a0-78ce74081611</xsl:when>
        <xsl:when test=".='gdoc'">76adc545-a8dc-5b3e-801a-6e90215255be</xsl:when>
        <xsl:when test=".='gdrf'">04379ac8-af22-5b12-906e-86e9602f0292</xsl:when>
        <xsl:when test=".='gerf'">5274edf9-8758-5a72-a3c2-61072abf94ea</xsl:when>
        <xsl:when test=".='ggdc'">1ace0402-0a40-56bd-b6e8-d1fffd967750</xsl:when>
        <xsl:when test=".='gifr'">3afa9998-74cf-5478-8a03-b5207f79986b</xsl:when>
        <xsl:when test=".='gist'">9844fbbb-8b2a-5f96-bd5a-d47936d1bd7a</xsl:when>
        <xsl:when test=".='gith'">f0b7ac6d-fdec-5245-bc6c-b0eb5063abe4</xsl:when>
        <xsl:when test=".='gmpr'">2a937b8f-98fa-5f4e-856f-5ec32f989fd0</xsl:when>
        <xsl:when test=".='gpby'">3cd8b405-8727-530c-9327-7168deac166b</xsl:when>
        <xsl:when test=".='gpyr'">9db9ecfe-b81c-50d2-9b76-852fa4e8b02c</xsl:when>
        <xsl:when test=".='grnl'">71e73d69-6430-5283-be7d-5cdd826bb3ef</xsl:when>
        <xsl:when test=".='grrt'">b56faece-6adc-552b-8b18-00969f83cf5c</xsl:when>
        <xsl:when test=".='gsta'">225fa30b-b7b8-5b90-98d0-82d09eac6e37</xsl:when>
        <xsl:when test=".='hcom'">0c0c42f6-80b1-54b3-b623-e1ed4795cca4</xsl:when>
        <xsl:when test=".='main'">9c018ebe-c0c2-5dc3-ab71-1dbbecd7f293</xsl:when>
        <xsl:when test=".='mana'">147457a8-cec1-5246-abbb-4e9dded0b1e2</xsl:when>
        <xsl:when test=".='manb'">8bbef190-0b6e-553c-aa0b-99d5c0ce45a8</xsl:when>
        <xsl:when test=".='monu'">32c2153e-d862-5b97-8f82-aa92631da432</xsl:when>
        <xsl:when test=".='mprm'">05023d60-952c-5821-a676-3cea4c65ef51</xsl:when>
        <xsl:when test=".='mtgy'">87ea40a3-12d7-5123-a871-65238426ce34</xsl:when>
        <xsl:when test=".='oblu'">1119554e-5f41-507e-9a73-2d17ad6023db</xsl:when>
        <xsl:when test=".='ofar'">5b9b6960-606b-5c53-be97-70c1acca3ef1</xsl:when>
        <xsl:when test=".='ofav'">ce1de287-21d3-51c2-986c-4f1637cb1df5</xsl:when>
        <xsl:when test=".='offa'">574624b7-3641-55c1-b3a5-dd6989de6d0b</xsl:when>
        <xsl:when test=".='offg'">b8cb54f9-46ee-5941-971d-3164aa425519</xsl:when>
        <xsl:when test=".='offs'">58d90bce-1dff-547b-b14a-b32ad95eb460</xsl:when>
        <xsl:when test=".='ofgg'">c75b38bc-5c4e-5bd5-950e-00300b0c610f</xsl:when>
        <xsl:when test=".='ofgh'">73443e59-0b10-518c-8461-ac5b565b9918</xsl:when>
        <xsl:when test=".='onas'">b6c563cc-2cee-53f8-a13a-0c0ae8940b59</xsl:when>
        <xsl:when test=".='oran'">973019ff-311a-538e-b423-57acc617bf35</xsl:when>
        <xsl:when test=".='rand'">b4d1d52f-d3dc-5a06-baea-b9bb442adea8</xsl:when>
        <xsl:when test=".='ref'">8ed2d2d3-194c-5dc2-8616-3eebc135d601</xsl:when>
        <xsl:when test=".='refw'">34def841-ca6d-5cac-99d9-a53f43e8ee15</xsl:when>
        <xsl:when test=".='scrf'">118d4d4a-dcc5-5bd4-8ea7-f126711ad5bb</xsl:when>
        <xsl:when test=".='sprf'">2d644d0f-fff9-5129-a1f6-19e677a81bdf</xsl:when>
        <xsl:when test=".='sshp'">9172d825-2de0-5a57-8b59-433c7faa1c6f</xsl:when>
        <xsl:when test=".='ugl'">41e65112-40a4-509d-a044-0c1193e9a39e</xsl:when>
        <xsl:when test=".='vspl'">ec630057-4450-55dc-a06a-809cc6ead1c1</xsl:when>
        <xsl:when test=".='wash'">c7a43ced-6e83-5b7d-8698-d1e33e3bc043</xsl:when>
        <xsl:otherwise>981ccb2d-d17b-52d5-83d1-8a09acf0e7a2</xsl:otherwise> <!-- Unmapped (US-MdBJ) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>3e0ad3a9-dd13-5735-89d4-c530ba68bbf4</institutionId>
  </xsl:template>

</xsl:stylesheet>
