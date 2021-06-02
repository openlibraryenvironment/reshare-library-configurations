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
      <xsl:if test="marc:datafield[@tag='852']">
        <xsl:for-each select="marc:datafield[@tag='852']">
          <xsl:sort select="./marc:subfield[@code='b']"/>
          <xsl:sort select="./marc:subfield[@code='c']"/>
          <xsl:variable name="preloc">
            <xsl:value-of select="concat(./preceding-sibling::marc:datafield[@tag='852'][1]/marc:subfield[@code='b'], ' ', ./preceding-sibling::marc:datafield[@tag='852'][1]/marc:subfield[@code='c'])"/>
          </xsl:variable>
          <xsl:variable name="lib" select="./marc:subfield[@code='b']"/>
          <xsl:variable name="loc-code" select="./marc:subfield[@code='c']"/>
          <xsl:variable name="loc" select="concat($lib, ' ', $loc-code)"/>
          <xsl:variable name="hid" select="./marc:subfield[@code='8']" />
          <xsl:if test="not($loc=$preloc)">
            <i>
              <formerIds>
                <arr><i><xsl:value-of select="$hid"/></i></arr>
              </formerIds>
              <permanentLocationIdHere><xsl:value-of select="$loc"/></permanentLocationIdHere>
              <illPolicyId>
                <xsl:choose>
                  <xsl:when test="$loc='WVUA Appalachian Collection'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Closed Stacks'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Closed Stacks In Library Circulating'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA DVD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc=&quot;WVUA Eliza's&quot;">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Government Documents'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Government Documents Census'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Government Documents Index'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Government Documents Maps'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Government Documents Media'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Government Documents Microfiche'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Government Documents Microfilm'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Government Documents Prints'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Government Documents West Virginia'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Government Documents West Virginia Media'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Microcard'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Microfiche'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Microfilm'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Microphotography'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Stacks'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA Stacks Oversize'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUA WVU Electronic Theses and Dissertations'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUD Closed Stacks'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUD Closed Stacks In Library Circulating'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUD Microfiche'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUD Microfilm'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc=&quot;WVUE Children's Award Winners Collection&quot;">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc=&quot;WVUE Children's Collection&quot;">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUE Closed Stacks'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUE Closed Stacks In Library Circulating'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUE Compact Shelving'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUE Cookbook Collection'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUE DVD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUE Government Documents'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUE Leisure Reading'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUE Microfiche'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUE Microfilm'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUE Miniature Score'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUE Oversize'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUE Patent'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUE Stacks'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUH Audiovisuals'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUH CD-ROM'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUH Closed Stacks'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUH Closed Stacks In Library Circulating'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUH Current Stacks'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUH DVDS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUH Government Documents'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUH Leisure Reading Collection'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUH Microfiche'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUH Microfilm'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL General Collection'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL General Collection Non-Circulating'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL Law Cleanup'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL Legal Leisure'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL Media'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL Media Services Equipment 4 hours'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL Media Services Equipment 7 day'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL Online'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL Oversize'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL Racial Justice Collection'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL Rare Book Room'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL Reference'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL Reserve'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL Storage'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL Study Aids'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL Video Collection'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL West Virginia Collection'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc='WVUL West Virginia Collection Non-Circulating'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:otherwise>b0f97013-87f5-4bab-87f2-ac4a5191b489</xsl:otherwise> <!-- Will not lend -->
                </xsl:choose>
              </illPolicyId>
              <xsl:variable name="callno">
                <xsl:choose>
                  <xsl:when test="./marc:subfield[@code='i']"><xsl:value-of select="concat(./marc:subfield[@code='h'], ' ', ./marc:subfield[@code='i'])"/></xsl:when>
                  <xsl:otherwise><xsl:value-of select="./marc:subfield[@code='h']"/></xsl:otherwise>
                </xsl:choose>
              </xsl:variable>
              <callNumber><xsl:value-of select="$callno"/></callNumber>
              <xsl:variable name='cntype'>
                <xsl:choose>
                  <xsl:when test="./@ind1='0'">95467209-6d7b-468b-94df-0f5d7ad2747d</xsl:when> <!-- LC -->
                  <xsl:when test="./@ind1='1'">03dd64d0-5626-4ecd-8ece-4531e0069f35</xsl:when> <!-- Dewey -->
                  <xsl:when test="./@ind1='3'">fc388041-6cd0-4806-8a74-ebe3b9ab4c6e</xsl:when> <!-- Sudoc -->
                  <xsl:otherwise>6caca63e-5651-4db6-9247-3205156e9699</xsl:otherwise> <!-- Other -->
                </xsl:choose>
              </xsl:variable>
              <callNumberTypeId><xsl:value-of select="$cntype"/></callNumberTypeId>
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
                <xsl:for-each select="../marc:datafield[@tag='876' and ./marc:subfield[@code='9']=$hid]">
                  <i>
                    <itemIdentifier><xsl:value-of select="./marc:subfield[@code='p']"/></itemIdentifier>
                    <permanentLocationIdHere><xsl:value-of select="$loc"/></permanentLocationIdHere>
                    <barcode><xsl:value-of select="./marc:subfield[@code='p']"/></barcode>
                    <status><name>Unknown</name></status>
                    <permanentLoanTypeId>2b94c631-fca9-4892-a730-03ee529ffe27</permanentLoanTypeId> <!-- Can circulate -->
                    <materialTypeId>
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
                    <xsl:choose>
                      <xsl:when test="$bl='s' or $bl='b'">
                        <enumeration><xsl:value-of select="./marc:subfield[@code='3']"/></enumeration>
                      </xsl:when>
                      <xsl:otherwise>
                        <volume><xsl:value-of select="./marc:subfield[@code='3']"/></volume>
                      </xsl:otherwise>
                    </xsl:choose>
                  </i>
                </xsl:for-each>
                </arr>
              </items>
            </i>
          </xsl:if>
        </xsl:for-each>
      </xsl:if>
      <xsl:if test="not(marc:datafield[@tag='852'])">
        <i>
          <permanentLocationIdHere>UNMAPPED</permanentLocationIdHere>
        </i>
      </xsl:if>
      </arr> 
     </holdingsRecords>
  </xsl:template>
  <xsl:template match="text()"/>
</xsl:stylesheet>
