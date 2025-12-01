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
  "k": "numberOfPieces",
  "l": "localId",
  "n": "enumeration",
  "p": "policy",
  "s": "sourceId",
  "t": "type",
  "u": "chronology",
  "v": "volume",
  "w": "yearCaption",
  "x": "itemMaterialType",
  "y": "itemId"
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

#### 999 13 (vendor entries) subfields
```
{
  "a": "fullVendorName",
  "b": "price",
  "c": "currencyCode",
  "e": "priceNote",
  "i": "vendor",
  "j": "countryCode",
  "l": "localId",
  "s": "sourceId",
  "t": "type",
  "z": "availability"
}
```

NOTE: Subfield "t" carries the OCLC type code derived from leader bytes 6 and 7.  See https://www.oclc.org/bibformats/en/fixedfield/type.html
