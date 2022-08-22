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
    <identifierTypeId>b60c294c-973f-51e7-b262-dde4bd25b919</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='Browsing'">d40879c9-0b9e-5bec-8014-30c6de226620</xsl:when>
        <xsl:when test=".='Carl Main'">6e895ffd-fbb8-5695-84bf-68ef2d86758f</xsl:when>
        <xsl:when test=".='Carl-f'">150a1b3c-361f-53e7-bd7c-9eb9922ea256</xsl:when>
        <xsl:when test=".='Carl Juv'">33285a29-8f92-594e-93b7-ef09b8567cd3</xsl:when>
        <xsl:when test=".='Juv Ovrsvd'">533b4ada-c505-5f7d-8c00-94540a5842b4</xsl:when>
        <xsl:when test=".='Carl-3'">60339f75-65e4-59d9-bb87-255a017e6260</xsl:when>
        <xsl:when test=".='Carl-qz'">61319c4e-2213-52bd-8e91-1acd1499ec00</xsl:when>
        <xsl:when test=".='Carl-q'">b2daf2a8-da80-5464-bab4-050024cde74b</xsl:when>
        <xsl:when test=".='CarlTxtbk'">63145fb7-b801-53b0-9b4d-db1a39835a05</xsl:when>
        <xsl:when test=".='Douglass'">c479b773-f88c-50e0-a6a7-fae646532956</xsl:when>
        <xsl:when test=".='Ven Brows'">d13df80b-f549-52f8-bb4c-67b797f31b5b</xsl:when>
        <xsl:when test=".='Ven-f'">eec7d9cc-088d-5a73-ad1c-29edee2547cb</xsl:when>
        <xsl:when test=".='Ven Juv'">06d027fa-1a92-53e0-8a1c-17b1d4b7c230</xsl:when>
        <xsl:when test=".='Ven-q'">0a429274-5f17-50ee-a61c-b68eee03fde6</xsl:when>
        <xsl:when test=".='Ven Main'">94e46388-d2c0-5e59-8380-9a761e4e229d</xsl:when>
        <xsl:when test=".='Archives'">831d5f02-ebde-55c3-9e00-74e37c150059</xsl:when>
        <xsl:when test=".='Carl CD'">486d82c9-1078-54f0-ac87-471ed44e3cc3</xsl:when>
        <xsl:when test=".='Carl-fn'">1a33c6a3-1d13-58b2-81cd-4cfd80ab4492</xsl:when>
        <xsl:when test=".='Carl-fz'">6a649ccd-947d-53d7-9bc5-9368bc4db5a5</xsl:when>
        <xsl:when test=".='Carl Case'">44e0f632-d50f-55d4-a2aa-072a77798b89</xsl:when>
        <xsl:when test=".='Map Case'">415e2011-74e8-5b64-9b99-a2b6b91e5d1e</xsl:when>
        <xsl:when test=".='Carl-maps'">d7a53c93-e099-52de-b6ff-d20bca0998f1</xsl:when>
        <xsl:when test=".='Carl Media'">3dba4937-9c84-5510-ac5b-c578f5120dcd</xsl:when>
        <xsl:when test=".='Microcards'">9c8a7a26-791f-54bf-b06e-88b17fc56207</xsl:when>
        <xsl:when test=".='Microfiche'">1bc60842-93a3-5b4e-8271-3c417a05fbae</xsl:when>
        <xsl:when test=".='Microfilm'">b306c933-277b-5a92-ad5c-77323be7b18d</xsl:when>
        <xsl:when test=".='Carl Ovrsz'">86b1b01c-bfd2-512c-9871-f39168110756</xsl:when>
        <xsl:when test=".='Reference'">01835e21-eb9d-507e-994f-2c24a0084508</xsl:when>
        <xsl:when test=".='Carl Resv'">56f96101-5d80-5575-97cc-e5ca52cb5638</xsl:when>
        <xsl:when test=".='Carl VF'">03fea33a-850e-5cbe-8d44-c460a2419d24</xsl:when>
        <xsl:when test=".='Chandler'">3caabed9-f5d0-5e11-bfda-65c2b3dcf9c7</xsl:when>
        <xsl:when test=".='Periodical'">fcf60777-bbf0-5c1b-8b95-2aac6aed9df5</xsl:when>
        <xsl:when test=".='Spec Col'">752d000a-acb5-55cf-8e74-15aa47f05aab</xsl:when>
        <xsl:when test=".='SpecArcv'">b91a273c-59be-5286-ad1f-d7124730b826</xsl:when>
        <xsl:when test=".='SpecJuv'">233b057f-68e0-5a10-8826-3f3ad2fa275c</xsl:when>
        <xsl:when test=".='Spec Col-f'">06d719e9-5022-5387-be4b-9e04f234ae49</xsl:when>
        <xsl:when test=".='Spec Col-q'">772d87c8-9724-5244-b3ce-b3ec234e652a</xsl:when>
        <xsl:when test=".='Ven Maps'">b2abd51d-f57a-50c1-a2ed-46902d0552a1</xsl:when>
        <xsl:when test=".='Ven Mflm'">d72aeed2-e85b-5774-8277-8752f36004ac</xsl:when>
        <xsl:when test=".='Ven Period'">cea30535-becc-5411-8b27-2a1ddaec4aa6</xsl:when>
        <xsl:when test=".='Ven Ref'">26eb6374-7249-5375-a1e8-b55820cc817c</xsl:when>
        <xsl:when test=".='Sresv'">2ebfcf1d-2bc5-59a2-a814-3a5280bea25d</xsl:when>
        <xsl:when test=".='Ven Spec'">2ac6b03f-0a56-53bf-adfd-dbc52d2893dc</xsl:when>
        <xsl:otherwise>dc084157-0169-520b-86d3-6760cf1a17ff</xsl:otherwise> <!-- UNMAPPED -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>b344adae-e0e1-5db8-b09c-bb99df575c4a</institutionId>
  </xsl:template>

</xsl:stylesheet>
