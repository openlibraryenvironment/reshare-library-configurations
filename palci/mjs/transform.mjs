/*
  Subfield guide: a: location, b: barcode, c: callNumber, d: callNumberType, g: copy, k: numberOfPieces, n: enumeration, u: chronology,
  v: volume, w: yearCaption, x: itemMaterialType, y: itemId
*/

const localFields = {
  'US-PU': {
    tag: '995',
    subs: { a: 'i,aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a' },
    lendLocs: ['AnnenLib annb', 'AnnenLib annbcirc', 'AnnenLib annbgovt', 'AnnenLib annbinde', 'AnnenLib annbnewbk', 'AnnenLib annbrefe', 'AnnenLib annbrese', 'AnnenLib annbthes', 'BatesCntr nursarch', 'BiomLib biom', 'BiomLib biomhist', 'BiomLib biomlibr', 'BiomLib biomperi', 'BiomLib biomrede', 'BiomLib biomrefe', 'BiomLib biomrese', 'ChemLib chcirc', 'ChemLib chem', 'ChemLib chemnewbk', 'ChemLib chemrdrm', 'ChemLib chemrefe', 'ChemLib chemrese', 'DentalLib dent', 'DentalLib dentnewbks', 'DentalLib dentrare', 'DentalLib dentrefe', 'DentalLib dentrese', 'DentalLib dentshils', 'DentalLib dncirc', 'FisherFAL fine', 'FisherFAL finerefe', 'FisherFAL facirc', 'FisherFAL fanewbook', 'FisherFAL finecage', 'FisherFAL finecirc', 'FisherFAL finecore', 'FisherFAL finelock', 'FisherFAL finerare', 'FisherFAL finerese', 'FisherFAL fineslid', 'FisherFAL finestudio', 'KatzLib cjs', 'KatzLib cjsambx', 'KatzLib cjsarc', 'KatzLib cjsarcms', 'KatzLib cjsarcths', 'KatzLib cjsbox1', 'KatzLib cjsbox2', 'KatzLib cjsbox3', 'KatzLib cjscdrom', 'KatzLib cjsdir', 'KatzLib cjsencyc', 'KatzLib cjsfol', 'KatzLib cjshur', 'KatzLib cjsinproc', 'KatzLib cjsinprocn', 'KatzLib cjsmar', 'KatzLib cjsmemor', 'KatzLib cjsmini', 'KatzLib cjsoffice', 'KatzLib cjsover', 'KatzLib cjspergal', 'KatzLib cjsrar', 'KatzLib cjsraram', 'KatzLib cjsrarbx1', 'KatzLib cjsrarbx2', 'KatzLib cjsrarfol', 'KatzLib cjsrarmini', 'KatzLib cjsrarms', 'KatzLib cjsrarover', 'KatzLib cjsref', 'KatzLib cjsreffol', 'KatzLib cjsreffol+', 'KatzLib cjsspec', 'Libra storfine', 'Libra storm', 'Libra stor', 'Libra storcirc', 'Libra UNASSIGNED', 'LippLib lipp', 'LippLib lippbtrend', 'LippLib lipplipm', 'LippLib lipppeck', 'LippLib lipprefdsk', 'LippLib lipprefe', 'LippLib lipprese', 'LippLib lippreseds', 'LippLib UNASSIGNED', 'MPALib math', 'MPALib mathcirc', 'MPALib mathnewbk', 'MPALib mathperi', 'MPALib mathrese', 'MuseumLib muse', 'MuseumLib museegyp', 'MuseumLib museover', 'MuseumLib muserefe', 'MuseumLib musebrin', 'MuseumLib musedesk', 'MuseumLib museegypov', 'MuseumLib musefolio', 'MuseumLib muselock', 'MuseumLib muserese', 'MusicLib musicsem', 'MusicLib musiclist', 'MusicLib musicrese', 'MusicLib musictech', 'MusicLib musinwbk', 'MusicLib musisemres', 'PAHospLib pah', 'PAHospLib pahhist', 'PAHospLib pahiph', 'PAHospLib pahiphf', 'PAHospLib pahiphhist', 'PAHospLib pahiphref', 'PAHospLib pahiphrr', 'PAHospLib pahiphstk', 'PAHospLib pahref', 'PAHospLib pahres', 'VanPeltLib sasiarefe', 'VanPeltLib vprefbip', 'VanPeltLib easiaover', 'VanPeltLib eastasia', 'VanPeltLib vanp', 'VanPeltLib vpnewbook', 'VanPeltLib yarn', 'VanPeltLib easiacmx', 'VanPeltLib easiasem', 'VanPeltLib mideast', 'VanPeltLib slavic', 'VanPeltLib vanpinfo', 'VanPeltLib vanpmicro', 'VanPeltLib vanporig', 'VanPeltLib vanpvideo', 'VanPeltLib vpcirc', 'VanPeltLib vpreffin', 'VanPeltLib vprefmoel', 'VanPeltLib vpresdesk', 'VanPeltLib vpwicref', 'VanPeltLib women', 'VanPeltLib woody', 'VanPeltLib afro', 'VanPeltLib classics', 'VanPeltLib judaica', 'VanPeltLib medieval', 'VanPeltLib vpref', 'VanPeltLib vprefover', 'VetNBLib newb', 'VetNBLib newbofc', 'VetNBLib newbrare', 'VetNBLib newbrese', 'VetPennLib vete', 'VetPennLib vetedisp', 'VetPennLib vetelibr', 'VetPennLib veteover', 'VetPennLib veterefe', 'VetPennLib veterese', 'VetPennLib veteresov']
  },
  'US-PMA': {
    tag: '995',
    subs: { a: 'aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a'},
    lendLocs: ['bksl', 'bksu', 'dvdl']
  },
  'US-NJNBRU': {
    tag: '995',
    subs: { a: 'l', b: 'b', c: 'c', x: 't', y: 'a', u: 'h,i', n: 'f,g', v: 'j', k: 'p' },
    lendLocs: ['aldocc', 'aldoclusc', 'aldocnjc', 'aldocusc', 'aldocusfoc', 'alealfoc', 'alealstac', 'aledlabc', 'alefolioc', 'alfolioc', 'aliylcc', 'aliylgcc', 'aljuvc', 'aljuvrc', 'alstackc', 'anstackc', 'cadocusc', 'cafolioc', 'castackc', 'chfolioc', 'chstackc', 'crcareerc', 'crfolioc', 'crstackc', 'dadocc', 'dadocnjc', 'dadocusc', 'dafolioc', 'dastackc', 'dgfolioc', 'dgplaysc', 'dgstackc', 'lsdocc', 'lsdocfoc', 'lsdocnjc', 'lsdocusc', 'lsdocusfoc', 'lsstackc', 'mafolioc', 'mastackc', 'sichinardm', 'sistackm', 'smstackc']
  },
  'US-PBM': {
    tag: '995',
    subs: { a: 'h', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', u: 'f,x', n: 'e,w' },
    lendLocs: ['ba', 'baf', 'baff', 'bc', 'bcf', 'bcff', 'bcsfi', 'bkraw', 'bs', 'bsff', 'bsx']
  },
  'US-PINU': {
    tag: '995',
    subs: { a: 'aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', u: 'f,x', n: 'e,w' },
    lendLocs: ['PZI1', 'PZII', 'PZIO', 'PZIT', 'SHAFER']
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

    for (let y = 0; y < rec.fields.length; y++) {
      let field = rec.fields[y];
      let tag = Object.keys(field)[0];
      if (!recFields[tag]) recFields[tag] = [];
      recFields[tag].push(field[tag]);
      if (isMainBib) { 
        if ((tag > '009' && tag < '831') || tag.match(/^88./)) {
          mainBib.fields.push(field);
        }
        if (tag === '008') mainBib.fields.push(field);
      }
    }

    let controlNumber = (recFields['001']) ? recFields['001'][0] : lid;
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

  mainBib.fields.unshift({ '005': f005 });
  mainBib.fields.unshift({ '001': f001 });
  mainBib.fields.push(...f999s);
  mainBib.fields.push(...outItems);
  return JSON.stringify(mainBib, null, 2);
}

