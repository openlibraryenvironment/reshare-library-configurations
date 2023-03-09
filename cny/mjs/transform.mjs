/*
  Subfield guide: a: location, b: barcode, c: callNumber, d: callNumberType, g: copy, k: numberOfPieces, i: institutionName, 
  n: enumeration, m: description, u: chronology, v: volume, w: yearCaption, x: itemMaterialType, y: itemId, z: note

  To get set call number (subfield c) from fields in the bib record, start setting with "%" and separate various fields by "|"
  (ex: '%050|%090'); 
*/

const localFields = {
  'US-NPV': {
    name: 'Vassar College',
    tag: '945',
    subs: { a: 'l', b: 'i', c: '%050|%090', y: 'y' },
    lendLocs: ['annex', 'vxw2', 'vxwa', 'vxwb', 'vxwk', 'vxwm', 'vxwu', 'vxww', 'vxwy']
  },
  'US-NPKMC': {
    name: 'Marist College',
    tag: '995',
    subs: { a: 'aa', b: 's', c: 'bb', d: 'j', n: 'e,w', u: 'f,x', v: 'e', x: 't', y: 'a' },
    lendLocs: ['circ', 'graphic_no', 'juvenile', 'oversize', 'remote', 'stacks']
  },
  'US-NLOUVS': {
    name: 'Siena College',
    tag: '995',
    subs: { a: 'aa', b: 's', c: 'bb', d: 'j', n: 'e,w', u: 'f,x', v: 'e', x: 't', y: 'a' },
    lendLocs: ['1stfl', '2ndfl', 'audio', 'avcol', 'lowle', 'over']
  },
  'US-NGCA': {
    name: 'Adelphi',
    tag: '995',
    subs: { a: 'z', b: 's', c: 'bb', d: 'j', x: 't', y: 'a' },
    lendLocs: ['clevel', 'dvd', 'haup dvd', 'haup main', 'main', 'mh dvd', 'mh main', 'mh vhs', 'microforms'],
    lendFunc: (loc, itype) => {
      let pol = null;
      if (loc === 'clevel') {
        pol = (itype === 'BOOK') ? 'LOANABLE' : 'UNLOANABLE';
      }
      return pol
    }
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

export function showSettings() {
  return (localFields);
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
        bibCall[tag] = (csubs.a && csubs.b) ? csubs.a[0] + csubs.b[0] : (csubs.a) ? csubs.a[0] : '';
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
    if (lf && lf.tag) {
      let tag = lf.tag.substring(0, 3);
      let ind1 = lf.tag.substring(3, 4) || '';
      let ind2 = lf.tag.substring(4, 5) || '';
      let items = recFields[tag] || [];
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
      for (let i = 0; i < items.length; i++) {
        let isItem = true;
        let item = items[i];
        if (ind1 && ind1 !== item.ind1) {
          isItem = false;
        } else if (ind2 && ind2 !== item.ind2) { 
          isItem = false;
        }
        if (isItem) {
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
              text = text.trim();
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
          } else if (lf.lendLocs && lf.notLendItypes) {
            policy = (lf.lendLocs.indexOf(location) > -1 && lf.notLendItypes.indexOf(itype) === -1) ? 'LOANABLE' : 'UNLOANABLE';
          } else if (lf.lendLocs) {
            policy = (lf.lendLocs.indexOf(location) > -1) ? 'LOANABLE' : 'UNLOANABLE';
          } else {
            policy = 'UNLOANABLE';
          }
          if (lf.lendFunc) {
            policy = lf.lendFunc(location, itype) || policy;
          }
          outItem['999'].subfields.push({ p: policy });
          outItems.push(outItem);
        }
      }
    }
  }

  mainBib.fields.unshift({ '005': f005 });
  mainBib.fields.unshift({ '001': f001 });
  mainBib.fields.push(...f999s);
  mainBib.fields.push(...outItems);
  return JSON.stringify(mainBib, null, 2);
}

