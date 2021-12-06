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
    <identifierTypeId>bafb48ef-d7b9-5bcf-9df5-6ddebce6a008</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='ARCWM '">cb512a99-ec00-5865-8d91-a8fcc494bb0f</xsl:when>
        <xsl:when test=".='ATL '">e0e4abe7-ebf8-5642-af76-3efc16447965</xsl:when>
        <xsl:when test=".='AUCT '">46f6932f-b6c6-5cb5-bf20-c54bdf295e82</xsl:when>
        <xsl:when test=".='AV '">e838452d-5db9-5027-b2a1-598a5152701b</xsl:when>
        <xsl:when test=".='BLUE '">6377006e-e3ab-5e44-aab4-91aaa28b17d9</xsl:when>
        <xsl:when test=".='C '">613f660b-1a4c-55a9-bc5d-c3d3d550ec97</xsl:when>
        <xsl:when test=".='CASUA '">8916738c-36e1-546f-be07-362b61c90c87</xsl:when>
        <xsl:when test=".='COLIN '">cd39665b-1d57-5e3b-9111-ee687c97ecce</xsl:when>
        <xsl:when test=".='CORE '">73b40759-7e12-5685-905a-91b09ed57b29</xsl:when>
        <xsl:when test=".='DOCHD '">6fd0cf77-0afc-5744-a492-8a8d40b6e615</xsl:when>
        <xsl:when test=".='DOCLC '">5a8cb708-56b0-5d07-b2b3-8263f804c49b</xsl:when>
        <xsl:when test=".='DOGEN '">066e03b5-523f-5f4d-b2dc-34662c13dc8f</xsl:when>
        <xsl:when test=".='DOREF '">e13e3c4b-9f5b-5989-a368-21fe090d936b</xsl:when>
        <xsl:when test=".='DVDC '">d7f6cd65-e6ea-5918-a9f2-092f91e0f7af</xsl:when>
        <xsl:when test=".='DVDJ '">da4dc216-d7cb-5954-8a1d-2938be36db0d</xsl:when>
        <xsl:when test=".='DVDK '">4a816cd2-acd8-5739-8b0b-203d944e72fd</xsl:when>
        <xsl:when test=".='FAGEN '">532b30f3-1b98-52c2-9fcc-20fa7ee88399</xsl:when>
        <xsl:when test=".='FALLC '">dc777a9f-2f12-5d0e-9e8b-38dabb14a24d</xsl:when>
        <xsl:when test=".='FAREF '">5168c640-c320-5945-abae-9e53035a3061</xsl:when>
        <xsl:when test=".='FARNS '">57c5056c-da31-5897-aaed-8e2270bdae11</xsl:when>
        <xsl:when test=".='FASP '">c8686d5b-9385-52d4-894b-9116e8a4eebe</xsl:when>
        <xsl:when test=".='FAYBK '">bfcf6040-dac8-5e25-ab47-c5428062f8c0</xsl:when>
        <xsl:when test=".='GEN '">ec937493-b556-5798-ad59-9175ab7f2913</xsl:when>
        <xsl:when test=".='GENH '">9ce568e5-bc08-59f7-80e8-8fa4266e5ed8</xsl:when>
        <xsl:when test=".='HART '">576cd71c-3e70-5d37-be6d-971fd4ef7123</xsl:when>
        <xsl:when test=".='HD '">5808e20c-9db7-592c-b79e-e9a754cd9bff</xsl:when>
        <xsl:when test=".='HDC '">90a99a9f-8cb6-502d-b5dd-ae039d3640d0</xsl:when>
        <xsl:when test=".='HDDO '">35503f45-5adf-5b0c-8c93-a9ea0114ff78</xsl:when>
        <xsl:when test=".='HDFA '">974a9ac2-fb1e-5def-9cc6-1c3e3c59f7bb</xsl:when>
        <xsl:when test=".='HDJ '">9baa964f-8f5c-5c18-ba44-715582ea6365</xsl:when>
        <xsl:when test=".='HDJUD '">da01eea3-e1cc-59e7-9a5a-38b99905da81</xsl:when>
        <xsl:when test=".='HDK '">a718d30e-8c11-5612-8ca0-808530e4e29f</xsl:when>
        <xsl:when test=".='HDLC '">99fc35ab-101f-5481-95fa-4d65aaabea30</xsl:when>
        <xsl:when test=".='HDPRT '">fe831944-fc08-56ff-8e2e-8c9b94a60f73</xsl:when>
        <xsl:when test=".='HDRAR '">59919635-7ed6-5cde-9742-bc2918963cc7</xsl:when>
        <xsl:when test=".='HDRB '">b77fef77-accb-5074-87f0-7ec49ce18ccc</xsl:when>
        <xsl:when test=".='HDRED '">5d4b1f63-5af6-55c1-a7e0-ba5538a39513</xsl:when>
        <xsl:when test=".='HDSC '">dd8302f1-e9ac-51e6-b855-f2ee108beff8</xsl:when>
        <xsl:when test=".='HDSPECT '">6bcfcea5-4f27-5575-87ff-a19d9e89c739</xsl:when>
        <xsl:when test=".='HDV '">013aeb6f-debf-5a91-add2-35e2d840c8eb</xsl:when>
        <xsl:when test=".='HDW '">8e2bcaf8-21de-5ae1-b7d0-deaf30fb0c64</xsl:when>
        <xsl:when test=".='J '">a46a7553-b820-533e-a7c5-85e24b647847</xsl:when>
        <xsl:when test=".='JRNL '">6ca32900-41de-5304-a668-946fced524db</xsl:when>
        <xsl:when test=".='K'">b4fbd117-5cfe-5f92-9773-b3315b596610</xsl:when>
        <xsl:when test=".='K '">637a68dd-8b74-5bf6-b100-abce42f28411</xsl:when>
        <xsl:when test=".='KRMFM '">a5dd245f-6093-524d-9b26-893ec9ea9407</xsl:when>
        <xsl:when test=".='MAPLC '">3a885cf2-96c6-5fd3-82c6-f5f07d853b8b</xsl:when>
        <xsl:when test=".='MFIC '">6acf7276-1cd3-52b5-9292-d899be5a967c</xsl:when>
        <xsl:when test=".='MFLM '">88c93cf8-03e4-5478-96a9-1ab5172d6a71</xsl:when>
        <xsl:when test=".='MFRM '">82300874-24fb-53c5-9d40-e59f6aaa05c9</xsl:when>
        <xsl:when test=".='MHSTU '">fb26e29e-3b9b-5c12-8cec-821a11fbbdc5</xsl:when>
        <xsl:when test=".='MICGEN '">3d6d9ee8-55aa-56bc-8980-67758d572c9d</xsl:when>
        <xsl:when test=".='MICHD '">1fbf6714-4776-5813-b692-8b9dc01c4903</xsl:when>
        <xsl:when test=".='MIDEA '">3d8fc0cc-60e0-54eb-9622-0881ca8b6bfa</xsl:when>
        <xsl:when test=".='MRSDV '">b34a511e-ffea-5e11-8ddc-e1e99045abae</xsl:when>
        <xsl:when test=".='MRSLP '">6533b5aa-2280-5e12-9fa0-b1cfad4026e7</xsl:when>
        <xsl:when test=".='MUSIC '">aee8b955-9cd0-5bfe-b002-098b13575c29</xsl:when>
        <xsl:when test=".='NBS '">b28dab43-9f2a-5f9a-915c-984353affdbc</xsl:when>
        <xsl:when test=".='OC '">f9b1a7f4-276f-5a2c-89a8-daa2acc41033</xsl:when>
        <xsl:when test=".='OLDDF '">aa8f453a-6e2b-5e33-aabf-006a062ffedc</xsl:when>
        <xsl:when test=".='OVERS '">4b2847bc-8464-55b8-8c5e-26c92f0ef497</xsl:when>
        <xsl:when test=".='POEGEN '">0305cc84-2183-5c8f-a751-6e9f1e17ba8c</xsl:when>
        <xsl:when test=".='RARE '">8376cb06-9723-5264-8d70-36b515cceee5</xsl:when>
        <xsl:when test=".='RAREB '">8a4c7b72-743e-5c7a-a498-af9fc3bfb89d</xsl:when>
        <xsl:when test=".='RAREW '">f06393d9-b08f-5a4b-a717-a8151723b3b1</xsl:when>
        <xsl:when test=".='RD '">7e854c04-8e51-51ff-897c-946d76edcf6a</xsl:when>
        <xsl:when test=".='RDC '">178042c3-6d1e-5b4c-8530-4ebc7ac9a90a</xsl:when>
        <xsl:when test=".='RDJ '">40504f69-d1cc-54d3-b27d-7f5e5d6bc2bb</xsl:when>
        <xsl:when test=".='RDK '">084ac4d5-4733-588f-9240-1f0dde6d113e</xsl:when>
        <xsl:when test=".='RDM '">d7b35710-42e6-5653-abff-d728a5bdbe7b</xsl:when>
        <xsl:when test=".='RDRAR '">3695f31b-165b-59d6-9a5d-c5cbadda05e5</xsl:when>
        <xsl:when test=".='RDV '">663d0993-a11b-511f-a970-074d41403480</xsl:when>
        <xsl:when test=".='RDW '">9211579f-dc5a-52d6-9cc7-eac5f90b9018</xsl:when>
        <xsl:when test=".='RECCHDA '">1d04d361-dba1-53d4-908d-742a289f86c4</xsl:when>
        <xsl:when test=".='RECCO '">80bb1ac0-576a-5674-8ca1-02c1d82d2394</xsl:when>
        <xsl:when test=".='RED '">e5babc44-689b-59ca-83ae-c9a4c631efab</xsl:when>
        <xsl:when test=".='REF '">5279c37a-0f01-512f-9fcc-fb85a6a09f7a</xsl:when>
        <xsl:when test=".='REFC '">00b79884-8b2d-50e3-bd64-5cb27f35f873</xsl:when>
        <xsl:when test=".='REFJ '">ab8a201d-d48e-5d4b-bd71-d43f1ba34bb0</xsl:when>
        <xsl:when test=".='REFK '">4fc0beb6-6f67-56f1-8b8f-fe2bc5a8f5a4</xsl:when>
        <xsl:when test=".='REFV '">827c733b-e71c-54d2-969f-1eae37dda6cf</xsl:when>
        <xsl:when test=".='REFW '">fc36cd55-8907-544d-9d74-e29dde942f66</xsl:when>
        <xsl:when test=".='RR '">acfce430-db7d-5928-bc22-c91bc5659f01</xsl:when>
        <xsl:when test=".='RUBGEN '">66f6c9bb-3e0a-59ba-a78f-769cb0ef71c7</xsl:when>
        <xsl:when test=".='RUBHD '">787da164-2a0f-5532-aa79-e1f84384ecc8</xsl:when>
        <xsl:when test=".='RUBHDSC '">0b97a105-e79a-514f-a365-1467c102ba4d</xsl:when>
        <xsl:when test=".='RUBLC '">dc53386b-e462-594b-82b9-603daecd8453</xsl:when>
        <xsl:when test=".='SEEG '">af5a6a9d-68d3-54d4-b6a6-98b82161f3d7</xsl:when>
        <xsl:when test=".='SGC '">bcc74224-7e13-58e7-8043-74ee4a71cc96</xsl:when>
        <xsl:when test=".='SPEC '">37fbd7d4-af1d-52aa-881a-406abfe644fd</xsl:when>
        <xsl:when test=".='STLC '">8a6e775e-3a25-59b4-8ead-29d5f8dbb38c</xsl:when>
        <xsl:when test=".='STSER '">4b3665af-e0ee-5762-a851-9c8cfb2ae0a2</xsl:when>
        <xsl:when test=".='TIBET '">698b2e13-fe7c-5689-beaa-d1f8b4c610a0</xsl:when>
        <xsl:when test=".='TOZLC '">67d3407b-1b65-5acf-9310-c0c7956ca19a</xsl:when>
        <xsl:when test=".='UNASSIGNED '">ee7465e0-bf83-561b-968f-1d0cd5cf8f16</xsl:when>
        <xsl:when test=".='V '">b9e6dba9-f48c-517e-98bd-d72c0357e49f</xsl:when>
        <xsl:when test=".='VF '">5494cd55-f4dc-50fc-803c-754c2b2996d0</xsl:when>
        <xsl:when test=".='W '">e64e96d7-cf3a-5bf0-a938-24dcd26375c8</xsl:when>
        <xsl:when test=".='WIDLC '">2f0201a3-8de8-5213-8de6-dd4934c807f4</xsl:when>
        <xsl:when test=".='XCAGE '">5b87883e-1fef-55d1-ac99-4d6e2b21414e</xsl:when>
        <xsl:otherwise>7e69cc52-6fc4-5e72-bdc6-d7a84f1c9873</xsl:otherwise> <!-- Unmapped (US-MH) -->
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set FOLIO Inventory ID for the institution -->
  <xsl:template match="//institutionIdHere">
     <institutionId>4f074c57-f997-5594-b503-81879fbc7f02</institutionId>
  </xsl:template>

</xsl:stylesheet>
