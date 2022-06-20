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

export function cluster_transform(clusterStr) {
  let cluster = JSON.parse(clusterStr);
  cluster.records.forEach(r => {
    let sid = r.sourceId;
    let lid = r.localId;
    let rec = (r.payload) ? r.payload.marc : '';
    let matType = rec.leader.substring(6,8);
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