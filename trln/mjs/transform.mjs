/*
  Subfield guide: a: location, b: barcode, c: callNumber, d: callNumberType, g: copy, k: numberOfPieces, i: institutionName, 
  n: enumeration, m: description, u: chronology, v: volume, w: yearCaption, x: itemMaterialType, y: itemId, z: note
*/

const localFields = {
  'US-NCD': {
    name: 'Duke University',
    tag: '940',
    subs: { a: 'b,c', b: 'p', c: 'h', d: 'd', x: 'r', y: 'k', s: 'm', z: 'z' },
    lendLocs: ['LAW LALUI', 'LAW LCHRI', 'LAW LCOX', 'LAW LEMP', 'LAW LGEN', 'LILLY PL2', 'LILLY PL2F', 'LILLY PL3', 'LILLY PLD', 'LILLY PLI', 'LILLY PLW', 'LILLY PLWF', 'LSC PSB', 'LSC PSBF', 'LSC PSBQ', 'LSC PSD', 'LSC PSDF', 'LSC PSDQ', 'LSC PSDV', 'LSC PSK', 'LSC PSK2', 'LSC PSK6', 'LSC PSKC', 'LSC PSKE', 'LSC PSKEF', 'LSC PSKEQ', 'LSC PSKF', 'LSC PSKJ', 'LSC PSKL', 'LSC PSKL', 'LSC PSKLF', 'LSC PSKN', 'LSC PSKOH', 'LSC PSKQ', 'LSC PSV', 'LSC PSZ', 'MUSIC PM', 'MUSIC PM9', 'MUSIC PMF', 'MUSIC PMF9', 'MUSIC PMMS', 'MUSIC PMMS9', 'MUSIC PMT', 'MUSIC PMTF', 'PERKN PK', 'PERKN PK2', 'PERKN PKE', 'PERKN PKEF', 'PERKN PKF', 'PERKN PKFF', 'PERKN PKQ', 'PERKN PKT']
  },
  'US-NCRS': {
    name: 'NC State University',
    tag: '999',
    subs: { a: 'm,l', c: 'a', d: 'w', x: 't', y: 'i' },
    lendLocs: ['BOOKBOT CUR-PER', 'BOOKBOT FLOATDVD', 'BOOKBOT HAB-REF', 'BOOKBOT MATH', 'BOOKBOT MEDIA', 'BOOKBOT MFGUIDES', 'BOOKBOT MICROFORMS', 'BOOKBOT NCDOCS-MF', 'BOOKBOT OVERSIZE', 'BOOKBOT OVERSIZE2', 'BOOKBOT REF', 'BOOKBOT REF-USDOCS', 'BOOKBOT SMALLBOOK', 'BOOKBOT STACKS', 'BOOKBOT STCKS-SRL', 'BOOKBOT US-DOCS', 'BOOKBOT US-DOCS-CB', 'BOOKBOT US-DOCS-MF', 'BOOKBOT US-DOCS-MP', 'BOOKBOT US-DOCS-O2', 'BOOKBOT US-DOCS-OV', 'BOOKBOT US-DOCS-PF', 'BOOKBOT US-DOCS-PT', 'DESIGN OVERSIZE', 'DESIGN OVERSIZE2', 'DESIGN SMALLBOOK', 'DESIGN STACKS', 'DHHILL DATASPACE', 'DHHILL DISPLAY', 'DHHILL EXHIBITS', 'DHHILL FACPUBS-RR', 'DHHILL FACPUBS-RR', 'DHHILL FLOATDVD', 'DHHILL INNOSTUD', 'DHHILL JUV-FICT', 'DHHILL MAKERSPACE', 'DHHILL MAPS', 'DHHILL MICROFORMS', 'DHHILL NCDOCS-MF', 'DHHILL NEWBOOK', 'DHHILL OVERSIZE', 'DHHILL OVERSIZE2', 'DHHILL POPREAD', 'DHHILL SMALLBOOK', 'DHHILL STACKS', 'DHHILL STCKS-SRL', 'DHHILL TECCLASSIC', 'DHHILL US-DOCS', 'DHHILL US-DOCS-MF', 'DHHILL US-DOCS-PF', 'DHHILL US-DOCS-PT', 'HUNT DATASPACE', 'HUNT FACPUBS-RR', 'HUNT FLOATDVD', 'HUNT OVERSIZE', 'HUNT SCI-BEST', 'HUNT STACKS', 'HUNT TECCLASSIC', 'LRL GRAPH-NOV', 'LRL INFOTEXT', 'LRL JUV-FICT', 'LRL STACKS', 'LRL YA-FICT', 'NRL STACKS', 'VETMED OVERSIZE', 'VETMED STACKS']
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

