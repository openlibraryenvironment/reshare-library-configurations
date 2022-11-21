import fs from 'fs';
import { transform } from '../transform.mjs';

const inFile = process.argv[2];

if (!inFile) throw("Usage: node runLocalFields.js <cluster_file>");

const cluster = fs.readFileSync(inFile, { encoding: 'utf8'});

const out = transform(cluster);

console.log(out);

