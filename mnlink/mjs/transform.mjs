/*
  Subfield guide: a: location, b: barcode, c: callNumber, d: callNumberType, g: copy, k: numberOfPieces, i: institutionName, 
  n: enumeration, u: chronology, v: volume, w: yearCaption, x: itemMaterialType, y: itemId
*/

const localFields = {
  'US-MNLEW': {
    name: 'Washington County Library',
    ils: 'Symphony',
    tag: '999',
    subs: { a: 'l', c: 'a', d: 'w', b: 'i', x: 't', y: 'i' },
    lendLocs: { AUDIOBK_JN: {}, AUDIOBK_NF: {}, AUDIOBK_YA: {}, AUDIOBOOK: {}, AUDIOBOOKJ: {}, CD: {}, CDJ: {}, CHINESE: {}, DECODABLE: {}, DVDF: {}, DVDJ: {}, DVDJN: {}, DVDN: {}, DVDTEEN: {}, EARLYREAD: {}, EASY_NF: {}, ER_BOOKCD: {}, FICTION: {}, GAMES: {}, GRAPHIC: {}, GRAPHIC_J: {}, GRAPHIC_NF: {}, GRAPHIC_T: {}, HMONG: {}, HOLIDAY: {}, J_FICTION: {}, J_NONFIC: {}, LARGEPRINT: {}, MAGAZINES: {}, MYSTERY: {}, NONFICTION: {}, PB_FICTION: {}, PB_MYSTERY: {}, PB_ROMANCE: {}, PB_SCIFI: {}, PB_WESTERN: {}, PICTURE_BK: {}, PIC_BOOKCD: {}, PROF_COLL: {}, REFERENCE: {}, ROMANCE: {}, SCIFI: {}, SOMALI: {}, SPA_BOARD: {}, SPA_EARLY: {}, SPA_E_NF: {}, SPA_F: {}, SPA_G: {}, SPA_J_F: {}, SPA_J_G: {}, SPA_J_NF: {}, SPA_NF: {}, SPA_PIC: {}, TEEN: {}, TEEN_NF: {}, VIDEOGAMES: {}, WESTERNS: {} }
  },
  'US-MNFFV': {
    name: 'Viking Library System',
    ils: 'Horizon',
    tag: '945',
    subs: { a: 'c,d', c: 'e', d: 'f', b: 'b', x: 'a', y: 'n' },
    lendItypes: { ac: 1, acsp: 1, bk: 1, cbc: 1, cbcd: 1, cd: 1, cdsp: 1, chper: 1, cper: 1, dvd: 1, dvdtv: 1, hol: 1, idvd: 1, pb: 1, per: 1, pro: 1, sc: 1, sm: 1, v: 1, vr: 1 }
  },
  'US-MNDU': {
    name: 'Duluth Public Library',
    ils: 'Polaris',
    tag: '852',
    subs: { a: 'b', c: 'k,h,i,m', d: 'j', b: 'p', x: '7' },
    lendItypes: { 'True': 1 }
  },
  'US-MNMHCL': {
    name: 'Hennepin County Library',
    ils: 'Horizon',
    idField: '999a',
    tag: '949',
    subs: { a: 'm,c', c: 'd', d: 'q', b: 'b', v: 'e', x: 't', y: 'n' },
    lendItypes: { 'a10': 1, 'a21': 1, 'a7': 1, 'j21': 1, 'j7': 1 }
  },
  'US-MNWILPLS': {
    name: 'Pioneerland Library System',
    ils: 'III',
    idField: '907a',
    tag: '945',
    subs: { a: 'l', c: '%99', b: 'i', x: 't', y: 'y' },
    notLendLocs: { apar: {}, apeq: {}, apjr: {}, apref: {}, apres: {}, atar: {}, ateq: {}, atjr: {}, atref: {}, atres: {}, bear: {}, beeq: {}, bejr: {}, beref: {}, beres: {}, biar: {}, bieq: {}, bijr: {}, biref: {}, bires: {}, brar: {}, breq: {}, brjr: {}, brref: {}, brres: {}, caar: {}, caeq: {}, cajr: {}, caref: {}, cares: {}, ccar: {}, cceq: {}, ccjr: {}, ccref: {}, ccres: {}, coar: {}, coeq: {}, cojr: {}, coref: {}, cores: {}, dsar: {}, dseq: {}, dsjr: {}, dsref: {}, dsres: {}, dwar: {}, dweq: {}, dwjr: {}, dwref: {}, dwres: {}, fxar: {}, fxeq: {}, fxjr: {}, fxref: {}, fxres: {}, gcar: {}, gceq: {}, gcjr: {}, gcref: {}, gcres: {}, gfar: {}, gfeq: {}, gfjr: {}, gfref: {}, gfres: {}, glar: {}, gleq: {}, gljr: {}, glref: {}, glres: {}, grar: {}, greq: {}, grjr: {}, grref: {}, grres: {}, hear: {}, heeq: {}, hejr: {}, heref: {}, heres: {}, huar: {}, hueq: {}, hujr: {}, huref: {}, hures: {}, khar: {}, kheq: {}, khjr: {}, khref: {}, khres: {}, lfar: {}, lfeq: {}, lfjr: {}, lfref: {}, lfres: {}, llar: {}, lleq: {}, lljr: {}, llref: {}, llres: {}, mdar: {}, mdeq: {}, mdjr: {}, mdref: {}, mdres: {}, miar: {}, mieq: {}, mijr: {}, miref: {}, mires: {}, moar: {}, moeq: {}, mojr: {}, moref: {}, mores: {}, myar: {}, myeq: {}, myjr: {}, myref: {}, myres: {}, nlar: {}, nleq: {}, nljr: {}, nlref: {}, nlres: {}, olar: {}, oleq: {}, oljr: {}, olref: {}, olres: {}, orar: {}, oreq: {}, orjr: {}, orref: {}, orres: {}, rear: {}, reeq: {}, rejr: {}, reref: {}, reres: {}, ryar: {}, ryeq: {}, ryjr: {}, ryref: {}, ryres: {}, spar: {}, speq: {}, spjr: {}, spref: {}, spres: {}, wlar: {}, wleq: {}, wljr: {}, wlref: {}, wlres: {}, wnar: {}, wneq: {}, wnjr: {}, wnref: {}, wnres: {} }
  },
  'US-MNTNR': {
    name: 'Northwest Regional Library',
    ils: 'Evergreen',
    tag: '852',
    subs: { a: 'b,c', c: 'j', b: 'p', v: 'v', x: 'g', y: 'p' },
    lendLocs: { 'GODEL Main': {}, 'GREENBUSH Main': {}, 'HALLOCK Main': {}, 'RED_LAKE_FALLS Main': {}, 'ROSEAU Main': {}, 'THIEF_RIVER_FALLS Main': {}, 'WARROAD Main': {}, 'ZLINK_GRYGLA Main': {}, 'ZLINK_KARLSTAD Main': {}, 'ZLINK_MIDDLE_RIVER Main': {} }
  },
  'US-MNMOHL': {
    name: 'Lake Agassiz Regional Library',
    ils: 'Evergreen',
    tag: '852',
    subs: { a: 'b,c', c: 'j', b: 'p', v: 'v', x: 'g', y: 'p' },
    lendLocs: { 'ADA Main': {}, 'ADA New': {}, 'BAGLEY Main': {}, 'BAGLEY New': {}, 'BARNESVILLE Main': {}, 'BARNESVILLE New': {}, 'BRECKENRIDGE Main': {}, 'BRECKENRIDGE New': {}, 'CLIMAX Main': {}, 'CLIMAX New': {}, 'CROOKSTON Main': {}, 'CROOKSTON New': {}, 'DETROIT_LAKES Main': {}, 'DETROIT_LAKES New': {}, 'FERTILE Main': {}, 'FERTILE New': {}, 'FOSSTON Main': {}, 'FOSSTON New': {}, 'HAWLEY Main': {}, 'HAWLEY New': {}, 'MAHNOMEN Main': {}, 'MAHNOMEN New': {}, 'MCINTOSH Main': {}, 'MCINTOSH New': {}, 'MOORHEAD Main': {}, 'MOORHEAD New': {}, 'ZLINK_CORMORANT Main': {}, 'ZLINK_CORMORANT New': {}, 'ZLINK_FRAZEE Main': {}, 'ZLINK_FRAZEE New': {}, 'ZLINK_GONVICK Main': {}, 'ZLINK_GONVICK New': {}, 'ZLINK_HALSTAD Main': {}, 'ZLINK_HALSTAD New': {}, 'ZLINK_HENDRUM Main': {}, 'ZLINK_HENDRUM New': {}, 'ZLINK_LAKE_PARK Main': {}, 'ZLINK_LAKE_PARK New': {}, 'ZLINK_ROTHSAY Main': {}, 'ZLINK_ROTHSAY New': {}, 'ZLINK_TWIN_VALLEY Main': {}, 'ZLINK_TWIN_VALLEY New': {}, 'ZLINK_ULEN Main': {}, 'ZLINK_ULEN New': {} }
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

    /* control number updates (uncomment if needed)

    if (sid === 'US-ISILCODE') {
      controlNumber = controlNumber.replace(/.+:/, 'u');
    }

    */

    if (lf && lf.idField) {
      let tag = lf.idField.substring(0, 3);
      let sf = lf.idField.substring(3);
      let field = recFields[tag];
      if (field && sf) {
        let subs = getSubs(field[0]);
        controlNumber = (subs[sf]) ? subs[sf][0] : '';
      }
    } else if (recFields['001']) { 
      controlNumber = recFields['001'][0] || '';
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
          pol = lf.lendFunc(recFields, outItem['999']) || pol;
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

