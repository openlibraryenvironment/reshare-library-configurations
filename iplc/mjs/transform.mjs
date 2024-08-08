/*
  Subfield guide: a: location, b: barcode, c: callNumber, d: callNumberType, g: copy, k: numberOfPieces, u: chronology, v: volume, w: yearCaption, x: itemMaterialType, y: itemId
*/

const localFields = {
  'US-CST': {
    tag: '999',
    subs: { a: 'm,l', b: 'i', c: 'a', d: 'w', k: 'j', x: 't', y: 'i' },
    lendLocs: ['ARS STACKS', 'ART STACKS', 'EARTH-SCI ATLASES', 'EARTH-SCI MEZZANINE', 'EARTH-SCI STACKS', 'EARTH-SCI TECH-RPTS', 'EAST-ASIA CHINESE', 'EAST-ASIA JAPANESE', 'EAST-ASIA KOREAN', 'EDUCATION STACKS', 'EDUCATION STORAGE', 'GREEN CALIF-DOCS', 'GREEN FED-DOCS', 'GREEN FOLIO-FLAT', 'GREEN INTL-DOCS', 'GREEN STACKS', 'MUSIC FOLIO', 'MUSIC MINIATURE', 'MUSIC SCORES', 'MUSIC STACKS', 'SAL SAL-ARABIC', 'SAL SAL-FOLIO', 'SAL SAL-PAGE', 'SAL SALTURKISH', 'SAL SOUTH-MEZZ', 'SAL STACKS', 'SAL3 STACKS', 'SCIENCE STACKS'],
    lendItypes: ['STKS-MONO', 'STKS', 'EASTK-DOC', 'ATLAS', 'THESIS', 'THESIS-EXP', 'GOVSTKS', 'SCORE'],
    lendFunc: function (rec, lf) {
      let f919 = rec['919'] || [];
      let policy = null;
      if (f919[0]) {
        let subs = getSubs(f919[0]);
        if (subs.a && subs.a[0].match(/exclude from BorrowDirect/i)) {
          policy = 'UNLOANABLE';
        }
      }
      if (!policy && lf) {
        let sf = getSubs(lf);
        if (sf.c && sf.c[0].match(/^3781/)) policy = 'UNLOANABLE'
      }
      return policy;
    }
  },
  'US-CTY': {
    tag: '852',
    linkedField: '876',
    linkSub: '8',
    subs: { a: 'b', b: '876p', c: 'h,i', g: '876t', v: '8763', x: '876h', y: '876a' },
    lendLocs: ["art","artcirc","ast","ccl","cclger","cclgraph","chem","csssi","div","divdmr","divrrus","dra","engn","fes","fesover","geo","ksl","kslant","kslantc","kslanto","kslstks","lsf","lsfart","lsfast","lsfbaby","lsfche","lsfchem","lsfcla","lsfcsssi","lsfdiv","lsfdra","lsfeng","lsfeph","lsffes","lsffor","lsffs","lsfgdc","lsfgeo","lsfjud","lsfksl","lsfkslant","lsflamc","lsfmap","lsfmarx","lsfmath","lsfmed","lsfmtn","lsfmus","lsfnea","lsfnum","lsfsem","lsfsla","lsfslar","lsfsmlaris","lsfsmlasi","lsfsmlear","lsfsmlphi","lsfssl","lsfsslc","lsfstat","lsftib","marx","math","med","medbiog","medhs","medhum","medrefchc","medrefec","medrefeol","mus","musrec","sml","smleng","smljud","smllnb","smllnbm","smllts","smlmic","smlnea","ssl","sslegc"],
    lendItypes: ['artcirc', 'artjourcirc', 'cd', 'circ', 'dvd', 'jour', 'jour00', 'jour01', 'jour02', 'jour03', 'jour04', 'jour05', 'jour06', 'jour07', 'jour08', 'jour09', 'jour10', 'jour11', 'jour93 - DO NOT USE', 'jour94 - DO NOT USE', 'jour95 - DO NOT USE', 'jour96 - DO NOT USE', 'jour97', 'jour98', 'jour99', 'jourcirc', 'lsfc', 'media']
  },
  'US-ICU': {
    tag: '927',
    subs: { a: 'c', b: 'b', c: 'a', d: 't', v: 'v', y: 'i' },
    lendLocs: ["ASR-JRLASR","ASR-LawASR","ASR-RecASR","ASR-SciASR","DLL-Law","DLL-LawAid","DLL-LawAnxN","DLL-LawAnxS","DLL-LawCat","DLL-LawCity","DLL-LawDisp","DLL-LawFul","DLL-LawMic","DLL-LawPer","DLL-LawWell","Eck-Eck","JCL-Games","JCL-SFilm","JCL-SMedia","JCL-Sci","JCL-SciDDC","JCL-SciLg","JRL-CJK","JRL-Film","JRL-Gen","JRL-GenHY","JRL-LawMicG","JRL-Mic","JRL-Pam","JRL-SMicDDC","JRL-SciMic","JRL-W","JRL-WCJK","JRL-XClosedCJK","JRL-XClosedGen","SWL-SWL","SWL-SWLDiss","SWL-SWLMEd","SWL-SWLMic"]
  },
  'US-MH': {
    tag: '876',
    subs: { a: 'l,m', b: 'p', c: 'n', d: '7', x: 'h,y', y: '0' },
    lendLocs: ["BAK CORE","BAK OVERS","BAK STLC","CAB HD","CAB RD","DES GEN","DES HD","DES OVERS","DES RD","DIV FOL","DIV GEN","DIV HD","DIV OLDD","DIV OLDDF","DIV OLDDP","FAL HD","FAL RD","FAL RUBHD","FAL RUBRD","GUT GEN","GUT HD","GUT HDMED","GUT JUV","GUT NBS","GUT RD","HYL C","HYL GEN","HYL HD","HYL HDC","HYL HDJ","HYL HDK","HYL HDV","HYL HDW","HYL J","HYL K","HYL RD","HYL RDC","HYL RDJ","HYL RDK","HYL RDV","HYL RDW","HYL V","HYL W","KSG GEN","KSG HD","KSG RD","LAM FARNS","LAM GEN","LAM MRSCD","LAM MRSDV","LAW GEN","LAW HD","LAW ILS","LAW RD","MCZ GEN","MCZ HERP","MCZ MOLL","MCZ TS","MED GEN","MED HD","MED HIM","MED RD","MUS GEN","MUS HD","MUS NBS","MUS RD","MUS SEEG","TOZ GEN","TOZ HD","TOZ HDLC","TOZ RD","TOZ RDLC","TOZ TOZLC","WID GEN","WID HD","WID RD","WID SLAV","WID TIBET","WID WIDHE","WID WIDLC","WID WIDME","WID WIDYI"],
    lendItypes: ['01 BOOK', '01 ISSBD', '01 CD', '01 SCORE', '01 BLURAY', '01 DVD', 'BOOK', 'ISSBD', 'CD', 'SCORE', 'BLURAY', 'DVD']
  },
  'US-MCM': {
    tag: '985',
    subs: { a: 'i,aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a' },
    lendLocs: ["DEW IMPLS","DEW MEDIA","DEW OVRSZ","DEW STACK","ENG BRWS","ENG OVRSZ","ENG STACK","HUM BRWS","HUM BYABOUTMIT","HUM COLL_HIGH","HUM GRNVL","HUM MEDIA","HUM OVRSZ","HUM STACK","HUM TRAVL","LSA STACK","MUS BRWS","MUS MEDIA","MUS OVRSZ","MUS STACK","RTC BRWS","RTC STACK","SCI BRWS","SCI MEDIA","SCI OVRSZ","SCI STACK"]
  },
  'US-MDBJ': {
    tag: '991',
    subs: { a: 'c,d', b: 'a', c: 'f', d: 'e', g: 'g', k: 'k', x: 'b', y: 'j' },
    lendLocs: ['AFL aflavc', 'AFL aflavm', 'AFL aflbk', 'AFL aflsco', 'AFL aflscomin', 'LSC aflof', 'LSC shmoffs', 'LSC welbklsc', 'LSC welprcblsc', 'ShDC shdbook', 'ShMSEL shmavbd', 'ShMSEL shmblue', 'ShMSEL shmmain', 'ShMSEL shmotech', 'wwelch welbks5', 'wwelch wellilbk5'],
    lendItypes: ['aflavac', 'aflavaclc', 'aflavcd', 'aflavcdlc', 'aflavpd', 'aflavvc', 'aflavvd', 'aflmicr', 'aflmisc', 'aflscoit', 'aflscomini', 'jhav', 'jhbooks']
  },
  'US-NHD': {
    tag: '950',
    subs: { a: 'l,s', b: 'z', c: 'c', d: 't', k: 'f', x: 'm', y: 'i' },
    lendLocs: ['BAKER CD', 'BAKER CDROM1', 'BAKER COOK', 'BAKER COOK EASY', 'BAKER COOKOVRSIZ', 'BAKER COOKTHESIS', 'BAKER CPRBALCONY', 'BAKER DEWEY', 'BAKER DVDROM', 'BAKER EAFOLIO', 'BAKER EAOVRSIZE', 'BAKER EASTASIAN', 'BAKER EASTREADRM', 'BAKER EVANS', 'BAKER EVANSCDROM', 'BAKER EVANSCIA', 'BAKER EVANSCLER', 'BAKER EVANSDSKET', 'BAKER EVANSDVDRM', 'BAKER EVANSREF', 'BAKER EVANSRFCDR', 'BAKER EVANSSPEC', 'BAKER EVANSVDDSC', 'BAKER FELDATBKR', 'BAKER FELDJBKR', 'BAKER FOLIO', 'BAKER GOVDOCS', 'BAKER HARVARDCOL', 'BAKER ILLOFFICE', 'BAKER JAPAN', 'BAKER JPNOVRSIZE', 'BAKER KOREA', 'BAKER KOROVERSIZ', 'BAKER MINISCORE', 'BAKER MUSICTHES', 'BAKER MUSREF', 'BAKER NASH', 'BAKER NASH FOLIO', 'BAKER NASHOVRSIZ', 'BAKER NOTCATRSRV', 'BAKER OLD DART', 'BAKER OVERSIZE', 'BAKER PHYSSCIJOU', 'BAKER PHYSSCITHE', 'BAKER POPSCI', 'BAKER RESERVEFCH', 'BAKER RESERVEFLM', 'BAKER STACKS', 'BAKER TOWERROOM', 'BAKER TOWERROOMS', 'BAKER TOWERROOMT', 'BAKER VCD', 'DANA DVD', 'DANA STACKS', 'DANA THESIS', 'DEPOSITORY BAKER', 'DEPOSITORY COOK', 'DEPOSITORY DANA', 'DEPOSITORY DEPOSITORY', 'DEPOSITORY FELDBERG', 'DEPOSITORY KRESGE', 'DEPOSITORY MFHSL', 'DEPOSITORY PADDOCK', 'DEPOSITORY SHERMAN', 'FELDBERG FELDJTUCK', 'FELDBERG MEM', 'FELDBERG STACKS', 'FELDBERG THESIS', 'JONES CDROM', 'JONES COMPACTDSC', 'JONES DISKETTE', 'JONES DVD', 'JONES DVDROM', 'JONES MUSICCD', 'JONES MUSICCDROM', 'JONES MUSICDVD', 'JONES MUSICDVDRO', 'JONES PHONOTAPE', 'JONES VCD', 'JONES VIDEOTAPE', 'KRESGE CDROM', 'KRESGE DVDROM', 'KRESGE ICNGRAPHY', 'KRESGE OVERSIZE', 'KRESGE POPSCI', 'KRESGE STACKS', 'KRESGE THESIS', 'MFHSL CDROM', 'MFHSL CHCD', 'MFHSL CHDVD', 'MFHSL CHVIDTAPE', 'MFHSL CONSHEALTH', 'MFHSL DVD', 'MFHSL DVDROM', 'MFHSL SLIDE', 'MFHSL STACKS', 'MFHSL VIDEOTAPE', 'PADDOCK CDROM', 'PADDOCK COMPACTDSC', 'PADDOCK DVD', 'PADDOCK DVDROM', 'PADDOCK MICROFILM', 'PADDOCK PHONODISC', 'PADDOCK PHONOTAPE', 'PADDOCK STACKS', 'PADDOCK THESIS', 'PADDOCK VCD', 'PADDOCK VIDEODISC', 'PADDOCK VIDEOTAPE', 'SHERMAN FOLIO', 'SHERMAN OVERSIZE', 'SHERMAN READRM', 'SHERMAN STACKS']
  },
  'US-NIC': {
    tag: '852',
    linkedField: '890',
    linkSub: '0',
    subs: { a: '890l', b: '890b', c: 'k,h,m', d: '2', k: '890n', u: '890c', v: '890e', w: '890y', x: '890t', y: '890a' },
    lendLocs: ['Ent,anx', 'afr', 'afr,anx', 'asia', 'asia,anx', 'asia,av', 'ech', 'ech,anx', 'ech,av', 'engr', 'engr,anx', 'engr,ref', 'ent', 'fine', 'fine,anx', 'gnva', 'gnva,anx', 'hote', 'hote,anx', 'ilr', 'ilr,anx', 'jgsm,anx', 'law', 'law,anx', 'mann', 'mann,anx', 'mann,anxt', 'math', 'math,anx', 'math,desk', 'mus', 'mus,anx', 'oclc,olim', 'olin', 'olin,anx', 'olin,av', 'orni,anx', 'phys,anx', 'rmc,ice', 'sasa', 'sasa,anx', 'sasa,av', 'uris', 'uris,anx', 'vet', 'vet,anx', 'was', 'was,anx', 'was,av']
  },
  'US-NJP': {
    tag: '876',
    subs: { a: 'e,f', b: 'p', c: 'h', d: 'g', x: 'b', v: '3', y: 'a' },
    lendLocs: ['firestone stacks', 'recap pa']
  },
  'US-NCD': {
    tag: '940',
    subs: { a: 'b,c', b: 'p', c: 'h', d: 'd', x: 'r', y: 'k' },
    lendLocs: ['LSC PSB', 'LSC PSBF', 'LSC PSBQ', 'LSC PSD', 'LSC PSDF', 'LSC PSDQ', 'LSC PSDV', 'LSC PSK', 'LSC PSKC', 'LSC PSK2', 'LSC PSK6', 'LSC PSKE', 'LSC PSKEF', 'LSC PSKEQ', 'LSC PSKF', 'LSC PSKJ', 'LSC PSKL', 'LSC PSKN', 'LSC PSKOH', 'LSC PSKQ', 'LSC PSKL', 'LSC PSKLF', 'LSC PSV', 'LSC PSZ', 'MUSIC PMMS', 'MUSIC PMMS9', 'MUSIC PM', 'MUSIC PM9', 'MUSIC PMF', 'MUSIC PMF9', 'MUSIC PMT', 'MUSIC PMTF', 'PERKN PKE', 'PERKN PKEF', 'PERKN PK', 'PERKN PK2', 'PERKN PKQ', 'PERKN PKFF', 'PERKN PKF', 'PERKN PKT', 'LAW LALUI', 'LAW LCHRI', 'LAW LCOX', 'LAW LEMP', 'LAW LGEN']
  },
  'US-NNC': {
    tag: '852',
    linkedField: '876',
    linkSub: '0',
    subs: { a: 'b', b: '876p', c: 'h', d: 'j', v: '8763', y: '876a' },
    lendLocs: ["bar","bar,four","bar,medi","bar,new","bar,over","bar,three","bar,two","bar,znz","bmc","bus","docs","eal","eax","glg","glx","glx,pre","gnc","hsl","jou","leh","mil","msc","msr","mus","mvr","off,bio","off,bus","off,docs","off,eal","off,eax","off,eng","off,glg","off,glx","off,gnc","off,gsc","off,hsl","off,jou","off,leh","off,mat","off,msr","off,mus","off,mvr","off,phy","off,psy","off,sci","off,swx","off,uts","off,war","pat","sci","swx","uts","uts,unn"]
  },
  'US-PU': {
    tag: '995',
    subs: { a: 'i,aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a' },
    lendLocs: ['AnnenLib annb', 'AnnenLib annbcirc', 'AnnenLib annbgovt', 'AnnenLib annbinde', 'AnnenLib annbnewbk', 'AnnenLib annbrefe', 'AnnenLib annbrese', 'AnnenLib annbthes', 'BatesCntr nursarch', 'BiomLib biom', 'BiomLib biomhist', 'BiomLib biomlibr', 'BiomLib biomperi', 'BiomLib biomrede', 'BiomLib biomrefe', 'BiomLib biomrese', 'ChemLib chcirc', 'ChemLib chem', 'ChemLib chemnewbk', 'ChemLib chemrdrm', 'ChemLib chemrefe', 'ChemLib chemrese', 'DentalLib dent', 'DentalLib dentnewbks', 'DentalLib dentrare', 'DentalLib dentrefe', 'DentalLib dentrese', 'DentalLib dentshils', 'DentalLib dncirc', 'FisherFAL fine', 'FisherFAL finerefe', 'FisherFAL facirc', 'FisherFAL fanewbook', 'FisherFAL finecage', 'FisherFAL finecirc', 'FisherFAL finecore', 'FisherFAL finelock', 'FisherFAL finerare', 'FisherFAL finerese', 'FisherFAL fineslid', 'FisherFAL finestudio', 'KatzLib cjs', 'KatzLib cjsambx', 'KatzLib cjsarc', 'KatzLib cjsarcms', 'KatzLib cjsarcths', 'KatzLib cjsbox1', 'KatzLib cjsbox2', 'KatzLib cjsbox3', 'KatzLib cjscdrom', 'KatzLib cjsdir', 'KatzLib cjsencyc', 'KatzLib cjsfol', 'KatzLib cjshur', 'KatzLib cjsinproc', 'KatzLib cjsinprocn', 'KatzLib cjsmar', 'KatzLib cjsmemor', 'KatzLib cjsmini', 'KatzLib cjsoffice', 'KatzLib cjsover', 'KatzLib cjspergal', 'KatzLib cjsrar', 'KatzLib cjsraram', 'KatzLib cjsrarbx1', 'KatzLib cjsrarbx2', 'KatzLib cjsrarfol', 'KatzLib cjsrarmini', 'KatzLib cjsrarms', 'KatzLib cjsrarover', 'KatzLib cjsref', 'KatzLib cjsreffol', 'KatzLib cjsreffol+', 'KatzLib cjsspec', 'Libra storfine', 'Libra storm', 'Libra stor', 'Libra storcirc', 'Libra UNASSIGNED', 'LippLib lipp', 'LippLib lippbtrend', 'LippLib lipplipm', 'LippLib lipppeck', 'LippLib lipprefdsk', 'LippLib lipprefe', 'LippLib lipprese', 'LippLib lippreseds', 'LippLib UNASSIGNED', 'MPALib math', 'MPALib mathcirc', 'MPALib mathnewbk', 'MPALib mathperi', 'MPALib mathrese', 'MuseumLib muse', 'MuseumLib museegyp', 'MuseumLib museover', 'MuseumLib muserefe', 'MuseumLib musebrin', 'MuseumLib musedesk', 'MuseumLib museegypov', 'MuseumLib musefolio', 'MuseumLib muselock', 'MuseumLib muserese', 'MusicLib musicsem', 'MusicLib musiclist', 'MusicLib musicrese', 'MusicLib musictech', 'MusicLib musinwbk', 'MusicLib musisemres', 'PAHospLib pah', 'PAHospLib pahhist', 'PAHospLib pahiph', 'PAHospLib pahiphf', 'PAHospLib pahiphhist', 'PAHospLib pahiphref', 'PAHospLib pahiphrr', 'PAHospLib pahiphstk', 'PAHospLib pahref', 'PAHospLib pahres', 'VanPeltLib sasiarefe', 'VanPeltLib vprefbip', 'VanPeltLib easiaover', 'VanPeltLib eastasia', 'VanPeltLib vanp', 'VanPeltLib vpnewbook', 'VanPeltLib yarn', 'VanPeltLib easiacmx', 'VanPeltLib easiasem', 'VanPeltLib mideast', 'VanPeltLib slavic', 'VanPeltLib vanpinfo', 'VanPeltLib vanpmicro', 'VanPeltLib vanporig', 'VanPeltLib vanpvideo', 'VanPeltLib vpcirc', 'VanPeltLib vpreffin', 'VanPeltLib vprefmoel', 'VanPeltLib vpresdesk', 'VanPeltLib vpwicref', 'VanPeltLib women', 'VanPeltLib woody', 'VanPeltLib afro', 'VanPeltLib classics', 'VanPeltLib judaica', 'VanPeltLib medieval', 'VanPeltLib vpref', 'VanPeltLib vprefover', 'VetNBLib newb', 'VetNBLib newbofc', 'VetNBLib newbrare', 'VetNBLib newbrese', 'VetPennLib vete', 'VetPennLib vetedisp', 'VetPennLib vetelibr', 'VetPennLib veteover', 'VetPennLib veterefe', 'VetPennLib veterese', 'VetPennLib veteresov']
  },
  'US-RPB': {
    tag: '876',
    subs: { a: 'i,aa', b: 's', c: 'bb', d: 'j', y: 'a' },
    lendLocs: ['ORWIG STACKS', 'ROCK CHINESE', 'ROCK CUTTER_K', 'ROCK JAPANESE', 'ROCK KOREAN', 'ROCK RKSTORAGE', 'ROCK STACKS', 'ROCK STOR_THES', 'ROCK STORAGE', 'SCIENCE STACKS']
  }
};

function getSubs(field) {
  let subs = {};
  field.subfields.forEach(s => {
    let code = Object.keys(s);
    if (!subs[code]) subs[code] = [];
    subs[code].push(s[code]);
  });
  return subs;
}

export function cluster_transform(clusterStr) {
  let now = new Date().toISOString();
  now = now.replace(/^(\d{4})-(\d\d)-(\d\d).*/, '$1$2$3000000.0')
  const f005 = now;
  let cluster = JSON.parse(clusterStr);
  let crecs = cluster.records;
  const out = {}
  let fields = [];
  const f001 = cluster.clusterId;
  let f008 = '';
  let f999s = [];
  let tiSeen = 0;
  let outItems = [];
  for (let x = 0; x < crecs.length; x++) {
    let crec = crecs[x];
    let sid = crec.sourceId;
    let lid = crec.localId;
    let rec = crec.payload.marc;
    out.leader = rec.leader;

    // figure out mtypes from leader codes
    let mt = rec.leader.substring(6, 7);
    let bl = rec.leader.substring(7, 8);
    let mtype = '';
    if (bl.match(/[sb]/)) {
      mtype = 'CNR';
    } else if (mt.match(/[at]/)) {
      mtype = 'BKS';
    } else if (mt === 'm') {
      mtype = 'COM';
    } else if (mt.match(/[ef]/)) {
      mtype = 'MAP';
    } else if (mt.match(/[cd]/)) {
      mtype = 'SCO';
    } else if (mt.match(/[if]/)) {
      mtype = 'REC';
    } else if (mt === 'g') {
      mtype = 'VIS';
    } else {
      mtype = 'MIX';
    }

    let recFields = {};
    for (let y = 0; y < rec.fields.length; y++) {
      let field = rec.fields[y];
      let tag = Object.keys(field)[0];
      if (!recFields[tag]) recFields[tag] = [];
      recFields[tag].push(field[tag]);
      if ((tag > '009' && tag < '831') || tag.match(/^88./)) {
        if (tag !== '245' || tag === '245' && !tiSeen) {
          let fkey = JSON.stringify(field);
          fkey = fkey.replace(/,{"(=|0)":".*?"}/, ''); // remove and local authority links from record.
          fkey = fkey.replace(/\."\}/, '"}');
          if (!fkey.match(/\uFFFD/) || tag === '245') fields.push(fkey);
        }
        if (tag === '245') tiSeen = 1;
      }
      if (tag === '008') f008 = field['008'];
    }
    let controlNumber = (recFields['001']) ? recFields['001'][0] : lid;
    if (sid === 'US-NCD') {
      controlNumber = controlNumber.replace(/^DUKE/, '');
    }
    let f999 = {
      ind1: '1',
      ind2: '0',
      subfields: [
        { i: cluster.clusterId },
        { l: controlNumber },
        { s: sid }
      ]
    };
    for (let a = 0; a < cluster.matchValues.length; a++) {
      f999.subfields.push({ m: cluster.matchValues[a] });
    }
    f999s.push({ '999': f999 });

    // normalized item fields
    let lf = localFields[sid];
    if (lf) {
      let items = recFields[lf.tag] || [];
      let linkedFields = {};
      if (lf.linkedField) {
        let extra = recFields[lf.linkedField] || [];
        for (let e = 0; e < extra.length; e++) {
          let exField = extra[e];
          let esubs = getSubs(exField);
          let link = esubs[lf.linkSub];
          linkedFields[link] = exField;
        }
      }
      for (let i = 0; i < items.length; i++) {
        let item = items[i];
        let outItem = {
          '999': {
            ind1: 1,
            ind2: 1,
            subfields: [
              { l: controlNumber },
              { s: 'ISIL:' + sid },
              { t: mtype }
            ]
          }
        }
        let subData = getSubs(item);
        let location = '';
        let itype = '';
        for (let c in lf.subs) {
          if (lf.linkSub && lf.subs[c].match(/^\w{3}/)) {
            let lsf = lf.subs[c].substring(3);
            let linkDat = subData[lf.linkSub];
            if (linkDat) {
              let linkedItem = linkedFields[linkDat];
              let linkedSubs = (linkedItem) ? getSubs(linkedItem) : {};
              let linkedData = linkedSubs[lsf] || [];
              if (linkedData[0]) {
                let linkedSubField = {};
                if (c === 'a') location = linkedData[0];
                if (c === 'x') itype = linkedData[0];
                linkedSubField[c] = linkedData[0];
                outItem['999'].subfields.push(linkedSubField);
              }
            }
          }
          let codes = lf.subs[c].split(',');
          let fdata = [];
          for (let x = 0; x < codes.length; x++) {
            let code = codes[x];
            if (subData[code]) {
              let res = subData[code].join(' ');
              fdata.push(res);
            }
          }
          let text = fdata.join(' ');
          if (text) {
            let obj = {};
            obj[c] = text;
            outItem['999'].subfields.push(obj);
          }
          if (!location && c === 'a') {
            location = text;
          }
          if (!itype && c === 'x') {
            itype = text;
          }
        }

        let policy = '';
        if (lf.lendLocs && lf.lendItypes) {
          policy = (lf.lendLocs.indexOf(location) > -1 && lf.lendItypes.indexOf(itype) > -1) ? 'LOANABLE' : 'UNLOANABLE';
        } else if (lf.lendLocs) {
          policy = (lf.lendLocs.indexOf(location) > -1) ? 'LOANABLE' : 'UNLOANABLE';
        } else {
          policy = 'UNLOANABLE';
        }
        if (lf.lendFunc) {
          policy = lf.lendFunc(recFields, outItem['999']) || policy;
        }
        outItem['999'].subfields.push({ p: policy });
        outItems.push(outItem);
      }
    }
  }
  fields.sort();
  let preKey = '';
  out.fields = [];
  for (let z = 0; z < fields.length; z++) {
    let fkey = fields[z] || '';
    if (fkey != preKey) {
      let fobj = JSON.parse(fkey);
      out.fields.push(fobj);
    }
    preKey = fkey;
  }
  out.leader = out.leader.replace(/^....../, '00000n');
  out.fields.unshift({ '008': f008 });
  out.fields.unshift({ '005': f005 });
  out.fields.unshift({ '001': f001 });
  out.fields.push(...f999s);
  out.fields.push(...outItems);
  return JSON.stringify(out, null, 2);
}

export const settings = localFields;
