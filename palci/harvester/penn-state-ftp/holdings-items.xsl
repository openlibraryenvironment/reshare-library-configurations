<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:marc="http://www.loc.gov/MARC21/slim"
  xmlns:oai20="http://www.openarchives.org/OAI/2.0/"
  xmlns:marc21="http://www.openarchives.org/OAI/2.0/marc21/"
  xmlns:dc="http://purl.org/dc/elements/1.1/"
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
      <xsl:if test="./marc:datafield[@tag='949']">
        <xsl:for-each select="marc:datafield[@tag='949']">
          <xsl:sort select="./marc:subfield[@code='m']"/>
          <xsl:sort select="./marc:subfield[@code='l']"/>
          <xsl:sort select="./marc:subfield[@code='a']"/>
          <xsl:variable name="prelib">
            <xsl:value-of select="./preceding-sibling::marc:datafield[@tag='949'][1]/marc:subfield[@code='m']"/>
          </xsl:variable>
          <xsl:variable name="preloc">
            <xsl:value-of select="./preceding-sibling::marc:datafield[@tag='949'][1]/marc:subfield[@code='l']"/>
          </xsl:variable>
          <xsl:variable name="precall">
            <xsl:value-of select="./preceding-sibling::marc:datafield[@tag='949'][1]/marc:subfield[@code='a']"/>
          </xsl:variable>
          <xsl:variable name="prekey" select="concat($prelib, '-', $preloc, '-', $precall)"/>
          <xsl:variable name="lib" select="./marc:subfield[@code='m']"/>
          <xsl:variable name="loc" select="./marc:subfield[@code='l']"/>
          <xsl:variable name="callno" select="./marc:subfield[@code='a']"/>
          <xsl:variable name="curkey" select="concat($lib, '-', $loc, '-', $callno)"/>
          <xsl:variable name="iid" select="concat($curkey, '-', ./marc:subfield[@code='i'])"/>
          <xsl:variable name="loc-code" select="concat($lib, ' ', $loc)"/>
          <xsl:if test="not($curkey=$prekey or $loc='WITHDRAWN')">
            <i>
              <permanentLocationIdHere><xsl:value-of select="$loc-code"/></permanentLocationIdHere>
              <illPolicyId>
                <xsl:choose>
                  <xsl:when test="$loc-code='ABINGTON STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ABINGTON STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA JUVENILEAA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA MEDIA-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA OVERSIZEAA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='ALTOONA STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER AFRIC-AMER'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER GRFCNOV-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEAVER STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND BROWSINGBD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND FACULTY-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND INDEP-LRNG'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND OVERSIZEBD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BEHREND THESIS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS DISPLAY-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS NEWBOOK-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BERKS STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE GRFCNOV-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='BRANDYWINE STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='DUBOIS STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE GRFCNOV-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE JUVENILEFE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='FAYETTE STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY BROWSINGMK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GALLEGHENY STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GREATVLY CURRIC-GV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GREATVLY NONPRINTGV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GREATVLY STACKS-GV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='GREATVLY THESIS-GV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG AUDIO-HB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG CD-HB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG CURRIC-HB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG DOCS-HB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG JUVENILEHB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG MAPS-HB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG OVERSIZEHB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG PHONO-HB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG REPORTS-HB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HARRISBURG THESIS-HBY'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZELTON STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZELTON STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZELTON STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZELTON STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZELTON STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZELTON STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZELTON STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZELTON STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZELTON STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZELTON STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZELTON STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZELTON STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZELTON STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZLETON BROWSINGHN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZLETON MAPS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZLETON STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZLETON STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZLETON STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZLETON STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZLETON STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZLETON STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZLETON STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='HAZLETON STORAGE-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY CAREERS-LV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY JUVENILELV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-LV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='LEHIGHVLY STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO CIRCDESKMA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO OVERSIZEMA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='MONTALTO STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN CIRCDESKNK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN DOCS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN OVERSIZENK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN POPNON-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='NEWKEN STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SCHUYLKILL STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO BNNF-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO BOOKNOOKSV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO LGBTQ-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO MCDOWELLSV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO MEDIA-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='SHENANGO STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-ANNEX ACAD-BLDG'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-ANNEX ANNEX'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-ANNEX CATO-2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-ANNEX CATO-PARK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-ARCHIT FOLIO-AC'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-ARCHIT STACKS-AC'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-ARTSHUM MUSIC-CTR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-ARTSHUM PAT-RDG-RM'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-EMS MAPS-EM'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-EMS MICROS-EM'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-EMS OVERSIZEEM'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-EMS STACKS-EM'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-ENGIN POPULAR-EG'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-ENGIN STACKS-EG'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-MAPS MAP-GUIDES'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-MAPS MAPS-MP'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-MAPS OVERSIZEMP'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-MAPS STORAGE-MP'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAMS NEWBOOK-PM'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAMS POPSCI-PM'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAMS STACKS-PM'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT DOC-INTL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT DOC-US'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT FOLIO-BU'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT FOLIO-ED'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT FOLIO-IN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT FOLIO-LS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT FOLIO-SS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT FOLIO-US'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT JUVBIGBOOK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT MINISCO'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT NEWBOOK-SS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT OVERSIZEBU'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT OVERSIZEED'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT OVERSIZEIN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT OVERSIZELS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT OVERSIZEPA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT OVERSIZESS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT OVERSIZEUS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT PATERNO-2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT PATERNO-3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT PATERNO-4'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT PATERNO-5'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT PAT-RDG-RM'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT PATTEE-1'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT PATTEE-1A'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT PATTEE-2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT PATTEE-2A'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT PATTEE-3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT PATTEE-B'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT PATTEE-BA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT PATTEE-W1'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT PATTEE-W2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT PATTEE-W2F'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='UP-PAT PATTEE-W3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR OVERSIZEWB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR PENNSYLVAN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WILKESBAR STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON ARCHIVE-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON ATLASES-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON MAPS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON SPECCOL-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON OVERSIZEWS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='WSCRANTON STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK MEDIA-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-AA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-AB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-BD'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-BK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-BR'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-DE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-DS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-FE'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-HB2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-HB3'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-HN'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-LV2'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-MA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-MK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-NK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-SL'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-SV'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-WB'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-WS'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK STACKS-YK'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK SWARTZ'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK SWARTZ-MID'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK SWARTZ-PIC'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>
                  <xsl:when test="$loc-code='YORK SWARTZ-YA'">46970b40-918e-47a4-a45d-b1677a2d3d46</xsl:when>

                  <xsl:otherwise>b0f97013-87f5-4bab-87f2-ac4a5191b489</xsl:otherwise> <!-- Will not lend -->
                </xsl:choose>
              </illPolicyId>
              <callNumber><xsl:value-of select="$callno"/></callNumber>
              <xsl:variable name="ctype" select="./marc:subfield[@code='w']"/>
              <callNumberTypeId>
                <xsl:choose>
                  <xsl:when test="$ctype='LC' or $ctype='LCPER'">95467209-6d7b-468b-94df-0f5d7ad2747d</xsl:when>
                  <xsl:when test="$ctype='DEWEY'">03dd64d0-5626-4ecd-8ece-4531e0069f35</xsl:when>
                  <xsl:when test="$ctype='SUDOC'">fc388041-6cd0-4806-8a74-ebe3b9ab4c6e</xsl:when>
                  <xsl:when test="$ctype='NLM'">054d460d-d6b9-4469-9e37-7a78a2266655</xsl:when>
                  <xsl:otherwise>6caca63e-5651-4db6-9247-3205156e9699</xsl:otherwise>
                </xsl:choose>
              </callNumberTypeId>
              <notes>
                <arr>
                  <i>
                    <note><xsl:value-of select="concat('Location code: ', $loc-code)"/></note>
                    <holdingsNoteTypeId>b160f13a-ddba-4053-b9c4-60ec5ea45d56</holdingsNoteTypeId>
                    <staffOnly>true</staffOnly>
                  </i>
                </arr>
              </notes>
              <items>
                <arr>
                <xsl:for-each select="../marc:datafield[@tag='949' and ./marc:subfield[@code='m']=$lib and ./marc:subfield[@code='l']=$loc and ./marc:subfield[@code='a']=$callno]">
                  <i>
                    <itemIdentifier><xsl:value-of select="$iid"/></itemIdentifier>
                    <barcode><xsl:value-of select="./marc:subfield[@code='i']"/></barcode>
                    <volume><xsl:value-of select="./marc:subfield[@code='v']"/></volume>
                    <numberOfPieces><xsl:value-of select="./marc:subfield[@code='j']"/></numberOfPieces>
                    <status><name>Unknown</name></status>
                    <permanentLoanTypeId>2b94c631-fca9-4892-a730-03ee529ffe27</permanentLoanTypeId> <!-- Can circulate -->
                    <xsl:variable name="mt" select="./marc:subfield[@code='t']"/>
                    <materialTypeId>
                      <!-- Mappings to ReShare specific material types, taken from OCLC table "Type of Record" -->
                      <!-- Mapping from leader position 6 -->
                      <xsl:choose>
                      <xsl:when test="$mt='SERIAL' or $mt='BNDSER-HY' or $mt='PERIODICAL' or $mt='NEWSPAPER'">191da404-dec2-4977-9770-1443d9d6c238</xsl:when> <!-- CNR -->
                      <xsl:when test="starts-with($mt, 'BOOK') or $mt='REF-ITEM' or $mt='JUVENILEBK' or starts-with($mt, 'THESIS')">e65ed344-a691-4f8f-8446-3c0a346c6882</xsl:when> <!-- BKS -->
                      <xsl:when test="$mt='E-MEDIA' or $mt='ONLINE'">22cb5b81-2056-46ed-8050-c5d8f01caf90</xsl:when>            <!-- COM -->
                      <xsl:when test="starts-with($mt, 'MAP')">9f2c8d85-97e6-4722-a67c-bb51ccfb7781</xsl:when> <!-- MAP -->
                      <xsl:when test="starts-with($mt, 'SCORE')">e5578a7e-49b9-4859-a86a-21b812215b4f</xsl:when> <!-- SCO -->
                      <xsl:when test="$mt='AUDIO'">d8dc9046-a9f4-4789-adf5-678fd855b016</xsl:when> <!-- REC -->
                      <xsl:when test="$mt='VIDEO'">14f1845d-2fad-4091-80c8-48614eaea40b</xsl:when>            <!-- VIS -->
                      <xsl:when test="$mt='MULTIMEDIA'">bdfc300b-8a03-4ae6-b42a-6243afa0b7b1</xsl:when>            <!-- MIX -->
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
