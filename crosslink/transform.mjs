/*
  Subfield guide: a: location, b: barcode, c: callNumber, d: callNumberType, g: copy, k: numberOfPieces, i: institutionName, 
  n: enumeration, u: chronology, v: volume, w: yearCaption, x: itemMaterialType, y: itemId
*/

const localFields = {
  'US-NPKMHL': {
    name: 'Mid-Hudson Library System',
    tag: '945',
    subs: { a: 'l', c: 'a ', b: 'i', v: 'c', y: 'y'},
    notLendLocs: {befa:{}, cxfa:{}, dwxa:{}, fkxa:{}, gexa:{}, grea:{}, hufa:{}} 
  },
  'US-NIC': {
    name: 'Cornell Univeristy',
    tag: '852',
    linkedField: '890',
    linkSubs: ['0', '0'],
    subs: { a: '890l', b: '890b', c: 'k,h,m', d: '2', k: '890n', u: '890c', v: '890e', w: '890y', x: '890t', y: '890a' },
    lendLocs: { 'Ent,anx':{}, 'afr':{}, 'afr,anx':{}, 'asia':{}, 'asia,anx':{}, 'asia,av':{}, 'ech':{}, 'ech,anx':{}, 'ech,av':{}, 'engr':{}, 'engr,anx':{}, 'engr,ref':{}, 'ent':{}, 'fine':{}, 'fine,anx':{}, 'gnva':{}, 'gnva,anx':{}, 'hote':{}, 'hote,anx':{}, 'ilr':{}, 'ilr,anx':{}, 'jgsm,anx':{}, 'law':{}, 'law,anx':{}, 'mann':{}, 'mann,anx':{}, 'mann,anxt':{}, 'math':{}, 'math,anx':{}, 'math,desk':{}, 'mus':{}, 'mus,anx':{}, 'oclc,olim':{}, 'olin':{}, 'olin,anx':{}, 'olin,av':{}, 'orni,anx':{}, 'phys,anx':{}, 'rmc,ice':{}, 'sasa':{}, 'sasa,anx':{}, 'sasa,av':{}, 'uris':{}, 'uris,anx':{}, 'vet':{}, 'vet,anx':{}, 'was':{}, 'was,anx':{}, 'was,av':{} }

  },
  'US-CST': {
    name: 'Stanford University',
    tag: '999',
    subs: { a: 'm,l', b: 'i', c: 'a', d: 'w', k: 'j', x: 't', y: 'i' },
    lendLocs: {'ARS STACKS':{}, 'ART STACKS':{}, 'EARTH-SCI ATLASES':{}, 'EARTH-SCI MEZZANINE':{}, 'EARTH-SCI STACKS':{}, 'EARTH-SCI TECH-RPTS':{}, 'EAST-ASIA CHINESE':{}, 'EAST-ASIA JAPANESE':{}, 'EAST-ASIA KOREAN':{}, 'EDUCATION STACKS':{}, 'EDUCATION STORAGE':{}, 'GREEN CALIF-DOCS':{}, 'GREEN FED-DOCS':{}, 'GREEN FOLIO-FLAT':{}, 'GREEN INTL-DOCS':{}, 'GREEN STACKS':{}, 'MUSIC FOLIO':{}, 'MUSIC MINIATURE':{}, 'MUSIC SCORES':{}, 'MUSIC STACKS':{}, 'SAL SAL-ARABIC':{}, 'SAL SAL-FOLIO':{}, 'SAL SAL-PAGE':{}, 'SAL SALTURKISH':{}, 'SAL SOUTH-MEZZ':{}, 'SAL STACKS':{}, 'SAL3 STACKS':{}, 'SCIENCE STACKS':{}},
    lendItypes: {'STKS-MONO':1, 'STKS':1, 'EASTK-DOC':1, 'ATLAS':1, 'THESIS':1, 'THESIS-EXP':1, 'GOVSTKS':1, 'SCORE':1},
    lendFunc: function (rec, lf) {
      let f919 = rec['919'] || [];
      let policy = 1;
      if (f919[0]) {
        let subs = getSubs(f919[0]);
        if (subs.a && subs.a[0].match(/exclude from BorrowDirect/i)) {
          policy = 0;
        }
      }
      if (policy && lf) {
        let sf = getSubs(lf);
        if (sf.c && sf.c[0].match(/^3781/)) policy = 0;
      }
      return policy;
    }
  },
 'US-NGENOU': {
    name: 'SUNY Geneseo',
    ils: 'Alma',
    tag: '995',
    subs: { a: 'aa', c: 'bb', d: 'k', b: 's', n: 'e,w', u: 'f,x', x: 't', y: 'a' },
    lendLocs: {FRASERSTR:{}, MCD:{}, SCHADERSTR:{}}
  },
 'US-MWALB': {
    name: 'Brandeis University',
    ils: 'Alma',
    tag: '995',
    subs: { a: 'aa', c: 'bb', d: 'k', b: 's', n: 'e,w', u: 'f,x', x: 't', y: 'a' },
    lendLocs: {CDBC:{}, JMFLM:{}, MLREF:{}, MMEDB:{}, MSTCK:{}, SCHOLARS:{}, SMICROFORM:{}, SSTCK:{}}
  }
};

function getSubs(field) {
  let subs = {};
  field.subfields.forEach(s => {
    let code = Object.keys(s);
    if (!subs[code]) subs[code] = [];
    if (subs[code].indexOf(s[code]) === -1) subs[code].push(s[code]);
  });
  return subs;
}

export function showSettings() {
  return (localFields);
}

export function cluster_transform(clusterStr) {
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
    let unknown = false;
    if (!rec.leader) {
      rec.leader = '00000cam a2200229Ia 4500';
      unknown = true
    }
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
    if (unknown) {
      mtype = 'UNK'
    } else if (bl.match(/[sb]/)) {
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
      if (tag.match(/050|082|090|092|099/)) {
        let csubs = getSubs(field[tag]);
        bibCall[tag] = (csubs.a && csubs.b) ? csubs.a[0] + ' ' + csubs.b[0] : (csubs.a) ? csubs.a[0] : '';
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

    // control number updates 
    controlNumber = controlNumber.replace(/^oai.+:/, '');

    if (sid.match(/^(US-MNMAC|US-MNCH)$/) && !controlNumber.match(/^u/)) {
      controlNumber = controlNumber.replace(/^/, 'u');
    }

    if (lf && lf.idField) {
      
      let tag = lf.idField.substring(0, 3);
      let sf = lf.idField.substring(3);
      let field = recFields[tag];
      if (lf.idField.match(/^00/)) {
        controlNumber = (recFields[lf.idField]) ? recFields[lf.idField][0] : '';
      } else if (field && sf) {
        let subs = getSubs(field[0]);
        controlNumber = (subs[sf]) ? subs[sf][0] : '';
      }
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
    /* this is a test-- delete or disable when done
    if (cluster.clusterId === '000d81e4-6349-4773-993c-9a6cbd9ef034' && sid === 'US-MNMAC') {
      f999.subfields.forEach(s => {
        if (s.s) {
          s.s = 'US-MIME';
        }
      });
    }
    */
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
          let link = esubs[lf.linkSubs[1]];
          linkedFields[link] = exField;
        }
      }
      controlNumber = controlNumber.trim();
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
          if (lf.linkSubs && lf.linkSubs[0] && lf.subs[c].match(/^\w{3}/)) {
            let lsf = lf.subs[c].substring(3);
            let linkDat = subData[lf.linkSubs[0]];
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
          text = text.trim();
          if (c === 'c' && lf.subs.c.match(/^%/)) {
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
          if (!location && c === 'a') {
            location = text;
          }
          if (!itype && c === 'x') {
            itype = text;
          }
        }

        let pol = 0;
        if (lf.lendLocs && lf.lendLocs[location] || lf.notLendLocs && !lf.notLendLocs[location])  {
          pol = 1;
          if (lf.lendItypes && !lf.lendItypes[itype]) {
            pol = 0;
          }
        }
        if (!(lf.lendLocs || lf.notLendLocs) && lf.lendItypes && lf.lendItypes[itype]) {
          pol = 1;
        }

        if (lf.lendFunc) {
          pol = lf.lendFunc(recFields, outItem['999']);
        }
        let policy = (pol) ? 'LOANABLE' : 'UNLOANABLE';
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

