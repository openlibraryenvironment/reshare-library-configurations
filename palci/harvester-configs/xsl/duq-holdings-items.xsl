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
        <xsl:for-each select="marc:datafield[@tag='945']">
          <xsl:sort select="./marc:subfield[@code='l']"/>
          <xsl:variable name="preloc">
            <xsl:value-of select="./preceding-sibling::marc:datafield[@tag='945'][1]/marc:subfield[@code='l']"/>
          </xsl:variable>
          <xsl:variable name="iid" select="./marc:subfield[@code='y']"/>
          <xsl:variable name="loc" select="./marc:subfield[@code='l']"/>
          <xsl:if test="not($loc=$preloc)">
            <i>
              <xsl:variable name="loc-clean" select="normalize-space($loc)"/>
              <permanentLocationIdHere><xsl:value-of select="$loc-clean"/></permanentLocationIdHere>
              <illPolicyId>
                <xsl:choose>
                  <xsl:when test="$loc-clean='g'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:when test="$loc-clean='g1'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:when test="$loc-clean='g1f'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:when test="$loc-clean='g1o'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:when test="$loc-clean='g2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:when test="$loc-clean='g3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:when test="$loc-clean='g4'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:when test="$loc-clean='g5'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:when test="$loc-clean='g5cc'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:when test="$loc-clean='g5co'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:when test="$loc-clean='g5cp'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:when test="$loc-clean='g5cs'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:when test="$loc-clean='g5mk'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:when test="$loc-clean='g5mo'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:when test="$loc-clean='g5ms'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:otherwise>b0f97013-87f5-4bab-87f2-ac4a5191b489</xsl:otherwise> <!-- Will not lend -->
                </xsl:choose>
              </illPolicyId>
              <callNumber><xsl:value-of select="./marc:subfield[@code='a']"/></callNumber>
              <items>
                <arr>
                <xsl:for-each select="../marc:datafield[@tag='945']/marc:subfield[@code='l'][.=$loc]/..">
                  <i>
                    <itemIdentifier><xsl:value-of select="./marc:subfield[@code='y']"/></itemIdentifier>
                    <barcode><xsl:value-of select="./marc:subfield[@code='i']"/></barcode>
                    <volume><xsl:value-of select="./marc:subfield[@code='c']"/></volume>
                    <status><name>Unknown</name></status>
                    <permanentLoanTypeId>2b94c631-fca9-4892-a730-03ee529ffe27</permanentLoanTypeId> <!-- Can circulate -->
                    <materialTypeId>
                      <!-- Mappings to ReShare specific material types, taken from OCLC table "Type of Record" -->
                      <xsl:variable name="mt" select="./marc:subfield[@code='t']"/> 
                      <xsl:choose>
                      <xsl:when test="$mt=100 or $mt=101 or $mt=102 or $mt=104 or $mt=106 or $mt=145 or $mt=171">e65ed344-a691-4f8f-8446-3c0a346c6882</xsl:when> <!-- BKS -->
                      <xsl:when test="$mt=160 or $mt=161 or $mt=162 or $mt=163 or $mt=164 or $mt=165 or $mt=187 or $mt=188 or $mt=195">22cb5b81-2056-46ed-8050-c5d8f01caf90</xsl:when> <!-- COM -->
                      <xsl:when test="$mt=120 or $mt=121 or $mt=170 or $mt=245 or $mt=250 or $mt=251 or $mt=253 or $mt=254">191da404-dec2-4977-9770-1443d9d6c238</xsl:when> <!-- CNR -->
                      <xsl:when test="$mt=246">9f2c8d85-97e6-4722-a67c-bb51ccfb7781</xsl:when> <!-- MAP -->
                      <xsl:when test="$mt=107">e5578a7e-49b9-4859-a86a-21b812215b4f</xsl:when> <!-- SCO -->
                      <xsl:when test="$mt=180 or $mt=181 or $mt=182 or $mt=183 or $mt=184 or $mt=186 or $mt=196 or $mt=197 or $mt=189">d8dc9046-a9f4-4789-adf5-678fd855b016</xsl:when> <!-- REC -->
                      <xsl:when test="$mt=185 or $mt=189 or $mt=190 or $mt=193 or $mt=194 or $mt=200 or $mt=201">14f1845d-2fad-4091-80c8-48614eaea40b</xsl:when> <!-- VIS -->
                      <xsl:otherwise>f6dd0721-5d4a-439e-9205-c71aef39d15b</xsl:otherwise> <!-- Unmapped -->
                      </xsl:choose>
                    </materialTypeId>
                  </i>
                </xsl:for-each>
                </arr>
              </items>
            </i>
          </xsl:if>
        </xsl:for-each>
      </arr> 
     </holdingsRecords>
  </xsl:template>
  <xsl:template match="text()"/>
</xsl:stylesheet>
