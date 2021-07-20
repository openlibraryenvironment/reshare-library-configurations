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
    <identifierTypeId>1baf3763-a4e8-5a0d-bb21-928c00f44380</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='MAIN'">f1bd5b62-8135-5070-962e-50d73fee57e9</xsl:when>
        <xsl:when test=".='ACQ'">b5cbef51-3466-5689-b3e8-b31c87102a30</xsl:when>
        <xsl:when test=".='Astronomy'">4afdf841-a607-59fc-9ffe-b4bf72ac9b2d</xsl:when>
        <xsl:when test=".='AB'">d4b41866-ed7f-5309-bf83-4e704fe7025f</xsl:when>
        <xsl:when test=".='AHI'">fec656c4-344e-5351-9028-3fac70b36727</xsl:when>
        <xsl:when test=".='CASA'">0257e5bb-6fb8-5fb8-98a4-76ab33c04a89</xsl:when>
        <xsl:when test=".='CAT'">e1989534-4fbe-59c6-8d72-673a9c914924</xsl:when>
        <xsl:when test=".='CUR'">4eaa7903-bd14-5d02-82e8-dc347e2f63c2</xsl:when>
        <xsl:when test=".='DVD'">7d97b0fb-5183-5699-a5bc-dcbbed8747b2</xsl:when>
        <xsl:when test=".='Dundale'">884d67ac-4448-5cf9-9424-f06a77d6b722</xsl:when>
        <xsl:when test=".='CIR'">013f17ad-9153-5536-9a5f-e19e2b7e9968</xsl:when>
        <xsl:when test=".='FAL'">f0ac8c0c-4000-5a84-a02f-07540a8a58eb</xsl:when>
        <xsl:when test=".='GAREY'">10d50c49-1d63-548d-bf99-96d2221e4018</xsl:when>
        <xsl:when test=".='HP'">e68e697c-d1fe-510a-a230-e1296fcb9ab1</xsl:when>
        <xsl:when test=".='NURSPC'">648f94df-5f84-526f-bdde-15aafc26dc6c</xsl:when>
        <xsl:when test=".='NURLRC'">3f0fd0dd-468e-51ac-b058-3c5207636f81</xsl:when>
        <xsl:when test=".='OFAL'">fef72299-ee80-507c-a845-73a966fc98cf</xsl:when>
        <xsl:when test=".='POP'">2a9ce7f6-bcfe-5bd9-a774-dd3889b457a1</xsl:when>
        <xsl:when test=".='RID'">cfe7913e-d683-53c3-a3a6-0f20a041ff62</xsl:when>
        <xsl:when test=".='RM'">b457a4f3-0ab8-5d0b-a06f-c34b64b8ab70</xsl:when>
        <xsl:when test=".='RELAIS'">ca4f8140-f2f1-51c7-8e02-b260c52a6f90</xsl:when>
        <xsl:when test=".='RESCLOSED'">da1e80b3-2651-59ba-b4eb-8a6cfe4724e1</xsl:when>
        <xsl:when test=".='SELF'">ecea9cca-ac9f-5e4c-bae3-9e8526fe6de6</xsl:when>
        <xsl:when test=".='SMITHSPC'">a786d9b9-7203-5a04-a33f-0b685ca59c74</xsl:when>
        <xsl:when test=".='OC'">3a0ab742-e486-5bfe-91b4-49b3562eadcc</xsl:when>
        <xsl:when test=".='AHISPC'">befec08c-b9ed-5aa5-b328-855beee270e2</xsl:when>
        <xsl:when test=".='OE'">6bbe2127-3384-5230-bb60-eb9162fc7ac3</xsl:when>
        <xsl:when test=".='OI'">52dd7069-4bd0-5f11-a968-1c6e28e40242</xsl:when>
        <xsl:when test=".='OS'">e36491bd-61ce-52bd-99c0-9c3d20ffdbe2</xsl:when>
        <xsl:when test=".='OA'">447a43c3-f628-5811-8ecb-2a19ba98d602</xsl:when>
        <xsl:when test=".='O'">e30e48c4-98c9-54de-a2f0-76d41053ae57</xsl:when>
        <xsl:when test=".='OB'">6913d47a-9d5b-5806-a1d9-1c04db99b680</xsl:when>
        <xsl:when test=".='OF'">5fa20891-cece-522d-8ee7-8d5e9055362e</xsl:when>
        <xsl:when test=".='OH'">98b2c129-f7b7-58fb-a019-739068e6accc</xsl:when>
        <xsl:when test=".='INC'">4275a734-ac37-5a24-a006-ccbb484d5b87</xsl:when>
        <xsl:when test=".='OL'">1067cb52-9fe9-57fb-b8b0-6dc69172fcaa</xsl:when>
        <xsl:when test=".='OM'">36ad448c-52a4-5622-8001-b7df230dc015</xsl:when>
        <xsl:when test=".='XM'">23d1088d-820c-5741-a356-9758e76db3dc</xsl:when>
        <xsl:when test=".='OMC'">bf93008c-3442-5287-b33c-9f01cad0a902</xsl:when>
        <xsl:when test=".='OR'">52efa016-1313-5e10-b461-9f9e785b6c74</xsl:when>
        <xsl:when test=".='OIS'">905ec748-e021-56e9-9cd5-4faca17e7e2f</xsl:when>
        <xsl:when test=".='OST'">46b373b7-d6a0-518a-9f57-adfbee467476</xsl:when>
        <xsl:when test=".='OMV'">ea4d0cf6-a07b-55f0-a0c1-fdbe631bcf8e</xsl:when>
        <xsl:when test=".='OV'">e25703b3-6c71-50b7-964e-0ecaea30a62e</xsl:when>
        <xsl:when test=".='XJ'">8a2eff2c-1a7e-5175-9eac-d1829090cf70</xsl:when>
        <xsl:when test=".='OVA'">e7118737-4ca1-5d00-bfdc-880cd7a1c810</xsl:when>
        <xsl:when test=".='TEST'">ed156f66-35e9-5972-a6f9-6ca2111ba2d1</xsl:when>
        <xsl:when test=".='VITAL'">c8e67e89-0622-5e8c-8fda-95ead748bc51</xsl:when>
        <xsl:when test=".='WWW'">4db5f0c9-0556-5b8c-9144-dbc3a58add9d</xsl:when>
        <xsl:otherwise>a013fc2d-a6ae-52a2-899c-ae58f38cc930</xsl:otherwise> <!-- Unmapped (US-PV) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>8e8bac5a-17ea-5eef-ad3a-519705bf1250</institutionId>
  </xsl:template>

</xsl:stylesheet>
