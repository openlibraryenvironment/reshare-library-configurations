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
    <identifierTypeId>9afe0045-df7d-5e24-ba17-ec10bc8e0313</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='CIRC2'">7b7a6434-c908-58f4-a43b-56a487e4aa5d</xsl:when>
        <xsl:when test=".='CIRC3'">e03f26eb-0dbb-5d00-aa83-745143eadfcc</xsl:when>
        <xsl:when test=".='CC'">966cb011-f72a-5716-a286-4f69767c5491</xsl:when>
        <xsl:when test=".='FEATURE'">ed34506c-9691-5b6d-81a5-20f57a2ca289</xsl:when>
        <xsl:when test=".='FOLIO'">ead0851e-c02f-506c-a4cc-1d338f9eb68b</xsl:when>
        <xsl:when test=".='OLKES'">d45e7c89-b50e-5cba-8cc1-ee4f04bcc3c0</xsl:when>
        <xsl:when test=".='POPULAR'">50670630-2544-503f-aa69-37a5ffacf6f4</xsl:when>
        <xsl:when test=".='ARCHIVES'">1e0e3e1b-b869-5f29-9613-6c8fbc85b84c</xsl:when>
        <xsl:when test=".='BOUNDPER'">eba0f4be-da0c-5557-9ac1-9e3e8d88e8c9</xsl:when>
        <xsl:when test=".='BROWN'">fedfc16d-9a66-56f6-a79e-70f07d9b6b88</xsl:when>
        <xsl:when test=".='CIRC'">5a46325e-bd03-5e03-8279-a1a4d9bc3d14</xsl:when>
        <xsl:when test=".='CIRC3TB'">25dbdb6b-5bbf-5950-a4f5-2ba10085cc97</xsl:when>
        <xsl:when test=".='CIRCDESK'">b8f6e22e-ced5-5506-a2e6-68683ce3e78b</xsl:when>
        <xsl:when test=".='COURSE'">a961fa76-d6b7-54a1-b7f6-d8dcfa580ce9</xsl:when>
        <xsl:when test=".='CURRPER'">97e7a59d-a02f-5f2d-9dd6-f075df41de5e</xsl:when>
        <xsl:when test=".='DECISION'">0c105c0c-ccee-57cc-95f9-f11614901bb2</xsl:when>
        <xsl:when test=".='EZ'">eecb6ab5-fb14-5321-abae-c852010bab45</xsl:when>
        <xsl:when test=".='GLOBAL'">4a49b38f-6bd7-58d9-9bac-6c657ce8947d</xsl:when>
        <xsl:when test=".='ILLIAD'">8b33465c-c000-57f5-9bdb-0e38e3c29489</xsl:when>
        <xsl:when test=".='MEDIA'">599bf614-649c-576f-af14-89b01b0a628b</xsl:when>
        <xsl:when test=".='MICRO'">35c3d53a-4b89-5ec1-83f4-a683db059da2</xsl:when>
        <xsl:when test=".='NEWBOOK'">a08b0137-b7fe-5252-b555-ebe0dfa85159</xsl:when>
        <xsl:when test=".='ONLINE'">684cc9b0-f18e-51c4-a817-a48698ec3fd4</xsl:when>
        <xsl:when test=".='READYREF'">eff64bfb-74b8-5051-8f78-462cbb51d362</xsl:when>
        <xsl:when test=".='REF'">180e8a94-f479-5a14-bc0d-38bdb7fc8058</xsl:when>
        <xsl:when test=".='REFDSK'">fd491231-2d3b-543b-bd70-4b1632e8a8b3</xsl:when>
        <xsl:when test=".='REFDSK2'">c8839547-c542-5035-a505-305e251d7b87</xsl:when>
        <xsl:when test=".='RESERVEREF'">f575273c-7a15-50d4-9016-a87835871df4</xsl:when>
        <xsl:when test=".='SPECCOL'">13a4d3f7-1564-5052-9312-5d193004d93b</xsl:when>
        <xsl:when test=".='SPPAHIST'">3c6b74ed-150e-5433-8ec0-750ba492ad50</xsl:when>
        <xsl:when test=".='SPNOWDON'">38b6f630-5300-56eb-b3a5-33a8296de633</xsl:when>
        <xsl:when test=".='TECHSVC'">80b2c73b-5cb8-5df6-8944-1679ed68f170</xsl:when>
        <xsl:otherwise>028d914b-3b2f-5dda-8798-26a8bed91964</xsl:otherwise> <!-- Unmapped (US-PPICC) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>65a0a126-9bc1-5bf6-8c67-f9d49183694d</institutionId>
  </xsl:template>

</xsl:stylesheet>
