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
    <identifierTypeId>4d3a1039-41f4-521e-8388-1d3c267adee4</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='STACK2'">acefb7ac-3fbe-5311-b619-1020764489c0</xsl:when>
        <xsl:when test=".='STACK3'">60393540-eccd-5f42-b451-baed6f866fe5</xsl:when>
        <xsl:when test=".='CIRCAV'">039da841-7f96-5316-99a2-cc75fe0e50dc</xsl:when>
        <xsl:when test=".='DISP'">d9d631e3-5195-5332-a10b-e7840a14cbeb</xsl:when>
        <xsl:when test=".='DOC'">a5735d34-5c8a-5626-b4ab-9be25be1e489</xsl:when>
        <xsl:when test=".='DOCREF'">103c93db-164a-5d3f-9bd3-1f30f7f3dc3a</xsl:when>
        <xsl:when test=".='DVD'">540bb585-4723-5a2c-b413-0c1a41b952e2</xsl:when>
        <xsl:when test=".='IMC'">14c60f43-8075-5b85-b463-06a33be45326</xsl:when>
        <xsl:when test=".='IMCAV'">37bf8e02-19a9-5e1c-883a-f931edb36b4e</xsl:when>
        <xsl:when test=".='IMCEQUIP'">657ef640-2d63-5dd0-9438-bdaedd571ea7</xsl:when>
        <xsl:when test=".='IMCOV'">1aa82c5a-9e00-50b8-be30-fba78aab4c1a</xsl:when>
        <xsl:when test=".='IMCTEXT'">fc53fa89-142e-5d2e-84fa-1af1be8a5754</xsl:when>
        <xsl:when test=".='IMCYA'">a06b59f1-67b7-5e62-867d-16fb7e702226</xsl:when>
        <xsl:when test=".='INDEX'">d0c2ffa9-ff0d-50c0-881c-8057ded9bb44</xsl:when>
        <xsl:when test=".='OCTH'">a66f8ebf-2049-5a77-b87c-b36149751021</xsl:when>
        <xsl:when test=".='OFFICE'">4522fe43-18a8-52e2-9337-4b4e24f43a8a</xsl:when>
        <xsl:when test=".='PADOC'">f4a9acb7-f710-5574-a647-9194525e7b30</xsl:when>
        <xsl:when test=".='PASC'">d2fe7f8e-35e5-53a1-b82b-df2106e25edb</xsl:when>
        <xsl:when test=".='PASREF'">78a55af4-df5a-5083-adeb-9f4f35e68d46</xsl:when>
        <xsl:when test=".='PER'">1a3c4622-7a73-5056-a30a-123a074b6cc7</xsl:when>
        <xsl:when test=".='PERBDVL'">0cacc4e7-006d-5423-9b87-e70cef9738ab</xsl:when>
        <xsl:when test=".='READROOM2'">41905bf8-be87-59b1-a35b-841a4f87b7b5</xsl:when>
        <xsl:when test=".='REF'">b0d1f7ce-d3b4-5d77-82c3-b1090dd5413e</xsl:when>
        <xsl:when test=".='REFATLAS'">e6e31000-ea8b-513a-87be-aef596932afe</xsl:when>
        <xsl:when test=".='REFREDY'">5bceca8d-aebb-5cdc-86d0-4132a1a8acf7</xsl:when>
        <xsl:when test=".='REFREDY2'">08d51759-a646-5ae0-a9a6-02745ac5d72e</xsl:when>
        <xsl:when test=".='RESV'">19ae626b-bbf0-5169-b8fe-655be1045b07</xsl:when>
        <xsl:when test=".='STACK2NT'">fd05c122-1062-5633-b405-cb914c2eecab</xsl:when>
        <xsl:when test=".='STACK3NT'">04bd03cc-7cc5-5271-8b80-77b448cdd831</xsl:when>
        <xsl:when test=".='STACKFOL'">d7bd0ff2-75fb-51ba-9081-0eaf5484e2e3</xsl:when>
        <xsl:when test=".='STACKSPEC'">229f457f-0a71-554f-a1a9-f302c379314d</xsl:when>
        <xsl:when test=".='STORAGE'">196dcf83-75a4-5502-8131-a95d3f8d8750</xsl:when>
        <xsl:when test=".='UARCH'">4e34ed91-658c-5629-8f46-6fd2d2dc4514</xsl:when>
        <xsl:when test=".='UARCHO'">99e16212-a784-589c-9b9a-bb6ccf44c0d0</xsl:when>
        <xsl:when test=".='UNASSIGNED'">aa6c6384-6c3f-50a5-a218-bd9e016b2eb3</xsl:when>
        <xsl:otherwise>28814724-d0fb-5089-b950-dbe2cb5da31e</xsl:otherwise>
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>85558664-502a-515f-a305-55247826aba0</institutionId>
  </xsl:template>

</xsl:stylesheet>
