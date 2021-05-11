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
    <identifierTypeId>24560426-9c04-576c-81a1-63c423483fc3</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='WFPBOOK'">3b813e6f-f4c2-5c05-8c12-1fd52e960ce2</xsl:when>
        <xsl:when test=".='WMHBOOK'">18bf8c06-d976-5498-b93e-625c78f6c5e3</xsl:when>
        <xsl:when test=".='WSTACKBOOK'">3f54b80b-9aca-577e-9fb7-6124d426c41f</xsl:when>
        <xsl:when test=".='WBSBOOK'">8b35f4d9-74b5-55af-9cb9-3720255c9aa7</xsl:when>
        <xsl:when test=".='WDISS'">db663f5d-fe0e-514d-9b44-e4e5e2d5ff25</xsl:when>
        <xsl:when test=".='WEBRARY'">6402c639-9668-5997-a1d7-d91ad8c57c33</xsl:when>
        <xsl:when test=".='WEZB'">f18806e4-8752-559a-9bce-dd30f156dc43</xsl:when>
        <xsl:when test=".='WGAMES'">bfc3fb56-4b5b-5175-b033-d52f907e111f</xsl:when>
        <xsl:when test=".='WJSTOR'">5023e4bd-8709-5528-bc16-a8de6d49df4b</xsl:when>
        <xsl:when test=".='WJUVF'">b1e84157-5b35-525b-af03-4a6a444740ac</xsl:when>
        <xsl:when test=".='WJUVN'">7498f428-8b0f-5afa-b222-2633e1edcbb0</xsl:when>
        <xsl:when test=".='WJYA'">75824c5f-8365-59ec-9b3e-3dde422b8be5</xsl:when>
        <xsl:when test=".='WMAUDBOOK'">f1cd0622-9248-552e-9599-7b807744e4fe</xsl:when>
        <xsl:when test=".='WMBC'">bedac271-d5e5-581f-814c-b555ae45c930</xsl:when>
        <xsl:when test=".='WMBOOK'">3adc1db3-5d06-51c9-9531-1d961bb04c2c</xsl:when>
        <xsl:when test=".='WMCD'">8accde2b-da62-5ee0-bfa8-78524489a17d</xsl:when>
        <xsl:when test=".='WMCDBOOK'">979d2706-6da9-511f-969a-d549035de0ca</xsl:when>
        <xsl:when test=".='WMCDMS'">bcae04a8-131c-5442-a81e-549449c65b66</xsl:when>
        <xsl:when test=".='WMDVD'">48adc26e-9857-577c-be12-947b1c949723</xsl:when>
        <xsl:when test=".='WMSTORAGE'">b80993f5-da26-553c-81e2-33f689243431</xsl:when>
        <xsl:when test=".='WPER'">ca83bd23-afe5-5511-8651-b5971a27ce2f</xsl:when>
        <xsl:when test=".='WREFBOOK'">43a9acfe-566a-5ba2-a3d7-f06e93a1e7cc</xsl:when>
        <xsl:when test=".='WRES'">a858a0c7-4f9d-5963-afaa-509ba3c62a31</xsl:when>
        <xsl:when test=".='WSTACKMSSC'">89dcc6ec-478c-5aed-a4c0-a9187cc30b71</xsl:when>
        <xsl:when test=".='WWEBSITE'">5a2d07ee-d729-5e85-b897-4dcb508b0d45</xsl:when>
        <xsl:otherwise>bf76bdc4-58ce-510d-a5f1-df0dbd67622e</xsl:otherwise> <!-- Unmapped (US-PSTDE) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>1965adbe-fdaa-5da5-a118-9bfd0bcd5a3f</institutionId>
  </xsl:template>

</xsl:stylesheet>
