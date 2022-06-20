const localFields = {
  'US-CST': { 
    item: { tag: '999', l: 'ml', b: 'i' }
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

function getSubs(field, code, delimiter) {
  let data = [];
  let dlim = delimiter || ' ';
  if (field.subfields) {
    field.subfields.forEach(s => {
      for (let c in s) {
        if (!code || code.match(c)) {
          data.push(s[c]);
        }
      }
    });
    return data.join(dlim);
  } else {
    return field;
  }
}

export function cluster_transform(clusterStr) {
  let cluster = JSON.parse(clusterStr);
  cluster.records.forEach(r => {
    let sid = r.sourceId;
    let lid = r.localId;
    let rec = (r.payload) ? r.payload.marc : '';
    let fields = getFields(rec);
    let locFields = localFields[sid];
    let itemTag = (locFields) ? locFields.item.tag : '';
    if (fields[itemTag]) {
      fields[itemTag].forEach(f => {
        let location = getSubs(f, locFields.item.l);
        console.log(location);
      });
    }
  });
}