### CCLP transformer definitions

#### 999 11 (library items and vendor data) subfields
```
{
  "a": "location",
  "b": "barcode",
  "c": "callNumber",
  "d": "callNumberType",
  "g": "copy",
  "i": "institutionName",
  "j": "vendor",
  "k": "numberOfPieces",
  "l": "localId",
  "m": "price",
  "n": "enumeration",
  "o": "territory",
  "p": "policy",
  "q": "currency",
  "r": "priceType",
  "s": "sourceId",
  "t": "type",
  "u": "chronology",
  "v": "volume",
  "w": "yearCaption",
  "x": "itemMaterialType",
  "y": "itemId",
  "z": "availability"
}
```

#### 999 12 (online items) subfields
```
{
  "i": "instutionName",
  "l": "localId",
  "s": "sourceId",
  "t": "type",
  "u": "uri",
  "r": "rights",
  "x": "nonPublicNote",
  "z": "publicNote"
}
```

NOTE: Subfield "t" carries the OCLC type code derived from leader bytes 6 and 7.  See https://www.oclc.org/bibformats/en/fixedfield/type.html
