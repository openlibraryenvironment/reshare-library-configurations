<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:marc="http://www.loc.gov/MARC21/slim"
  xmlns:oai20="http://www.openarchives.org/OAI/2.0/"
  >

  <xsl:strip-space elements="*"/>
  <xsl:output indent="yes" method="xml" version="1.0" encoding="UTF-8"/>

  <xsl:template match="collection">
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

  <xsl:variable name="WILL_LEND">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:variable> <!-- FOLIO Inventory ILL Policy value 'Will lend' -->
  <xsl:variable name="WILL_NOT_LEND">b0f97013-87f5-4bab-87f2-ac4a5191b489</xsl:variable> <!-- FOLIO Inventory ILL Policy value 'Will not lend' -->

  <xsl:variable name="CNTYPE_DEWEY">03dd64d0-5626-4ecd-8ece-4531e0069f35</xsl:variable> <!-- Call number type: Dewey Decimal Classification  -->
  <xsl:variable name="CNTYPE_LOC">95467209-6d7b-468b-94df-0f5d7ad2747d</xsl:variable> <!-- Call number type: LOC  -->
  <xsl:variable name="CNTYPE_OTHER">6caca63e-5651-4db6-9247-3205156e9699</xsl:variable> <!-- Call number type: Other (catch unmapped)  -->
  <xsl:variable name="CNTYPE_SUDOC">fc388041-6cd0-4806-8a74-ebe3b9ab4c6e</xsl:variable> <!-- Call number type: Other (catch unmapped)  -->

  <xsl:template match="//marc:record">
    <holdingsRecords>
      <xsl:choose>
        <xsl:when test="marc:datafield[@tag='900' and @ind1!='4' and @ind1!=' ']">        
          <arr>
            <xsl:for-each select="marc:datafield[@tag='900' and @ind1!='4' and @ind1!=' ']">
              <xsl:variable name="holdingsId" select="marc:subfield[@code='8']"/>
              <i>
                <formerIds>
                  <arr>
                    <i>
                      <xsl:value-of select="$holdingsId"/>
                    </i>
                  </arr>
                </formerIds>
                <xsl:variable name="LOC" select="marc:subfield[@code='d']" />
                <illPolicyId>
                  <xsl:choose>
                    <xsl:when test="$LOC='1FN'"><xsl:value-of select="$WILL_LEND" /></xsl:when>
                    <xsl:when test="$LOC='1FS'"><xsl:value-of select="$WILL_LEND" /></xsl:when>
                    <xsl:when test="$LOC='CSTK'"><xsl:value-of select="$WILL_LEND" /></xsl:when>
                    <xsl:when test="$LOC='4FN'"><xsl:value-of select="$WILL_LEND" /></xsl:when>
                    <xsl:when test="$LOC='4FS'"><xsl:value-of select="$WILL_LEND" /></xsl:when>
                    <xsl:when test="$LOC='2FN'"><xsl:value-of select="$WILL_LEND" /></xsl:when>
                    <xsl:when test="$LOC='3FN'"><xsl:value-of select="$WILL_LEND" /></xsl:when>
                    <xsl:when test="$LOC='3FS'"><xsl:value-of select="$WILL_LEND" /></xsl:when>
                    <xsl:when test="$LOC='ATR3'"><xsl:value-of select="$WILL_LEND" /></xsl:when>
                    <xsl:when test="$LOC='ATR2'"><xsl:value-of select="$WILL_LEND" /></xsl:when>
                    <xsl:when test="$LOC='ATR1'"><xsl:value-of select="$WILL_LEND" /></xsl:when>
                    <xsl:otherwise><xsl:value-of select="$WILL_NOT_LEND" /></xsl:otherwise>
                  </xsl:choose>
                </illPolicyId>
                <permanentLocationIdHere><xsl:value-of select="$LOC"/></permanentLocationIdHere>
                <callNumber>
                  <xsl:for-each select="marc:subfield[@code='f']">
                    <xsl:if test="position() > 1">
                      <xsl:text> </xsl:text>
                    </xsl:if>
                    <xsl:value-of select="."/>
                  </xsl:for-each>
                </callNumber>
                <xsl:for-each select="../marc:datafield[@tag='995']">
                  <xsl:if test="marc:subfield[@code='ff']=$holdingsId">
                    <callNumberTypeId>
                      <xsl:variable name="CNTYPE" select="marc:subfield[@code='j']" />
                      <xsl:choose>
                        <xsl:when test="$CNTYPE='0'"><xsl:value-of select="$CNTYPE_LOC" /></xsl:when>
                        <xsl:when test="$CNTYPE='1'"><xsl:value-of select="$CNTYPE_DEWEY" /></xsl:when>
                        <xsl:when test="$CNTYPE='3'"><xsl:value-of select="$CNTYPE_SUDOC" /></xsl:when>
                        <xsl:when test="$CNTYPE='8'"><xsl:value-of select="$CNTYPE_OTHER" /></xsl:when>
                      </xsl:choose>
                    </callNumberTypeId>
                  </xsl:if>
                </xsl:for-each>

                <xsl:if test="./marc:subfield[@code='g']">
                  <holdingsStatements>
                    <arr>
                      <i>
                        <statement><xsl:value-of select="./marc:subfield[@code='g']"/></statement>
                        <note><xsl:value-of select="./marc:subfield[@code='h']"/></note>
                      </i>
                    </arr>
                  </holdingsStatements>
                </xsl:if>

                <xsl:if test="./marc:subfield[@code='i']">
                  <holdingsStatementsForSupplements>
                    <arr>
                      <i>
                        <statement><xsl:value-of select="./marc:subfield[@code='i']"/></statement>
                        <note><xsl:value-of select="./marc:subfield[@code='j']"/></note>
                      </i>
                    </arr>
                  </holdingsStatementsForSupplements>
                </xsl:if>
              
                <notes>
                    <arr>
                      <i>
                        <note><xsl:value-of select="concat('Location code: ', $LOC)"/></note>
                        <holdingsNoteTypeId>b160f13a-ddba-4053-b9c4-60ec5ea45d56</holdingsNoteTypeId>
                        <staffOnly>true</staffOnly>
                      </i>
                    </arr>
                  </notes>
                <items>
                  <arr>
                    <xsl:for-each select="../marc:datafield[@tag='995']">
                      <xsl:if test="marc:subfield[@code='ff']=$holdingsId">
                        <i>
                          <itemIdentifier><xsl:value-of select="marc:subfield[@code='a']"/></itemIdentifier>
                          <barcode><xsl:value-of select="marc:subfield[@code='s']"/></barcode>
                          <permanentLoanTypeId>2b94c631-fca9-4892-a730-03ee529ffe27</permanentLoanTypeId>                    <!-- Can circulate -->
                          <materialTypeId>
                            <!-- Mappings to ReShare specific material types, taken from OCLC table "Type of Record" -->
                            <xsl:choose>
                              <xsl:when test="marc:subfield[@code='t']='BOOK'"      >e65ed344-a691-4f8f-8446-3c0a346c6882</xsl:when> <!-- BKS -->
                              <xsl:when test="marc:subfield[@code='t']='ELEC'"      >22cb5b81-2056-46ed-8050-c5d8f01caf90</xsl:when> <!-- COM -->
                              <xsl:when test="marc:subfield[@code='t']='ISSUE'"     >191da404-dec2-4977-9770-1443d9d6c238</xsl:when> <!-- CNR -->
                              <xsl:when test="marc:subfield[@code='t']='MANUSCRIPT'">e65ed344-a691-4f8f-8446-3c0a346c6882</xsl:when> <!-- BKS -->
                              <xsl:when test="marc:subfield[@code='t']='MAP'"       >9f2c8d85-97e6-4722-a67c-bb51ccfb7781</xsl:when> <!-- MAP -->
                              <xsl:when test="marc:subfield[@code='t']='OTHER'"     >04858422-c46f-4041-94fc-f5c5a6b98319</xsl:when> <!-- Other -->
                              <xsl:when test="marc:subfield[@code='t']='SCORE'"     >e5578a7e-49b9-4859-a86a-21b812215b4f</xsl:when> <!-- SCO -->
                              <xsl:when test="marc:subfield[@code='t']='RECORD'"    >d8dc9046-a9f4-4789-adf5-678fd855b016</xsl:when> <!-- REC -->
                              <xsl:when test="marc:subfield[@code='t']='DVD'"       >14f1845d-2fad-4091-80c8-48614eaea40b</xsl:when> <!-- VIS -->
                              <xsl:otherwise>f6dd0721-5d4a-439e-9205-c71aef39d15b</xsl:otherwise>                                    <!-- Unmapped -->
                            </xsl:choose>
                          </materialTypeId>
                          <status>
                            <name>Unknown</name>
                          </status>
                          <enumeration>
                            <xsl:choose>
                              <xsl:when test="marc:subfield[@code='w']"><xsl:value-of select="concat(marc:subfield[@code='e'], ' ', marc:subfield[@code='w'])"/></xsl:when>
                              <xsl:otherwise><xsl:value-of select="marc:subfield[@code='e']"/></xsl:otherwise>
                            </xsl:choose>
                          </enumeration>
                          <chronology>
                            <xsl:choose>
                              <xsl:when test="marc:subfield[@code='x']"><xsl:value-of select="concat(marc:subfield[@code='f'], ' ', marc:subfield[@code='x'])"/></xsl:when>
                              <xsl:otherwise><xsl:value-of select="marc:subfield[@code='f']"/></xsl:otherwise>
                            </xsl:choose>
                          </chronology>                  
                        </i>
                      </xsl:if>
                    </xsl:for-each>
                  </arr>
                </items>
              </i>
            </xsl:for-each>
          </arr>
        </xsl:when>
        <xsl:otherwise>
          <arr>
            <i>
              <permanentLocationIdHere/>
            </i>
          </arr>
        </xsl:otherwise>
      </xsl:choose>
    </holdingsRecords>
  </xsl:template>
  <xsl:template match="text()"/>
</xsl:stylesheet>
