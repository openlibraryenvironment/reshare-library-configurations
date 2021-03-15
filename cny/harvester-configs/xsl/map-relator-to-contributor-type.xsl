<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:marc="http://www.loc.gov/MARC21/slim">
  <xsl:template name="map-relator">
    <xsl:choose>
      <xsl:when test="marc:subfield[@code='e']='dub' or marc:subfield[@code='e']='dubious author'">88370fc3-bf69-45b6-b518-daf9a3877385</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='mrb' or marc:subfield[@code='e']='marbler'">515caf91-3dde-4769-b784-50c9e23400d5</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cor' or marc:subfield[@code='e']='collection registrar'">8ddb69bb-cd69-4898-a62d-b71649089e4a</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='arr' or marc:subfield[@code='e']='arranger'">ac64c865-4f29-4d51-8b43-7816a5217f04</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='inv' or marc:subfield[@code='e']='inventor'">21430354-f17a-4ac1-8545-1a5907cd15e5</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='chr' or marc:subfield[@code='e']='choreographer'">593862b4-a655-47c3-92b9-2b305b14cce7</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='rpt' or marc:subfield[@code='e']='reporter'">86b9292d-4dce-401d-861e-2df2cfaacb83</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='art' or marc:subfield[@code='e']='artist'">f9e5b41b-8d5b-47d3-91d0-ca9004796337</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='mon' or marc:subfield[@code='e']='monitor'">d2df2901-fac7-45e1-a9ad-7a67b70ea65b</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='wde' or marc:subfield[@code='e']='wood engraver'">de1ea2dc-8d9d-4dfa-b86e-8ce9d8b0c2f2</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='pmn' or marc:subfield[@code='e']='production manager'">3cbd0832-328e-48f5-96c4-6f7bcf341461</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dis' or marc:subfield[@code='e']='dissertant'">f26858bc-4468-47be-8e30-d5db4c0b1e88</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='his' or marc:subfield[@code='e']='host institution'">81b2174a-06b9-48f5-8c49-6cbaf7b869fe</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='fmo' or marc:subfield[@code='e']='former owner'">5c3abceb-6bd8-43aa-b08d-1187ae78b15b</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='fds' or marc:subfield[@code='e']='film distributor'">60d3f16f-958a-45c2-bb39-69cc9eb3835e</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='apl' or marc:subfield[@code='e']='appellant'">7d0a897c-4f83-493a-a0c5-5e040cdce75b</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='rdd' or marc:subfield[@code='e']='radio director'">fcfc0b86-b083-4ab8-8a75-75a66638ed2e</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='bjd' or marc:subfield[@code='e']='bookjacket designer'">acad26a9-e288-4385-bea1-0560bb884b7a</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cpl' or marc:subfield[@code='e']='complainant'">8f9d96f5-32ad-43d7-8122-18063a617fc8</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='aus' or marc:subfield[@code='e']='screenwriter'">40fe62fb-4319-4313-ac88-ac4912b1e1fa</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='srv' or marc:subfield[@code='e']='surveyor'">a21a56ea-5136-439a-a513-0bffa53402de</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ltg' or marc:subfield[@code='e']='lithographer'">2b45c004-805d-4e7f-864d-8664a23488dc</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='len' or marc:subfield[@code='e']='lender'">e4f2fd1c-ee79-4cf7-bc1a-fbaac616f804</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cng' or marc:subfield[@code='e']='cinematographer'">2a3e2d58-3a21-4e35-b7e4-cffb197750e3</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='fnd' or marc:subfield[@code='e']='funder'">3555bf7f-a6cc-4890-b050-9c428eabf579</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ann' or marc:subfield[@code='e']='annotator'">06b2cbd8-66bf-4956-9d90-97c9776365a4</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='org' or marc:subfield[@code='e']='originator'">539872f1-f4a1-4e83-9d87-da235f64c520</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='osp' or marc:subfield[@code='e']='onscreen presenter'">563bcaa7-7fe1-4206-8fc9-5ef8c7fbf998</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='red' or marc:subfield[@code='e']='redaktor'">b38c4e20-9aa0-43f4-a1a0-f547e54873f7</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dtm' or marc:subfield[@code='e']='data manager'">9d81737c-ec6c-49d8-9771-50e1ab4d7ad7</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ppm' or marc:subfield[@code='e']='papermaker'">e38a0c64-f1d3-4b03-a364-34d6b402841c</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='mdc' or marc:subfield[@code='e']='metadata contact'">ee04a129-f2e4-4fd7-8342-7a73a0700665</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ths' or marc:subfield[@code='e']='thesis advisor'">cce475f7-ccfa-4e15-adf8-39f907788515</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='arc' or marc:subfield[@code='e']='architect'">754edaff-07bb-45eb-88bf-10a8b6842c38</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='jug' or marc:subfield[@code='e']='jurisdiction governed'">b76cb226-50f9-4d34-a3d0-48b475f83c80</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='pop' or marc:subfield[@code='e']='printer of plates'">fd0a47ec-58ce-43f6-8ecc-696ec17a98ab</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='sgn' or marc:subfield[@code='e']='signer'">12a73179-1283-4828-8fd9-065e18dc2e78</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='crp' or marc:subfield[@code='e']='correspondent'">319cb290-a549-4ae8-a0ed-a65fe155cac8</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cns' or marc:subfield[@code='e']='censor'">756fcbfc-ef95-4bd0-99cc-1cc364c7b0cd</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='col' or marc:subfield[@code='e']='collector'">dd44e44e-a153-4ab6-9a7c-f3d23b6c4676</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cll' or marc:subfield[@code='e']='calligrapher'">8999f7cb-6d9a-4be7-aeed-4cc6aae35a8c</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='hnr' or marc:subfield[@code='e']='honoree'">5c1e0a9e-1fdc-47a5-8d06-c12af63cbc5a</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='own' or marc:subfield[@code='e']='owner'">21dda3dc-cebd-4018-8db2-4f6d50ce3d02</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='asg' or marc:subfield[@code='e']='assignee'">ad9b7785-53a2-4bf4-8a01-572858e82941</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='pma' or marc:subfield[@code='e']='permitting agency'">0683aecf-42a8-432d-adb2-a8abaf2f15d5</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='rpc' or marc:subfield[@code='e']='radio producer'">c96df2ce-7b00-498a-bf37-3011f3ef1229</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ctt' or marc:subfield[@code='e']='contestee-appellant'">e8423d78-7b08-4f81-8f34-4871d5e2b7af</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ilu' or marc:subfield[@code='e']='illuminator'">e038262b-25f8-471b-93ea-2afe287b00a3</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='sec' or marc:subfield[@code='e']='secretary'">12b7418a-0c90-4337-90b7-16d2d3157b68</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='rtm' or marc:subfield[@code='e']='research team member'">54fd209c-d552-43eb-850f-d31f557170b9</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='fmp' or marc:subfield[@code='e']='film producer'">2665431e-aad4-44d1-9218-04053d1cfd53</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cos' or marc:subfield[@code='e']='contestant'">5aa6e3d1-283c-4f6d-8694-3bdc52137b07</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='rbr' or marc:subfield[@code='e']='rubricator'">0d022d0d-902d-4273-8013-0a2a753d9d76</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ppt' or marc:subfield[@code='e']='puppeteer'">4f7c335d-a9d9-4f38-87ef-9a5846b63e7f</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='csl' or marc:subfield[@code='e']='consultant'">c04ff362-c80a-4543-88cf-fc6e49e7d201</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cpc' or marc:subfield[@code='e']='copyright claimant'">5d92d9de-adf3-4dea-93b5-580e9a88e696</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='hst' or marc:subfield[@code='e']='host'">abfa3014-7349-444b-aace-9d28efa5ede4</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='tlp' or marc:subfield[@code='e']='television producer'">3ed655b0-505b-43fe-a4c6-397789449a5b</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='coe' or marc:subfield[@code='e']='contestant-appellee'">9945290f-bcd7-4515-81fd-09e23567b75d</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='egr' or marc:subfield[@code='e']='engraver'">af9a58fa-95df-4139-a06d-ecdab0b2317e</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ctb' or marc:subfield[@code='e']='contributor'">9f0a2cf0-7a9b-45a2-a403-f68d2850d07c</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='nrt' or marc:subfield[@code='e']='narrator'">2c345cb7-0420-4a7d-93ce-b51fb636cce6</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='mcp' or marc:subfield[@code='e']='music copyist'">66bfc19c-eeb0-4167-bd8d-448311aab929</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cpe' or marc:subfield[@code='e']='complainant-appellee'">6358626f-aa02-4c40-8e73-fb202fa5fb4d</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='aut' or marc:subfield[@code='e']='author'">6e09d47d-95e2-4d8a-831b-f777b8ef6d81</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='eng' or marc:subfield[@code='e']='engineer'">366821b5-5319-4888-8867-0ffb2d7649d1</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cts' or marc:subfield[@code='e']='contestee'">9fc0bffb-6dd9-4218-9a44-81be4a5059d4</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='prp' or marc:subfield[@code='e']='production place'">e2b5ceaf-663b-4cc0-91ba-bf036943ece8</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='crt' or marc:subfield[@code='e']='court reporter'">bd13d6d3-e604-4b80-9c5f-4d68115ba616</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='bkp' or marc:subfield[@code='e']='book producer'">c9c3bbe8-d305-48ef-ab2a-5eff941550e3</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='lel' or marc:subfield[@code='e']='libelee'">61c9f06f-620a-4423-8c78-c698b9bb555f</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dbp' or marc:subfield[@code='e']='distribution place'">d5e6972c-9e2f-4788-8dd6-10e859e20945</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dst' or marc:subfield[@code='e']='distributor'">7b21bffb-91e1-45bf-980a-40dd89cc26e4</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='rse' or marc:subfield[@code='e']='respondent-appellee'">7156fd73-b8ca-4e09-a002-bb2afaaf259a</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='evp' or marc:subfield[@code='e']='event place'">54f69767-5712-47aa-bdb7-39c31aa8295e</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='plt' or marc:subfield[@code='e']='platemaker'">d30f5556-6d79-4980-9528-c48ef60f3b31</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dgs' or marc:subfield[@code='e']='degree supervisor'">825a7d9f-7596-4007-9684-9bee72625cfc</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='prm' or marc:subfield[@code='e']='printmaker'">d6a6d28c-1bfc-46df-b2ba-6cb377a6151e</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='lit' or marc:subfield[@code='e']='libelant-appellant'">52c08141-307f-4997-9799-db97076a2eb3</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='pht' or marc:subfield[@code='e']='photographer'">1aae8ca3-4ddd-4549-a769-116b75f3c773</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='itr' or marc:subfield[@code='e']='instrumentalist'">18ba15a9-0502-4fa2-ad41-daab9d5ab7bb</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='drm' or marc:subfield[@code='e']='draftsman'">33aa4117-95d1-4eb5-986b-dfba809871f6</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='crr' or marc:subfield[@code='e']='corrector'">c8050073-f62b-4606-9688-02caa98bdc60</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='let' or marc:subfield[@code='e']='libelee-appellant'">a5c024f1-3c81-492c-ab5e-73d2bc5dcad7</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='spn' or marc:subfield[@code='e']='sponsor'">38c09577-6652-4281-a391-4caabe4c09b6</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='rth' or marc:subfield[@code='e']='research team head'">44eaf0db-85dd-4888-ac8d-a5976dd483a6</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='fac' or marc:subfield[@code='e']='facsimilist'">036b6349-27c8-4b68-8875-79cb8e0fd459</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='rpy' or marc:subfield[@code='e']='responsible party'">cd06cefa-acfe-48cb-a5a3-4c48be4a79ad</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cwt' or marc:subfield[@code='e']='commentator for written text'">316cd382-a4fe-4939-b06e-e7199bfdbc7a</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='tch' or marc:subfield[@code='e']='teacher'">f72a24d1-f404-4275-9350-158fe3a20b21</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='std' or marc:subfield[@code='e']='set designer'">9e7651f8-a4f0-4d02-81b4-578ef9303d1b</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ard' or marc:subfield[@code='e']='artistic director'">255be0dd-54d0-4161-9c6c-4d1f58310303</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ins' or marc:subfield[@code='e']='inscriber'">f6bd4f15-4715-4b0e-9258-61dac047f106</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='pre' or marc:subfield[@code='e']='presenter'">d04782ec-b969-4eac-9428-0eb52d97c644</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='con' or marc:subfield[@code='e']='conservator'">94bb3440-591f-41af-80fa-e124006faa49</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='rsg' or marc:subfield[@code='e']='restager'">453e4f4a-cda9-4cfa-b93d-3faeb18a85db</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='auc' or marc:subfield[@code='e']='auctioneer'">5c132335-8ad0-47bf-a4d1-6dda0a3a2654</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='pth' or marc:subfield[@code='e']='patent holder'">2cb49b06-5aeb-4e84-8160-79d13c6357ed</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cou' or marc:subfield[@code='e']='court governed'">36b921fe-6c34-45c8-908b-5701f0763e1b</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dln' or marc:subfield[@code='e']='delineator'">e04bea27-813b-4765-9ba1-e98e0fca7101</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='bpd' or marc:subfield[@code='e']='bookplate designer'">9e99e803-c73d-4250-8605-403be57f83f9</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cte' or marc:subfield[@code='e']='contestee-appellee'">f3aa0070-71bd-4c39-9a9b-ec2fd03ac26d</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='uvp' or marc:subfield[@code='e']='university place'">fec9ae68-6b55-4dd6-9637-3a694fb6a82b</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dsr' or marc:subfield[@code='e']='designer'">3665d2dd-24cc-4fb4-922a-699811daa41c</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cpt' or marc:subfield[@code='e']='complainant-appellant'">86890f8f-2273-44e2-aa86-927c7f649b32</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='rsp' or marc:subfield[@code='e']='respondent'">3c3ab522-2600-4b93-a121-8832146d5cdf</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='com' or marc:subfield[@code='e']='compiler'">27aeee86-4099-466d-ba10-6d876e6f293b</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='prc' or marc:subfield[@code='e']='process contact'">5ee1e598-72b8-44d5-8edd-173e7bc4cf8c</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dfd' or marc:subfield[@code='e']='defendant'">e46bdfe3-5923-4585-bca4-d9d930d41148</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='elt' or marc:subfield[@code='e']='electrotyper'">201a378e-23dd-4aab-bfe0-e5bc3c855f9c</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dnr' or marc:subfield[@code='e']='donor'">8fbe6e92-87c9-4eff-b736-88cd02571465</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dtc' or marc:subfield[@code='e']='data contributor'">00311f78-e990-4d8b-907e-c67a3664fe15</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='bdd' or marc:subfield[@code='e']='binding designer'">5f27fcc6-4134-4916-afb8-fcbcfb6793d4</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='rst' or marc:subfield[@code='e']='respondent-appellant'">94b839e8-cabe-4d58-8918-8a5058fe5501</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='lee' or marc:subfield[@code='e']='libelee-appellee'">88a66ebf-0b18-4ed7-91e5-01bc7e8de441</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='spk' or marc:subfield[@code='e']='speaker'">ac0baeb5-71e2-435f-aaf1-14b64e2ba700</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='pfr' or marc:subfield[@code='e']='proofreader'">f9395f3d-cd46-413e-9504-8756c54f38a2</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dto' or marc:subfield[@code='e']='dedicator'">0d2580f5-fe16-4d64-a5eb-f0247cccb129</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='mfr' or marc:subfield[@code='e']='manufacturer'">d669122b-c021-46f5-a911-1e9df10b6542</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dte' or marc:subfield[@code='e']='dedicatee'">0d8dc4be-e87b-43df-90d4-1ed60c4e08c5</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='anl' or marc:subfield[@code='e']='analyst'">396f4b4d-5b0a-4fb4-941b-993ebf63db2e</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='app' or marc:subfield[@code='e']='applicant'">ca3b9559-f178-41e8-aa88-6b2c367025f9</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='lso' or marc:subfield[@code='e']='licensor'">99f6b0b7-c22f-460d-afe0-ee0877bc66d1</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='brl' or marc:subfield[@code='e']='braille embosser'">a986c8f2-b36a-400d-b09f-9250a753563c</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='aud' or marc:subfield[@code='e']='author of dialog'">4b41e752-3646-4097-ae80-21fd02e913f7</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cot' or marc:subfield[@code='e']='contestant-appellant'">0ad74d5d-03b9-49bb-b9df-d692945ca66e</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ptf' or marc:subfield[@code='e']='plaintiff'">2230246a-1fdb-4f06-a08a-004fd4b929bf</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cst' or marc:subfield[@code='e']='costume designer'">e1510ac5-a9e9-4195-b762-7cb82c5357c4</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='jud' or marc:subfield[@code='e']='judge'">41a0378d-5362-4c1a-b103-592ff354be1c</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='wdc' or marc:subfield[@code='e']='woodcutter'">32021771-311e-497b-9bf2-672492f322c7</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='sng' or marc:subfield[@code='e']='singer'">6847c9ab-e2f8-4c9e-8dc6-1a97c6836c1c</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='sll' or marc:subfield[@code='e']='seller'">3179eb17-275e-44f8-8cad-3a9514799bd0</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='mus' or marc:subfield[@code='e']='musician'">08553068-8495-49c2-9c18-d29ab656fef0</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='rcp' or marc:subfield[@code='e']='addressee'">94e6a5a8-b84f-44f7-b900-71cd10ea954e</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cov' or marc:subfield[@code='e']='cover designer'">b7000ced-c847-4b43-8f29-c5325e6279a8</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='edm' or marc:subfield[@code='e']='editor of moving image work'">b1e95783-5308-46b2-9853-bd7015c1774b</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='tyg' or marc:subfield[@code='e']='typographer'">58461dca-efd4-4fd4-b380-d033e3540be5</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='aui' or marc:subfield[@code='e']='author of introduction, etc.'">1f20d444-79f6-497a-ae0d-98a92e504c58</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='bkd' or marc:subfield[@code='e']='book designer'">846ac49c-749d-49fd-a05f-e7f2885d9eaf</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='wac' or marc:subfield[@code='e']='writer of added commentary'">bf1a8165-54bf-411c-a5ea-b6bbbb9c55df</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='gis' or marc:subfield[@code='e']='geographic information specialist'">369783f6-78c8-4cd7-97ab-5029444e0c85</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='asn' or marc:subfield[@code='e']='associated name'">9593efce-a42d-4991-9aad-3a4dc07abb1e</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='str' or marc:subfield[@code='e']='stereotyper'">7e5b0859-80c1-4e78-a5e7-61979862c1fa</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='msd' or marc:subfield[@code='e']='musical director'">e1edbaae-5365-4fcb-bb6a-7aae38bbed9c</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='lil' or marc:subfield[@code='e']='libelant'">ae8bc401-47da-4853-9b0b-c7c2c3ec324d</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='wat' or marc:subfield[@code='e']='writer of added text'">6a983219-b6cd-4dd7-bfa4-bcb0b43590d4</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='bnd' or marc:subfield[@code='e']='binder'">f90c67e8-d1fa-4fe9-b98b-cbc3f019c65f</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='aqt' or marc:subfield[@code='e']='author in quotations or text abstracts'">57247637-c41b-498d-9c46-935469335485</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='enj' or marc:subfield[@code='e']='enacting jurisdiction'">61afcb8a-8c53-445b-93b9-38e799721f82</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='prn' or marc:subfield[@code='e']='production company'">b318e49c-f2ad-498c-8106-57b5544f9bb0</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='pte' or marc:subfield[@code='e']='plaintiff-appellee'">45747710-39dc-47ec-b2b3-024d757f997e</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='wpr' or marc:subfield[@code='e']='writer of preface'">115fa75c-385b-4a8e-9a2b-b13de9f21bcf</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cph' or marc:subfield[@code='e']='copyright holder'">2b7080f7-d03d-46af-86f0-40ea02867362</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='pbl' or marc:subfield[@code='e']='publisher'">a60314d4-c3c6-4e29-92fa-86cc6ace4d56</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='fmk' or marc:subfield[@code='e']='filmmaker'">2129a478-c55c-4f71-9cd1-584cbbb381d4</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ctg' or marc:subfield[@code='e']='cartographer'">22286157-3058-434c-9009-8f8d100fc74a</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='etr' or marc:subfield[@code='e']='etcher'">6ccd61f4-c408-46ec-b359-a761b4781477</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='sht' or marc:subfield[@code='e']='supporting host'">206246b1-8e17-4588-bad8-78c82e3e6d54</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='clt' or marc:subfield[@code='e']='collotyper'">cbceda25-1f4d-43b7-96a5-f2911026a154</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='mfp' or marc:subfield[@code='e']='manufacture place'">a2231628-6a5a-48f4-8eac-7e6b0328f6fe</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='rce' or marc:subfield[@code='e']='recording engineer'">ab7a95da-590c-4955-b03b-9d8fbc6c1fe6</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='scl' or marc:subfield[@code='e']='sculptor'">223da16e-5a03-4f5c-b8c3-0eb79f662bcb</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cli' or marc:subfield[@code='e']='client'">ec0959b3-becc-4abd-87b0-3e02cf2665cc</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='prs' or marc:subfield[@code='e']='production designer'">8210b9d7-8fe7-41b7-8c5f-6e0485b50725</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='pan' or marc:subfield[@code='e']='panelist'">003e8b5e-426c-4d33-b940-233b1b89dfbd</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cmp' or marc:subfield[@code='e']='composer'">901d01e5-66b1-48f0-99f9-b5e92e3d2d15</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ldr' or marc:subfield[@code='e']='laboratory director'">f74dfba3-ea20-471b-8c4f-5d9b7895d3b5</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='lgd' or marc:subfield[@code='e']='lighting designer'">5e9333a6-bc92-43c0-a306-30811bb71e61</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='mte' or marc:subfield[@code='e']='metal-engraver'">8af7e981-65f9-4407-80ae-1bacd11315d5</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='prt' or marc:subfield[@code='e']='printer'">02c1c664-1d71-4f7b-a656-1abf1209848f</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='rps' or marc:subfield[@code='e']='repository'">13361ce8-7664-46c0-860d-ffbcc01414e0</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='trc' or marc:subfield[@code='e']='transcriber'">0eef1c70-bd77-429c-a790-48a8d82b4d8f</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ptt' or marc:subfield[@code='e']='plaintiff-appellant'">68dcc037-901e-46a9-9b4e-028548cd750f</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='pdr' or marc:subfield[@code='e']='project director'">097adac4-6576-4152-ace8-08fc59cb0218</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='prf' or marc:subfield[@code='e']='performer'">246858e3-4022-4991-9f1c-50901ccc1438</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='lbr' or marc:subfield[@code='e']='laboratory'">e603ffa2-8999-4091-b10d-96248c283c04</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dgg' or marc:subfield[@code='e']='degree granting institution'">6901fbf1-c038-42eb-a03e-cd65bf91f660</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='edc' or marc:subfield[@code='e']='editor of compilation'">863e41e3-b9c5-44fb-abeb-a8ab536bb432</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='prd' or marc:subfield[@code='e']='production personnel'">b13f6a89-d2e3-4264-8418-07ad4de6a626</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='oth' or marc:subfield[@code='e']='other'">361f4bfd-a87d-463c-84d8-69346c3082f6</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='pro' or marc:subfield[@code='e']='producer'">81bbe282-dca7-4763-bf5a-fe28c8939988</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='pat' or marc:subfield[@code='e']='patron'">1b51068c-506a-4b85-a815-175c17932448</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='trl' or marc:subfield[@code='e']='translator'">3322b734-ce38-4cd4-815d-8983352837cc</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cur' or marc:subfield[@code='e']='curator'">d67decd7-3dbe-4ac7-8072-ef18f5cd3e09</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='sds' or marc:subfield[@code='e']='sound designer'">1c623f6e-25bf-41ec-8110-6bde712dfa79</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ato' or marc:subfield[@code='e']='autographer'">e8b5040d-a5c7-47c1-96ca-6313c8b9c849</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='stl' or marc:subfield[@code='e']='storyteller'">a3642006-14ab-4816-b5ac-533e4971417a</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='clr' or marc:subfield[@code='e']='colorist'">81c01802-f61b-4548-954a-22aab027f6e5</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cmm' or marc:subfield[@code='e']='commentator'">e0dc043c-0a4d-499b-a8a8-4cc9b0869cf3</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='fpy' or marc:subfield[@code='e']='first party'">26ad4833-5d49-4999-97fc-44bc86a9fae0</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='pup' or marc:subfield[@code='e']='publication place'">2c9cd812-7b00-47e8-81e5-1711f3b6fe38</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='orm' or marc:subfield[@code='e']='organizer'">df7daf2f-7ab4-4c7b-a24d-d46695fa9072</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='wit' or marc:subfield[@code='e']='witness'">ec56cc25-e470-46f7-a429-72f438c0513b</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='mrk' or marc:subfield[@code='e']='markup editor'">168b6ff3-7482-4fd0-bf07-48172b47876c</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cas' or marc:subfield[@code='e']='caster'">468ac852-339e-43b7-8e94-7e2ce475cb00</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='act' or marc:subfield[@code='e']='actor'">7131e7b8-84fa-48bd-a725-14050be38f9f</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='adi' or marc:subfield[@code='e']='art director'">e2a1a9dc-4aec-4bb5-ae43-99bb0383516a</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dft' or marc:subfield[@code='e']='defendant-appellant'">c86fc16d-61d8-4471-8089-76550daa04f0</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='bsl' or marc:subfield[@code='e']='bookseller'">50a6d58a-cea2-42a1-8c57-0c6fde225c93</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ccp' or marc:subfield[@code='e']='conceptor'">3db02638-598e-44a3-aafa-cbae77533ee1</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='scr' or marc:subfield[@code='e']='scribe'">867f3d13-779a-454e-8a06-a1b9fb37ba2a</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='lbt' or marc:subfield[@code='e']='librettist'">6d5779a3-e692-4a24-a5ee-d1ce8a6eae47</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='wal' or marc:subfield[@code='e']='writer of added lyrics'">cb8fdd3f-7193-4096-934c-3efea46b1138</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='lie' or marc:subfield[@code='e']='libelant-appellee'">7d60c4bf-5ddc-483a-b179-af6f1a76efbe</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='csp' or marc:subfield[@code='e']='consultant to a project'">7bebb5a2-9332-4ba7-a258-875143b5d754</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='prv' or marc:subfield[@code='e']='provider'">3b4709f1-5286-4c42-9423-4620fff78141</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ren' or marc:subfield[@code='e']='renderer'">6b566426-f325-4182-ac31-e1c4e0b2aa19</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='res' or marc:subfield[@code='e']='researcher'">fec4d84b-0421-4d15-b53f-d5104f39b3ca</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cre' or marc:subfield[@code='e']='creator'">7aac64ab-7f2a-4019-9705-e07133e3ad1a</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='brd' or marc:subfield[@code='e']='broadcaster'">55e4a59b-2dfd-478d-9fe9-110fc24f0752</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='stm' or marc:subfield[@code='e']='stage manager'">b02cbeb7-8ca7-4bf4-8d58-ce943b4d5ea3</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='aft' or marc:subfield[@code='e']='author of afterword, colophon, etc.'">d517010e-908f-49d6-b1e8-8c1a5f9a7f1c</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ctr' or marc:subfield[@code='e']='contractor'">28f7eb9e-f923-4a77-9755-7571381b2a47</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='adp' or marc:subfield[@code='e']='adapter'">35a3feaf-1c13-4221-8cfa-d6879faf714c</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='win' or marc:subfield[@code='e']='writer of introduction'">53f075e1-53c0-423f-95ae-676df3d8c7a2</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='tyd' or marc:subfield[@code='e']='type designer'">a2c9e8b5-edb4-49dc-98ba-27f0b8b5cebf</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cmt' or marc:subfield[@code='e']='compositor'">c7345998-fd17-406b-bce0-e08cb7b2671f</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='rev' or marc:subfield[@code='e']='reviewer'">85962960-ef07-499d-bf49-63f137204f9a</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='blw' or marc:subfield[@code='e']='blurb writer'">245cfa8e-8709-4f1f-969b-894b94bc029f</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='isb' or marc:subfield[@code='e']='issuing body'">97082157-5900-4c4c-a6d8-2e6c13f22ef1</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='rcd' or marc:subfield[@code='e']='recordist'">b388c02a-19dc-4948-916d-3688007b9a2c</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='stn' or marc:subfield[@code='e']='standards body'">94d131ef-2814-49a0-a59c-49b6e7584b3d</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='sce' or marc:subfield[@code='e']='scenarist'">05875ac5-a509-4a51-a6ee-b8051e37c7b0</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dpt' or marc:subfield[@code='e']='depositor'">7c62ecb4-544c-4c26-8765-f6f6d34031a0</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='wam' or marc:subfield[@code='e']='writer of accompanying material'">913233b3-b2a0-4635-8dad-49b6fc515fc5</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dpc' or marc:subfield[@code='e']='depicted'">d32885eb-b82c-4391-abb2-4582c8ee02b3</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='fld' or marc:subfield[@code='e']='field director'">2576c328-61f1-4684-83cf-4376a66f7731</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='flm' or marc:subfield[@code='e']='film editor'">22f8ea20-b4f0-4498-8125-7962f0037c2d</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dnc' or marc:subfield[@code='e']='dancer'">3bd0b539-4440-4971-988c-5330daa14e3a</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='rsr' or marc:subfield[@code='e']='restorationist'">cf04404a-d628-432b-b190-6694c5a3dc4b</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='exp' or marc:subfield[@code='e']='expert'">764c208a-493f-43af-8db7-3dd48efca45c</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='prg' or marc:subfield[@code='e']='programmer'">b47d8841-112e-43be-b992-eccb5747eb50</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='sgd' or marc:subfield[@code='e']='stage director'">c0c46b4f-fd18-4d8a-96ac-aff91662206c</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='vac' or marc:subfield[@code='e']='voice actor'">1ce93f32-3e10-46e2-943f-77f3c8a41d7d</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='elg' or marc:subfield[@code='e']='electrician'">5b2de939-879c-45b4-817d-c29fd16b78a0</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='drt' or marc:subfield[@code='e']='director'">12101b05-afcb-4159-9ee4-c207378ef910</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ivr' or marc:subfield[@code='e']='interviewer'">eecb30c5-a061-4790-8fa5-cf24d0fa472b</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='wst' or marc:subfield[@code='e']='writer of supplementary textual content'">7c5c2fd5-3283-4f96-be89-3bb3e8fa6942</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='mod' or marc:subfield[@code='e']='moderator'">e79ca231-af4c-4724-8fe1-eabafd2e0bec</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='tld' or marc:subfield[@code='e']='television director'">af09f37e-12f5-46db-a532-ccd6a8877f2d</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='lse' or marc:subfield[@code='e']='licensee'">a8d59132-aa1e-4a62-b5bd-b26b7d7a16b9</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='pbd' or marc:subfield[@code='e']='publishing director'">2d046e17-742b-4d99-8e25-836cc141fee9</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='tcd' or marc:subfield[@code='e']='technical director'">0efdaf72-6126-430a-8256-69c42ff6866f</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='edt' or marc:subfield[@code='e']='editor'">9deb29d1-3e71-4951-9413-a80adac703d0</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='anm' or marc:subfield[@code='e']='animator'">b998a229-68e7-4a3d-8cfd-b73c10844e96</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='pta' or marc:subfield[@code='e']='patent applicant'">630142eb-6b68-4cf7-8296-bdaba03b5760</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='cnd' or marc:subfield[@code='e']='conductor'">a79f874f-319e-4bc8-a2e1-f8b15fa186fe</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ant' or marc:subfield[@code='e']='bibliographic antecedent'">ced7cdfc-a3e0-47c8-861b-3f558094b02e</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='lsa' or marc:subfield[@code='e']='landscape architect'">3c1508ab-fbcc-4500-b319-10885570fe2f</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ill' or marc:subfield[@code='e']='illustrator'">3add6049-0b63-4fec-9892-e3867e7358e2</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='att' or marc:subfield[@code='e']='attributed name'">d836488a-8d0e-42ad-9091-b63fe885fe03</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='sad' or marc:subfield[@code='e']='scientific advisor'">c5988fb2-cd21-469c-b35e-37e443c01adc</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='mtk' or marc:subfield[@code='e']='minute taker'">002c0eef-eb77-4c0b-a38e-117a09773d59</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ive' or marc:subfield[@code='e']='interviewee'">e7e8fc17-7c97-4a37-8c12-f832ddca7a71</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='frg' or marc:subfield[@code='e']='forger'">06fef928-bd00-4c7f-bd3c-5bc93973f8e8</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='dfe' or marc:subfield[@code='e']='defendant-appellee'">3ebe73f4-0895-4979-a5e3-2b3e9c63acd6</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='led' or marc:subfield[@code='e']='lead'">d791c3b9-993a-4203-ac81-3fb3f14793ae</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='vdg' or marc:subfield[@code='e']='videographer'">c6005151-7005-4ee7-8d6d-a6b72d25377a</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='lyr' or marc:subfield[@code='e']='lyricist'">398a0a2f-752d-4496-8737-e6df7c29aaa7</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='acp' or marc:subfield[@code='e']='art copyist'">c9d28351-c862-433e-8957-c4721f30631f</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='spy' or marc:subfield[@code='e']='second party'">2fba7b2e-26bc-4ac5-93cb-73e31e554377</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='stg' or marc:subfield[@code='e']='setting'">3e86cb67-5407-4622-a540-71a978899404</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='abr' or marc:subfield[@code='e']='abridger'">28de45ae-f0ca-46fe-9f89-283313b3255b</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='med' or marc:subfield[@code='e']='medium'">a7a25290-226d-4f81-b780-2efc1f7dfd26</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='opn' or marc:subfield[@code='e']='opponent'">300171aa-95e1-45b0-86c6-2855fcaf9ef4</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='fmd' or marc:subfield[@code='e']='film director'">f5f9108a-9afc-4ea9-9b99-4f83dcf51204</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='pra' or marc:subfield[@code='e']='praeses'">08cb225a-302c-4d5a-a6a3-fa90850babcd</xsl:when>
      <xsl:when test="marc:subfield[@code='e']='ape' or marc:subfield[@code='e']='appellee'">f0061c4b-df42-432f-9d1a-3873bb27c8e6</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dub' or marc:subfield[@code='4']='dubious author'">88370fc3-bf69-45b6-b518-daf9a3877385</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='mrb' or marc:subfield[@code='4']='marbler'">515caf91-3dde-4769-b784-50c9e23400d5</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cor' or marc:subfield[@code='4']='collection registrar'">8ddb69bb-cd69-4898-a62d-b71649089e4a</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='arr' or marc:subfield[@code='4']='arranger'">ac64c865-4f29-4d51-8b43-7816a5217f04</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='inv' or marc:subfield[@code='4']='inventor'">21430354-f17a-4ac1-8545-1a5907cd15e5</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='chr' or marc:subfield[@code='4']='choreographer'">593862b4-a655-47c3-92b9-2b305b14cce7</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='rpt' or marc:subfield[@code='4']='reporter'">86b9292d-4dce-401d-861e-2df2cfaacb83</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='art' or marc:subfield[@code='4']='artist'">f9e5b41b-8d5b-47d3-91d0-ca9004796337</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='mon' or marc:subfield[@code='4']='monitor'">d2df2901-fac7-45e1-a9ad-7a67b70ea65b</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='wde' or marc:subfield[@code='4']='wood engraver'">de1ea2dc-8d9d-4dfa-b86e-8ce9d8b0c2f2</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='pmn' or marc:subfield[@code='4']='production manager'">3cbd0832-328e-48f5-96c4-6f7bcf341461</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dis' or marc:subfield[@code='4']='dissertant'">f26858bc-4468-47be-8e30-d5db4c0b1e88</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='his' or marc:subfield[@code='4']='host institution'">81b2174a-06b9-48f5-8c49-6cbaf7b869fe</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='fmo' or marc:subfield[@code='4']='former owner'">5c3abceb-6bd8-43aa-b08d-1187ae78b15b</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='fds' or marc:subfield[@code='4']='film distributor'">60d3f16f-958a-45c2-bb39-69cc9eb3835e</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='apl' or marc:subfield[@code='4']='appellant'">7d0a897c-4f83-493a-a0c5-5e040cdce75b</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='rdd' or marc:subfield[@code='4']='radio director'">fcfc0b86-b083-4ab8-8a75-75a66638ed2e</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='bjd' or marc:subfield[@code='4']='bookjacket designer'">acad26a9-e288-4385-bea1-0560bb884b7a</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cpl' or marc:subfield[@code='4']='complainant'">8f9d96f5-32ad-43d7-8122-18063a617fc8</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='aus' or marc:subfield[@code='4']='screenwriter'">40fe62fb-4319-4313-ac88-ac4912b1e1fa</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='srv' or marc:subfield[@code='4']='surveyor'">a21a56ea-5136-439a-a513-0bffa53402de</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ltg' or marc:subfield[@code='4']='lithographer'">2b45c004-805d-4e7f-864d-8664a23488dc</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='len' or marc:subfield[@code='4']='lender'">e4f2fd1c-ee79-4cf7-bc1a-fbaac616f804</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cng' or marc:subfield[@code='4']='cinematographer'">2a3e2d58-3a21-4e35-b7e4-cffb197750e3</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='fnd' or marc:subfield[@code='4']='funder'">3555bf7f-a6cc-4890-b050-9c428eabf579</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ann' or marc:subfield[@code='4']='annotator'">06b2cbd8-66bf-4956-9d90-97c9776365a4</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='org' or marc:subfield[@code='4']='originator'">539872f1-f4a1-4e83-9d87-da235f64c520</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='osp' or marc:subfield[@code='4']='onscreen presenter'">563bcaa7-7fe1-4206-8fc9-5ef8c7fbf998</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='red' or marc:subfield[@code='4']='redaktor'">b38c4e20-9aa0-43f4-a1a0-f547e54873f7</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dtm' or marc:subfield[@code='4']='data manager'">9d81737c-ec6c-49d8-9771-50e1ab4d7ad7</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ppm' or marc:subfield[@code='4']='papermaker'">e38a0c64-f1d3-4b03-a364-34d6b402841c</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='mdc' or marc:subfield[@code='4']='metadata contact'">ee04a129-f2e4-4fd7-8342-7a73a0700665</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ths' or marc:subfield[@code='4']='thesis advisor'">cce475f7-ccfa-4e15-adf8-39f907788515</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='arc' or marc:subfield[@code='4']='architect'">754edaff-07bb-45eb-88bf-10a8b6842c38</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='jug' or marc:subfield[@code='4']='jurisdiction governed'">b76cb226-50f9-4d34-a3d0-48b475f83c80</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='pop' or marc:subfield[@code='4']='printer of plates'">fd0a47ec-58ce-43f6-8ecc-696ec17a98ab</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='sgn' or marc:subfield[@code='4']='signer'">12a73179-1283-4828-8fd9-065e18dc2e78</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='crp' or marc:subfield[@code='4']='correspondent'">319cb290-a549-4ae8-a0ed-a65fe155cac8</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cns' or marc:subfield[@code='4']='censor'">756fcbfc-ef95-4bd0-99cc-1cc364c7b0cd</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='col' or marc:subfield[@code='4']='collector'">dd44e44e-a153-4ab6-9a7c-f3d23b6c4676</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cll' or marc:subfield[@code='4']='calligrapher'">8999f7cb-6d9a-4be7-aeed-4cc6aae35a8c</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='hnr' or marc:subfield[@code='4']='honoree'">5c1e0a9e-1fdc-47a5-8d06-c12af63cbc5a</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='own' or marc:subfield[@code='4']='owner'">21dda3dc-cebd-4018-8db2-4f6d50ce3d02</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='asg' or marc:subfield[@code='4']='assignee'">ad9b7785-53a2-4bf4-8a01-572858e82941</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='pma' or marc:subfield[@code='4']='permitting agency'">0683aecf-42a8-432d-adb2-a8abaf2f15d5</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='rpc' or marc:subfield[@code='4']='radio producer'">c96df2ce-7b00-498a-bf37-3011f3ef1229</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ctt' or marc:subfield[@code='4']='contestee-appellant'">e8423d78-7b08-4f81-8f34-4871d5e2b7af</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ilu' or marc:subfield[@code='4']='illuminator'">e038262b-25f8-471b-93ea-2afe287b00a3</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='sec' or marc:subfield[@code='4']='secretary'">12b7418a-0c90-4337-90b7-16d2d3157b68</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='rtm' or marc:subfield[@code='4']='research team member'">54fd209c-d552-43eb-850f-d31f557170b9</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='fmp' or marc:subfield[@code='4']='film producer'">2665431e-aad4-44d1-9218-04053d1cfd53</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cos' or marc:subfield[@code='4']='contestant'">5aa6e3d1-283c-4f6d-8694-3bdc52137b07</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='rbr' or marc:subfield[@code='4']='rubricator'">0d022d0d-902d-4273-8013-0a2a753d9d76</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ppt' or marc:subfield[@code='4']='puppeteer'">4f7c335d-a9d9-4f38-87ef-9a5846b63e7f</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='csl' or marc:subfield[@code='4']='consultant'">c04ff362-c80a-4543-88cf-fc6e49e7d201</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cpc' or marc:subfield[@code='4']='copyright claimant'">5d92d9de-adf3-4dea-93b5-580e9a88e696</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='hst' or marc:subfield[@code='4']='host'">abfa3014-7349-444b-aace-9d28efa5ede4</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='tlp' or marc:subfield[@code='4']='television producer'">3ed655b0-505b-43fe-a4c6-397789449a5b</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='coe' or marc:subfield[@code='4']='contestant-appellee'">9945290f-bcd7-4515-81fd-09e23567b75d</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='egr' or marc:subfield[@code='4']='engraver'">af9a58fa-95df-4139-a06d-ecdab0b2317e</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ctb' or marc:subfield[@code='4']='contributor'">9f0a2cf0-7a9b-45a2-a403-f68d2850d07c</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='nrt' or marc:subfield[@code='4']='narrator'">2c345cb7-0420-4a7d-93ce-b51fb636cce6</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='mcp' or marc:subfield[@code='4']='music copyist'">66bfc19c-eeb0-4167-bd8d-448311aab929</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cpe' or marc:subfield[@code='4']='complainant-appellee'">6358626f-aa02-4c40-8e73-fb202fa5fb4d</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='aut' or marc:subfield[@code='4']='author'">6e09d47d-95e2-4d8a-831b-f777b8ef6d81</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='eng' or marc:subfield[@code='4']='engineer'">366821b5-5319-4888-8867-0ffb2d7649d1</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cts' or marc:subfield[@code='4']='contestee'">9fc0bffb-6dd9-4218-9a44-81be4a5059d4</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='prp' or marc:subfield[@code='4']='production place'">e2b5ceaf-663b-4cc0-91ba-bf036943ece8</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='crt' or marc:subfield[@code='4']='court reporter'">bd13d6d3-e604-4b80-9c5f-4d68115ba616</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='bkp' or marc:subfield[@code='4']='book producer'">c9c3bbe8-d305-48ef-ab2a-5eff941550e3</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='lel' or marc:subfield[@code='4']='libelee'">61c9f06f-620a-4423-8c78-c698b9bb555f</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dbp' or marc:subfield[@code='4']='distribution place'">d5e6972c-9e2f-4788-8dd6-10e859e20945</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dst' or marc:subfield[@code='4']='distributor'">7b21bffb-91e1-45bf-980a-40dd89cc26e4</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='rse' or marc:subfield[@code='4']='respondent-appellee'">7156fd73-b8ca-4e09-a002-bb2afaaf259a</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='evp' or marc:subfield[@code='4']='event place'">54f69767-5712-47aa-bdb7-39c31aa8295e</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='plt' or marc:subfield[@code='4']='platemaker'">d30f5556-6d79-4980-9528-c48ef60f3b31</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dgs' or marc:subfield[@code='4']='degree supervisor'">825a7d9f-7596-4007-9684-9bee72625cfc</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='prm' or marc:subfield[@code='4']='printmaker'">d6a6d28c-1bfc-46df-b2ba-6cb377a6151e</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='lit' or marc:subfield[@code='4']='libelant-appellant'">52c08141-307f-4997-9799-db97076a2eb3</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='pht' or marc:subfield[@code='4']='photographer'">1aae8ca3-4ddd-4549-a769-116b75f3c773</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='itr' or marc:subfield[@code='4']='instrumentalist'">18ba15a9-0502-4fa2-ad41-daab9d5ab7bb</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='drm' or marc:subfield[@code='4']='draftsman'">33aa4117-95d1-4eb5-986b-dfba809871f6</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='crr' or marc:subfield[@code='4']='corrector'">c8050073-f62b-4606-9688-02caa98bdc60</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='let' or marc:subfield[@code='4']='libelee-appellant'">a5c024f1-3c81-492c-ab5e-73d2bc5dcad7</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='spn' or marc:subfield[@code='4']='sponsor'">38c09577-6652-4281-a391-4caabe4c09b6</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='rth' or marc:subfield[@code='4']='research team head'">44eaf0db-85dd-4888-ac8d-a5976dd483a6</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='fac' or marc:subfield[@code='4']='facsimilist'">036b6349-27c8-4b68-8875-79cb8e0fd459</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='rpy' or marc:subfield[@code='4']='responsible party'">cd06cefa-acfe-48cb-a5a3-4c48be4a79ad</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cwt' or marc:subfield[@code='4']='commentator for written text'">316cd382-a4fe-4939-b06e-e7199bfdbc7a</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='tch' or marc:subfield[@code='4']='teacher'">f72a24d1-f404-4275-9350-158fe3a20b21</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='std' or marc:subfield[@code='4']='set designer'">9e7651f8-a4f0-4d02-81b4-578ef9303d1b</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ard' or marc:subfield[@code='4']='artistic director'">255be0dd-54d0-4161-9c6c-4d1f58310303</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ins' or marc:subfield[@code='4']='inscriber'">f6bd4f15-4715-4b0e-9258-61dac047f106</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='pre' or marc:subfield[@code='4']='presenter'">d04782ec-b969-4eac-9428-0eb52d97c644</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='con' or marc:subfield[@code='4']='conservator'">94bb3440-591f-41af-80fa-e124006faa49</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='rsg' or marc:subfield[@code='4']='restager'">453e4f4a-cda9-4cfa-b93d-3faeb18a85db</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='auc' or marc:subfield[@code='4']='auctioneer'">5c132335-8ad0-47bf-a4d1-6dda0a3a2654</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='pth' or marc:subfield[@code='4']='patent holder'">2cb49b06-5aeb-4e84-8160-79d13c6357ed</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cou' or marc:subfield[@code='4']='court governed'">36b921fe-6c34-45c8-908b-5701f0763e1b</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dln' or marc:subfield[@code='4']='delineator'">e04bea27-813b-4765-9ba1-e98e0fca7101</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='bpd' or marc:subfield[@code='4']='bookplate designer'">9e99e803-c73d-4250-8605-403be57f83f9</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cte' or marc:subfield[@code='4']='contestee-appellee'">f3aa0070-71bd-4c39-9a9b-ec2fd03ac26d</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='uvp' or marc:subfield[@code='4']='university place'">fec9ae68-6b55-4dd6-9637-3a694fb6a82b</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dsr' or marc:subfield[@code='4']='designer'">3665d2dd-24cc-4fb4-922a-699811daa41c</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cpt' or marc:subfield[@code='4']='complainant-appellant'">86890f8f-2273-44e2-aa86-927c7f649b32</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='rsp' or marc:subfield[@code='4']='respondent'">3c3ab522-2600-4b93-a121-8832146d5cdf</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='com' or marc:subfield[@code='4']='compiler'">27aeee86-4099-466d-ba10-6d876e6f293b</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='prc' or marc:subfield[@code='4']='process contact'">5ee1e598-72b8-44d5-8edd-173e7bc4cf8c</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dfd' or marc:subfield[@code='4']='defendant'">e46bdfe3-5923-4585-bca4-d9d930d41148</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='elt' or marc:subfield[@code='4']='electrotyper'">201a378e-23dd-4aab-bfe0-e5bc3c855f9c</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dnr' or marc:subfield[@code='4']='donor'">8fbe6e92-87c9-4eff-b736-88cd02571465</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dtc' or marc:subfield[@code='4']='data contributor'">00311f78-e990-4d8b-907e-c67a3664fe15</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='bdd' or marc:subfield[@code='4']='binding designer'">5f27fcc6-4134-4916-afb8-fcbcfb6793d4</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='rst' or marc:subfield[@code='4']='respondent-appellant'">94b839e8-cabe-4d58-8918-8a5058fe5501</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='lee' or marc:subfield[@code='4']='libelee-appellee'">88a66ebf-0b18-4ed7-91e5-01bc7e8de441</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='spk' or marc:subfield[@code='4']='speaker'">ac0baeb5-71e2-435f-aaf1-14b64e2ba700</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='pfr' or marc:subfield[@code='4']='proofreader'">f9395f3d-cd46-413e-9504-8756c54f38a2</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dto' or marc:subfield[@code='4']='dedicator'">0d2580f5-fe16-4d64-a5eb-f0247cccb129</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='mfr' or marc:subfield[@code='4']='manufacturer'">d669122b-c021-46f5-a911-1e9df10b6542</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dte' or marc:subfield[@code='4']='dedicatee'">0d8dc4be-e87b-43df-90d4-1ed60c4e08c5</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='anl' or marc:subfield[@code='4']='analyst'">396f4b4d-5b0a-4fb4-941b-993ebf63db2e</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='app' or marc:subfield[@code='4']='applicant'">ca3b9559-f178-41e8-aa88-6b2c367025f9</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='lso' or marc:subfield[@code='4']='licensor'">99f6b0b7-c22f-460d-afe0-ee0877bc66d1</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='brl' or marc:subfield[@code='4']='braille embosser'">a986c8f2-b36a-400d-b09f-9250a753563c</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='aud' or marc:subfield[@code='4']='author of dialog'">4b41e752-3646-4097-ae80-21fd02e913f7</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cot' or marc:subfield[@code='4']='contestant-appellant'">0ad74d5d-03b9-49bb-b9df-d692945ca66e</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ptf' or marc:subfield[@code='4']='plaintiff'">2230246a-1fdb-4f06-a08a-004fd4b929bf</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cst' or marc:subfield[@code='4']='costume designer'">e1510ac5-a9e9-4195-b762-7cb82c5357c4</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='jud' or marc:subfield[@code='4']='judge'">41a0378d-5362-4c1a-b103-592ff354be1c</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='wdc' or marc:subfield[@code='4']='woodcutter'">32021771-311e-497b-9bf2-672492f322c7</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='sng' or marc:subfield[@code='4']='singer'">6847c9ab-e2f8-4c9e-8dc6-1a97c6836c1c</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='sll' or marc:subfield[@code='4']='seller'">3179eb17-275e-44f8-8cad-3a9514799bd0</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='mus' or marc:subfield[@code='4']='musician'">08553068-8495-49c2-9c18-d29ab656fef0</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='rcp' or marc:subfield[@code='4']='addressee'">94e6a5a8-b84f-44f7-b900-71cd10ea954e</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cov' or marc:subfield[@code='4']='cover designer'">b7000ced-c847-4b43-8f29-c5325e6279a8</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='edm' or marc:subfield[@code='4']='editor of moving image work'">b1e95783-5308-46b2-9853-bd7015c1774b</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='tyg' or marc:subfield[@code='4']='typographer'">58461dca-efd4-4fd4-b380-d033e3540be5</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='aui' or marc:subfield[@code='4']='author of introduction, etc.'">1f20d444-79f6-497a-ae0d-98a92e504c58</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='bkd' or marc:subfield[@code='4']='book designer'">846ac49c-749d-49fd-a05f-e7f2885d9eaf</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='wac' or marc:subfield[@code='4']='writer of added commentary'">bf1a8165-54bf-411c-a5ea-b6bbbb9c55df</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='gis' or marc:subfield[@code='4']='geographic information specialist'">369783f6-78c8-4cd7-97ab-5029444e0c85</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='asn' or marc:subfield[@code='4']='associated name'">9593efce-a42d-4991-9aad-3a4dc07abb1e</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='str' or marc:subfield[@code='4']='stereotyper'">7e5b0859-80c1-4e78-a5e7-61979862c1fa</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='msd' or marc:subfield[@code='4']='musical director'">e1edbaae-5365-4fcb-bb6a-7aae38bbed9c</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='lil' or marc:subfield[@code='4']='libelant'">ae8bc401-47da-4853-9b0b-c7c2c3ec324d</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='wat' or marc:subfield[@code='4']='writer of added text'">6a983219-b6cd-4dd7-bfa4-bcb0b43590d4</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='bnd' or marc:subfield[@code='4']='binder'">f90c67e8-d1fa-4fe9-b98b-cbc3f019c65f</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='aqt' or marc:subfield[@code='4']='author in quotations or text abstracts'">57247637-c41b-498d-9c46-935469335485</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='enj' or marc:subfield[@code='4']='enacting jurisdiction'">61afcb8a-8c53-445b-93b9-38e799721f82</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='prn' or marc:subfield[@code='4']='production company'">b318e49c-f2ad-498c-8106-57b5544f9bb0</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='pte' or marc:subfield[@code='4']='plaintiff-appellee'">45747710-39dc-47ec-b2b3-024d757f997e</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='wpr' or marc:subfield[@code='4']='writer of preface'">115fa75c-385b-4a8e-9a2b-b13de9f21bcf</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cph' or marc:subfield[@code='4']='copyright holder'">2b7080f7-d03d-46af-86f0-40ea02867362</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='pbl' or marc:subfield[@code='4']='publisher'">a60314d4-c3c6-4e29-92fa-86cc6ace4d56</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='fmk' or marc:subfield[@code='4']='filmmaker'">2129a478-c55c-4f71-9cd1-584cbbb381d4</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ctg' or marc:subfield[@code='4']='cartographer'">22286157-3058-434c-9009-8f8d100fc74a</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='etr' or marc:subfield[@code='4']='etcher'">6ccd61f4-c408-46ec-b359-a761b4781477</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='sht' or marc:subfield[@code='4']='supporting host'">206246b1-8e17-4588-bad8-78c82e3e6d54</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='clt' or marc:subfield[@code='4']='collotyper'">cbceda25-1f4d-43b7-96a5-f2911026a154</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='mfp' or marc:subfield[@code='4']='manufacture place'">a2231628-6a5a-48f4-8eac-7e6b0328f6fe</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='rce' or marc:subfield[@code='4']='recording engineer'">ab7a95da-590c-4955-b03b-9d8fbc6c1fe6</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='scl' or marc:subfield[@code='4']='sculptor'">223da16e-5a03-4f5c-b8c3-0eb79f662bcb</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cli' or marc:subfield[@code='4']='client'">ec0959b3-becc-4abd-87b0-3e02cf2665cc</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='prs' or marc:subfield[@code='4']='production designer'">8210b9d7-8fe7-41b7-8c5f-6e0485b50725</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='pan' or marc:subfield[@code='4']='panelist'">003e8b5e-426c-4d33-b940-233b1b89dfbd</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cmp' or marc:subfield[@code='4']='composer'">901d01e5-66b1-48f0-99f9-b5e92e3d2d15</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ldr' or marc:subfield[@code='4']='laboratory director'">f74dfba3-ea20-471b-8c4f-5d9b7895d3b5</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='lgd' or marc:subfield[@code='4']='lighting designer'">5e9333a6-bc92-43c0-a306-30811bb71e61</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='mte' or marc:subfield[@code='4']='metal-engraver'">8af7e981-65f9-4407-80ae-1bacd11315d5</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='prt' or marc:subfield[@code='4']='printer'">02c1c664-1d71-4f7b-a656-1abf1209848f</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='rps' or marc:subfield[@code='4']='repository'">13361ce8-7664-46c0-860d-ffbcc01414e0</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='trc' or marc:subfield[@code='4']='transcriber'">0eef1c70-bd77-429c-a790-48a8d82b4d8f</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ptt' or marc:subfield[@code='4']='plaintiff-appellant'">68dcc037-901e-46a9-9b4e-028548cd750f</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='pdr' or marc:subfield[@code='4']='project director'">097adac4-6576-4152-ace8-08fc59cb0218</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='prf' or marc:subfield[@code='4']='performer'">246858e3-4022-4991-9f1c-50901ccc1438</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='lbr' or marc:subfield[@code='4']='laboratory'">e603ffa2-8999-4091-b10d-96248c283c04</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dgg' or marc:subfield[@code='4']='degree granting institution'">6901fbf1-c038-42eb-a03e-cd65bf91f660</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='edc' or marc:subfield[@code='4']='editor of compilation'">863e41e3-b9c5-44fb-abeb-a8ab536bb432</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='prd' or marc:subfield[@code='4']='production personnel'">b13f6a89-d2e3-4264-8418-07ad4de6a626</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='oth' or marc:subfield[@code='4']='other'">361f4bfd-a87d-463c-84d8-69346c3082f6</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='pro' or marc:subfield[@code='4']='producer'">81bbe282-dca7-4763-bf5a-fe28c8939988</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='pat' or marc:subfield[@code='4']='patron'">1b51068c-506a-4b85-a815-175c17932448</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='trl' or marc:subfield[@code='4']='translator'">3322b734-ce38-4cd4-815d-8983352837cc</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cur' or marc:subfield[@code='4']='curator'">d67decd7-3dbe-4ac7-8072-ef18f5cd3e09</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='sds' or marc:subfield[@code='4']='sound designer'">1c623f6e-25bf-41ec-8110-6bde712dfa79</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ato' or marc:subfield[@code='4']='autographer'">e8b5040d-a5c7-47c1-96ca-6313c8b9c849</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='stl' or marc:subfield[@code='4']='storyteller'">a3642006-14ab-4816-b5ac-533e4971417a</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='clr' or marc:subfield[@code='4']='colorist'">81c01802-f61b-4548-954a-22aab027f6e5</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cmm' or marc:subfield[@code='4']='commentator'">e0dc043c-0a4d-499b-a8a8-4cc9b0869cf3</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='fpy' or marc:subfield[@code='4']='first party'">26ad4833-5d49-4999-97fc-44bc86a9fae0</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='pup' or marc:subfield[@code='4']='publication place'">2c9cd812-7b00-47e8-81e5-1711f3b6fe38</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='orm' or marc:subfield[@code='4']='organizer'">df7daf2f-7ab4-4c7b-a24d-d46695fa9072</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='wit' or marc:subfield[@code='4']='witness'">ec56cc25-e470-46f7-a429-72f438c0513b</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='mrk' or marc:subfield[@code='4']='markup editor'">168b6ff3-7482-4fd0-bf07-48172b47876c</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cas' or marc:subfield[@code='4']='caster'">468ac852-339e-43b7-8e94-7e2ce475cb00</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='act' or marc:subfield[@code='4']='actor'">7131e7b8-84fa-48bd-a725-14050be38f9f</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='adi' or marc:subfield[@code='4']='art director'">e2a1a9dc-4aec-4bb5-ae43-99bb0383516a</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dft' or marc:subfield[@code='4']='defendant-appellant'">c86fc16d-61d8-4471-8089-76550daa04f0</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='bsl' or marc:subfield[@code='4']='bookseller'">50a6d58a-cea2-42a1-8c57-0c6fde225c93</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ccp' or marc:subfield[@code='4']='conceptor'">3db02638-598e-44a3-aafa-cbae77533ee1</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='scr' or marc:subfield[@code='4']='scribe'">867f3d13-779a-454e-8a06-a1b9fb37ba2a</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='lbt' or marc:subfield[@code='4']='librettist'">6d5779a3-e692-4a24-a5ee-d1ce8a6eae47</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='wal' or marc:subfield[@code='4']='writer of added lyrics'">cb8fdd3f-7193-4096-934c-3efea46b1138</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='lie' or marc:subfield[@code='4']='libelant-appellee'">7d60c4bf-5ddc-483a-b179-af6f1a76efbe</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='csp' or marc:subfield[@code='4']='consultant to a project'">7bebb5a2-9332-4ba7-a258-875143b5d754</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='prv' or marc:subfield[@code='4']='provider'">3b4709f1-5286-4c42-9423-4620fff78141</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ren' or marc:subfield[@code='4']='renderer'">6b566426-f325-4182-ac31-e1c4e0b2aa19</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='res' or marc:subfield[@code='4']='researcher'">fec4d84b-0421-4d15-b53f-d5104f39b3ca</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cre' or marc:subfield[@code='4']='creator'">7aac64ab-7f2a-4019-9705-e07133e3ad1a</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='brd' or marc:subfield[@code='4']='broadcaster'">55e4a59b-2dfd-478d-9fe9-110fc24f0752</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='stm' or marc:subfield[@code='4']='stage manager'">b02cbeb7-8ca7-4bf4-8d58-ce943b4d5ea3</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='aft' or marc:subfield[@code='4']='author of afterword, colophon, etc.'">d517010e-908f-49d6-b1e8-8c1a5f9a7f1c</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ctr' or marc:subfield[@code='4']='contractor'">28f7eb9e-f923-4a77-9755-7571381b2a47</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='adp' or marc:subfield[@code='4']='adapter'">35a3feaf-1c13-4221-8cfa-d6879faf714c</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='win' or marc:subfield[@code='4']='writer of introduction'">53f075e1-53c0-423f-95ae-676df3d8c7a2</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='tyd' or marc:subfield[@code='4']='type designer'">a2c9e8b5-edb4-49dc-98ba-27f0b8b5cebf</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cmt' or marc:subfield[@code='4']='compositor'">c7345998-fd17-406b-bce0-e08cb7b2671f</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='rev' or marc:subfield[@code='4']='reviewer'">85962960-ef07-499d-bf49-63f137204f9a</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='blw' or marc:subfield[@code='4']='blurb writer'">245cfa8e-8709-4f1f-969b-894b94bc029f</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='isb' or marc:subfield[@code='4']='issuing body'">97082157-5900-4c4c-a6d8-2e6c13f22ef1</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='rcd' or marc:subfield[@code='4']='recordist'">b388c02a-19dc-4948-916d-3688007b9a2c</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='stn' or marc:subfield[@code='4']='standards body'">94d131ef-2814-49a0-a59c-49b6e7584b3d</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='sce' or marc:subfield[@code='4']='scenarist'">05875ac5-a509-4a51-a6ee-b8051e37c7b0</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dpt' or marc:subfield[@code='4']='depositor'">7c62ecb4-544c-4c26-8765-f6f6d34031a0</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='wam' or marc:subfield[@code='4']='writer of accompanying material'">913233b3-b2a0-4635-8dad-49b6fc515fc5</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dpc' or marc:subfield[@code='4']='depicted'">d32885eb-b82c-4391-abb2-4582c8ee02b3</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='fld' or marc:subfield[@code='4']='field director'">2576c328-61f1-4684-83cf-4376a66f7731</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='flm' or marc:subfield[@code='4']='film editor'">22f8ea20-b4f0-4498-8125-7962f0037c2d</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dnc' or marc:subfield[@code='4']='dancer'">3bd0b539-4440-4971-988c-5330daa14e3a</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='rsr' or marc:subfield[@code='4']='restorationist'">cf04404a-d628-432b-b190-6694c5a3dc4b</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='exp' or marc:subfield[@code='4']='expert'">764c208a-493f-43af-8db7-3dd48efca45c</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='prg' or marc:subfield[@code='4']='programmer'">b47d8841-112e-43be-b992-eccb5747eb50</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='sgd' or marc:subfield[@code='4']='stage director'">c0c46b4f-fd18-4d8a-96ac-aff91662206c</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='vac' or marc:subfield[@code='4']='voice actor'">1ce93f32-3e10-46e2-943f-77f3c8a41d7d</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='elg' or marc:subfield[@code='4']='electrician'">5b2de939-879c-45b4-817d-c29fd16b78a0</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='drt' or marc:subfield[@code='4']='director'">12101b05-afcb-4159-9ee4-c207378ef910</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ivr' or marc:subfield[@code='4']='interviewer'">eecb30c5-a061-4790-8fa5-cf24d0fa472b</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='wst' or marc:subfield[@code='4']='writer of supplementary textual content'">7c5c2fd5-3283-4f96-be89-3bb3e8fa6942</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='mod' or marc:subfield[@code='4']='moderator'">e79ca231-af4c-4724-8fe1-eabafd2e0bec</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='tld' or marc:subfield[@code='4']='television director'">af09f37e-12f5-46db-a532-ccd6a8877f2d</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='lse' or marc:subfield[@code='4']='licensee'">a8d59132-aa1e-4a62-b5bd-b26b7d7a16b9</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='pbd' or marc:subfield[@code='4']='publishing director'">2d046e17-742b-4d99-8e25-836cc141fee9</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='tcd' or marc:subfield[@code='4']='technical director'">0efdaf72-6126-430a-8256-69c42ff6866f</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='edt' or marc:subfield[@code='4']='editor'">9deb29d1-3e71-4951-9413-a80adac703d0</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='anm' or marc:subfield[@code='4']='animator'">b998a229-68e7-4a3d-8cfd-b73c10844e96</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='pta' or marc:subfield[@code='4']='patent applicant'">630142eb-6b68-4cf7-8296-bdaba03b5760</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='cnd' or marc:subfield[@code='4']='conductor'">a79f874f-319e-4bc8-a2e1-f8b15fa186fe</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ant' or marc:subfield[@code='4']='bibliographic antecedent'">ced7cdfc-a3e0-47c8-861b-3f558094b02e</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='lsa' or marc:subfield[@code='4']='landscape architect'">3c1508ab-fbcc-4500-b319-10885570fe2f</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ill' or marc:subfield[@code='4']='illustrator'">3add6049-0b63-4fec-9892-e3867e7358e2</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='att' or marc:subfield[@code='4']='attributed name'">d836488a-8d0e-42ad-9091-b63fe885fe03</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='sad' or marc:subfield[@code='4']='scientific advisor'">c5988fb2-cd21-469c-b35e-37e443c01adc</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='mtk' or marc:subfield[@code='4']='minute taker'">002c0eef-eb77-4c0b-a38e-117a09773d59</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ive' or marc:subfield[@code='4']='interviewee'">e7e8fc17-7c97-4a37-8c12-f832ddca7a71</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='frg' or marc:subfield[@code='4']='forger'">06fef928-bd00-4c7f-bd3c-5bc93973f8e8</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='dfe' or marc:subfield[@code='4']='defendant-appellee'">3ebe73f4-0895-4979-a5e3-2b3e9c63acd6</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='led' or marc:subfield[@code='4']='lead'">d791c3b9-993a-4203-ac81-3fb3f14793ae</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='vdg' or marc:subfield[@code='4']='videographer'">c6005151-7005-4ee7-8d6d-a6b72d25377a</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='lyr' or marc:subfield[@code='4']='lyricist'">398a0a2f-752d-4496-8737-e6df7c29aaa7</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='acp' or marc:subfield[@code='4']='art copyist'">c9d28351-c862-433e-8957-c4721f30631f</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='spy' or marc:subfield[@code='4']='second party'">2fba7b2e-26bc-4ac5-93cb-73e31e554377</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='stg' or marc:subfield[@code='4']='setting'">3e86cb67-5407-4622-a540-71a978899404</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='abr' or marc:subfield[@code='4']='abridger'">28de45ae-f0ca-46fe-9f89-283313b3255b</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='med' or marc:subfield[@code='4']='medium'">a7a25290-226d-4f81-b780-2efc1f7dfd26</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='opn' or marc:subfield[@code='4']='opponent'">300171aa-95e1-45b0-86c6-2855fcaf9ef4</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='fmd' or marc:subfield[@code='4']='film director'">f5f9108a-9afc-4ea9-9b99-4f83dcf51204</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='pra' or marc:subfield[@code='4']='praeses'">08cb225a-302c-4d5a-a6a3-fa90850babcd</xsl:when>
      <xsl:when test="marc:subfield[@code='4']='ape' or marc:subfield[@code='4']='appellee'">f0061c4b-df42-432f-9d1a-3873bb27c8e6</xsl:when>
      <xsl:otherwise>9f0a2cf0-7a9b-45a2-a403-f68d2850d07c</xsl:otherwise> <!-- 'contributor' -->
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
