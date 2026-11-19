/*
RELOAD TESTING NOTE

999 11
{
  "a": "location",
  "b": "barcode",
  "c": "callNumber",
  "d": "callNumberType",
  "g": "copy",
  "i": "institutionName",
  "j": "vendor",
  "k": "numberOfPieces",
  "l": "localId",
  "m": "price",
  "n": "enumeration",
  "o": "territory",
  "p": "policy",
  "q": "currency",
  "r": "priceType",
  "s": "sourceType",
  "u": "chronology",
  "v": "volume",
  "w": "yearCaption",
  "x": "itemMaterialType",
  "y": "itemId",
  "z": "availability"
}

999 12 (online)
{
  "u": "uri",
  "r": "rigts",
  "x": "nonPublicNote",
  "z": "publicNote"
}
*/

const localFields = {
  'US-PBL': {
    name: 'Lehigh',
    ils: 'FOLIO',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', x: 'i' },
    lendLocs: {'Fairchild - 5th Floor - North': {}, 'Fairchild - 6th Floor - North - Media Collection': {}, 'Fairchild - 6th Floor - North': {}, 'Fairchild - 7th Floor - North': {}, 'LMC-B': {}, 'LMC-G': {}, 'Linderman 1st Floor - Reading Room - Faculty Authors': {}, 'Linderman 1st Floor - Reading Room - Juvenile Collection': {}, 'Linderman 1st Floor - Reading Room - New Books': {}, 'Linderman 1st Floor - Reading Room - Reading Room Collection': {}, 'Linderman 1st Floor - Rotunda': {}, 'Linderman 2nd Floor - Rotunda': {}, 'Linderman 3rd Floor - Rotunda': {}, 'Linderman 3rd Floor - Stacks': {}, 'Linderman 4th Floor - Stacks': {}, 'Linderman Ground Floor - Lower Level': {}, 'Linderman Ground Floor - Upper Level': {}, 'Lucy\'s Cafe - Linderman Ground Level Rotunda': {}}
  },
  'US-NNU': {
    name: 'NYU',
    tag: '995',
    subs: { a: 'n,o', b: 'b', c: 'z', d: 'y', x: 't', n: 'f,g', u: 'i,j', k: 'p', y: 'a'},
    lendLocs: { 'BOBST BLEIS': {}, 'BOBST EASIA': {}, 'BOBST EASOV': {}, 'BOBST FOLIO': {}, 'BOBST MAIN': {}, 'BOBST OVER': {}, 'BOBST RR4CL': {}, 'BOBST SCORE': {}, 'OSNYU COUR': {}, 'OSNYU COUR4': {}, 'OSNYU EASIA': {}, 'OSNYU MAIN': {} }
  },
  'US-NNNS': {
    name: 'New School',
    tag: '995',
    subs: { a: 'n,o', b: 'b', c: 'z', d: 'y', x: 't', n: 'f,g', u: 'i,j', k: 'p', y: 'a'},
    lendLocs: { 'TNSFO MAIN': {}, 'TNSGI MAIN': {}, 'TNSOS MAIN': {}, 'TNSSC MAIN': {} }
  },
  'US-PBM': {
    name: 'Bryn Mawr',
    tag: '995',
    subs: { a: 'h', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', u: 'f,x', n: 'e,w' },
    lendLocs: { 'ba': {}, 'baf': {}, 'baff': {}, 'bc': {}, 'bcf': {}, 'bcff': {}, 'bcsfi': {}, 'bkraw': {}, 'bs': {}, 'bsff': {}, 'bsx': {} }
  },
  'US-PHC': {
    name: 'Haverford',
    tag: '995',
    subs: { a: 'i', b: 's', c: 'bb', d: 'j', x: 'c', y: 'a', u: 'f,x', n: 'e,w', v: 'g', k: 'jj' },
    lendLocs: { 'hm': {} }
  },
  'US-PSC': {
    name: 'Swarthmore',
    tag: '995',
    subs: { a: 'aa', b: 'b', c: 'bb', d: 'j', x: 't', y: 'a', n: 'e,w', u: 'f,x', v: 'j', w: 'd', k: 'x' },
    lendLocs: { 'sm': {} }
  },
  'US-WVU': {
    name: 'West Virgina University',
    tag: '852',
    linkedField: '876',
    linkSubs: ['8', '9'],
    subs: { a: 'b,c', b: '876p', c: 'h,i', n: '3', v: '3' },
    lendLocs: { "WVUA Appalachian Collection": {}, "WVUA Closed Stacks In Library Circulating": {}, "WVUA Closed Stacks": {}, "WVUA DVD": {}, "WVUA Eliza's": {}, "WVUA Government Documents Census": {}, "WVUA Government Documents Index": {}, "WVUA Government Documents Maps": {}, "WVUA Government Documents Media": {}, "WVUA Government Documents Microfiche": {}, "WVUA Government Documents Microfilm": {}, "WVUA Government Documents Prints": {}, "WVUA Government Documents West Virginia Media": {}, "WVUA Government Documents West Virginia": {}, "WVUA Government Documents": {}, "WVUA Microcard": {}, "WVUA Microfiche": {}, "WVUA Microfilm": {}, "WVUA Microphotography": {}, "WVUA Stacks Oversize": {}, "WVUA Stacks": {}, "WVUA WVU Electronic Theses and Dissertations": {}, "WVUD Closed Stacks In Library Circulating": {}, "WVUD Closed Stacks": {}, "WVUD Microfiche": {}, "WVUD Microfilm": {}, "WVUE Children's Award Winners Collection": {}, "WVUE Children's Collection": {}, "WVUE Closed Stacks In Library Circulating": {}, "WVUE Closed Stacks": {}, "WVUE Compact Shelving": {}, "WVUE Cookbook Collection": {}, "WVUE DVD": {}, "WVUE Government Documents": {}, "WVUE Leisure Reading": {}, "WVUE Microfiche": {}, "WVUE Microfilm": {}, "WVUE Miniature Score": {}, "WVUE Oversize": {}, "WVUE Patent": {}, "WVUE Stacks": {}, "WVUH Audiovisuals": {}, "WVUH CD-ROM": {}, "WVUH Closed Stacks In Library Circulating": {}, "WVUH Closed Stacks": {}, "WVUH Current Stacks": {}, "WVUH DVDS": {}, "WVUH Government Documents": {}, "WVUH Leisure Reading Collection": {}, "WVUH Microfiche": {}, "WVUH Microfilm": {}, "WVUL General Collection Non-Circulating": {}, "WVUL General Collection": {}, "WVUL Law Cleanup": {}, "WVUL Legal Leisure": {}, "WVUL Media Services Equipment 4 hours": {}, "WVUL Media Services Equipment 7 day": {}, "WVUL Media": {}, "WVUL Online": {}, "WVUL Oversize": {}, "WVUL Racial Justice Collection": {}, "WVUL Rare Book Room": {}, "WVUL Reference": {}, "WVUL Reserve": {}, "WVUL Storage": {}, "WVUL Study Aids": {}, "WVUL Video Collection": {}, "WVUL West Virginia Collection Non-Circulating": {}, "WVUL West Virginia Collection": {} }
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
  let mainIsil;
  for (let x = 0; x < crecs.length; x++) {
    let crec = crecs[x];
    let sid = crec.sourceId;
    let lid = crec.localId;
    let rec = crec.payload.marc;
    let unknown = false;
    let anotes = [];
    if (rec.leader) {
      rec.leader = rec.leader.replace(/^\D{5}/, '00000');
      rec.leader = rec.leader.replace(/^(.{10})22\D{5}/, '$12200000');
    }
    let lerr = (rec.leader && !rec.leader.match(/^\d{5}[a-z]{3}[ a][ a]22\d\d\d\d\d...4500$/)) ? true : false;
    if (!rec.leader || lerr) {
      let badLeader = rec.leader;
      rec.leader = '00000nam a2200000 a 4500';
      unknown = true;
      let noteField = {
        '599': {
          ind1: ' ',
          ind2: ' ',
          subfields: [
            { a: `Encountered a bad leader "${badLeader}". Using the default leader.`}
          ]
        }
      };
      rec.fields.push(noteField);
    }
    let rsize = rec.leader.substring(0, 5);
    if (rsize > preSize) {
      isMainBib = 1;
      mainIsil = sid;
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
      if (tag.match(/050|082|09\d/)) {
        let csubs = getSubs(field[tag]);
        let a = (csubs.a) ? csubs.a.join(' ') : '';
        bibCall[tag] = (a && csubs.b) ? a + ' ' + csubs.b[0] : (a) ? a : '';
      }
      if (!recFields[tag]) recFields[tag] = [];
      recFields[tag].push(field[tag]);
      if (isMainBib) { 
        if ((tag > '009' && tag < '831') || tag.match(/^88./)) {
          mainBib.fields.push(field);
        }
        if (tag === '008' || tag === '007' || tag === '006') mainBib.fields.push(field);
      }
      if (tag === '583') {
        for (let x = 0; x < field[tag].subfields.length; x++) {
          let sf = field[tag].subfields[x];
          let c = Object.keys(sf)[0];
          let v = sf[c]
          anotes.push(`$${c} ${v}`);
        }
      }
    }

    let lf = localFields[sid];
    let controlNumber = lid;

    // control number updates 
    controlNumber = controlNumber.replace(/^oai.+:/, '');

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
        let ind2 = (lf.online) ? '2' : (lf.isVendor) ? '3' : '1';
        let outItem = {
          '999' : {
            ind1: "1",
            ind2: ind2,
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

        if (!(lf.isVendor || lf.online)) {
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
            pol = lf.lendFunc(recFields, outItem['999']) || pol;
          }
          let policy = (pol) ? 'LOANABLE' : 'UNLOANABLE';
          outItem['999'].subfields.push({ p: policy });
          if (anotes[0]) {
            let andata = anotes.join(', ');
            outItem['999'].subfields.push({ '0': andata})
          }
        }
        outItems.push(outItem);
      }
    }
  }

  mainBib.fields.unshift({ '005': f005 });
  if (mainIsil) mainBib.fields.unshift({ '003': mainIsil });
  mainBib.fields.unshift({ '001': f001 });
  mainBib.fields.push(...f999s);
  mainBib.fields.push(...outItems);
  return JSON.stringify(mainBib, null, 2);
}

