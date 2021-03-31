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
      <xsl:if test="marc:datafield[@tag='945']">
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
                  <xsl:when test="$loc-clean='mcmr'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:when test="$loc-clean='mcc'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:when test="$loc-clean='mcos'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when> <!-- Will lend -->
                  <xsl:otherwise>b0f97013-87f5-4bab-87f2-ac4a5191b489</xsl:otherwise> <!-- Will not lend -->
                </xsl:choose>
              </illPolicyId>
              <callNumber>
                <xsl:choose>
                  <xsl:when test="../marc:datafield[@tag='090']/marc:subfield[@code='b']">
                    <xsl:value-of select="concat(../marc:datafield[@tag='090']/marc:subfield[@code='a'], ' ', ../marc:datafield[@tag='090']/marc:subfield[@code='b'])"/>
                  </xsl:when>
                  <xsl:when test="../marc:datafield[@tag='090']/marc:subfield[@code='a']">
                    <xsl:value-of select="../marc:datafield[@tag='090']/marc:subfield[@code='a']"/>
                  </xsl:when>
                  <xsl:when test="../marc:datafield[@tag='050']/marc:subfield[@code='b']">
                    <xsl:value-of select="concat(../marc:datafield[@tag='050']/marc:subfield[@code='a'], ' ', ../marc:datafield[@tag='050']/marc:subfield[@code='b'])"/>
                  </xsl:when>
                  <xsl:otherwise><xsl:value-of select="../marc:datafield[@tag='050']/marc:subfield[@code='a']"/></xsl:otherwise>
                </xsl:choose>
              </callNumber>
              <callNumberTypeId>
                <xsl:choose>
                  <xsl:when test="../marc:datafield[@tag='090']/marc:subfield[@code='a']">6caca63e-5651-4db6-9247-3205156e9699</xsl:when> <!-- other -->
                  <xsl:otherwise>95467209-6d7b-468b-94df-0f5d7ad2747d</xsl:otherwise> <!-- LC -->
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
                      <xsl:when test="$mt=0 or $mt=1 or $mt=47 or $mt=51">e65ed344-a691-4f8f-8446-3c0a346c6882</xsl:when> <!-- BKS -->
                      <xsl:when test="$mt=20 or $mt=25 or $mt=37">22cb5b81-2056-46ed-8050-c5d8f01caf90</xsl:when> <!-- COM -->
                      <xsl:when test="$mt=15 or $mt=16 or $mt=17">191da404-dec2-4977-9770-1443d9d6c238</xsl:when> <!-- CNR -->
                      <xsl:when test="$mt=7 or $mt=11 or $mt=23 or $mt=24">d8dc9046-a9f4-4789-adf5-678fd855b016</xsl:when> <!-- REC -->
                      <xsl:when test="($mt&gt;1 and $mt&lt;7) or $mt=8 or $mt=9 or $mt=10 or $mt=32 or $mt=48">14f1845d-2fad-4091-80c8-48614eaea40b</xsl:when> <!-- VIS -->
                      <xsl:when test="$mt&gt;0 and $mt&lt;53">04858422-c46f-4041-94fc-f5c5a6b98319</xsl:when> <!-- Other -->
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
      </xsl:if>
      <xsl:if test="not(marc:datafield[@tag='945'])">
        <i>
          <permanentLocationIdHere>UNMAPPED</permanentLocationIdHere>
        </i>
      </xsl:if>
      </arr> 
     </holdingsRecords>
  </xsl:template>
  <xsl:template match="text()"/>
</xsl:stylesheet>
