<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:marc="http://www.loc.gov/MARC21/slim" version="1.0">
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
    <xsl:choose>
      <xsl:when test="marc:datafield[@tag='Z30']">
        <holdingsRecords>
          <arr>
            <xsl:for-each select="marc:datafield[@tag='Z30']">
              <i>
                <formerIds>
                  <arr>
                    <i>
                      <xsl:value-of select="marc:subfield[@code='5']"/>
                    </i>
                  </arr>
                </formerIds>
                <illPolicyId>
                  <xsl:choose>
                    <xsl:when test="marc:subfield[@code='1']='TNSFO' and marc:subfield[@code='2']='MAIN'">
                      <xsl:value-of select="$WILL_LEND"/>
                    </xsl:when>
                    <xsl:when test="marc:subfield[@code='1']='TNSFO' and marc:subfield[@code='2']='OVERZ'">
                      <xsl:value-of select="$WILL_LEND"/>
                    </xsl:when>
                    <xsl:when test="marc:subfield[@code='1']='TNSGI' and marc:subfield[@code='2']='MAIN'">
                      <xsl:value-of select="$WILL_LEND"/>
                    </xsl:when>
                    <xsl:when test="marc:subfield[@code='1']='TNSKE' and marc:subfield[@code='2']='MUSIC'">
                      <xsl:value-of select="$WILL_LEND"/>
                    </xsl:when>
                    <xsl:when test="marc:subfield[@code='1']='TNSOS' and marc:subfield[@code='2']='MINI'">
                      <xsl:value-of select="$WILL_LEND"/>
                    </xsl:when>
                    <xsl:when test="marc:subfield[@code='1']='TNSOS' and marc:subfield[@code='2']='OVERZ'">
                      <xsl:value-of select="$WILL_LEND"/>
                    </xsl:when>
                    <xsl:when test="marc:subfield[@code='1']='TNSOS' and marc:subfield[@code='2']='OVERM'">
                      <xsl:value-of select="$WILL_LEND"/>
                    </xsl:when>
                    <xsl:when test="marc:subfield[@code='1']='TNSOS' and marc:subfield[@code='2']='SCORE'">
                      <xsl:value-of select="$WILL_LEND"/>
                    </xsl:when>
                    <xsl:when test="marc:subfield[@code='1']='TNSSC' and marc:subfield[@code='2']='MAIN'">
                      <xsl:value-of select="$WILL_LEND"/>
                    </xsl:when>
                    <xsl:when test="marc:subfield[@code='1']='TNSSC' and marc:subfield[@code='2']='MUSIC'">
                      <xsl:value-of select="$WILL_LEND"/>
                    </xsl:when>
                    <xsl:when test="marc:subfield[@code='1']='TNSSC' and marc:subfield[@code='2']='OVERZ'">
                      <xsl:value-of select="$WILL_LEND"/>
                    </xsl:when>
                    <xsl:when test="marc:subfield[@code='1']='TNSSC' and marc:subfield[@code='2']='OVERM'">
                      <xsl:value-of select="$WILL_LEND"/>
                    </xsl:when>
                    <xsl:when test="marc:subfield[@code='1']='TNSFO' and marc:subfield[@code='2']='SCORE'">
                      <xsl:value-of select="$WILL_LEND"/>
                    </xsl:when>
                    <xsl:when test="marc:subfield[@code='1']='TNSSC' and marc:subfield[@code='2']='SCORE'">
                      <xsl:value-of select="$WILL_LEND"/>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="$WILL_NOT_LEND"/>
                    </xsl:otherwise>
                  </xsl:choose>
                </illPolicyId>
                <permanentLocationIdHere><xsl:value-of select="marc:subfield[@code='1']"/>.<xsl:value-of select="marc:subfield[@code='2']"/></permanentLocationIdHere>
                <callNumberTypeIdHere><xsl:value-of select="marc:subfield[@code='1']"/>.<xsl:value-of select="marc:subfield[@code='2']"/></callNumberTypeIdHere>
                <callNumber>
                  <xsl:for-each select="marc:subfield[@code='h' or @code='i']">
                    <xsl:if test="position() &gt; 1">
                      <xsl:text> </xsl:text>
                    </xsl:if>
                    <xsl:value-of select="."/>
                  </xsl:for-each>
                </callNumber>
                <items>
                  <arr>
                    <i>
                      <itemIdentifier>
                        <xsl:value-of select="marc:subfield[@code='5']"/>
                      </itemIdentifier>
                      <barcode>
                        <xsl:value-of select="marc:subfield[@code='5']"/>
                      </barcode>
                      <permanentLoanTypeId>2b94c631-fca9-4892-a730-03ee529ffe27</permanentLoanTypeId>
                      <!-- Can circulate -->
                      <materialTypeId>
                        <!-- Mappings to ReShare specific material types, taken from OCLC table "Type of Record" -->
                        <xsl:choose>
                          <xsl:when test="marc:subfield[@code='m']='BOOK'">e65ed344-a691-4f8f-8446-3c0a346c6882</xsl:when>
                          <!-- BKS -->
                          <xsl:when test="marc:subfield[@code='m']='ELEC'">22cb5b81-2056-46ed-8050-c5d8f01caf90</xsl:when>
                          <!-- COM -->
                          <xsl:when test="marc:subfield[@code='m']='ISSUE'">191da404-dec2-4977-9770-1443d9d6c238</xsl:when>
                          <!-- CNR -->
                          <xsl:when test="marc:subfield[@code='m']='MANUSCRIPT'">e65ed344-a691-4f8f-8446-3c0a346c6882</xsl:when>
                          <!-- BKS -->
                          <xsl:when test="marc:subfield[@code='m']='MAP'">9f2c8d85-97e6-4722-a67c-bb51ccfb7781</xsl:when>
                          <!-- MAP -->
                          <xsl:when test="marc:subfield[@code='m']='OTHER'">04858422-c46f-4041-94fc-f5c5a6b98319</xsl:when>
                          <!-- Other -->
                          <xsl:when test="marc:subfield[@code='m']='SCORE'">e5578a7e-49b9-4859-a86a-21b812215b4f</xsl:when>
                          <!-- SCO -->
                          <xsl:when test="marc:subfield[@code='m']='RECORD'">d8dc9046-a9f4-4789-adf5-678fd855b016</xsl:when>
                          <!-- REC -->
                          <xsl:when test="marc:subfield[@code='m']='DVD'">14f1845d-2fad-4091-80c8-48614eaea40b</xsl:when>
                          <!-- VIS -->
                          <xsl:otherwise>f6dd0721-5d4a-439e-9205-c71aef39d15b</xsl:otherwise>
                          <!-- Unmapped -->
                        </xsl:choose>
                      </materialTypeId>
                      <status>
                        <name>Unknown</name>
                      </status>
                    </i>
                  </arr>
                </items>
              </i>
            </xsl:for-each>
          </arr>
        </holdingsRecords>
      </xsl:when>
      <xsl:otherwise>
        <holdingsRecords>
          <arr>
            <i>
              <permanentLocationIdHere/>
            </i>
          </arr>
        </holdingsRecords>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="text()"/>
</xsl:stylesheet>
