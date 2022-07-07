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
    subs: { a: 'b', b: '876p', c: 'hi', g: '876t', v: '8763', x: '876h', y: '876a' },
    lendLocs: ['art', 'artcirc', 'ccl', 'cclger', 'cclgraph', 'chem', 'csssi', 'div', 'divdmr', 'divrrus', 'dra', 'engn', 'fes', 'fesover', 'geo', 'ksl', 'kslant', 'kslantc', 'kslanto', 'kslstks', 'lsf', 'lsfart', 'lsfbaby', 'lsfche', 'lsfchem', 'lsfcla', 'lsfcsssi', 'lsfdiv', 'lsfdra', 'lsfeng', 'lsfeph', 'lsffes', 'lsffor', 'lsffs', 'lsfgdc', 'lsfgeo', 'lsfjud', 'lsfksl', 'lsfkslant', 'lsflamc', 'lsfmarx', 'lsfmath', 'lsfmed', 'lsfmtn', 'lsfmus', 'lsfnea', 'lsfnum', 'lsfsem', 'lsfsla', 'lsfslar', 'lsfsmlaris', 'lsfsmlasi', 'lsfsmlear', 'lsfsmlphi', 'lsfssl', 'lsfsslc', 'lsfstat', 'lsftib', 'marx', 'math', 'med', 'medbiog', 'medhs', 'medhum', 'medrefchc', 'medrefec', 'medrefeol', 'mus', 'musrec', 'sml', 'smleng', 'smljud', 'smllnb', 'smllnbm', 'smlnea', 'ssl', 'sslegc'],
    lendItypes: ['jour02', 'jour03', 'jour04', 'jour05', 'jour06', 'jour07', 'jour08', 'jour09', 'jour10', 'jour11', 'jour93 - DO NOT USE', 'jour94 - DO NOT USE', 'jour95 - DO NOT USE', 'jour96 - DO NOT USE', 'jour97', 'jour98', 'jour99', 'jourcirc', 'lsfc', 'media']
  },
  'US-ICU': {
    tag: '927',
    subs: { a: 'c', b: 'b', c: 'a', d: 't', v: 'v', y: 'i' },
    lendLocs: ['ASR-JRLASR', 'ASR-LawASR', 'ASR-LawSupr', 'ASR-RecASR', 'ASR-SciASR', 'DLL-Law', 'DLL-LawCity', 'DLL-LawDisp', 'DLL-LawFul', 'DLL-LawMic', 'DLL-LawPer', 'DLL-LawWell', 'Eck-Eck', 'JCL-Games', 'JCL-Sci', 'JCL-SciDDC', 'JCL-SciLg', 'JCL-SFilm', 'JCL-SMedia', 'JRL-CJK', 'JRL-Film', 'JRL-Gen', 'JRL-GenHY', 'JRL-LawMicG', 'JRL-Mic', 'JRL-Pam', 'JRL-SciMic', 'JRL-SMicDDC', 'JRL-W', 'JRL-WCJK', 'JRL-XClosedCJK', 'JRL-XClosedGen', 'SWL-SWL', 'SWL-SWLMic']
  },
  'US-MH': {
    tag: '876',
    subs: { a: 'l,m', b: 'p', c: 'n', d: '7', x: 'h,y', y: '0' },
    lendLocs: ['DIV FOL', 'DIV HD', 'DIV HDSPF', 'DIV HDSPP', 'DIV OLDD', 'DIV OLDDF', 'DIV OLDDP', 'DIV GEN', 'BAK STLC', 'BAK OVERS', 'BAK CORE', 'CAB HD', 'CAB RD', 'MED HD', 'MED RD', 'MED GEN', 'FAL HD', 'FAL RD', 'FAL RUBHD', 'FAL RUBRD', 'GUT HD', 'GUT RD', 'GUT NBS', 'GUT GEN', 'HYL HD', 'HYL HDC', 'HYL HDJ', 'HYL HDK', 'HYL HDV', 'HYL HDW', 'HYL RD', 'HYL RDC', 'HYL RDJ', 'HYL RDK', 'HYL RDV', 'HYL RDW', 'HYL C', 'HYL J', 'HYL K', 'HYL V', 'HYL W', 'HYL GEN', 'KSG HD', 'KSG RD', 'KSG RAND', 'KSG WPC', 'KSG GEN', 'LAM FARNS', 'LAM MRSCD', 'LAM MRSDV', 'LAM GEN', 'LAW HD', 'LAW RD', 'LAW ILS', 'LAW GEN', 'DES HD', 'DES RD', 'DES OVERS', 'DES GEN', 'MUS HD', 'MUS RD', 'MUS 2DFLW', 'MUS ALDR', 'MUS ARCWM', 'MUS NBS', 'MUS RECCO', 'MUS SEEG', 'MUS GEN', 'MCZ HERP', 'MCZ MOLL', 'MCZ TS', 'MCZ GEN', 'TOZ TOZLC', 'TOZ HD', 'TOZ HDLC', 'TOZ RD', 'TOZ RDLC', 'TOZ GEN', 'WID HD', 'WID RD', 'WID SLAV', 'WID TIBET', 'WID WIDLC', 'WID WIDHE', 'WID WIDME', 'WID WIDYI', 'WID GEN'],
    lendItypes: ['01 BOOK', '01 ISSBD', '01 CD', '01 SCORE', '01 BLURAY', '01 DVD', 'BOOK', 'ISSBD', 'CD', 'SCORE', 'BLURAY', 'DVD']
  },
  'US-MCM': {
    tag: '985',
    subs: { a: 'i,aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a' },
    lendLocs: ['DEW IMPLS', 'DEW OVRSZ', 'DEW STACK', 'ENG BRWS', 'ENG OVRSZ', 'ENG STACK', 'HUM AUDBK', 'HUM BRWS', 'HUM GRNVL', 'HUM OVRSZ', 'HUM STACK', 'HUM TRAVL', 'LSA STACK', 'MUS OVRSZ', 'MUS BRWS', 'MUS STACK', 'RTC BRWS', 'RTC STACK', 'SCI BRWS', 'SCI OVRSZ', 'SCI STACK']
  },
  'US-MDBJ': { 
    tag: '991',
    subs: { a: 'c', b: 'a', c: 'f', d: 'e', g: 'g', k: 'k', x: 'b', y: 'j' },
    lendLocs: ['coffmcc', 'eanal', 'eanalbl', 'eavbd', 'ecl87', 'ecl87bl', 'eclasbl', 'eclass', 'egother', 'egpcl87', 'egpigo', 'egplaw', 'egpo', 'emain', 'emblue', 'eoblu', 'eoblunc', 'eoc87bl', 'eocl87', 'eofanal', 'eofdt', 'eofdtbl', 'eofdtnc', 'eoffs', 'eoffsnc', 'eogplaw', 'eogpma', 'eogpo', 'eogponc', 'eogpref', 'eoigo', 'eolawnc', 'eolawrf', 'eolblue', 'eolcir', 'eoligo', 'eollaw', 'eoran', 'eostate', 'eotech', 'erand', 'etech', 'euglcl', 'sbook', 'sosai', 'wempbk', 'wlilsta', 'wmppcbk', 'wwbks', 'abwf', 'acass', 'acd', 'acdlc', 'acslc', 'advd', 'afcdr', 'afrie', 'amicr', 'amonu', 'amsco', 'asal', 'asco', 'asrec', 'avc', 'avd'],
    lendItypes: ['enorm', 'eav', 'scirc', 'wbooks', 'abkit', 'acdit', 'acdlcit', 'acdrom', 'acsit', 'acslcit', 'advdit', 'alpit', 'amicrit', 'amonit', 'amsit', 'ascoit', 'avidit', 'avkit']
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
    lendLocs: ['LILLY PLD', 'LILLY PLW', 'LILLY PLWF', 'LILLY PLI', 'LILLY PL2', 'LILLY PL2F', 'LILLY PL3', 'LSC PSB', 'LSC PSBF', 'LSC PSBQ', 'LSC PSD', 'LSC PSDF', 'LSC PSDQ', 'LSC PSDV', 'LSC PSK', 'LSC PSKC', 'LSC PSK2', 'LSC PSK6', 'LSC PSKE', 'LSC PSKEF', 'LSC PSKEQ', 'LSC PSKF', 'LSC PSKJ', 'LSC PSKL', 'LSC PSKN', 'LSC PSKOH', 'LSC PSKQ', 'LSC PSKL', 'LSC PSKLF', 'LSC PSV', 'LSC PSZ', 'MUSIC PMMS', 'MUSIC PMMS9', 'MUSIC PM', 'MUSIC PM9', 'MUSIC PMF', 'MUSIC PMF9', 'MUSIC PMT', 'MUSIC PMTF', 'PERKN PKE', 'PERKN PKEF', 'PERKN PK', 'PERKN PK2', 'PERKN PKQ', 'PERKN PKFF', 'PERKN PKF', 'PERKN PKT', 'LAW LALUI', 'LAW LCHRI', 'LAW LCOX', 'LAW LEMP', 'LAW LGEN']
  },
  'US-NNC': {
    tag: '852',
    linkedField: '876',
    linkSub: '0',
    subs: { a: 'b', b: '876p', c: 'h', d: 'j', v: '8763', y: '876a' },
    lendLocs: ['bar', 'bar,four', 'bar,medi', 'bar,new', 'bar,over', 'bar,three', 'bar,two', 'bar,znz', 'bmc', 'bus', 'bus,new', 'docs', 'eal', 'eax', 'glg', 'glg,medi', 'glx', 'glx,pre', 'gnc', 'gsc', 'hsl', 'jou', 'leh', 'leh,eds', 'mat,anx', 'mil', 'mil,stdy', 'msc', 'msr', 'mus', 'mvr', 'off,bio', 'off,bus', 'off,docs', 'off,eal', 'off,eax', 'off,eng', 'off,glg', 'off,glx', 'off,gnc', 'off,gsc', 'off,hsl', 'off,jou', 'off,leh', 'off,mat', 'off,msr', 'off,mus', 'off,mvr', 'off,phy', 'off,psy', 'off,sci', 'off,swx', 'off,uncat', 'off,uts', 'off,war', 'pat', 'sci', 'swx', 'uts', 'uts,loc', 'uts,unn', 'war']
  },
  'US-RPB': {
    tag: '876',
    subs: { a: 'i,z', b: 's', c: 'b', d: 'j', y: 'a' },
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

function cst(rec) {

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
      if (tag > '009' && tag < '831') {
        if (tag !== '245' || tag === '245' && !tiSeen) {
          let fkey = JSON.stringify(field);
          fkey = fkey.replace(/,{"(=|0)":".*?"}/,''); // remove and local authority links from record.
          fields.push(fkey);
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
          '999' : {
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
    let fkey = fields[z];
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

