import jp from 'jsonpath';

const localFields = {
  'US-CST': { 
    tag: '999',
    subs: {
      a: 'ml',
      b: 'i',
      c: 'a',
      d: 'w'
    }
  }
};

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
    for (let y = 0; y < rec.fields.length; y++) {
      let field = rec.fields[y];
      let tag = Object.keys(field)[0];
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
      let policy = 'LOANABLE';
      let items = jp.query(rec.fields, `$..${lf.tag}.subfields`);
      for (let i = 0; i < items.length; i++) {
        let item = items[i];
        let outItem = {
          '999' : {
            ind1: 1,
            ind2: 1,
            subfields: [
              { l: lid },
              { s: sid },
              { p: policy },
              { t: mtype }
            ]
          }
        }
        for (let c in lf.subs) {
          let codes = lf.subs[c].split('');
          let fdata = [];
          for (let x = 0; x < codes.length; x++) {
            let code = codes[x];
            let res = jp.query(item, `$..${code}`);
            fdata.push(res);
          }
          let text = fdata.join(' ');
          if (text) {
            let obj = {};
            obj[c] = text;
            outItem['999'].subfields.push(obj);
          }
        }
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

