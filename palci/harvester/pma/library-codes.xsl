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
    <identifierTypeId>44c74153-c5c0-5c22-b5e0-9b5b1f8d18c1</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='MAIN'">c103b6f3-6336-565d-ae7c-8dce7a8c8df0</xsl:when>
        <xsl:when test=".='MAINO'">90da6ef0-ca9d-5c3f-ada7-9f95e26ac6ed</xsl:when>
        <xsl:when test=".='AFILE'">30797b8e-0b48-59ed-ae42-c81d3b30a01d</xsl:when>
        <xsl:when test=".='AMER'">9df19c8e-581c-55c6-bb3b-c376680246b9</xsl:when>
        <xsl:when test=".='AMERO'">935cd0f4-4333-5f1f-a97b-edaf19324722</xsl:when>
        <xsl:when test=".='AMERF'">68d56612-f744-566e-9238-0b41a3601a4a</xsl:when>
        <xsl:when test=".='AUCT'">f4cc8c01-af8b-5fce-9702-fa687e2d82d9</xsl:when>
        <xsl:when test=".='AUCTO'">5e0a01d7-3061-5e6b-8503-0c42a41e5e45</xsl:when>
        <xsl:when test=".='AUCTF'">748c3e1d-8520-5d98-bb4d-41771b9a3b5a</xsl:when>
        <xsl:when test=".='AUCTR'">486c3b0c-37bf-58a1-85b3-02ce3bdaea8c</xsl:when>
        <xsl:when test=".='BACK'">d7394fa1-6236-5d23-b6ad-fc00fe298e95</xsl:when>
        <xsl:when test=".='BACKO'">225cc006-129a-54d0-8184-e3eba5c1e227</xsl:when>
        <xsl:when test=".='BACKF'">1320356d-9a05-5cef-9b41-0a210286c3a3</xsl:when>
        <xsl:when test=".='CONS'">a89e5b44-4a02-58bd-bd7b-3ccda5c322cd</xsl:when>
        <xsl:when test=".='CONSO'">494ba74d-cf20-58e9-8262-3caf00c5b85c</xsl:when>
        <xsl:when test=".='CONSF'">deed2d1c-11e9-59bc-9691-f4d6675bb05b</xsl:when>
        <xsl:when test=".='COST'">7e29e5b6-8651-5d55-bb96-39343884ec88</xsl:when>
        <xsl:when test=".='COSTO'">cd18be26-bf85-5491-b7b0-312ec2e25090</xsl:when>
        <xsl:when test=".='COSTF'">e657cf7b-32fd-59f6-a795-bd6c562f48c9</xsl:when>
        <xsl:when test=".='DIET'">20f64b43-22cb-5959-85a1-a79eeae595f9</xsl:when>
        <xsl:when test=".='DIETO'">c06c2ffa-5f55-53ce-a6bc-39a754191952</xsl:when>
        <xsl:when test=".='EAST'">f62d5a50-eac6-54ca-bdbf-019c660be0c6</xsl:when>
        <xsl:when test=".='EASTO'">3f1f6ebb-4031-5493-9e8f-81351bdbc15b</xsl:when>
        <xsl:when test=".='EASTF'">e99e1b2c-f8f6-5536-9db8-28bd520d4ffa</xsl:when>
        <xsl:when test=".='EDA'">8fe16a26-5124-56fd-8dfd-ca5b6716dcdb</xsl:when>
        <xsl:when test=".='EDAO'">ce0b8765-9735-5546-908e-88b92c479c2e</xsl:when>
        <xsl:when test=".='EDAF'">1d3e5448-d9a3-5b11-9309-a8c8e0d27cce</xsl:when>
        <xsl:when test=".='EDAR'">62a898ec-a5e6-5289-a587-fb397d044ae6</xsl:when>
        <xsl:when test=".='EUR'">482ec9a0-a2be-50ce-89f9-d1681555a18a</xsl:when>
        <xsl:when test=".='EURO'">d0028117-4c68-57f7-8e73-8f2c32347386</xsl:when>
        <xsl:when test=".='EURF'">021084c2-c0f1-58a9-8709-3ea03b6a33dc</xsl:when>
        <xsl:when test=".='FIC'">1e6ffcdd-cd59-5876-8db8-60a3ec78e5c5</xsl:when>
        <xsl:when test=".='FLAT'">d98a48e8-3de1-57a3-bfca-fe8447d919ae</xsl:when>
        <xsl:when test=".='JC'">522feca4-3c25-58a0-9ce3-aa478ae9c287</xsl:when>
        <xsl:when test=".='JCAC'">eabc8942-c26c-5283-8e37-cdf42300b5b1</xsl:when>
        <xsl:when test=".='JCACO'">d349b68d-80a5-51a5-b1e2-9bbbd9cef6e4</xsl:when>
        <xsl:when test=".='JCF'">e9dc8d44-11a7-5d37-b0f2-d0b20f9f22f0</xsl:when>
        <xsl:when test=".='JCO'">2df26a4b-a0cb-57fe-9794-fd5946295e7a</xsl:when>
        <xsl:when test=".='KIEN'">53d0bf46-80a5-5682-b543-adebaad499f4</xsl:when>
        <xsl:when test=".='KIENA'">0380e227-6b33-59fb-9851-e36bea11b573</xsl:when>
        <xsl:when test=".='KIENF'">912e731d-aec3-55d5-ba5d-985d59047450</xsl:when>
        <xsl:when test=".='KIENO'">08e356f3-b7a7-5eb8-811b-415faa26248e</xsl:when>
        <xsl:when test=".='MAINF'">6cb6f072-8575-5cf7-ae52-42000b874579</xsl:when>
        <xsl:when test=".='MFILM'">55310cda-65aa-5642-acf7-46b3af14d94a</xsl:when>
        <xsl:when test=".='MFICH'">d668bd1c-13b9-5949-b0b5-a26a0bdaad6c</xsl:when>
        <xsl:when test=".='MOD'">750b33d4-438e-5048-8756-3cdeec4398c0</xsl:when>
        <xsl:when test=".='MODO'">e8623a1e-6203-5aaf-8f7d-cc75a0a87add</xsl:when>
        <xsl:when test=".='MODF'">87cad10e-35a9-5327-9c4d-9ddb1a06176b</xsl:when>
        <xsl:when test=".='PAM'">ee4bfaed-5339-5ce9-b1c3-bb59f8adbffb</xsl:when>
        <xsl:when test=".='PAMO'">113b8e17-f99e-5551-8333-ebfb673e7464</xsl:when>
        <xsl:when test=".='PAMR'">64e40bee-6392-5b24-8ca2-8e69ab6aff9b</xsl:when>
        <xsl:when test=".='PAMRO'">84c5cf8b-3e00-5c09-bb6c-9927798fe015</xsl:when>
        <xsl:when test=".='PCON'">6721d948-67de-540f-9f3b-ebb63d55e742</xsl:when>
        <xsl:when test=".='PCONO'">dba7133c-1377-52fb-ab32-4330a643342d</xsl:when>
        <xsl:when test=".='PCONF'">ff5bbd5d-a148-5685-8d2d-c1f2b60a7353</xsl:when>
        <xsl:when test=".='PDP'">e89566b3-1ff7-52ec-bdc9-62016d3538c7</xsl:when>
        <xsl:when test=".='PDPO'">96adb3c7-56bc-51c5-a8ec-51799ba7a0e3</xsl:when>
        <xsl:when test=".='PDPF'">07994fed-dbe5-5bdc-b4b6-b57b436d721e</xsl:when>
        <xsl:when test=".='PDPR'">74e60348-e7a3-5974-82f4-41ffb174fca0</xsl:when>
        <xsl:when test=".='PROB '">ab8ac553-a755-5f46-8c52-7e5dcd0a56a5</xsl:when>
        <xsl:when test=".='RARE'">da8ca99e-354d-5052-ba1f-c3eec633728c</xsl:when>
        <xsl:when test=".='RAREF'">0cb2a46e-9396-5299-902e-0c9a4c26c616</xsl:when>
        <xsl:when test=".='RAREO'">09cfcb2a-288e-5899-a8bc-ad4951d4e36d</xsl:when>
        <xsl:when test=".='REF'">6e876eff-3e85-5cee-b656-e79d47baf803</xsl:when>
        <xsl:when test=".='REFO'">73e7bc68-49ca-5c71-a0ff-1c6cbf9304db</xsl:when>
        <xsl:when test=".='REFF'">9f4204ae-021c-5209-82b8-c1bfaca24815</xsl:when>
        <xsl:when test=".='REFR'">d15652ea-53f6-524b-a4a2-8872ff3fd8e1</xsl:when>
        <xsl:when test=".='REFT'">a31d4d19-5370-5aa6-b96d-2b56326b3c56</xsl:when>
        <xsl:when test=".='RPMA'">d6fe9829-a1b4-59a4-a068-cc8eea28c602</xsl:when>
        <xsl:when test=".='RPMAF'">5b47f7fd-087e-569a-86df-c17118b76c33</xsl:when>
        <xsl:when test=".='RPMAO'">bbf703cd-d60a-5107-84ab-455362de7756</xsl:when>
        <xsl:when test=".='SAA'">2e80e77c-7369-552b-93ff-b24408df5302</xsl:when>
        <xsl:when test=".='SAAO'">c7c585e4-e928-560c-b5d8-37c7c4e7f80c</xsl:when>
        <xsl:when test=".='SAAF'">eba1646d-fce4-5c68-9145-7ad8191004dd</xsl:when>
        <xsl:when test=".='STOR'">7baae9ef-141b-56bb-8193-72259a35e4e2</xsl:when>
        <xsl:when test=".='VOLU'">0fee353b-e1c8-56dc-bef1-1d9face76591</xsl:when>
        <xsl:when test=".='VOLUO'">c8ad7505-3dd4-5bcc-a030-1b1c62fd12ee</xsl:when>
        <xsl:when test=".='WERC'">8f9d0946-9f44-5fdc-8a71-5a9dd1d00048</xsl:when>
        <xsl:when test=".='VDRC'">3ce9d792-af1d-5a49-a30b-61006006ddf1</xsl:when>
        <xsl:otherwise>df792173-2c64-544a-9ebe-8573fd420130</xsl:otherwise> <!-- Unmapped (US-PPPM) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>ede743ce-30a0-5e3c-9855-5e99f85af1a8</institutionId>
  </xsl:template>

</xsl:stylesheet>
