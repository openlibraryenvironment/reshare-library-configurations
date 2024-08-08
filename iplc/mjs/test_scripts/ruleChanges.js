import fs from 'fs';
import { settings } from '../transform.mjs';

const inFile = process.argv[2];
const isil = process.argv[3];

if (!inFile) throw("Usage: node ruleChanges.js <txt_file> [ <isil> ]");

const rules = fs.readFileSync(inFile, { encoding: 'utf8'});

const inst = {};
let k;
let t;
rules.split(/\n/).forEach(l => {
    if (l.match(/^US/)) {
        k = l.trim();
        inst[k] = {};
    } else if (l.match(/^\t\w/)) {
        t = l.trim().toLowerCase();
        inst[k][t] = []
    } else {
        let d = l.trim();
        if (d) inst[k][t].push(d);
    }
});
for (let k in inst) {
    if (isil === 'list') console.log(k);
    let i = inst[k];
    let a = i.add;
    let r = i.remove;
    if (a) {
        settings[k].lendLocs.push(...a);
    }
    if (r) {
        r.forEach(x => {
            let j = settings[k].lendLocs.indexOf(x);
            if (j > -1) settings[k].lendLocs.splice(j, 1);
        })
    }
}
if (isil) {
    if (settings[isil]) {
        settings[isil].lendLocs.sort();
        console.log('lendLocs: ' + JSON.stringify(settings[isil].lendLocs));
    } else {
        console.log(`ISIL symbol ${isil} not found!`);
    }
} else {
    console.log(settings);
}

