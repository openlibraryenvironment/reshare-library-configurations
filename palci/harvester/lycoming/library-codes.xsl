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
    <identifierTypeId>64ed8145-ff6e-5cf3-a5f2-edabff0b2554</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='NEW'">c9686fb0-b4c3-5d16-93a8-11d2d248450a</xsl:when>
        <xsl:when test=".='OVSZ'">28bbaba8-0d28-54b4-9edc-f98aa1d11cf5</xsl:when>
        <xsl:when test=".='LYCA'">7c569d5b-2e18-5a3b-b4fd-a088f8ec5afb</xsl:when>
        <xsl:when test=".='LYCJ'">1763ccf0-2da0-58a4-b9a9-d29dbc2691fa</xsl:when>
        <xsl:when test=".='LYCL'">815b82f2-1e24-5f97-baba-ca1f98bebbbd</xsl:when>
        <xsl:when test=".='LYCT'">334f637a-371b-509a-b58c-64765ae72396</xsl:when>
        <xsl:when test=".='LYCDVD'">c77d5687-1498-577d-a5cc-b2576aa5164a</xsl:when>
        <xsl:when test=".='10DAY'">ad45bbb3-1046-5b2b-8786-cc2b0246859b</xsl:when>
        <xsl:when test=".='1DAY'">b85d98e9-cb19-5405-bc8e-d751b9de7456</xsl:when>
        <xsl:when test=".='2HR'">01eb1fbc-9233-5b10-84af-3398324a6df4</xsl:when>
        <xsl:when test=".='3DAY'">0e1240ee-a06f-5ccd-8468-b1735df6cb74</xsl:when>
        <xsl:when test=".='4HR'">ed3b2b1f-24b0-5cea-ac3b-907b5825f0a2</xsl:when>
        <xsl:when test=".='7DAY'">13338fa2-f4c1-5ab9-ac93-e82d2beb8dfb</xsl:when>
        <xsl:when test=".='LYCH'">1e1df1c9-deac-5ece-b1b8-8f1224fb6e91</xsl:when>
        <xsl:when test=".='LYCR'">4c9bf3c8-dbac-5f07-a5c1-95e3666172f2</xsl:when>
        <xsl:when test=".='LYCZ'">f225d2d6-6508-5e4a-8700-1c19b161c723</xsl:when>
        <xsl:when test=".='MCN'">c1c5cf17-ee18-56bc-ba97-ff227793f247</xsl:when>
        <xsl:when test=".='LYCG'">7e741f46-a704-506b-86d0-7c757ddc68e1</xsl:when>
        <xsl:when test=".='LYCF'">f7b9c24b-80c4-551e-9b58-1a9d088e591c</xsl:when>
        <xsl:when test=".='STAFF'">038ed62d-ff2c-5f58-9b6a-d52139ad8442</xsl:when>
        <xsl:when test=".='LYCV'">c26cd476-ede5-5c7f-ba34-99981dd47d0d</xsl:when>
        <xsl:when test=".='BRWS'">558a2690-6652-5930-aaef-df1429f79095</xsl:when>
        <xsl:when test=".='DISPLAY'">baf30555-de3c-5aea-a666-958136307749</xsl:when>
        <xsl:when test=".='ERR'">c2abeb8f-2d31-5cb1-a91d-e1e04b3c8d10</xsl:when>
        <xsl:when test=".='EZB'">ea9e433e-a219-5217-a712-7d3c308cba31</xsl:when>
        <xsl:when test=".='FILM'">dd5b5434-6ca2-5a4f-ac4a-5fcca20fd8df</xsl:when>
        <xsl:when test=".='GAME'">5287128d-f21e-57e9-962c-ae22a1381924</xsl:when>
        <xsl:when test=".='JSTOR'">a65afca6-1249-55b0-b49b-6e1f7115a946</xsl:when>
        <xsl:when test=".='LYC@'">2f213016-5b4d-512e-b98e-eb48361b439e</xsl:when>
        <xsl:when test=".='LYCB'">44beffc4-6d5d-53d4-b2b1-c9744301fe4e</xsl:when>
        <xsl:when test=".='LYCD'">ebf50593-4f91-50e1-9ab4-3196abfe113b</xsl:when>
        <xsl:when test=".='LYCE'">091ba508-6c00-5d14-bcb4-3652632b13ec</xsl:when>
        <xsl:when test=".='LYCEB'">4a3a291a-2d9e-5290-9fe3-971fedd0f371</xsl:when>
        <xsl:when test=".='LYCN'">9bdcce5e-c201-53bf-adb9-315fb8d4ae69</xsl:when>
        <xsl:when test=".='LYCM'">3abf8430-fae8-596a-9057-a08dca0f2b32</xsl:when>
        <xsl:when test=".='LYCP'">0ac3af09-12ea-5718-96b4-838267618d11</xsl:when>
        <xsl:when test=".='LYCQ'">3cb8f3bb-0de3-5665-b60f-06d8f5183f68</xsl:when>
        <xsl:when test=".='LYCS'">3fe7826b-82a7-5b73-baf5-4cfef1f9c30e</xsl:when>
        <xsl:when test=".='LYCX'">5d9a4f8c-5cc6-52fd-9d4e-5c9f19aa7f4b</xsl:when>
        <xsl:when test=".='OFFLYCA'">168af22c-54b7-533c-8d4b-1b9dafe1e258</xsl:when>
        <xsl:when test=".='OFFLYCP'">0d62251b-8e34-5380-8343-08d0abb2bd85</xsl:when>
        <xsl:when test=".='OFFLYCR'">124454bb-4b30-5bb8-9739-117159c7f343</xsl:when>
        <xsl:when test=".='OSO'">695035b9-4a2e-50ac-af27-0eab13731b18</xsl:when>
        <xsl:when test=".='PDA'">c9750b5e-d714-5bde-ba5f-20b18cb367a5</xsl:when>
        <xsl:when test=".='SAGE'">76ea8c46-c25f-50a9-8e82-54739a305c50</xsl:when>
        <xsl:when test=".='STAFFR'">19ce51e4-7cf3-51d4-999a-580b58ae654e</xsl:when>
        <xsl:otherwise>a5117150-1edc-5a1d-a001-6f954b8f2224</xsl:otherwise> <!-- Unmapped (Snowden) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>2a378c52-4a7e-5a63-9033-320b3ffd69c6</institutionId>
  </xsl:template>

</xsl:stylesheet>
