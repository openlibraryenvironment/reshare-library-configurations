/*
  Subfield guide: a: location, b: barcode, c: callNumber, d: callNumberType, g: copy, k: numberOfPieces, u: chronology, v: volume, w: yearCaption, x: itemMaterialType, y: itemId
*/

const localFields = {
  'US-CST': { 
    tag: '999',
    subs: { a: 'm,l', b: 'i', c: 'a', d: 'w', k: 'j', y: 'i' },
    lendLocs: ['ARS STACKS', 'ART STACKS', 'EARTH-SCI ATLASES', 'EARTH-SCI MEZZANINE', 'EARTH-SCI STACKS', 'EARTH-SCI TECH-RPTS', 'EAST-ASIA CHINESE', 'EAST-ASIA JAPANESE', 'EAST-ASIA KOREAN', 'EDUCATION STACKS', 'EDUCATION STORAGE', 'GREEN CALIF-DOCS', 'GREEN FED-DOCS', 'GREEN FOLIO-FLAT', 'GREEN INTL-DOCS', 'GREEN STACKS', 'MUSIC FOLIO', 'MUSIC MINIATURE', 'MUSIC SCORES', 'MUSIC STACKS', 'SAL SAL-ARABIC', 'SAL SAL-FOLIO', 'SAL SAL-PAGE', 'SAL SALTURKISH', 'SAL SOUTH-MEZZ', 'SAL STACKS', 'SAL3 STACKS', 'SCIENCE STACKS']
  },
  'US-ICU': {
    tag: '927',
    subs: { a: 'c', b: 'b', c: 'a', d: 't', v: 'v', y: 'i' },
    lendLocs: ['ASR-JRLASR', 'ASR-LawASR', 'ASR-LawSupr', 'ASR-RecASR', 'ASR-SciASR', 'DLL-Law', 'DLL-LawCity', 'DLL-LawDisp', 'DLL-LawFul', 'DLL-LawMic', 'DLL-LawPer', 'DLL-LawWell', 'Eck-Eck', 'JCL-Games', 'JCL-Sci', 'JCL-SciDDC', 'JCL-SciLg', 'JCL-SFilm', 'JCL-SMedia', 'JRL-CJK', 'JRL-Film', 'JRL-Gen', 'JRL-GenHY', 'JRL-LawMicG', 'JRL-Mic', 'JRL-Pam', 'JRL-SciMic', 'JRL-SMicDDC', 'JRL-W', 'JRL-WCJK', 'JRL-XClosedCJK', 'JRL-XClosedGen', 'SWL-SWL', 'SWL-SWLMic']
  },
  'US-MDBJ': { 
    tag: '991',
    subs: { a: 'c,d', b: 'a', c: 'f', d: 'e', g: 'g', k: 'k', y: 'j' },
    lendLocs: []
  },
  'US-NIC': {
    tag: '852',
    linkedField: '890',
    linkSub: '0',
    subs: { a: '890l', b: '890b', c: 'k,h,m', d: '2', k: '890n', u: '890c', v: '890e', w: '890y', x: '890t', y: '890a' },
    lendLocs: ['Ent,anx', 'afr', 'afr,anx', 'asia', 'asia,anx', 'asia,av', 'ech', 'ech,anx', 'ech,av', 'engr', 'engr,anx', 'engr,ref', 'ent', 'fine', 'fine,anx', 'gnva', 'gnva,anx', 'hote', 'hote,anx', 'ilr', 'ilr,anx', 'jgsm,anx', 'law', 'law,anx', 'mann', 'mann,anx', 'mann,anxt', 'math', 'math,anx', 'math,desk', 'mus', 'mus,anx', 'oclc,olim', 'olin', 'olin,anx', 'olin,av', 'orni,anx', 'phys,anx', 'rmc,ice', 'sasa', 'sasa,anx', 'sasa,av', 'uris', 'uris,anx', 'vet', 'vet,anx', 'was', 'was,anx', 'was,av']
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
  },
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

    let f999 = {
      ind1: '1',
      ind2: '0',
      subfields: [
        { i: cluster.clusterId },
        { l: lid },
        { s: sid }
      ]
    };
    for (let a = 0; a < cluster.matchValues.length; a++) {
      f999.subfields.push({ m: cluster.matchValues[a] });
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
              { l: lid },
              { s: sid },
              { t: mtype }
            ]
          }
        }
        let subData = getSubs(item);
        let location = '';
        for (let c in lf.subs) {
          if (lf.linkSub && lf.subs[c].match(/^\w{3}/)) {
            let lsf = lf.subs[c].substring(3);
            let linkDat = subData[lf.linkSub];
            if (linkDat) {
              let linkedItem = linkedFields[linkDat];
              let linkedSubs = getSubs(linkedItem) || {};
              let linkedData = linkedSubs[lsf] || [];
              if (linkedData[0]) {
                let linkedSubField = {};
                if (c === 'a') location = linkedData[0];
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
        }

        let policy = (lf.lendLocs.indexOf(location) > -1) ? 'LOANABLE' : 'UNLOANABLE';
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

