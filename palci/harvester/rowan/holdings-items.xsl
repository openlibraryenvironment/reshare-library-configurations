<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:marc="http://www.loc.gov/MARC21/slim" xmlns:oai20="http://www.openarchives.org/OAI/2.0/" version="1.0">
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
  <xsl:variable name="WILL_LEND">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:variable>
  <!-- FOLIO Inventory ILL Policy value 'Will lend' -->
  <xsl:variable name="WILL_NOT_LEND">b0f97013-87f5-4bab-87f2-ac4a5191b489</xsl:variable>
  <!-- FOLIO Inventory ILL Policy value 'Will not lend' -->
  <xsl:template match="//marc:record">
    <holdingsRecords>
      <xsl:choose>
        <xsl:when test="marc:datafield[@tag='900']">
          <arr>
            <xsl:for-each select="marc:datafield[@tag='900' and @ind1!='4' and @ind1!=' ']">
              <xsl:variable name="holdingsId" select="marc:subfield[@code='8']"/>
              <i>
                <formerIds>
                  <arr>
                    <i>
                      <xsl:value-of select="marc:subfield[@code='8']"/>
                    </i>
                  </arr>
                </formerIds>
                <illPolicyId>
                  <xsl:choose>
                    <xsl:when test="contains('Main,Child3rdFl,Wilson', marc:subfield[@code='d']) and                                                         contains('BOOK,AUDIO,SCORE', ../marc:datafield[@tag='995' and marc:subfield[@code='ff']=$holdingsId]/marc:subfield[@code='t'])">
                      <xsl:value-of select="$WILL_LEND"/>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="$WILL_NOT_LEND"/>
                    </xsl:otherwise>
                  </xsl:choose>
                </illPolicyId>
                <permanentLocationIdHere>
                  <xsl:value-of select="marc:subfield[@code='d']"/>
                </permanentLocationIdHere>
                <callNumber>
                  <xsl:for-each select="marc:subfield[@code='f']">
                    <xsl:if test="position() &gt; 1">
                      <xsl:text> </xsl:text>
                    </xsl:if>
                    <xsl:value-of select="."/>
                  </xsl:for-each>
                </callNumber>
                <items>
                  <arr>
                    <xsl:for-each select="../marc:datafield[@tag='995']">
                      <xsl:if test="marc:subfield[@code='ff']=$holdingsId">
                        <i>
                          <itemIdentifier>
                            <xsl:value-of select="marc:subfield[@code='a']"/>
                          </itemIdentifier>
                          <barcode>
                            <xsl:value-of select="marc:subfield[@code='s']"/>
                          </barcode>
                          <permanentLoanTypeId>2b94c631-fca9-4892-a730-03ee529ffe27</permanentLoanTypeId>
                          <!-- Can circulate -->
                          <materialTypeId>
                            <!-- Mappings to ReShare specific material types, taken from OCLC table "Type of Record" -->
                            <xsl:choose>
                              <xsl:when test="marc:subfield[@code='t']='BOOK'">e65ed344-a691-4f8f-8446-3c0a346c6882</xsl:when>
                              <!-- BKS -->
                              <xsl:when test="marc:subfield[@code='t']='ELEC'">22cb5b81-2056-46ed-8050-c5d8f01caf90</xsl:when>
                              <!-- COM -->
                              <xsl:when test="marc:subfield[@code='t']='ISSUE'">191da404-dec2-4977-9770-1443d9d6c238</xsl:when>
                              <!-- CNR -->
                              <xsl:when test="marc:subfield[@code='t']='MANUSCRIPT'">e65ed344-a691-4f8f-8446-3c0a346c6882</xsl:when>
                              <!-- BKS -->
                              <xsl:when test="marc:subfield[@code='t']='MAP'">9f2c8d85-97e6-4722-a67c-bb51ccfb7781</xsl:when>
                              <!-- MAP -->
                              <xsl:when test="marc:subfield[@code='t']='OTHER'">04858422-c46f-4041-94fc-f5c5a6b98319</xsl:when>
                              <!-- Other -->
                              <xsl:when test="marc:subfield[@code='t']='SCORE'">e5578a7e-49b9-4859-a86a-21b812215b4f</xsl:when>
                              <!-- SCO -->
                              <xsl:when test="marc:subfield[@code='t']='RECORD'">d8dc9046-a9f4-4789-adf5-678fd855b016</xsl:when>
                              <!-- REC -->
                              <xsl:when test="marc:subfield[@code='t']='DVD'">14f1845d-2fad-4091-80c8-48614eaea40b</xsl:when>
                              <!-- VIS -->
                              <xsl:otherwise>f6dd0721-5d4a-439e-9205-c71aef39d15b</xsl:otherwise>
                              <!-- Unmapped -->
                            </xsl:choose>
                          </materialTypeId>
                          <xsl:if test="marc:subfield[@code='g']">
                            <volume>
                              <xsl:value-of select="marc:subfield[@code='g']"/>
                            </volume>
                          </xsl:if>
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
        </xsl:when>
        <xsl:when test="marc:datafield[@tag='995']">
          <arr>
            <xsl:for-each select="marc:datafield[@tag='995']">
              <i>
                <!-- No "900" tag (no holdings record), use ID of item as holdingsRecord ID as well -->
                <formerIds>
                  <arr>
                    <i>
                      <xsl:value-of select="marc:subfield[@code='a']"/>
                    </i>
                  </arr>
                </formerIds>
                <permanentLocationIdHere/>
                <items>
                  <arr>
                    <i>
                      <itemIdentifier>
                        <xsl:value-of select="marc:subfield[@code='a']"/>
                      </itemIdentifier>
                      <barcode>
                        <xsl:value-of select="marc:subfield[@code='s']"/>
                      </barcode>
                      <permanentLoanTypeId>2b94c631-fca9-4892-a730-03ee529ffe27</permanentLoanTypeId>
                      <!-- Can circulate -->
                      <materialTypeId>
                        <xsl:choose>
                          <xsl:when test="marc:subfield[@code='t']='BOOK'">1a54b431-2e4f-452d-9cae-9cee66c9a892</xsl:when>
                          <!-- book -->
                          <xsl:when test="marc:subfield[@code='t']='ELEC'">615b8413-82d5-4203-aa6e-e37984cb5ac3</xsl:when>
                          <!-- electronic resourse -->
                          <xsl:when test="marc:subfield[@code='t']='ISSUE'">d9acad2f-2aac-4b48-9097-e6ab85906b25</xsl:when>
                          <!-- text -->
                          <xsl:when test="marc:subfield[@code='t']='MANUSCRIPT'">d9acad2f-2aac-4b48-9097-e6ab85906b25</xsl:when>
                          <!-- text -->
                          <xsl:when test="marc:subfield[@code='t']='MAP'">71fbd940-1027-40a6-8a48-49b44d795e46</xsl:when>
                          <!-- unspecified -->
                          <xsl:when test="marc:subfield[@code='t']='OTHER'">71fbd940-1027-40a6-8a48-49b44d795e46</xsl:when>
                          <!-- unspecified -->
                          <xsl:when test="marc:subfield[@code='t']='SCORE'">71fbd940-1027-40a6-8a48-49b44d795e46</xsl:when>
                          <!-- unspecified -->
                          <xsl:when test="marc:subfield[@code='t']='RECORD'">dd0bf600-dbd9-44ab-9ff2-e2a61a6539f1</xsl:when>
                          <!-- sound recording -->
                          <xsl:otherwise>71fbd940-1027-40a6-8a48-49b44d795e46</xsl:otherwise>
                          <!-- unspecified -->
                        </xsl:choose>
                      </materialTypeId>
                      <xsl:if test="marc:subfield[@code='g']">
                        <volume>
                          <xsl:value-of select="marc:subfield[@code='g']"/>
                        </volume>
                      </xsl:if>
                      <status>
                        <name>Unknown</name>
                      </status>
                    </i>
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
