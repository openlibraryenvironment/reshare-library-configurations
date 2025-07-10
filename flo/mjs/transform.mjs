/*
  Subfield guide: a: location, b: barcode, c: callNumber, d: callNumberType, g: copy, k: numberOfPieces, i: institutionName, 
  n: enumeration, u: chronology, v: volume, w: yearCaption, x: itemMaterialType, y: itemId
*/

const localFields = {
  'US-MNOES': {
    name: 'Stonehill',
    ils: 'FOLIO',
    show856: true,
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', k: 'n', n: 'k', u: 'l', v: 'j', x: 'i' },
    lendLocs: {'Curriculum Collection':{}, 'DVDs - Curriculum Collection':{}, 'Government Documents Microfiche':{}, 'Government Documents Storage':{}, 'Leisure Reading':{}, 'Main Stacks - MacPhaidin':{}, 'Music CDs':{}, 'Oversize Stacks':{}, 'Periodicals Storage':{}, 'Print Journals':{}, 'Special Collections':{}, 'Teaching & Learning':{}, DVDs:{}}
  },
  'US-MBBKC': {
    name: 'Berklee',
    ils: 'FOLIO',
    show856: true,
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', k: 'n', n: 'k', u: 'l', v: 'j', x: 'i' },
    lendLocs: {'Africana Studies Collection':{}, 'Alphin Display - Main':{}, 'Alphin Display - Quiet Room':{}, 'Alphin Diversity, Equity, and Inclusion Collection':{}, 'Alphin Main Room':{}, 'Alphin Quiet Room':{}, 'Berklee Press Collection':{}, 'Career Collection':{}, 'Getz Berklee Faculty Collection':{}, 'Getz Display - Living Room':{}, 'Getz Display - New Acquisitions':{}, 'Getz Display - Reading Room':{}, 'Getz Display - Special':{}, 'Getz Display - Stacks':{}, 'Getz Diversity, Equity, and Inclusion Collection':{}, 'Getz Reading Room - Miniscores':{}, 'Getz Reading Room':{}, 'Getz Stacks - Oversize':{}, 'Getz Stacks':{}, 'Global Jazz Institute Collection':{}, 'Jazz and Gender Justice Collection':{}, 'Leisure Reading Collection':{}, 'Music Tech Collection':{}, 'Ralph’s Corner':{}}
  },
  'US-MBWI': {
    name: 'Wentworth',
    ils: 'FOLIO',
    show856: true,
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', k: 'n', n: 'k', u: 'l', v: 'j', x: 'i' },
    lendLocs: {DVDs:{}, Display:{}, Fiction:{}, Oversized:{}, Stacks:{}}
  },
  'US-MBP': {
    name: 'MCPHS',
    ils: 'FOLIO',
    show856: true,
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', k: 'n', n: 'k', u: 'l', v: 'j', x: 'i' },
    lendLocs: {'Boston Circulation':{}, 'Boston Graphic Medicine':{}, 'Boston Leisure Reading':{}}
  },
  'US-MBEMM': {
    name: 'Emmanuel',
    ils: 'FOLIO',
    show856: true,
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', k: 'n', n: 'k', u: 'l', v: 'j', x: 'i' },
    lendLocs: {'Emmanuel Authors':{}, 'Main Stacks':{}, Leisure:{}, Mulvaney:{}}
  },
  'US-MBE': {
    name: 'Emerson',
    ils: 'FOLIO',
    show856: true,
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', k: 'n', n: 'k', u: 'l', v: 'j', x: 'i' },
    lendLocs: {'Director\'s Office - Ask at Service Desk':{}, 'Main Stacks':{}, Display:{}}
  },
  'US-MBNECO': {
    name: 'NECO',
    ils: 'FOLIO',
    show856: true,
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', k: 'n', n: 'k', u: 'l', v: 'j', x: 'i' },
    lendLocs: {'Clinical Collection':{}, 'Reading Room':{}}
  },
  'US-MBSI': {
    name: 'Simmons Univeristy',
    ils: 'FOLIO',
    show856: true,
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', k: 'n', n: 'k', u: 'l', v: 'j', x: 'i' },
    lendLocs: {'Careers Collection - Library Reading Room':{}, 'Children\'s Lit - Early Readers':{}, 'Children\'s Lit - Fiction':{}, 'Children\'s Lit - Picture Books':{}, 'Children\'s Literature - Level 1':{}, 'Children\'s Nonfiction':{}, 'Main Collection Overflow':{}, 'Main Collection':{}, 'On Display':{}, 'Oversized Books':{}, 'Simmons Authors Collection - Library Reading Room':{}, Zines:{}}
  },
  'US-FLOTEST': {
    name: 'Test Institution',
    tag: '852',
    subs: { a: 'c', b: 'p' },
    lendLocs: { Stacks: {}} 
  },
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
  let elinks = [];
  let linkSeen = {};
  let isil = '';
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
      isil = sid;
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
        if (tag === '008' || tag === '007' || tag === '006') mainBib.fields.push(field);
      }
    }

    let lf = localFields[sid];
    let controlNumber = (recFields['001']) ? recFields['001'][0] : lid;

    // control number updates 
    controlNumber = controlNumber.replace(/^oai.+[\/:]/, '');

    // 856 field field processing
    let f856 = recFields['856'];
    if (lf && lf.show856 && f856) {
      for (let x = 0; x < f856.length; x++) {
        let f = f856[x];
        let s = getSubs(f);
        if (s.u) {
          if (!linkSeen[s.u]) {
            elinks.push({ '856': f });
            linkSeen[s.u] = 1;
          };
        }
      }
    }

    let isSuppressed = false;
    if (lf && lf.ils && lf.ils === 'FOLIO') {
      let ff999 = recFields['999'];
      if (ff999) {
        for (let x = 0; x < ff999.length; x++) {
          let f = ff999[x];
          if (f.ind1 === 'f' && f.ind2 === 'f') {
            let subs = getSubs(f);
            if (subs.t && subs.t[0] === '1') {
              isSuppressed = true
            }
          }
        }
      }
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
    
    for (let a = 0; a < cluster.matchValues.length; a++) {
      f999.subfields.push({ m: cluster.matchValues[a] });
    }
    if (!isSuppressed) f999s.push({ '999': f999 });

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
        if (isSuppressed) break;
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

        // the following line is added for Berklee to strip out the library and address, etc. from the location.
        if (sid === 'US-MBBKC' && location) location = location.replace(/^.+? - /, '');
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
  mainBib.fields.unshift({ '003': isil });
  mainBib.fields.unshift({ '001': f001 });
  if (elinks && elinks[0]) mainBib.fields.push(...elinks);
  mainBib.fields.push(...f999s);
  mainBib.fields.push(...outItems);
  // return '{}'
  return JSON.stringify(mainBib, null, 2);
}

