import { showSettings } from '../transform.mjs';

let settings = showSettings();
let setStr = JSON.stringify(settings, null, 2);
console.log(setStr);
