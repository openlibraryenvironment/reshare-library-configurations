const localFields = {
  'US-CST': { 
    item: { tag: '999', a: 'ml', i: 'i', c: 'a', d: 'w' },
    rules: {
      'ARS STACKS': { l: 1 },
      'SAL3 STACKS': { l: 1 }
    }
  }
};

function getFields(rec) {
  let tags = [];
  let out = {};
  rec.fields.forEach(f => {
    for (let t in f) {
      if (!out[t]) out[t] = [];
      out[t].push(f[t]);
    }
  });
  return out;
}

function getSubs(field) {
  let subs = {};
  field.subfields.forEach(s => {
    let code = Object.keys(s);
    if (!subs[code]) subs[code] = [];
    subs[code].push(s[code]);
  });
  return subs;
}

function cluster_transform_old(clusterStr) {
  
  let cluster = JSON.parse(clusterStr);
  cluster.records.forEach(r => {
    let sid = r.sourceId;
    let lid = r.localId;
    let rec = r.payload.marc;
    let matType = rec.leader.substring(6, 8);
    let fields = getFields(rec);
    let locFields = localFields[sid];
    let itemTag = (locFields) ? locFields.item.tag : '';
    if (fields[itemTag]) {
      fields[itemTag].forEach(f => {
        let loc;
        let outField = {
          '999': {
            ind1: '1',
            ind2: '1',
            subfields: [
              { l: lid },
              { s: sid },
              { t: matType }
            ]
          }
        };
        let subs = getSubs(f);
        for (let code in locFields.item) {
          if (code.length === 1) {
            let data = [];
            locFields.item[code].split('').forEach(c => {
              if (subs[c]) {
                let text = subs[c].join(' ');
                data.push(text);
              }
            });
            let obj = {};
            let text = data.join(' ');
            obj[code] = text;
            outField['999'].subfields.push(obj);
            if (code === 'a') loc = text;
          }
        }
        let rulesObj = {};
        let rules = locFields.rules[loc];
        if (rules && rules.l === 1) {
          rulesObj.p = 'LOANABLE';
        } else {
          rulesObj.p = 'UNLOANABLE';
        }
        outField['999'].subfields.push(rulesObj);
        r.payload.marc.fields.push(outField);
      });
    }
  });
  return JSON.stringify(cluster, null, 2);
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
  let tiSeen = 0;
  for (let x = 0; x < crecs.length; x++) {
    let crec = crecs[x];
    let rec = crec.payload.marc;
    out.leader = rec.leader;
    for (let y = 0; y < rec.fields.length; y++) {
      let field = rec.fields[y];
      let tag = Object.keys(field)[0];
      if (tag > '009' && tag < '831') {
        if (tag !== '245' || tag === '245' && !tiSeen) {
          let fkey = JSON.stringify(field);
          fkey = fkey.replace(/,{"=":".*?"}/,''); // remove and local authority links from record.
          fields.push(fkey);
        }
        if (tag === '245') tiSeen = 1;
      }
      if (tag === '008') f008 = field['008'];
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
  return JSON.stringify(out, null, 2);
}

