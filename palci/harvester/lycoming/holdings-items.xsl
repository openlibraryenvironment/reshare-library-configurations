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
    <xsl:variable name="mt" select="substring(./marc:leader, 7, 1)"/>
    <xsl:variable name="bl" select="substring(./marc:leader, 8, 1)"/>
    <holdingsRecords>
      <arr>
      <xsl:if test="marc:datafield[@tag='949']">
        <xsl:for-each select="marc:datafield[@tag='949']">
          <xsl:sort select="./marc:subfield[@code='h']"/>
          <xsl:variable name="preloc">
            <xsl:value-of select="./preceding-sibling::marc:datafield[@tag='949'][1]/marc:subfield[@code='h']"/>
          </xsl:variable>
          <xsl:variable name="iid" select="./marc:subfield[@code='z']"/>
          <xsl:variable name="loc" select="./marc:subfield[@code='h']"/>
          <xsl:if test="not($loc=$preloc)">
            <i>
              <permanentLocationIdHere><xsl:value-of select="$loc"/></permanentLocationIdHere>
              <illPolicyId>
                <xsl:choose>
                  <xsl:when test="$loc='NEW'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='OVSZ'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='LYCA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='LYCJ'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='LYCL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='LYCT'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='LYCDVD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:otherwise>b0f97013-87f5-4bab-87f2-ac4a5191b489</xsl:otherwise> <!-- Will not lend -->
                </xsl:choose>
              </illPolicyId>
              <callNumber><xsl:value-of select="normalize-space(concat(./marc:subfield[@code='a'], ' ', ./marc:subfield[@code='b']))"/></callNumber>
              <notes>
                <arr>
                  <i>
                    <note><xsl:value-of select="concat('Location code: ', $loc)"/></note>
                    <holdingsNoteTypeId>b160f13a-ddba-4053-b9c4-60ec5ea45d56</holdingsNoteTypeId>
                    <staffOnly>true</staffOnly>
                  </i>
                </arr>
              </notes>
              <items>
                <arr>
                <xsl:for-each select="../marc:datafield[@tag='949']/marc:subfield[@code='h'][.=$loc]/..">
                  <i>
                    <itemIdentifier><xsl:value-of select="./marc:subfield[@code='z']"/></itemIdentifier>
                    <barcode><xsl:value-of select="./marc:subfield[@code='z']"/></barcode>
                    <status><name>Unknown</name></status>
                    <permanentLoanTypeId>2b94c631-fca9-4892-a730-03ee529ffe27</permanentLoanTypeId> <!-- Can circulate -->
                    <materialTypeId>
                      <!-- Mappings to ReShare specific material types, taken from OCLC table "Type of Record" -->
                      <!-- Mapping from leader position 6 -->
                      <xsl:choose>
                      <xsl:when test="$bl='s' or $bl='b'">191da404-dec2-4977-9770-1443d9d6c238</xsl:when> <!-- CNR -->
                      <xsl:when test="$mt='a' or $mt='t'">e65ed344-a691-4f8f-8446-3c0a346c6882</xsl:when> <!-- BKS -->
                      <xsl:when test="$mt='m'">22cb5b81-2056-46ed-8050-c5d8f01caf90</xsl:when>            <!-- COM -->
                      <xsl:when test="$mt='e' or $mt='f'">9f2c8d85-97e6-4722-a67c-bb51ccfb7781</xsl:when> <!-- MAP -->
                      <xsl:when test="$mt='c' or $mt='d'">e5578a7e-49b9-4859-a86a-21b812215b4f</xsl:when> <!-- SCO -->
                      <xsl:when test="$mt='i' or $mt='j'">d8dc9046-a9f4-4789-adf5-678fd855b016</xsl:when> <!-- REC -->
                      <xsl:when test="$mt='g'">14f1845d-2fad-4091-80c8-48614eaea40b</xsl:when>            <!-- VIS -->
                      <xsl:when test="$mt='p'">bdfc300b-8a03-4ae6-b42a-6243afa0b7b1</xsl:when>            <!-- MIX -->
                      <xsl:otherwise>f6dd0721-5d4a-439e-9205-c71aef39d15b</xsl:otherwise>            <!-- Unmapped -->
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
      <xsl:if test="not(marc:datafield[@tag='949'])">
        <i>
          <permanentLocationIdHere>UNMAPPED</permanentLocationIdHere>
        </i>
      </xsl:if>
      </arr> 
     </holdingsRecords>
  </xsl:template>
  <xsl:template match="text()"/>
</xsl:stylesheet>
