<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
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
    <identifierTypeId>b4d96d6d-92f4-414a-a058-e91ef8e8ea07</identifierTypeId>
  </xsl:template>
  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='STHM Apabi Chinese Ebooks'">c6f27c9b-22fe-4ff3-bf24-96242fb93c80</xsl:when>
        <xsl:when test=".='STHM Asian Collection'">35109dfd-f179-4acf-a4f8-d6c3cb3c0ce0</xsl:when>
        <xsl:when test=".='STHM Ask staff for assistance - IN-LIBRARY USE ONLY'">b90a5b70-7fd9-4d3f-98af-295d2305b6a2</xsl:when>
        <xsl:when test=".='STHM Chinese Corner (2nd floor)'">db652038-6f79-4b9f-ae59-debd934f4a87</xsl:when>
        <xsl:when test=".='STHM Circulation Desk'">efa4f1b1-b884-4694-b37b-bf1e8d0394e9</xsl:when>
        <xsl:when test=".='STHM Circulation Desk CDs'">b062cf71-30d8-4728-94f1-59f3eaab8463</xsl:when>
        <xsl:when test=".='STHM Circulation Desk DVD/Video'">419b2b9f-f9f1-4581-9b7e-b090e0d0015b</xsl:when>
        <xsl:when test=".='STHM Circulation Desk OOMF'">0a93b855-0878-4774-a898-1515db568482</xsl:when>
        <xsl:when test=".='STHM Curriculum Library'">01ffad89-5ab2-4a67-bc9d-8dcce1919c27</xsl:when>
        <xsl:when test=".=&quot;STHM Dean's Office&quot;">a3244fdd-59f1-4720-ad2c-fd7a07e4d2bd</xsl:when>
        <xsl:when test=".='STHM Doctoral Dissertation'">abce9b81-6909-4426-8985-e5467c880ca1</xsl:when>
        <xsl:when test=".='STHM EReserves'">eaf93ed8-85f4-4b8a-a9a6-e61a76127f5c</xsl:when>
        <xsl:when test=".='STHM Lonergan Library- IN-LIBRARY USE ONLY'">933e52d3-3aa0-4a4a-a7ac-3715abfd0b15</xsl:when>
        <xsl:when test=".='STHM Main Collection'">2c715e7f-c377-4872-a0cd-bc4879e16ff3</xsl:when>
        <xsl:when test=".='STHM Main Collection - IN-LIBRARY USE ONLY'">baeca93d-b5de-4209-aef6-eb1b837e3f96</xsl:when>
        <xsl:when test=".='STHM Main Collection Oversize'">106f20dd-2528-4268-a443-bd9e229244cd</xsl:when>
        <xsl:when test=".='STHM Main Collection Oversize Plus'">bd16d10a-ebbd-476f-9b72-74baba7e484c</xsl:when>
        <xsl:when test=".='STHM Main Reserves - IN-LIBRARY USE ONLY'">a42366c6-30ad-496f-84ea-9411745320a6</xsl:when>
        <xsl:when test=".=&quot;STHM Master's Thesis&quot;">081ad756-bfeb-4ff9-ada3-c1596053e099</xsl:when>
        <xsl:when test=".='STHM Microform Collection - IN-LIBRARY USE ONLY'">f9f46854-b5b7-4045-9121-4d668671a509</xsl:when>
        <xsl:when test=".='STHM New Books'">d3101124-a61e-4a5d-a418-e4d6b75b6d80</xsl:when>
        <xsl:when test=".='STHM Periodicals - IN-LIBRARY USE ONLY'">076133f7-54bf-4b34-8a13-3e0b71453a6e</xsl:when>
        <xsl:when test=".='STHM Reference Collection - IN-LIBRARY USE ONLY'">359e8b82-dadc-44eb-bd54-fa62b91719bc</xsl:when>
        <xsl:when test=".='STHM Reference Desk - IN-LIBRARY USE ONLY'">642f59cd-ddab-4f8a-a37d-84acb8c076a9</xsl:when>
        <xsl:when test=".='STHM Repair'">265e570d-0c4d-4aff-9736-273bdaad9c79</xsl:when>
        <xsl:when test=".='STHM UN Documents'">fbaf4db3-3be5-48ef-a36c-fcebaab6a9a5</xsl:when>
        <xsl:when test=".='STHM Valente Library'">271a7b59-9870-4133-aaf8-618b57a60c8f</xsl:when>
        <xsl:when test=".='STHM Valente Library Oversize'">48925f9d-7ada-41a5-820a-a8f0a574994a</xsl:when>
        <xsl:when test=".='STHM On Display'">1016ee5b-c52a-42f7-bba8-594e8e919d08</xsl:when>
        <xsl:when test=".=starts-with(., 'STHA')">393f200a-833b-4c9d-abcf-2426d1e65f27</xsl:when>
        <xsl:when test=".=starts-with(., 'STHD')">5a75f2b2-3c2c-4a94-94ba-585b7993010a</xsl:when>
        <xsl:when test=".=starts-with(., 'STHH')">a1d85960-ffea-4b2b-a80f-ad363b44ee82</xsl:when>
        <xsl:otherwise>f29e2419-2373-48de-85a8-78b87ba865bc</xsl:otherwise>
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>
  <!-- Set FOLIO Inventory ID for the institution of Seton Hall -->
  <xsl:template match="//institutionIdHere">
    <institutionId>01355129-8c25-4f81-aa72-d424e00cbe67</institutionId>
  </xsl:template>
</xsl:stylesheet>
