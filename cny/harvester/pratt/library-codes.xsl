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
    <identifierTypeId>f9855df3-c9e0-5a79-a728-1121eeacc475</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='pb0od'">861afd98-a303-542e-a58e-342bcea542ce</xsl:when>
        <xsl:when test=".='pbbcf'">3e4d4e68-d32a-5063-b153-ca389b2b9e11</xsl:when>
        <xsl:when test=".='pbbcn'">f83d0444-07f5-5914-860d-e89a4317f721</xsl:when>
        <xsl:when test=".='pbbco'">32c61db8-1112-5025-a47d-1fc13c2651e3</xsl:when>
        <xsl:when test=".='pbbfc'">4e46150b-b9b3-5219-9c76-9243753e1bb9</xsl:when>
        <xsl:when test=".='pbbgn'">2416be80-c9f0-5cb6-9d6c-e443faf76d57</xsl:when>
        <xsl:when test=".='pbbsk'">45378787-8da5-5f21-940b-cfe7b27db3ea</xsl:when>
        <xsl:when test=".='pbbso'">509f3e0c-7992-57c2-9e51-903fe0f39791</xsl:when>
        <xsl:when test=".='pm0od'">ee4fe643-eea5-5581-a5f9-e7d193f2329a</xsl:when>
        <xsl:when test=".='pmbfc'">aa546c53-f32c-556e-a89b-2c49a6bf08c4</xsl:when>
        <xsl:when test=".='pmbsk'">9efd3463-bd0b-5bef-88f5-41e457436f2e</xsl:when>
        <xsl:when test=".='pmbso'">4596d517-2800-5fe8-87cd-cbadadcf0553</xsl:when>
        <xsl:when test=".='psfav'">444c181d-4dd5-5d53-b312-0bd66805b077</xsl:when>
        <xsl:when test=".='p00st'">381498b7-13ad-5ad3-86e9-a72da89f5c57</xsl:when>
        <xsl:when test=".='p0www'">f2facf85-aa49-53fb-8f00-3cd48ec7d6cc</xsl:when>
        <xsl:when test=".='pb0ar'">51336eec-2af1-5207-8aa0-87e4fb0e0de0</xsl:when>
        <xsl:when test=".='pb0ce'">a4ba21e4-2b9b-5111-bb71-b41a61614a71</xsl:when>
        <xsl:when test=".='pb0il'">baa4e8b1-7ca5-5717-9732-96b6e71288a1</xsl:when>
        <xsl:when test=".='pb0rr'">80b71985-abe6-51db-8404-b6e4144fbddd</xsl:when>
        <xsl:when test=".='pb0ts'">2e5a73fe-b7e1-5667-bb49-945bd119a9b9</xsl:when>
        <xsl:when test=".='pbbab'">906bfa99-0664-56e5-9d6e-3ba67363ad64</xsl:when>
        <xsl:when test=".='pbbfo'">30079c33-1c4d-5c2c-ac93-f1386e553c34</xsl:when>
        <xsl:when test=".='pbboc'">e89e42bd-a408-5e0c-a227-ba1108a3c63f</xsl:when>
        <xsl:when test=".='pbbpb'">4c0cff9c-6c28-53ac-8385-697a6675bcc0</xsl:when>
        <xsl:when test=".='pbbrb'">82d0d4f3-4be8-5e16-bfea-a15fd95d2e09</xsl:when>
        <xsl:when test=".='pbbsc'">e589ae02-4601-5dd2-b335-ebe277ded954</xsl:when>
        <xsl:when test=".='pbbsf'">241aa039-7d0f-5ef0-8c58-184b395b0b61</xsl:when>
        <xsl:when test=".='pbbth'">2c996bd3-2239-524c-b950-f611b707f276</xsl:when>
        <xsl:when test=".='pbbtl'">3d803197-7141-5b3f-a386-c1b806ea1dfd</xsl:when>
        <xsl:when test=".='pbcac'">4d51cbe2-8605-509b-a5c9-a09f1260a1be</xsl:when>
        <xsl:when test=".='pbccr'">335ffdad-e86c-5d6b-8394-6ead8e51c867</xsl:when>
        <xsl:when test=".='pbcsm'">ee6de1ed-faf7-5da6-9ff9-32ace88ae762</xsl:when>
        <xsl:when test=".='pbmfm'">dc24af60-d3e5-589c-9804-4f846b4d9ca1</xsl:when>
        <xsl:when test=".='pbs2m'">83df9659-6c80-5ff6-83da-5aafadb1a724</xsl:when>
        <xsl:when test=".='pbsaa'">b198104a-a3f0-5fb5-bf69-9cef470d6807</xsl:when>
        <xsl:when test=".='pbscp'">beb68da3-f37c-5005-877e-1508e950390a</xsl:when>
        <xsl:when test=".='pbslc'">7961d60e-20de-5276-b01d-e4546fd8db68</xsl:when>
        <xsl:when test=".='pbsll'">a5c7ac9a-5a79-54de-bc98-81b282a1cbf5</xsl:when>
        <xsl:when test=".='pbsls'">7c48ff35-ad4a-58b4-8464-4bbaec09fe8a</xsl:when>
        <xsl:when test=".='pbssc'">deb9777c-9c85-56a0-aff1-21d89473017c</xsl:when>
        <xsl:when test=".='pbszc'">c94c823e-f71c-5809-beb7-f7418e73aaa7</xsl:when>
        <xsl:when test=".='pm0ce'">fbd4cd22-996a-5577-8c00-fad7bb6afa1e</xsl:when>
        <xsl:when test=".='pm0cs'">979badef-592c-56a5-9074-12e5782bb66a</xsl:when>
        <xsl:when test=".='pm0il'">e64257b6-5929-5fc5-ad33-ca1809c02a0a</xsl:when>
        <xsl:when test=".='pm0rr'">4bc6e132-8e78-55a9-a65e-9100655b238e</xsl:when>
        <xsl:when test=".='pm0ts'">bfa56b15-53bd-5a10-b209-7d4f5781f510</xsl:when>
        <xsl:when test=".='pmbrf'">9a172582-3509-5237-a460-4091f3d78a52</xsl:when>
        <xsl:when test=".='pmspc'">ee9310bb-a7b1-5e98-9876-690ccf3a878d</xsl:when>
        <xsl:when test=".='psbkl'">852cda8e-e8bf-5214-a709-22bacecd58cd</xsl:when>
        <xsl:when test=".='psemm'">b564582d-2b63-5771-b3de-601d7a5e1204</xsl:when>
        <xsl:when test=".='psf16'">1d7ad347-9fc9-56e9-9eb7-9e0102f216bc</xsl:when>
        <xsl:when test=".='psrmm'">38f2f8ad-4bb5-572e-b1da-33981ca3c407</xsl:when>
        <xsl:when test=".='tsd'">ac0f54c1-588d-5c74-be45-23762566fc73</xsl:when>
        <xsl:otherwise>2f8e64b1-d1bd-5d3f-842a-829f4bb51dea</xsl:otherwise> <!-- Unmapped (US-NBP) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>3fafb70c-9ca8-56a8-94c1-ba1697c4c68e</institutionId>
  </xsl:template>

</xsl:stylesheet>
