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

  <xsl:template match="//marc:record">
    <holdingsRecords>
      <arr>
        <xsl:choose>
          <xsl:when test="marc:datafield[@tag='995']">
            <xsl:for-each select="marc:datafield[@tag='995']">
              <xsl:sort select="./marc:subfield[@code='z']"/>
              <xsl:variable name="preloc">
                <xsl:value-of select="./preceding-sibling::marc:datafield[@tag='995'][1]/marc:subfield[@code='z']"/>
              </xsl:variable>
              <xsl:variable name="iid" select="./marc:subfield[@code='a']"/>
              <xsl:variable name="loc-clean" select="./marc:subfield[@code='z']"/>
              <xsl:if test="not($loc-clean=$preloc)">
                <i>
                  <permanentLocationIdHere><xsl:value-of select="$loc-clean"/></permanentLocationIdHere>
                  <illPolicyId>
                    <xsl:choose>
                      <xsl:when test="$loc-clean='53room'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                      <xsl:when test="$loc-clean='vcassette'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                      <xsl:when test="$loc-clean='vcdmusic'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                      <xsl:when test="$loc-clean='vcdrom'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                      <xsl:when test="$loc-clean='vlanguage'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                      <xsl:when test="$loc-clean='vmisc'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                      <xsl:when test="$loc-clean='vvhs'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                      <xsl:when test="$loc-clean='circ'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                      <xsl:when test="$loc-clean='folio'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                      <xsl:when test="$loc-clean='oversize'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                      <xsl:when test="$loc-clean='vdvd'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                      <xsl:when test="$loc-clean='gdocs'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                      <xsl:when test="$loc-clean='rr4'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                      <xsl:otherwise>b0f97013-87f5-4bab-87f2-ac4a5191b489</xsl:otherwise> <!-- Will not lend -->
                    </xsl:choose>
                  </illPolicyId>
                  <callNumber><xsl:value-of select="./marc:subfield[@code='bb']"/></callNumber>
                  <callNumberTypeId>
                    <xsl:choose>
                      <xsl:when test="./marc:subfield[@code='j']='0'">95467209-6d7b-468b-94df-0f5d7ad2747d</xsl:when> <!-- LC -->
                      <xsl:when test="./marc:subfield[@code='j']='1'">03dd64d0-5626-4ecd-8ece-4531e0069f35</xsl:when> <!-- Dewey -->
                      <xsl:when test="./marc:subfield[@code='j']='3'">fc388041-6cd0-4806-8a74-ebe3b9ab4c6e</xsl:when> <!-- Sudoc -->
                      <xsl:otherwise>6caca63e-5651-4db6-9247-3205156e9699</xsl:otherwise> <!-- Other -->
                    </xsl:choose>
                  </callNumberTypeId>
                  <notes>
                    <arr>
                      <i>
                        <note><xsl:value-of select="concat('Location code: ', $loc-clean)"/></note>
                        <holdingsNoteTypeId>b160f13a-ddba-4053-b9c4-60ec5ea45d56</holdingsNoteTypeId>
                        <staffOnly>true</staffOnly>
                      </i>
                    </arr>
                  </notes>
                  <items>
                    <arr>
                    <xsl:for-each select="../marc:datafield[@tag='995']/marc:subfield[@code='z'][.=$loc-clean]/..">
                      <i>
                        <itemIdentifier><xsl:value-of select="./marc:subfield[@code='a']"/></itemIdentifier>
                        <barcode><xsl:value-of select="./marc:subfield[@code='s']"/></barcode>
                        <status><name>Unknown</name></status>
                        <permanentLoanTypeId>2b94c631-fca9-4892-a730-03ee529ffe27</permanentLoanTypeId> <!-- Can circulate -->
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
                        <volume><xsl:value-of select="./marc:subfield[@code='g']"/></volume>
                      </i>
                    </xsl:for-each>
                    </arr>
                  </items>
                </i>
              </xsl:if>
            </xsl:for-each>
          </xsl:when>
          <xsl:otherwise>
            <i>
              <permanentLocationIdHere>UNMAPPED</permanentLocationIdHere>
            </i>
          </xsl:otherwise>
        </xsl:choose>
      </arr> 
     </holdingsRecords>
  </xsl:template>
  <xsl:template match="text()"/>
</xsl:stylesheet>
