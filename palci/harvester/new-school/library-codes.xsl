<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

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
    <identifierTypeId>04d081a1-5c52-4b84-8962-949fc5f6773c</identifierTypeId>
  </xsl:template>

  <!-- Map legacy location code to a FOLIO location UUID -->
  <xsl:template match="//permanentLocationIdHere">
    <permanentLocationId>
      <xsl:choose>
        <xsl:when test=".='AID'">6aa3da20-8c2c-44a8-a339-16613ba9e42f</xsl:when>
        <xsl:when test=".='B'">ea261544-b717-4fb5-82fc-c4135fcae2dd</xsl:when>
        <xsl:when test=".='BD'">af25709e-255b-4109-b889-b221dcc7fab6</xsl:when>
        <xsl:when test=".='BDVD'">6b8a1218-9afc-4cac-b441-f5914efed2dc</xsl:when>
        <xsl:when test=".='BIND'">794333dd-17e5-4fb9-b78c-5870484f1489</xsl:when>
        <xsl:when test=".='BO'">7fcd0128-95dd-459d-ae5f-7d40ac8b4d0c</xsl:when>
        <xsl:when test=".='CAT'">39778f72-5055-4725-ab05-54bf3792f311</xsl:when>
        <xsl:when test=".='CKT'">f775884d-496d-428f-977b-21a11d5dbbc1</xsl:when>
        <xsl:when test=".='CPOS'">4286b967-3394-4326-a2b4-4be83278eec3</xsl:when>
        <xsl:when test=".='CT'">b403bdf3-f1e5-4b93-8110-5abaf472fe90</xsl:when>
        <xsl:when test=".='CTO'">109df58d-7158-4f90-bb1d-392531d31321</xsl:when>
        <xsl:when test=".='EA_AUDIO'">4b099efe-2845-4f6a-b50a-b1a8a8383325</xsl:when>
        <xsl:when test=".='EB_ACLS'">a77c18fd-fb45-4efc-b651-6aa5272d4e51</xsl:when>
        <xsl:when test=".='EB_CHO'">4d66b280-af19-4bf6-b0ac-94bec8a1f2ad</xsl:when>
        <xsl:when test=".='EB_EAI'">74cab375-a427-4fe9-a577-68a0294e41e4</xsl:when>
        <xsl:when test=".='EB_EBRARY'">9ff1e42f-00bc-4e91-af7c-4260025dae0e</xsl:when>
        <xsl:when test=".='EB_EBRARYK'">bb2ff7ce-35c8-4dc9-8573-f6742cfd14d4</xsl:when>
        <xsl:when test=".='EB_JSTOR'">f8fc91a6-fcb2-4ee8-94cc-a8d5b66a86f8</xsl:when>
        <xsl:when test=".='EB_JSTOR15'">0778208b-9a6e-4cee-957e-f4963cd8c312</xsl:when>
        <xsl:when test=".='EB_LCL'">4bd45818-159f-425e-98d0-52e5a7cce7c3</xsl:when>
        <xsl:when test=".='EB_NETL'">7929dd29-2d91-4015-8d15-915b636c6e12</xsl:when>
        <xsl:when test=".='EB_NETLK'">efa5bcfe-f5e0-4a5d-bf2e-520f1c6ac329</xsl:when>
        <xsl:when test=".='EB_OXFORD'">079135d8-c187-4dd0-8f8b-7b78a1f7aee3</xsl:when>
        <xsl:when test=".='EB_PLCI_03'">fa75e5f8-ea13-4608-833b-cd96643a01d9</xsl:when>
        <xsl:when test=".='EB_PLCI_13'">1a67208f-1e8e-4271-9d70-f6419bb26a6b</xsl:when>
        <xsl:when test=".='EB_PLCI_14'">96dcf009-f8ba-40b1-be87-18d7a0936b7a</xsl:when>
        <xsl:when test=".='EB_PLCI_15'">a7397c9a-0138-49d6-b9eb-f89381021a52</xsl:when>
        <xsl:when test=".='EB_PLNT_03'">1d773228-9a9f-44d2-979f-7b9a5cd83bf2</xsl:when>
        <xsl:when test=".='EI'">2e394ecc-0b6c-4bee-923b-7931fccfc7d6</xsl:when>
        <xsl:when test=".='EN_ZZZ'">6e9f3c9f-8a9a-4823-a073-34d7a4ae5b08</xsl:when>
        <xsl:when test=".='EP'">1c052320-55b2-4005-921d-341f81eccd34</xsl:when>
        <xsl:when test=".='EP_JST'">f2a30c3b-e22b-4043-be37-51cdb2711c17</xsl:when>
        <xsl:when test=".='EP_PJM'">e3916276-bc0d-4150-87bc-cc48585aba64</xsl:when>
        <xsl:when test=".='EP_SAGE'">c54fd1f6-a121-4516-89d5-1dd48601d669</xsl:when>
        <xsl:when test=".='EP_ZZZ'">b49d08df-5742-49b2-91ff-327e6933950e</xsl:when>
        <xsl:when test=".='ER'">776a1eab-a4cc-43d6-abcf-6d0b60f8f1a0</xsl:when>
        <xsl:when test=".='EXHIBIT'">6ec94c52-b40a-430b-8af1-aa6b6b8fea5e</xsl:when>
        <xsl:when test=".='EZB'">11641849-1544-48ec-aebf-2e86c8b9eaaa</xsl:when>
        <xsl:when test=".='EZB_LEND'">e8809314-a77c-472b-b7f8-5d0fbb7981e2</xsl:when>
        <xsl:when test=".='EZBM'">7bbee8f9-5a03-4e13-a5a8-a61f63d81ec7</xsl:when>
        <xsl:when test=".='GD'">224459d6-fa5e-4475-91fe-053924a46708</xsl:when>
        <xsl:when test=".='GDER'">4b404be6-bc6d-4531-b6a1-e40d4802d546</xsl:when>
        <xsl:when test=".='GDMC'">208d9dd2-a3f0-4ccd-a168-47bcbb614000</xsl:when>
        <xsl:when test=".='GDMF'">c36f2165-f4d6-463d-9576-aceeecf1594a</xsl:when>
        <xsl:when test=".='GDML'">227daa37-fc35-47d7-9dd5-8694e96311a7</xsl:when>
        <xsl:when test=".='GDR'">c3d58b7e-e464-4daa-b4d5-73e566409371</xsl:when>
        <xsl:when test=".='I'">3cd175f1-309c-4ad3-9cbf-361817e9fa73</xsl:when>
        <xsl:when test=".='ILLB'">f8431974-38ea-42e3-92e6-e30e6590b624</xsl:when>
        <xsl:when test=".='J'">7644843c-1357-4c04-8e29-3a3dc9d1bf29</xsl:when>
        <xsl:when test=".='JEB'">df0547e6-b5ee-4026-9a6f-84b6acfaa2fe</xsl:when>
        <xsl:when test=".='JO'">7560d10c-ec53-4c5c-9aee-585732650b4f</xsl:when>
        <xsl:when test=".='MEND'">e054a564-d69b-4868-a9bb-35aa314526eb</xsl:when>
        <xsl:when test=".='MF'">4d11c5e2-98f0-47ab-bc7f-7d8520dd997a</xsl:when>
        <xsl:when test=".='MFD'">147175a8-7795-42ef-8e2a-702927fb8fb7</xsl:when>
        <xsl:when test=".='N'">d3e086ef-f77d-4344-9104-ec9d1c434802</xsl:when>
        <xsl:when test=".='N_M'">e3fc0afb-e0eb-4671-a432-35d6fb5f7f87</xsl:when>
        <xsl:when test=".='OBOC'">85779aa4-fe82-4eb0-b669-9d8d6a96fe54</xsl:when>
        <xsl:when test=".='ONORDER'">7457335b-1b08-487b-a144-33ef0ba2c0d1</xsl:when>
        <xsl:when test=".='P'">7b272746-0ef2-4372-bbab-06b3c305df97</xsl:when>
        <xsl:when test=".='P_C'">41788814-7f3c-44e8-8423-bef9d371f482</xsl:when>
        <xsl:when test=".='P_M'">a1de6293-5645-413c-b35b-341aa596ae9e</xsl:when>
        <xsl:when test=".='P_P'">1762cc01-c7f5-475d-a6f5-9db94d77fa50</xsl:when>
        <xsl:when test=".='PROBLEM'">fea5327c-20e4-4258-8efe-5d2662fb4b01</xsl:when>
        <xsl:when test=".='PROC'">c0b90724-e34c-4819-94a9-d39dde77050a</xsl:when>
        <xsl:when test=".='PROCCA'">c314c358-578e-4f1d-ba95-d875b0edec8d</xsl:when>
        <xsl:when test=".='PROCLA'">607e3781-4f2b-48c5-8a14-ac736b24577a</xsl:when>
        <xsl:when test=".='R'">831c39d7-96db-4645-a8d5-ac991393d95d</xsl:when>
        <xsl:when test=".='RE'">db4a297d-6424-447c-8483-9b5dded403a5</xsl:when>
        <xsl:when test=".='RESE'">d7d47a5a-279f-49c7-b5e6-44edda4e2e00</xsl:when>
        <xsl:when test=".='RESM'">d95ce7c5-1592-4070-a636-b62a4a576868</xsl:when>
        <xsl:when test=".='RESP'">5867ef8d-0d59-434a-a315-15f93d698c16</xsl:when>
        <xsl:when test=".='RESS'">9ad050c1-b402-4b5c-8cd4-b2570e8e08b0</xsl:when>
        <xsl:when test=".='RLAW'">b6d8fb49-6af7-4f4e-8e9d-4a9a54223fad</xsl:when>
        <xsl:when test=".='SC'">c2e52968-3323-434f-ba72-d7f1826ad2c1</xsl:when>
        <xsl:when test=".='SCAR'">56c73ff3-5ca6-411e-a251-8fd833e6e3f9</xsl:when>
        <xsl:when test=".='SCBN'">1762b92a-7e05-485f-aae2-b363b1086724</xsl:when>
        <xsl:when test=".='SCCR'">98e45a55-8a6b-47e8-a14a-cd3ae2b8e4e9</xsl:when>
        <xsl:when test=".='SCD'">083e288f-74ab-463d-afde-88bd2b65c073</xsl:when>
        <xsl:when test=".='SCDH'">33e66d3a-4f36-40da-9eda-6432e90d3fcb</xsl:when>
        <xsl:when test=".='SCERS'">b2da7e89-aa4c-4ada-8cd9-68d97cfa8984</xsl:when>
        <xsl:when test=".='SCH'">a647342f-9dfe-4bf0-9f71-cd29ee7ecf3e</xsl:when>
        <xsl:when test=".='SCM'">f00269e6-a4e4-41d6-9984-5fcba2c83fb5</xsl:when>
        <xsl:when test=".='SCMAP'">149d3182-fcba-4031-b22f-643ab13a1eb7</xsl:when>
        <xsl:when test=".='SCMAPD'">5ba4c8a1-5dc1-467f-b98c-90ac74238b3e</xsl:when>
        <xsl:when test=".='SCME'">ccc422f5-e5d7-4739-b7e4-77eb65db5ff1</xsl:when>
        <xsl:when test=".='SCMS'">32bf874a-563b-4cdf-abfe-a2fe02803b77</xsl:when>
        <xsl:when test=".='SCPR'">ffdde491-2317-4d64-b1ae-655cd36d9849</xsl:when>
        <xsl:when test=".='SCRB'">6f9951ae-d09d-4456-8881-58c6f6aa3cab</xsl:when>
        <xsl:when test=".='SCRBD'">555c9c0e-6bfe-422f-af2e-9a6cc31afcce</xsl:when>
        <xsl:when test=".='SCRR'">5d8d2476-f04b-467f-b6ab-a05401fd04e7</xsl:when>
        <xsl:when test=".='SCSTORAGE'">96caaa02-10d2-40e5-8058-6e132374ef42</xsl:when>
        <xsl:when test=".='SCT'">56d8b539-b0a2-45e7-be86-5b6e1c07a062</xsl:when>
        <xsl:when test=".='SCW'">a1d0d4d8-d109-4bc1-94cd-aca2567d1447</xsl:when>
        <xsl:when test=".='STORAGE_02'">ba508636-76ec-4ca3-8b53-1c0df8fb7d0e</xsl:when>
        <xsl:when test=".='UNASSIGNED'">556ecb69-f91c-43c0-a38a-866a9c504494</xsl:when>
        <xsl:when test=".='UNUSED'">1c40af59-51ba-4b25-8ff7-15b15f64aa2f</xsl:when>
        <xsl:when test=".='VC'">12ee1371-43f0-4c0c-9a10-835459d048a3</xsl:when>
        <xsl:otherwise>004c14d3-fb87-40fc-b4db-9e91738b4f1b</xsl:otherwise>
      </xsl:choose>
    </permanentLocationId>
  </xsl:template>

  <!-- Set institutionId for Millersville -->
  <xsl:template match="//institutionIdHere">
    <institutionId>b4578dbc-4dd9-4ac1-9c01-8a13f65aa95e</institutionId>> <!-- Millersville -->
  </xsl:template>
</xsl:stylesheet>
