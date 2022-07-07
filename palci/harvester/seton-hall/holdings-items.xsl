<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:marc="http://www.loc.gov/MARC21/slim" version="2.0">
  <xsl:strip-space elements="*"/>
  <xsl:output indent="yes" method="xml" version="1.0" encoding="UTF-8"/>
  <xsl:template match="/">
    <collection>
      <xsl:apply-templates/>
    </collection>
  </xsl:template>
  <xsl:template match="record">
    <record>
      <xsl:for-each select="@* | node()">
        <xsl:copy-of select="."/>
      </xsl:for-each>
      <xsl:apply-templates/>
    </record>
  </xsl:template>
  <xsl:variable name="WILL_LEND">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:variable>
  <!-- FOLIO Inventory ILL Policy value 'Will lend' -->
  <xsl:variable name="WILL_NOT_LEND">b0f97013-87f5-4bab-87f2-ac4a5191b489</xsl:variable>
  <!-- FOLIO Inventory ILL Policy value 'Will not lend' -->
  <xsl:template match="//marc:record">
    <xsl:variable name="ldr06" select="substring(marc:leader,7,1)"/>
    <xsl:variable name="ldr07" select="substring(marc:leader,8,1)"/>
    <xsl:if test="marc:datafield[@tag='852']">
      <holdingsRecords>
        <arr>
          <xsl:for-each select="marc:datafield[@tag='852']">
            <xsl:variable name="holdingsId" select="marc:subfield[@code='8']"/>
            <i>
              <formerIds>
                <arr>
                  <i>
                    <xsl:value-of select="marc:subfield[@code='p']"/>
                  </i>
                </arr>
              </formerIds>
              <permanentLocationIdHere>
                <xsl:value-of select="marc:subfield[@code='c']"/>
              </permanentLocationIdHere>
              <callNumber>
                <xsl:value-of select="marc:subfield[@code='h']"/>
                <xsl:value-of select="marc:subfield[@code='i']"/>
              </callNumber>
              <illPolicyId>
                <xsl:choose>
                  <xsl:when test="marc:subfield[@code='c']='Apabi Chinese Ebooks'">
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Asian Collection'">
                    <xsl:value-of select="$WILL_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Ask staff for assistance - IN-LIBRARY USE ONLY'">
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Chinese Corner (2nd floor)'">
                    <xsl:value-of select="$WILL_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Circulation Desk'">
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Circulation Desk CDs'">
                    <xsl:value-of select="$WILL_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Circulation Desk DVD/Video'">
                    <xsl:value-of select="$WILL_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Circulation Desk OOMF'">
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Curriculum Library'">
                    <xsl:value-of select="$WILL_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Dean''s Office'">
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Doctoral Dissertation'">
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='EReserves'">
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Lonergan Library- IN-LIBRARY USE ONLY'">
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Main Collection'">
                    <xsl:value-of select="$WILL_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Main Collection - IN-LIBRARY USE ONLY'">
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Main Collection Oversize'">
                    <xsl:value-of select="$WILL_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Main Collection Oversize Plus'">
                    <xsl:value-of select="$WILL_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Main Reserves - IN-LIBRARY USE ONLY'">
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Master''s Thesis'">
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Microform Collection - IN-LIBRARY USE ONLY'">
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='New Books'">
                    <xsl:value-of select="$WILL_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Periodicals - IN-LIBRARY USE ONLY'">
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Reference Collection - IN-LIBRARY USE ONLY'">
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Reference Desk - IN-LIBRARY USE ONLY'">
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Repair'">
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='UN Documents'">
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Valente Library'">
                    <xsl:value-of select="$WILL_LEND"/>
                  </xsl:when>
                  <xsl:when test="marc:subfield[@code='c']='Valente Library Oversize'">
                    <xsl:value-of select="$WILL_LEND"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="$WILL_NOT_LEND"/>
                  </xsl:otherwise>
                </xsl:choose>
              </illPolicyId>
              <items>
                <arr>
                  <xsl:for-each select="../marc:datafield[@tag='876']">
                    <xsl:if test="marc:subfield[@code='9']=$holdingsId">
                      <i>
                        <itemIdentifier>
                          <xsl:value-of select="marc:subfield[@code='p']"/>
                        </itemIdentifier>
                        <barcode>
                          <xsl:value-of select="marc:subfield[@code='p']"/>
                        </barcode>
                        <volume>
                          <xsl:value-of select="marc:subfield[@code='3']"/>
                        </volume>
                        <permanentLoanTypeId>2b94c631-fca9-4892-a730-03ee529ffe27</permanentLoanTypeId>
                        <!-- Can circulate -->
                        <materialTypeId>
                          <!-- Mappings to ReShare specific material types, taken from OCLC table "Type of Record" -->
                          <xsl:choose>
                            <xsl:when test="contains('at',$ldr06) and contains('acdm',$ldr07)">e65ed344-a691-4f8f-8446-3c0a346c6882</xsl:when>
                            <!--      BKS -->
                            <xsl:when test="contains('a',$ldr06) and contains('bis',$ldr07)">191da404-dec2-4977-9770-1443d9d6c238</xsl:when>
                            <!--        CRN -->
                            <xsl:when test="contains('m',$ldr06) and contains('abcdims',$ldr07)">22cb5b81-2056-46ed-8050-c5d8f01caf90</xsl:when>
                            <!--    COM -->
                            <xsl:when test="contains('e',$ldr06) and contains('abcdims',$ldr07)">9f2c8d85-97e6-4722-a67c-bb51ccfb7781</xsl:when>
                            <!--    MAP -->
                            <xsl:when test="contains('f',$ldr06) and contains('acdm',$ldr07)">9f2c8d85-97e6-4722-a67c-bb51ccfb7781</xsl:when>
                            <!--       MAP -->
                            <xsl:when test="contains('p',$ldr06) and contains('cd',$ldr07)">bdfc300b-8a03-4ae6-b42a-6243afa0b7b1</xsl:when>
                            <!--         MIX -->
                            <xsl:when test="contains('ij',$ldr06) and contains('abcdims',$ldr07)">d8dc9046-a9f4-4789-adf5-678fd855b016</xsl:when>
                            <!--   REC -->
                            <xsl:when test="contains('c',$ldr06) and contains('abcdims',$ldr07)">e5578a7e-49b9-4859-a86a-21b812215b4f</xsl:when>
                            <!--    SCO -->
                            <xsl:when test="contains('d',$ldr06) and contains('acdm',$ldr07)">e5578a7e-49b9-4859-a86a-21b812215b4f</xsl:when>
                            <!--       SCO -->
                            <xsl:when test="contains('gkor',$ldr06) and contains('abcdims',$ldr07)">14f1845d-2fad-4091-80c8-48614eaea40b</xsl:when>
                            <!-- VIS -->
                            <xsl:otherwise>f6dd0721-5d4a-439e-9205-c71aef39d15b</xsl:otherwise>
                            <!--                                                     Unmapped -->
                          </xsl:choose>
                        </materialTypeId>
                        <status>
                          <name>Unknown</name>
                        </status>
                      </i>
                    </xsl:if>
                  </xsl:for-each>
                </arr>
              </items>
            </i>
          </xsl:for-each>
        </arr>
      </holdingsRecords>
    </xsl:if>
  </xsl:template>
  <xsl:template match="text()"/>
</xsl:stylesheet>
