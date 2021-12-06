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
    <identifierTypeId>48c5afb7-07ea-573e-9ffc-bba0a9f0009f</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='afro'">d931fde5-47e7-5fb3-b331-b52d0e914787</xsl:when>
        <xsl:when test=".='amimp'">5a9f598c-896b-5931-9c5a-286a8f1b1b28</xsl:when>
        <xsl:when test=".='ancirc'">97fddb6f-b230-5672-8b6f-f308ae014dd2</xsl:when>
        <xsl:when test=".='annbperi'">dc032673-735a-5ecc-924c-f08dade21248</xsl:when>
        <xsl:when test=".='athstor'">4cf69423-3f06-5991-b34c-8d2c674d4b53</xsl:when>
        <xsl:when test=".='athstorcir'">ee840b94-a890-52a7-82b8-b01bd92f7ca2</xsl:when>
        <xsl:when test=".='bicirc'">44178e9a-576d-5585-85a3-d130f7d8f518</xsl:when>
        <xsl:when test=".='biom'">bbd420f4-4016-5039-aee1-a121933fb221</xsl:when>
        <xsl:when test=".='biomhist'">b95eefbc-b859-526c-bfe6-2e07b3ad939e</xsl:when>
        <xsl:when test=".='biomrefe'">3b087648-f305-5c17-bb87-539f6f142c90</xsl:when>
        <xsl:when test=".='britimp'">0048a6ea-8d4c-5122-a431-024641cb0072</xsl:when>
        <xsl:when test=".='chem'">38d52429-dc9e-522d-8e28-7dda9a524a9e</xsl:when>
        <xsl:when test=".='chemperi'">4e650b26-b742-5b96-a9a7-6fdef9062806</xsl:when>
        <xsl:when test=".='chemrdrm'">6ce7e188-cd04-5895-8913-98746bb96809</xsl:when>
        <xsl:when test=".='circcoll'">c665e828-c34e-5d17-8688-b29cde70018c</xsl:when>
        <xsl:when test=".='cjs'">1f8e0529-f085-5fc5-a859-7d85e6afe8f1</xsl:when>
        <xsl:when test=".='cjsarc'">cf32a8dd-7288-596f-a749-ff550c763ba4</xsl:when>
        <xsl:when test=".='cjsarcms'">35b65a5e-41ac-50c4-a4f6-13e56fab1072</xsl:when>
        <xsl:when test=".='cjsbox1'">024e247e-d2c2-5272-ad75-e9b3792db859</xsl:when>
        <xsl:when test=".='cjsencyc'">501c4d89-dd8e-524c-a20b-7c9c7ebd0d50</xsl:when>
        <xsl:when test=".='cjsfol'">fa9b78e3-ea93-5242-b8bd-7d07f714ef54</xsl:when>
        <xsl:when test=".='cjsmini'">3be74aba-827a-5ac6-8f2a-0529ce55a926</xsl:when>
        <xsl:when test=".='cjsperb1'">9417e9b6-25c5-5deb-b8e6-1e64d1a0dbb3</xsl:when>
        <xsl:when test=".='cjsperb2'">bdfb35c2-6e23-5f14-a21b-69e92655c612</xsl:when>
        <xsl:when test=".='cjsrar'">03bdd862-2274-5f41-be87-4fe3eb14ee77</xsl:when>
        <xsl:when test=".='cjsraram'">117489b5-d82d-521e-9752-2698dd581300</xsl:when>
        <xsl:when test=".='cjsref'">35040332-7173-5c21-8e03-d33a8e8983f0</xsl:when>
        <xsl:when test=".='cjsspec'">017efc39-c968-5eec-a792-b6c5493b6323</xsl:when>
        <xsl:when test=".='classics'">295dc5d7-3529-5650-b462-c91de56cea93</xsl:when>
        <xsl:when test=".='dent'">dac8fcf9-aaeb-5a12-aa3b-0d163d9bf8d3</xsl:when>
        <xsl:when test=".='dentrare'">4b663cb2-ce13-5849-af05-7e2c9e93659e</xsl:when>
        <xsl:when test=".='dentrefe'">a4cee6c6-204d-5cf4-adc7-4f9d477f1aab</xsl:when>
        <xsl:when test=".='easiacmx'">c09d650c-1a53-5185-ae4d-1152c219b50f</xsl:when>
        <xsl:when test=".='easiaover'">d571d786-cbdd-531b-a03d-2db521eefce7</xsl:when>
        <xsl:when test=".='easiasem'">c50f8448-9fa9-5dd0-a802-0129a2b4f680</xsl:when>
        <xsl:when test=".='eastasia'">7f649ba6-bd26-56c1-9827-4c0d6d18ff7b</xsl:when>
        <xsl:when test=".='fic'">456bcf5d-9533-5a13-a8cb-8b23a2287f12</xsl:when>
        <xsl:when test=".='fine'">fd418c51-f9a1-5090-abeb-f6d1a51c24ea</xsl:when>
        <xsl:when test=".='finecage'">ea088826-0d6c-5d3d-bfa4-14315bfc3746</xsl:when>
        <xsl:when test=".='finecirc'">cc76d1da-65c0-58ef-b0f9-9e6cbdbd208a</xsl:when>
        <xsl:when test=".='finecore'">9109fe75-9a42-5692-a75e-b5acbffa7f15</xsl:when>
        <xsl:when test=".='finelock'">6741c0b7-6661-580b-b661-17f2c3a0bfe7</xsl:when>
        <xsl:when test=".='finerare'">2ef78495-d06f-53b5-a993-8b0af6ed0070</xsl:when>
        <xsl:when test=".='forimp'">cbce94b7-b9fa-5ea9-94a1-a6abdb2ea61a</xsl:when>
        <xsl:when test=".='judaica'">91b3f005-313f-5f77-afe0-3f89495b9ee6</xsl:when>
        <xsl:when test=".='lipp'">f0308a93-2b1e-5ff5-baea-5a96c34da8b4</xsl:when>
        <xsl:when test=".='math'">0c9bf54b-ead5-506e-92f4-c386a04ed0bf</xsl:when>
        <xsl:when test=".='mathperi'">4e4f2a7d-c437-5eed-8b22-4f89e9169855</xsl:when>
        <xsl:when test=".='mideast'">99f0e2ab-b816-5a7f-8a6f-9c2da288b2ef</xsl:when>
        <xsl:when test=".='muse'">b67d8f12-9573-5f69-b849-bc0a0bbc6a9e</xsl:when>
        <xsl:when test=".='museegyp'">781624de-bfbd-5291-8cac-3fc133d58c83</xsl:when>
        <xsl:when test=".='muserefe'">703c1e77-c8ae-5a15-97bd-6f8b076ac977</xsl:when>
        <xsl:when test=".='musiclist'">f634a183-1db4-5f9a-b018-fe5eb89744c7</xsl:when>
        <xsl:when test=".='musicup'">c2b27460-3ccf-5e0e-a892-0b0586325c1e</xsl:when>
        <xsl:when test=".='newb'">daa7328e-aa1b-594e-b1f0-bb91f1021ff0</xsl:when>
        <xsl:when test=".='newbrese'">d8077d60-9b2e-537b-9f5d-331a6c25156b</xsl:when>
        <xsl:when test=".='pah'">fcbdfaa5-43ec-5783-9f00-6d09403b9baf</xsl:when>
        <xsl:when test=".='pahiph'">ed90846e-8de4-5c9d-96ae-2b27ee3473ec</xsl:when>
        <xsl:when test=".='pahref'">9e8f478d-d5b5-5786-a367-975145ad4a19</xsl:when>
        <xsl:when test=".='pahres'">3b8bb699-87c8-55b1-9ebc-3132c4ad00b0</xsl:when>
        <xsl:when test=".='rarecoll'">f2245932-2117-5de1-a00d-e8c245169cfb</xsl:when>
        <xsl:when test=".='ref'">0c0c9630-aa4a-5dd2-bd39-10578d8b927a</xsl:when>
        <xsl:when test=".='ruppcoll'">2a7ede0b-e1db-506a-a3a4-11ec8d8de722</xsl:when>
        <xsl:when test=".='sasiarefe'">5778110e-97f1-5e01-8d28-e1f281ea6610</xsl:when>
        <xsl:when test=".='scadams'">30c6e47f-8eac-5c68-b354-a9cd06a98576</xsl:when>
        <xsl:when test=".='sccomics'">9773a668-a544-5bc3-96cf-e164302f1594</xsl:when>
        <xsl:when test=".='scdech'">f8bd095a-f5f2-5709-aef2-8c8eb011054b</xsl:when>
        <xsl:when test=".='scdreis'">7c03fda9-bc52-5e4e-b473-9843a984a873</xsl:when>
        <xsl:when test=".='scdrey'">f0c15f2b-b588-51fb-b5f8-044fff1b566b</xsl:when>
        <xsl:when test=".='scforr'">42239b5b-5f1c-55ff-9f72-2b92f2a16784</xsl:when>
        <xsl:when test=".='scfurnlib'">773aa002-0023-5203-92a0-f9770ec7024a</xsl:when>
        <xsl:when test=".='sclea'">5c78d02e-874c-5362-9665-cea1f896eddf</xsl:when>
        <xsl:when test=".='scmss'">c4fef543-8513-5b28-9a39-0a96402136e1</xsl:when>
        <xsl:when test=".='scpspa'">c1934249-dadf-5bec-9e40-7c12da4b8dc6</xsl:when>
        <xsl:when test=".='scrare'">4470584f-0df1-5dc1-9fdb-18020845c11c</xsl:when>
        <xsl:when test=".='screading'">7b91fd98-3fa2-55a3-b3af-a766b689e760</xsl:when>
        <xsl:when test=".='screfe'">d5d1666d-8f7f-54cb-aa27-971ecc6f5d9d</xsl:when>
        <xsl:when test=".='scschimmel'">9a3da2a4-e982-5965-91b0-427fac773007</xsl:when>
        <xsl:when test=".='scsing'">88b84887-d4ff-55c9-8861-ccfeac3ee6a6</xsl:when>
        <xsl:when test=".='scsmith'">6c42ec75-ea26-5719-908d-a204e409ddc4</xsl:when>
        <xsl:when test=".='scsmithst'">772432f6-c414-551e-b040-c6ba51269e58</xsl:when>
        <xsl:when test=".='scstor'">4d38a39d-6be4-5023-8d5a-f529178a68f1</xsl:when>
        <xsl:when test=".='sctehon'">e3bd1f0b-e8fd-5ce3-b426-0026a319b684</xsl:when>
        <xsl:when test=".='scvilain'">ae7f9cec-1006-53a6-a203-7bb68820e099</xsl:when>
        <xsl:when test=".='scyarn'">87f949eb-92f1-54ba-a33f-ce9097f2eb52</xsl:when>
        <xsl:when test=".='stor'">dfe5503b-2d66-50b7-8d9b-89726486e9d5</xsl:when>
        <xsl:when test=".='storfine'">62593012-2250-54d1-b416-3ecee274756b</xsl:when>
        <xsl:when test=".='storlimit'">19b6f557-7aa6-58fa-aaa5-7f4b33c4b2fa</xsl:when>
        <xsl:when test=".='storrare'">2cf73414-59ba-579b-b583-75837e293021</xsl:when>
        <xsl:when test=".='storspec'">6e3a69af-83f1-5b15-b16c-aa8a4d5408de</xsl:when>
        <xsl:when test=".='tradecat'">65803675-3c64-5e17-97fb-2b376ecfa367</xsl:when>
        <xsl:when test=".='vanp'">9cf3ee66-ee8d-54f2-a046-17673696054e</xsl:when>
        <xsl:when test=".='vanpbest'">8f81999c-31a7-508e-ba87-a08487fd68e7</xsl:when>
        <xsl:when test=".='vanpvideo'">e05d4fcb-2d3f-5cbf-84a4-e9ae0cd89598</xsl:when>
        <xsl:when test=".='vete'">6427553a-0ad4-5fe5-8b25-78cedfb0f82a</xsl:when>
        <xsl:when test=".='veterese'">9ae38570-15f5-5e53-8a6c-dabd85941bf6</xsl:when>
        <xsl:when test=".='vpref'">cd4188a2-9b4d-50da-8d75-520e12ecce93</xsl:when>
        <xsl:when test=".='yarn'">5997f0eb-4f6b-5900-bd5f-e99a01813097</xsl:when>
        <xsl:otherwise>7b268990-9151-5b17-83e5-292610bbee86</xsl:otherwise> <!-- Unmapped (US-PU) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>cc4efc42-1d99-519b-b238-b30d2ceb63a2</institutionId>
  </xsl:template>

</xsl:stylesheet>
