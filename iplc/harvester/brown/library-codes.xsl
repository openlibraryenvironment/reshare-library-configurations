<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output indent="yes" method="xml" version="1.0" encoding="UTF-8"/>
  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <!-- Map legacy code for the library/institution to a FOLIO resource identifier
       type UUID. Used for qualifying a local record identifier with the library
       it originated from in context of a shared index setup where the Instance
       represents bib records from multiple libraries.
  -->
  <xsl:template match="//identifierTypeIdHere">
    <identifierTypeId>0f521565-1011-5025-87fb-5c360baf585f</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='arc'">63d8a168-eac5-5109-a498-7c5af8c30f1a</xsl:when>
        <xsl:when test=".='arcms'">29ddd877-a406-5009-9d1d-c5626192d30e</xsl:when>
        <xsl:when test=".='arcth'">4fac9dd7-743b-51ff-9f89-bf7bf2490970</xsl:when>
        <xsl:when test=".='chin'">c096629b-3a71-56d1-8f93-8dbf7cc75ced</xsl:when>
        <xsl:when test=".='eacg'">2c2efa3c-f744-5bf5-a268-69d963daf40a</xsl:when>
        <xsl:when test=".='esb'">aa2d45a0-c58e-5a9e-8fa0-61c4cb055c7a</xsl:when>
        <xsl:when test=".='esc'">cdd49eea-27d8-550e-ac47-3190b447ab97</xsl:when>
        <xsl:when test=".='ess'">267e7a40-159a-53de-89de-edadef72666a</xsl:when>
        <xsl:when test=".='esv'">6d64d01a-3cef-5234-a1b1-955d9fb44bf6</xsl:when>
        <xsl:when test=".='h0001'">e9b58f8d-89e5-5bad-ac04-e6761846a3b2</xsl:when>
        <xsl:when test=".='h2off'">43d05241-eac2-56cc-801b-2db10d4f554c</xsl:when>
        <xsl:when test=".='haskb'">17deb96f-14c3-5ebd-af6f-4017f26fa3da</xsl:when>
        <xsl:when test=".='hbd'">75437897-7b21-56f2-92b3-414fdd3a8623</xsl:when>
        <xsl:when test=".='hblak'">0980e427-0991-523c-857d-fcde77bd3ed4</xsl:when>
        <xsl:when test=".='hchur'">e77f6123-eeb5-565a-855d-74c1f32f2bc1</xsl:when>
        <xsl:when test=".='hcush'">e37709d0-4374-5c9b-8063-5c99f82279c1</xsl:when>
        <xsl:when test=".='hdo'">a955222c-295c-501f-8002-c63ca7d6b946</xsl:when>
        <xsl:when test=".='hdpf'">0cd743d7-9a99-580f-b0cc-04a959145aba</xsl:when>
        <xsl:when test=".='hdrow'">5ce7cd61-522c-5651-9ed8-6db60cf92b22</xsl:when>
        <xsl:when test=".='hfell'">5af5a499-cb92-525e-a852-6d42cb18bbc1</xsl:when>
        <xsl:when test=".='hfost'">139c75bf-dd6b-519d-aec8-6fc893e1cff1</xsl:when>
        <xsl:when test=".='hgorh'">ec6d24f3-ba51-517f-93b1-822385248761</xsl:when>
        <xsl:when test=".='hh'">41d23866-6666-569d-bd1d-0102bc5fb60b</xsl:when>
        <xsl:when test=".='hhbd'">eb210b67-cc51-58ee-a5a3-07a1e48df30e</xsl:when>
        <xsl:when test=".='hhmcf'">b6e61a14-123b-55ec-a65b-e91539a82b38</xsl:when>
        <xsl:when test=".='hhr'">04e8f09b-a63f-55e0-8ef5-61fa81b95d2f</xsl:when>
        <xsl:when test=".='hhrf'">3541f5e3-7774-5ebd-9133-9e94525a7b1d</xsl:when>
        <xsl:when test=".='hhsm'">43829d19-883a-5c19-9e79-bca4fb85c09e</xsl:when>
        <xsl:when test=".='hjh'">546bdfba-b32e-549d-976b-55bae1f67bf1</xsl:when>
        <xsl:when test=".='hjlau'">17122109-9f71-5df9-a5e6-730991663046</xsl:when>
        <xsl:when test=".='hkoop'">fbb5f4c8-2270-588d-99c2-163f3386b3db</xsl:when>
        <xsl:when test=".='hkz'">9f122f42-c5fb-5458-b5d0-a5bf3a51781d</xsl:when>
        <xsl:when test=".='hlinc'">ca3ca686-537c-58e3-af2b-c41719d268d7</xsl:when>
        <xsl:when test=".='hlinm'">723deb4e-88fa-5c9c-b3dd-5cc1e769c566</xsl:when>
        <xsl:when test=".='hlowc'">76e0577e-6fed-5382-8f90-3489dbf9a84e</xsl:when>
        <xsl:when test=".='hlowt'">689b049a-d261-5648-b51f-196a857d8a56</xsl:when>
        <xsl:when test=".='hmap'">e5274fdd-fcb5-5b52-bd48-88b7a0648141</xsl:when>
        <xsl:when test=".='hmcf'">eba3414a-4fa9-5d90-8ece-9ebb6b582d13</xsl:when>
        <xsl:when test=".='hmetc'">3a225772-b05d-5f93-8beb-86f218e8a7f0</xsl:when>
        <xsl:when test=".='hms'">2892f298-9719-5a16-8878-f105efdbe749</xsl:when>
        <xsl:when test=".='hpr'">d359d5a7-0794-512a-a4d1-a83f21083de2</xsl:when>
        <xsl:when test=".='hrf'">c67a570a-1c48-5001-affb-616f8075dd3c</xsl:when>
        <xsl:when test=".='hride'">8929acc7-7ced-5293-a4f8-be3b8fd1f7e2</xsl:when>
        <xsl:when test=".='hrim'">53a2543b-afc7-5cf1-8424-2754f230fa91</xsl:when>
        <xsl:when test=".='hscih'">64721b88-9234-5bcd-ac51-83afb9dbd3d7</xsl:when>
        <xsl:when test=".='hstar'">272d618e-6adc-5f3c-b708-b315ce22fbb8</xsl:when>
        <xsl:when test=".='ht'">ee5bdc1d-dae2-5066-adc5-f5635312bc7b</xsl:when>
        <xsl:when test=".='hwarp'">d53fe1b5-90b3-5cbe-a7f4-f00c8ea125fe</xsl:when>
        <xsl:when test=".='hwhal'">5e1f3a15-db1b-5f17-84b0-c7091c843b30</xsl:when>
        <xsl:when test=".='hwil'">855f8a0e-ea0a-533c-8113-e550cbc968b3</xsl:when>
        <xsl:when test=".='hwj'">74531e2d-813e-5ca3-8ae0-97b9940c5698</xsl:when>
        <xsl:when test=".='japan'">f8210502-fa46-5b2c-839e-a2c8823a7aff</xsl:when>
        <xsl:when test=".='jcb'">f7582d84-7df1-579e-bffd-a48a0418657f</xsl:when>
        <xsl:when test=".='jcbmp'">6628c061-2d2e-5653-ba12-eee6f044f98d</xsl:when>
        <xsl:when test=".='jcbrf'">8518ed11-a70a-51a5-bd42-27587a78ffe1</xsl:when>
        <xsl:when test=".='korea'">1b522471-2006-5434-915a-8cf6afd5cfc5</xsl:when>
        <xsl:when test=".='ocd'">bdd6bbe7-7076-58dc-b04b-9bbb1d17fcd2</xsl:when>
        <xsl:when test=".='okcd'">fca8ce5d-f60b-5a35-8112-3b93153e7462</xsl:when>
        <xsl:when test=".='oksr'">25abb5c1-4dd1-55c6-97f0-7e54010bddaf</xsl:when>
        <xsl:when test=".='okvd'">57c9c622-f701-58ea-9dfd-696be60e8fa3</xsl:when>
        <xsl:when test=".='orf'">9255f0b0-dd4f-5542-a44e-10a40290bb9c</xsl:when>
        <xsl:when test=".='orwig'">407d7d31-b9c6-59be-bb54-144e39859102</xsl:when>
        <xsl:when test=".='osr'">9fa39e04-dc0c-5ee7-8435-1f9e25295cfc</xsl:when>
        <xsl:when test=".='q0001'">2cd64b9e-7dd5-5df2-9795-90f049d6433c</xsl:when>
        <xsl:when test=".='qhroc'">aa3552b0-4002-5a28-b4b1-d4df30fdd861</xsl:when>
        <xsl:when test=".='qhs'">69c9039b-75d6-541d-9fd3-5f1ebf7df026</xsl:when>
        <xsl:when test=".='qs'">f3a1894b-bf9b-552b-b9fc-695d952ff101</xsl:when>
        <xsl:when test=".='racq'">89317c67-809c-592a-852c-072bb71019f1</xsl:when>
        <xsl:when test=".='raq'">63285630-b5b3-5412-9921-fe0fd7fe734f</xsl:when>
        <xsl:when test=".='rcr'">192cc500-c367-5cd0-b60b-99ffd7038766</xsl:when>
        <xsl:when test=".='rcut'">5b02f087-5c09-555e-b28c-b48321c00c2c</xsl:when>
        <xsl:when test=".='rcutk'">ed7b70dc-7201-5be0-9d2b-cd432e375ebf</xsl:when>
        <xsl:when test=".='rdiv'">26335224-cc53-58a1-8bd5-033338d8460b</xsl:when>
        <xsl:when test=".='rdv'">87866473-5411-50f0-8e7f-275f1f83ce07</xsl:when>
        <xsl:when test=".='rmcd'">3e944a7b-0df0-59bd-a4e8-ad660b29fab9</xsl:when>
        <xsl:when test=".='rmcf'">c3f54245-cc6d-5082-8c23-0e21cdc7ac42</xsl:when>
        <xsl:when test=".='rmici'">c427e70b-d2df-53d3-8ed1-e7bb8d1718d1</xsl:when>
        <xsl:when test=".='rmicl'">bab638bf-2d3b-5541-a4c0-fd37452e4e61</xsl:when>
        <xsl:when test=".='rock'">549914cc-cae2-59fc-a7bd-07eb782b7b75</xsl:when>
        <xsl:when test=".='rockr'">ecc0eb61-fc91-51c6-87b6-84c14e25bcb4</xsl:when>
        <xsl:when test=".='rref'">757f7365-7a15-53c7-b1aa-a2deba73c856</xsl:when>
        <xsl:when test=".='rsmch'">ae6a7d64-0313-5533-b9aa-c94ad5e11027</xsl:when>
        <xsl:when test=".='rstar'">54f1be92-c5ea-5367-b826-3287ff9de753</xsl:when>
        <xsl:when test=".='rtex'">5c32da22-098a-57ea-af6f-7e67c84baa09</xsl:when>
        <xsl:when test=".='rth'">3e214309-ca26-556f-8635-5523b24f7977</xsl:when>
        <xsl:when test=".='sci'">98f06a82-8cf0-58f8-8fff-7d133de82e65</xsl:when>
        <xsl:when test=".='smap'">07fde15a-0e1f-572c-9f03-4bd8b7e8add6</xsl:when>
        <xsl:when test=".='sth'">9245b2af-fa78-5730-8a75-9f8e8a58df3c</xsl:when>
        <xsl:when test=".='stor'">3b088463-5563-5915-900b-6395259e941f</xsl:when>
        <xsl:otherwise>5748b7cc-74b5-5137-a838-1a842277d7d0</xsl:otherwise> <!-- Unmapped (US-RPB) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>6fd8d792-1d75-56ba-96f0-5b7b806f3ad6</institutionId>
  </xsl:template>

</xsl:stylesheet>
