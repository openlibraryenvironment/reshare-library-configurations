/*
  Subfield guide: a: location, b: barcode, c: callNumber, d: callNumberType, g: copy, k: numberOfPieces, n: enumeration, u: chronology,
  v: volume, w: yearCaption, x: itemMaterialType, y: itemId
*/

const localFields = {
  'US-PU': {
    name: 'University of Pennsylvania',
    tag: '995',
    subs: { a: 'i,aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a' },
    lendLocs: ['LippLib lipp', 'VanPeltLib easiaover', 'VanPeltLib eastasia', 'VanPeltLib vanp', 'VanPeltLib vpnewbook', 'VanPeltLib yarn']
  },
  'US-PMA': {
    name: 'Allegheny',
    tag: '995',
    subs: { a: 'aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a'},
    lendLocs: ['bksl', 'bksu', 'dvdl']
  },
  'US-NJNBRU': {
    name: 'Rutgers',
    tag: '995',
    subs: { a: 'l', b: 'b', c: 'c', x: 't', y: 'a', u: 'h,i', n: 'f,g', v: 'j', k: 'p' },
    lendLocs: ['aldocc', 'aldoclusc', 'aldocnjc', 'aldocusc', 'aldocusfoc', 'alealfoc', 'alealstac', 'aledlabc', 'alefolioc', 'alfolioc', 'aliylcc', 'aliylgcc', 'aljuvc', 'aljuvrc', 'alstackc', 'anstackc', 'cadocusc', 'cafolioc', 'castackc', 'chfolioc', 'chstackc', 'crcareerc', 'crfolioc', 'crstackc', 'dadocc', 'dadocnjc', 'dadocusc', 'dafolioc', 'dastackc', 'dgfolioc', 'dgplaysc', 'dgstackc', 'lsdocc', 'lsdocfoc', 'lsdocnjc', 'lsdocusc', 'lsdocusfoc', 'lsstackc', 'mafolioc', 'mastackc', 'sichinardm', 'sistackm', 'smstackc']
  },
  'US-PBM': {
    name: 'Bryn Mawr',
    tag: '995',
    subs: { a: 'h', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', u: 'f,x', n: 'e,w' },
    lendLocs: ['ba', 'baf', 'baff', 'bc', 'bcf', 'bcff', 'bcsfi', 'bkraw', 'bs', 'bsff', 'bsx']
  },
  'US-PINU': {
    name: 'Indiana University of Pennsylvania',
    tag: '995',
    subs: { a: 'aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', u: 'f,x', n: 'e,w' },
    lendLocs: ['PZI1', 'PZII', 'PZIO', 'PZIT', 'SHAFER']
  },
  'US-PPIC': {
    name: 'Carnegie Mellon',
    tag: '995',
    subs: { a: 'i,aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a' },
    lendLocs: ['ENGR-SCI NEWBOOK', 'ENGR-SCI STACKS', 'HUNT CAREER-2', 'HUNT FA-NEWBK-4', 'HUNT FOLIOS-2', 'HUNT FOLIOS-4', 'HUNT NEWBOOK-1', 'HUNT OVRSZQ-3', 'HUNT OVRSZQ-4', 'HUNT STACKS-2', 'HUNT STACKS-3', 'HUNT STACKS-4', 'MELLON NEWBOOK', 'MELLON READING-RM', 'OFFSITE BY-REQUEST']
  },
  'US-PPIU': {
    name: 'University of Pittsburgh',
    tag: '995',
    subs: { a: 'i,aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', u: 'f,x', n: 'e,w' },
    lendLocs: ['ART stks', 'ART stksfac', 'CHEM stks', 'ENGR stks', 'HILL dis', 'HILL stks', 'HILL stksafro', 'HILL stksalld', 'HILL stkseac', 'HILL stkseaj', 'HILL stkseak', 'LANG over', 'LANG stks', 'MUS over', 'MUS stks', 'THOM stor', 'UPB over', 'UPB stks', 'UPG graph', 'UPG stks', 'UPG young', 'UPJ graph', 'UPJ stks', 'UPT stks']
  },
  'US-PPT': {
    name: 'Temple',
    tag: 'ITM',
    subs: { a: 'n,m', b: 'b', c: 'q', d: 'd', x: 'd', y: 'x', u: 'h,i', n: 'f,g', v: 'j' },
    lendLocs: ['AMBLER stacks', 'ASRS asrs', 'KARDON p_GovDocs', 'KARDON p_remote', 'MAIN hirsch', 'MAIN juvenile', 'MAIN stacks'],
    notLendItypes: ['2', '3', '23']
  },
  'US-PAGLAUL': {
    name: 'Arcadia',
    idField: '999c',
    tag: '952',
    subs: { a: 'c', b: 'p', c: 'o', d: '2', x: 'y', y: '9', u: 'h', n: 'h', v: 'v' },
    lendLocs: ['CURRIC-FIC', 'CURRIC-JUV', 'CURRICULUM', 'DISPLAY', 'FACAUTH', 'MEDIA - AUDIOCASSETTE', 'OVERSIZE', 'STACKS', 'THESIS']
  },
  'US-PGC': {
    name: 'Gettysburg',
    tag: '995',
    subs: { a: 'r', b: 'b', c: 't', d: 's', x: 'd', y: 'a', u: 'i,j', n: 'k,l', v: 'm', k: 'aa' },
    lendLocs: ['Alumni', 'BrowseGT', 'BrowseRoom', 'CollAuth', 'Display', 'NewBook', 'Offsite', 'Oversize', 'Stacks']
  },
  'US-PABBCUP': {
    name: 'Commonwealth',
    tag: '995',
    subs: { a: 'i,z', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', u: 'f,x', n: 'e,w' },
    lendLocs: ['Clearfield CLEAR', 'Clearfield CLEARADBK', 'Clearfield CLEARCAR', 'Clearfield CLEARCHIL', 'Clearfield CLEARFOL', 'Clearfield CLEARLREAD', 'MAN 1FN', 'MAN 1FS', 'MAN 2FN', 'MAN 3FN', 'MAN 3FS', 'MAN 4FN', 'MAN 4FS', 'MAN ATR1', 'MAN ATR2', 'MAN ATR3', 'MAN ATR4', 'MAN CSTK', 'Stevenson CALD', 'Stevenson CDMUS', 'Stevenson CHIL', 'Stevenson CUR', 'Stevenson E-CHIL', 'Stevenson FOL', 'Stevenson LREAD', 'Stevenson MAIN', 'Stevenson NBC', 'Stevenson NBS', 'Stevenson NEWBERY', 'Stevenson PER', 'Stevenson PICBOO', 'Stevenson TFOL', 'bloom GENCOLL', 'bloom GENCOLLOV', 'bloom JUVENILE', 'bloom JUVENILEOV', 'bloom JUVFIC', 'bloom JUVFICOV', 'bloom JUVNONFIC', 'bloom JUVNONFOV', 'bloom NewBooks']
  },
  'US-PPPSB': {
    name: 'Cairn',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'j', x: 'i', v: 'j' },
    lendLocs: ['Book Display', 'CD Collection', 'DVD Collection', 'EZBorrow', 'Library Storage', 'ML Thesis and Projects', 'Main Stacks 1st Floor ', 'Main Stacks 2nd Floor (Mezz Level)', 'Music Scores', 'Technical Services Deptartment']
  },
  'US-NJGBS': {
    name: 'Rowan',
    tag: '995',
    subs: { a: 'z', b: 's', c: 'f', x: 't', y: 'a', v: 'e' },
    lendLocs: ['Child3rdFl', 'Main', 'Wilson']
  },
  'US-PACALPWU': {
    name: 'PennWest',
    tag: '995',
    subs: { a: 'i,z', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', u: 'f,x', n: 'e,w', v: 'g' },
    lendLocs: ['Carlson Browsing', 'Carlson Carl Juv', 'Carlson Carl Main', 'Carlson Carl Ovrsz', 'Carlson Carl-3', 'Carlson Carl-fn', 'Carlson Carl-zo', 'Carlson CarlTxtbk', 'Carlson Douglass', 'EUP Book4', 'EUP Book5', 'EUP Book6', 'EUP Juvenile', 'MAN 2LC', 'MAN 3LC', 'MAN 4LC', 'MAN CURR', 'MAN FAC', 'MAN FDI', 'MAN GNC', 'Suhr Ven Juv', 'Suhr Ven Main', 'Suhr Ven-O']
  },
  'US-PCARLD': {
    name: 'Dickinson',
    tag: '999',
    subs: { a: 'l', b: 's', c: 'a', d: 'w', x: 't', y: 'i', v: 'v' },
    lendLocs: ['CIRC_DESK', 'E_ASIAN_RM', 'MUS_SCORES', 'OVERSIZE', 'STACKS', 'STORAGE']
  },
  'US-PPID': {
    name: 'Duquesne',
    idField: '907a',
    tag: '945',
    subs: { a: 'l', b: 'i', c: 'a', x: 't', y: 'y', v: 'c' },
    lendLocs: ['g', 'g1', 'g1f', 'g1o', 'g2', 'g3', 'g4', 'g5', 'g5cc', 'g5co', 'g5cp', 'g5cs', 'g5mk', 'g5mo', 'g5ms']
  },
  'US-PSRS': {
    name: 'Slippery Rock',
    tag: '950',
    subs: { a: 'f', b: 'a', c: 'm', d: 'l', x: 'b', y: 'z' },
    lendLocs: ['STACK2', 'STACK3']
  },
  'US-PWCS': {
    name: 'West Chester',
    tag: 'ERI',
    subs: { a: 'j', b: 'a', c: 'l', d: 's', x: 'c', y: '7', u: 'x,y', n: 'u,v', k: 'm' },
    lendLocs: ['docspa', 'docsus', 'fhg3', 'fhg3h', 'fhg3ho', 'fhg3o', 'fhg4', 'fhg4o', 'fhg5', 'fhg5o', 'fhg6', 'fhg6o', 'imcbb', 'imcbkk', 'imcjkd', 'imctxt', 'juve', 'juvebrd', 'juvejfic', 'juvenonf', 'juvepict', 'pmbk', 'pmbkov', 'pmed', 'pmmin', 'pmsc', 'pmscov']
  },
  'US-PPICC': {
    name: 'Chatham',
    idField: '999c',
    tag: '952',
    subs: { a: 'c', b: 'p', c: 'o', d: '2', x: 'y', y: '9', v: 'h' },
    lendLocs: ['CC', 'CIRC2', 'CIRC3', 'FEATURE', 'FOLIO', 'OLKES', 'POPULAR']
  },
  'US-PPD': {
    name: 'Drexel',
    tag: '995',
    subs: { a: 'i,aa', b: 's', c: 'bb', d: 'j', x: 'c', y: 'a', u: 'f,x', n: 'e,w', v: 'g', k: 'jj' },
    lendLocs: ['HHN d-dvd', 'HHN d-leisure', 'HHN d-oversize', 'HHN d-stacks', 'QL d-dvd', 'QL d-stacks', 'WWH d-child', 'WWH d-dvd', 'WWH d-leisure', 'WWH d-oversize', 'WWH d-stacks', 'WWH d-stacks-1', 'WWH d-td-1', 'WWH d-teen']
  },
  'US-PCW': {
    name: 'Widener',
    idField: '907a',
    tag: '945',
    subs: { a: 'l', b: 'i', c: '%050|%090|%099', x: 't', y: 'y', v: 'c' },
    lendLocs: ['mcir', 'mcurc', 'mcurn', 'mtxc']
  },
  'US-PMILS': {
    name: 'Millersville',
    tag: '995',
    subs: { a: 'aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a' },
    lendLocs: ['B', 'BDVD', 'BO', 'CKT', 'CPOS', 'CT', 'CTO', 'EXHIBIT', 'EZB', 'EZBM', 'EZB_LEND', 'GD', 'GDMC', 'GDMF', 'GDML', 'ILLB', 'J', 'JO', 'MEND', 'MF', 'MFD', 'N_M', 'OBOC', 'PROCCA', 'PROCLA', 'R', 'RESE', 'RESM', 'RESP', 'RESS', 'STORAGE_02', 'VC']
  },
  'US-PV': {
    name: 'Villanova',
    tag: '852',
    subs: { a: 'b', c: 'h,i' },
    lendLocs: ['MAIN']
  },
  'US-PESS': {
    name: 'East Stroudsburg',
    tag: '955',
    subs: { a: 'z', b: 's', c: 'bb', d: 'j', x: 't', y: 'ff', u: 'f,x', n: 'e,w', v: 'e', w: 'f', k: 'g' },
    lendLocs: ['BIO', 'CHILDBIO', 'CHILDDEWEY', 'CHILDEASY', 'CHILDFIC', 'FICTION', 'MAIN', 'OVERSIZE']
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

export function transform(clusterStr) {
  let now = new Date().toISOString();
  now = now.replace(/^(\d{4})-(\d\d)-(\d\d).*/, '$1$2$3000000.0')
  const f005 = now;
  let cluster = JSON.parse(clusterStr);
  let crecs = cluster.records;
  const f001 = cluster.clusterId;
  let f999s = [];
  let outItems = [];
  let preSize = '';
  let mainBib;
  let isMainBib;
  for (let x = 0; x < crecs.length; x++) {
    let crec = crecs[x];
    let sid = crec.sourceId;
    let lid = crec.localId;
    let rec = crec.payload.marc;
    let rsize = rec.leader.substring(0, 5);
    if (rsize > preSize) {
      isMainBib = 1;
      mainBib = { leader: rec.leader, fields: [] };
    } else {
      isMainBib = 0;
    }
    preSize = rsize;

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
    let bibCall = {};

    for (let y = 0; y < rec.fields.length; y++) {
      let field = rec.fields[y];
      let tag = Object.keys(field)[0];
      if (tag.match(/050|082|090|099/)) {
        let csubs = getSubs(field[tag]);
        bibCall[tag] = (csubs.b) ? csubs.a[0] + csubs.b[0] : csubs.a[0];
      }
      if (!recFields[tag]) recFields[tag] = [];
      recFields[tag].push(field[tag]);
      if (isMainBib) { 
        if ((tag > '009' && tag < '831') || tag.match(/^88./)) {
          mainBib.fields.push(field);
        }
        if (tag === '008') mainBib.fields.push(field);
      }
    }

    let lf = localFields[sid];
    let controlNumber = lid;
    if (lf && lf.idField) {
      let tag = lf.idField.substring(0, 3);
      let sf = lf.idField.substring(3);
      let field = recFields[tag];
      if (field && sf) {
        let subs = getSubs(field[0]);
        controlNumber = (subs[sf]) ? subs[sf][0] : '';
      }
    } else if (recFields['001']) { 
      controlNumber = recFields['001'][0];
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
              { i: lf.name },
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
          if (c === 'c' && lf.subs.c.match(/.../)) {
            let cnTags = lf.subs.c.split(/\|/);
            for (let t = 0; t < cnTags.length; t++) {
              let tag = cnTags[t].replace(/^%/, '');
              text = bibCall[tag];
              if (text) break;
            }
          }
          if (text) {
            let obj = {};
            obj[c] = text;
            outItem['999'].subfields.push(obj);
          }
          if (text && !location && c === 'a') {
            location = text.trim();
          }
          if (!itype && c === 'x') {
            itype = text;
          }
        }

        let policy = '';
        if (lf.lendLocs && lf.lendItypes) {
          policy = (lf.lendLocs.indexOf(location) > -1 && lf.lendItypes.indexOf(itype) > -1) ? 'LOANABLE' : 'UNLOANABLE'; 
        } else if (lf.lendLocs && lf.notLendItypes) {
          policy = (lf.lendLocs.indexOf(location) > -1 && lf.notLendItypes.indexOf(itype) === -1) ? 'LOANABLE' : 'UNLOANABLE';
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

  mainBib.fields.unshift({ '005': f005 });
  mainBib.fields.unshift({ '001': f001 });
  mainBib.fields.push(...f999s);
  mainBib.fields.push(...outItems);
  return JSON.stringify(mainBib, null, 2);
}

