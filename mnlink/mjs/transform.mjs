/*
  Subfield guide: a: location, b: barcode, c: callNumber, d: callNumberType, g: copy, k: numberOfPieces, i: institutionName, 
  n: enumeration, u: chronology, v: volume, w: yearCaption, x: itemMaterialType, y: itemId
*/

const localFields = {
  'US-MNWOP': {
    name: 'Plum Creek Library System',
    ils: 'Koha',
    tag: '952',
    subs: { a: 'c', c: 'o', d: '2', b: 'p', x: 'y', y: 'i' },
    notLendLocs: {'BRD-BK':{}, BARNKIT:{}, BINDERY:{}, BOOKCLUB:{}, CATALOGING:{}, CHILDSTORAGE:{}, GAMEBRD:{}, GAMRES:{}, ILLN:{}, JPUZZLE:{}, MLCLLIVE:{}, MNREF:{}, MP3:{}, OFFICE:{}, ONORD:{}, OUTKIT:{}, OUTSTOR:{}, PUP:{}, PUZ:{}, REFERENCE:{}, STAFF:{}, STEAM:{}, STORAGE:{}, STORPBK:{}, VERTFILE:{}, VGAME:{}, WOW:{}}
  },
  'US-MNSST': {
    name: 'University of St. Thomas, O\'Shaughnessy-Frey Library',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%090|%050|%092|%082', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNWADNTC': {
    name: 'Minnesota State Community and Technical College, Wadena',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%090|%092|%082|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNMOHNTC': {
    name: 'Minnesota State Community and Technical College, Moorhead',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNFFC': {
    name: 'Minnesota State Community and Technical College, Fergus Falls',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNDLTI': {
    name: 'Minnesota State Community and Technical College, Detroit Lakes',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%093|%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNELYV': {
    name: 'Minnesota North College, Vermilion',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%090|%050|%092|%082', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNIFRC': {
    name: 'Minnesota North College, Rainy River',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%099|%090|%050|%092|%082', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNVM': {
    name: 'Minnesota North College, Mesabi Range',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNGRI': {
    name: 'Minnesota North College, Itasca',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNHIBC': {
    name: 'Minnesota North College, Hibbing',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNMN': {
    name: 'Normandale Community College',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%090|%050|%092|%082', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNWILTC': {
    name: 'Ridgewater College, Willmar',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNHURCL': {
    name: 'Ridgewater College, Hutchinson',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%091|%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNTINCT': {
    name: 'Northland Community & Technical College, Thief River Falls',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNEGFNCT': {
    name: 'Northland Community & Technical College, East Grand Forks',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNMPSMU': {
    name: 'Saint Mary\'s University of Minnesota, Twin Cities',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNWINOSM': {
    name: 'Saint Mary\'s University of Minnesota, Winona',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNNMT': {
    name: 'South Central College, North Mankato',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNFBSCT': {
    name: 'South Central College, Faribault',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNEPHTC': {
    name: 'Hennepin Technical College, Eden Prairie',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNBPHTC': {
    name: 'Hennepin Technical College, Brooklyn Park',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNCRPARC': {
    name: 'Anoka-Ramsey Community College, Coon Rapids',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNCAARC': {
    name: 'Anoka-Ramsey Community College, Cambridge',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNSTCLVT': {
    name: 'St. Cloud Technical & Community College',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNSTC': {
    name: 'Saint Paul College',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MN': {
    name: 'Minnesota State Law Library',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNANVT': {
    name: 'Anoka Technical College',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNALETI': {
    name: 'Alexandria Technical & Community College',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNMARS': {
    name: 'Southwest Minnesota State University',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNSSC': {
    name: 'St. Catherine University',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNSTCLS': {
    name: 'St. Cloud State University',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNRON': {
    name: 'University of Northwestern - St. Paul',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNGVCAE': {
    name: 'Perpich Center for Arts Education',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNBEMNTC': {
    name: 'Northwest Technical College',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNWINOS': {
    name: 'Winona State University',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNMNHE': {
    name: 'North Hennepin Community College',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNMANS': {
    name: 'Minnesota State University, Mankato',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNMOHS': {
    name: 'Minnesota State University Moorhead',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNHI': {
    name: 'Minnesota Historical Society',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNHW': {
    name: 'Minnesota Department of Transportation',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNSPMLR': {
    name: 'Minnesota Legislative Reference Library',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNSPMDR': {
    name: 'Minnesota Department of Revenue',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNN': {
    name: 'Minnesota Department of Natural Resources',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNMPCTC': {
    name: 'Minneapolis College',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNMCA': {
    name: 'Minneapolis College of Art and Design',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNSPMSU': {
    name: 'Metropolitan State University',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNDULSC': {
    name: 'Lake Superior College',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNCASLLT': {
    name: 'Leech Lake Tribal College',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNIGS': {
    name: 'Inver Hills Community College',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNSH': {
    name: 'Hamline University',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNCLFC': {
    name: 'Fond du Lac Tribal and Community College',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNRTDTC': {
    name: 'Dakota County Technical College',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNWBLCC': {
    name: 'Century College',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNBRC': {
    name: 'Central Lakes College',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNSB': {
    name: 'Bethel University',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNMANBC': {
    name: 'Bethany Lutheran College',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNDUSTS': {
    name: 'College of St. Scholastica',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNBEMS': {
    name: 'Bemidji State University',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNSCC': {
    name: 'Concordia University, St. Paul',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNPCT': {
    name: 'Pine Technical and Community College',
    ils: 'Alma',
    tag: '909',
    subs: { a: 'l', c: '%092|%082|%090|%050', b: 'b', k: 'p', n: 'e', u: 'c', x: 'm', y: 'a' },
    notLendLocs: {}
  },
  'US-MNU': {
    name: 'University of Minnesota',
    ils: 'Alma',
    idField: '001',
    tag: '952',
    subs: { a: 'a', c: 'd', d: 'n', b: 'c', x: 'm', y: 'i' },
    lendLocs: {TARCHGEN:{}, TARCHOVF:{}, TBIOMGEN:{}, TBIOMGENJS:{}, TBIOMGENS:{}, TBIOMGENVS:{}, TBIOMTHSJS:{}, TBIOMTHSVS:{}, TCOSGEN:{}, TCOSSN1:{}, TCOSSN2:{}, TLAWGEN:{}, TLAWUSD:{}, TMAGRGEN:{}, TMAGRGOV:{}, TMAGRGOVS:{}, TMAGRGOVU:{}, TMAGRTHS:{}, TMATHGEN:{}, TMUSIGEN:{}, TNRLGEN:{}, TNRLGOV:{}, TNRLGOVCD:{}, TNRLGOVS:{}, TNRLGOVU:{}, TNRLGOVUM:{}, TNRLMAP:{}, TNRLTHS:{}, TNRLVID:{}, TSCIGEN:{}, TSCIOVF:{}, TSCITHS:{}, TWILSAME:{}, TWILSCLS:{}, TWILSCLSE:{}, TWILSCLSJ:{}, TWILSCLSM:{}, TWILSEAS:{}, TWILSGEN:{}, TWILSGEND:{}, TWILSGENR:{}, TWILSGOVCD:{}, TWILSGOVCG:{}, TWILSGOVH:{}, TWILSGOVK:{}, TWILSGOVN:{}, TWILSGOVO:{}, TWILSGOVQ:{}, TWILSGOVU:{}, TWILSMAP:{}, TWILSTHS:{}, ZMLACGEN:{}, ZMLACGENX:{}, ZMLACLAW:{}, ZMLACMPL:{}, ZMLACOWL:{}, ZMLACSPP:{}, ZMLACUMD:{}, ZMLACUMDN:{}}
  },
  'US-MNSHS': {
    name: 'Scott County Library',
    ils: 'Symphony',
    tag: '999',
    subs: { a: 'l', c: 'a', d: 'w', b: 'i', x: 't' },
    lendLocs: {'AV-BKSONCD':{}, 'AV-CD':{}, 'AV-DVD':{}, 'EARLY READ':{}, 'EASY-NONF':{}, 'EASY-SPEC':{}, 'JUV-GRAPHI':{}, 'JUV-MAG':{}, 'JUV-MAUD':{}, 'JUV-SERIES':{}, 'WORLD EASY':{}, 'WORLD LANG':{}, 'YA-GRAPHIC':{}, 'YA-MAG':{}, 'YA-SERIES':{}, BOARDBKS:{}, BUSINESS:{}, EASYBOOK:{}, GAMES:{}, GRAPHICFIC:{}, JUVENILE:{}, LARGEPRINT:{}, MAGAZINE:{}, PAPERBACK:{}, PARENTING:{}, PROFSSNL:{}, REFERENCE:{}, RESHELVING:{}, SHELF:{}, WORLD_JUV:{}, WORLD_YA:{}, YA:{}}
  },
  'US-MNR': {
    name: 'Rochester Public Library',
    ils: 'Symphony',
    tag: '999',
    subs: { a: 'l', c: 'a', d: 'w', b: 'i', x: 't' },
    lendLocs: {'CHILD-DISP':{}, 'CHILD-RACE':{}, 'CIRC-DESK':{}, 'FMM-REF':{}, 'LG-PRINT':{}, 'MAG-CIRC':{}, 'MAG-ROOM':{}, 'NEW-CHILD':{}, 'NEW-FIC':{}, 'NEW-NONFIC':{}, 'NEW-YA':{}, 'NF-AV':{}, 'NF-DVD':{}, 'NF-KIT':{}, 'RACE-CHILD':{}, 'ROMANCE-PB':{}, 'SCI-FI':{}, 'SERBO-CROA':{}, AMHARIC:{}, ARABIC:{}, BOOKMOBILE:{}, CHILDRENS:{}, CHINESE:{}, CZECH:{}, DANISH:{}, DISPLAY:{}, DUTCH:{}, DVDSECURE2:{}, DVDSECURE:{}, FANTASY:{}, FARSI:{}, FICTION:{}, FINNISH:{}, FRENCH:{}, GENEALOGY:{}, GERMAN:{}, GREEK:{}, GUJARATI:{}, HEBREW:{}, HINDI:{}, HMONG:{}, HOLIDAY:{}, HUNGARIAN:{}, ITALIAN:{}, JAPANESE:{}, KHMER:{}, KOREAN:{}, LAO:{}, LATIN:{}, LITERACY:{}, LITHUB:{}, LITTRAV:{}, MEDIAHOL:{}, MYSTERY:{}, NONFICTION:{}, NORWEGIAN:{}, OJIBWE:{}, OVERSIZENF:{}, PANJABI:{}, PERSIAN:{}, POLISH:{}, PORTUGUESE:{}, ROMANIAN:{}, RUSSIAN:{}, SOMALI:{}, SPANISH:{}, SWEDISH:{}, TAMIL:{}, THAI:{}, TURKISH:{}, VIETNAMESE:{}, WESTERN:{}, WORLDLANG:{}, YA:{}, YA_COMBKM:{}, YA_COMIC:{}}
  },
  'US-MNCH': {
    name: 'Carver County Library',
    ils: 'Symphony',
    tag: '999',
    subs: { a: 'l', c: 'a', d: 'w', b: 'i', x: 't' },
    lendLocs: {A_BK_CD:{}, A_CD:{}, A_DVD:{}, A_FIC:{}, A_FIC_MYST:{}, A_FIC_SCFI:{}, A_FIC_WEST:{}, A_GRAPHIC:{}, A_GRAPHIC_NF:{}, A_LARGE:{}, A_MAG:{}, A_NEWREAD:{}, A_NONFIC:{}, A_PAPER:{}, A_PB_MYST:{}, A_PB_SCIFI:{}, A_PB_WEST:{}, A_WORLD:{}, J_BK_CD:{}, J_CD:{}, J_DVD:{}, J_EASYREAD:{}, J_EASY_FIC:{}, J_EASY_NON:{}, J_FIC:{}, J_GRAPHIC:{}, J_GRAPHIC_NF:{}, J_HOLIDAY:{}, J_MAG:{}, J_NON_FIC:{}, J_PAPER:{}, J_SERIES:{}, J_WORLD:{}, LOCAL_AUTH:{}, RESHELVING:{}, STACKS:{}, STORAGE:{}, T_BK_CD:{}, T_CD:{}, T_DVD:{}, T_FIC:{}, T_GRAPHIC:{}, T_GRAPHIC_NF:{}, T_MAG:{}, T_NONFIC:{}}
  },
  'US-MNPR': {
    name: 'Kitchigami Regional Library',
    ils: 'Symphony',
    tag: '999',
    subs: { a: 'm,l', c: 'a', d: 'w', b: 'i', x: 't' },
    lendItypes: {'BOOK-W-CD':1, 'BOOK-W-DVD':1, AUDIOBOOK:1, BINGEBOX:1, BOOK:1, DVD:1, HARDCOVER:1, LARGEPRINT:1, MEGAZINE:1, MICROFORM:1, MUSICCD:1, PAPERBACK:1}
  },
  'US-MNMAC': {
    name: 'Anoka County Library',
    ils: 'Symphony',
    tag: '999',
    subs: { a: 'l', c: 'a', d: 'w', b: 'i', x: 't' },
    lendLocs: {'E-AV':{}, 'E-NONFIC':{}, 'J-AV':{}, 'J-NONFIC':{}, 'SF-FANTASY':{}, 'YA-AV':{}, 'YA-NONFIC':{}, ADULTGRAPH:{}, AMERINDIAN:{}, AV:{}, BOARDBOOKS:{}, CHILDRENS:{}, EASIES:{}, EASYREADER:{}, EJ:{}, FICTION:{}, JUVGRAPH:{}, LARGEPRINT:{}, MAGAZINES:{}, MYSTERY:{}, NONFICTION:{}, PROFESSNL:{}, ROMANCEPB:{}, WESTERN:{}, YA:{}, YAGRAPH:{}}
  },
  'US-MNWSPD': {
    name: 'Dakota County Library',
    ils: 'Symphony',
    tag: '999',
    subs: { a: 'l', c: 'a', d: 'w', b: 'i', x: 't' },
    lendLocs: {ABE:{}, BLURAY:{}, BR:{}, BRN:{}, CD:{}, CDF:{}, CDM:{}, CDN:{}, CDNI:{}, CDSF:{}, CDW:{}, CDWLSPA:{}, DVD:{}, DVDN:{}, DVDNI:{}, EZ:{}, EZR:{}, F:{}, GF:{}, GNF:{}, JBD:{}, JBLURAY:{}, JCD:{}, JDVD:{}, JDVDN:{}, JDVDNI:{}, JF:{}, JG:{}, JGAME:{}, JGNF:{}, JH:{}, JNEW:{}, JNF:{}, JPER:{}, JPLA:{}, JPS:{}, JRDF:{}, JRDN:{}, JSC:{}, JWL:{}, JWLARABIC:{}, JWLRUS:{}, JWLSOMALI:{}, JWLSPA:{}, JWLVIE:{}, LPF:{}, LPM:{}, LPN:{}, LPSF:{}, LPW:{}, M:{}, NF:{}, PBF:{}, PBM:{}, PBR:{}, PBSF:{}, PBW:{}, PER:{}, PLA:{}, SF:{}, UF:{}, W:{}, WL:{}, WLRUS:{}, WLSOM:{}, WLSPA:{}, WLVIE:{}, YAB:{}, YACDF:{}, YACDN:{}, YAF:{}, YAGAME:{}, YAGF:{}, YAGNF:{}, YAM:{}, YANF:{}, YANI:{}, YAPLA:{}, YASPA:{}}
  },
  'US-MNLEW': {
    name: 'Washington County Library',
    ils: 'Symphony',
    tag: '999',
    subs: { a: 'l', c: 'a', d: 'w', b: 'i', x: 't', y: 'i' },
    lendLocs: { AUDIOBK_JN: {}, AUDIOBK_NF: {}, AUDIOBK_YA: {}, AUDIOBOOK: {}, AUDIOBOOKJ: {}, CD: {}, CDJ: {}, CHINESE: {}, DECODABLE: {}, DVDF: {}, DVDJ: {}, DVDJN: {}, DVDN: {}, DVDTEEN: {}, EARLYREAD: {}, EASY_NF: {}, ER_BOOKCD: {}, FICTION: {}, GAMES: {}, GRAPHIC: {}, GRAPHIC_J: {}, GRAPHIC_NF: {}, GRAPHIC_T: {}, HMONG: {}, HOLIDAY: {}, J_FICTION: {}, J_NONFIC: {}, LARGEPRINT: {}, MAGAZINES: {}, MYSTERY: {}, NONFICTION: {}, PB_FICTION: {}, PB_MYSTERY: {}, PB_ROMANCE: {}, PB_SCIFI: {}, PB_WESTERN: {}, PICTURE_BK: {}, PIC_BOOKCD: {}, PROF_COLL: {}, REFERENCE: {}, ROMANCE: {}, SCIFI: {}, SOMALI: {}, SPA_BOARD: {}, SPA_EARLY: {}, SPA_E_NF: {}, SPA_F: {}, SPA_G: {}, SPA_J_F: {}, SPA_J_G: {}, SPA_J_NF: {}, SPA_NF: {}, SPA_PIC: {}, TEEN: {}, TEEN_NF: {}, VIDEOGAMES: {}, WESTERNS: {} }
  },
  'US-MNSRC': {
    name: 'Ramsey County Library',
    ils: 'Horizon',
    tag: '949',
    subs: { a: 'd', c: 'b', b: 'a', x: 'c', y: 'i' },
    lendItypes: {apb:1, avd:1, b:1, cd:1, jb:1, jcd:1, jlt:1, jpb:1, jtb:1, jvd:1, lt:1, tb:1, yb:1, ylt:1, ypb:1, ytb:1}
  },
  'US-MNRHSLC': {
    name: 'Southeastern Libraries Cooperating (SELCO)',
    ils: 'Horizon',
    tag: '949',
    subs: { a: 'a', c: 'i', b: 'f', x: 'e', y: 'f' },
    lendLocs: {al:{}, au:{}, bp:{}, br:{}, byrs:{}, cal:{}, cf:{}, chat:{}, chats:{}, chatsel:{}, dc:{}, far:{}, gm:{}, gms:{}, goods:{}, har:{}, hays:{}, hok:{}, hou:{}, hous:{}, houselm:{}, ka:{}, ken:{}, kmhs:{}, kmsint:{}, kwselm:{}, kwsmh:{}, lan:{}, lc:{}, lcr:{}, lcs:{}, ler:{}, lon:{}, lyles:{}, mab:{}, nor:{}, owat:{}, pi:{}, pis:{}, pla:{}, pre:{}, rps:{}, rush:{}, rw:{}, rwshs:{}, sc:{}, selco:{}, sg:{}, shats:{}, soushs:{}, stew:{}, stews:{}, stewsb:{}, stewsc:{}, sv:{}, wab:{}, west:{}, win:{}, wks:{}, wkselem:{}, zum:{}, zumselm:{}, zumsms:{}},
    lendItypes: {bking2w:1, bking6w:1, gc39:1, gmb21:1, gmd7:1, hfp14:1, hm7:1, hp14:1, htv14:1, ov10:1, ov11:1, ov12:1, ov14:1, ov15:1, ov17:1, ov18:1, ov19:1, ov1:1, ov20:1, ov21:1, ov22:1, ov23:1, ov24:1, ov25:1, ov26:1, ov27:1, ov28:1, ov29:1, ov2:1, ov31:1, ov32:1, ov33:1, ov39:1, ov3:1, ov40:1, ov41:1, ov42:1, ov4:1, ov5:1, ov6:1, ov701:1, ov702:1, ov703:1, ov7:1, ov8:1, ov9:1, sc16:1, sc19:1, sc701:1, sc7:1, sc9:1, schav21:1, schbk21:1}
  },
  'US-MNVA': {
    name: 'Arrowhead Library System',
    ils: 'Horizon',
    tag: '939',
    subs: { a: 'm', c: 'd', b: 'b' },
    lendLocs: {aurora:{}, babbit:{}, bdette:{}, bgfgnd:{}, bovey:{}, buhl:{}, calumt:{}, chisom:{}, cloque:{}, cook:{}, craine:{}, cton:{}, dhsdrr:{}, digital:{}, ehsesc:{}, ely:{}, evelth:{}, felfal:{}, fhsfal:{}, ghsgnd:{}, gilber:{}, gmarai:{}, gpmgnd:{}, grapid:{}, hibbng:{}, hoyt:{}, ifalls:{}, irrc:{}, keewat:{}, kssdrr:{}, marble:{}, mbook:{}, mhsccs:{}, mmslks:{}, moose:{}, mrtmib:{}, mshill:{}, mtiron:{}, nkhnke:{}, nselks:{}, shslks:{}, silver:{}, thslks:{}, twohar:{}, vrgnia:{}, wesesc:{}}
  },
  'US-MNSTCLG': {
    name: 'Great River Regional Library',
    ils: 'Horizon',
    tag: '949',
    subs: { a: 'm', c: 'd', d: 'q', b: 'n', x: 't', y: 'n' },
    lendItypes: {bk: 1, cd: 1, djmed: 1, dmed: 1, dvp: 1, dvrc3: 1, dvrc: 1, jbk: 1, jcd: 1, jdvp: 1, jdvrc3: 1, jdvrc: 1, jmed: 1, jvp: 1, jvrc3: 1, jvrc: 1, med: 1, rdvp: 1, rdvrc3: 1, rdvrc: 1, rvp: 1, rvrc3: 1, rvrc: 1, vp: 1, vrc3: 1, vrc: 1},
    lendLocs: {al: {}, an: {}, be: {}, br: {}, bu: {}, co: {}, cs: {}, cw: {}, de: {}, eb: {}, er: {}, fo: {}, ge: {}, hl: {}, hq: {}, ki: {}, lf: {}, lp: {}, me: {}, mo: {}, pa: {}, ri: {}, ry: {}, sk: {}, sm: {}, sp: {}, sw: {}, up: {}, wp: {}}
  },
  'US-MNFFV': {
    name: 'Viking Library System',
    ils: 'Horizon',
    tag: '945',
    subs: { a: 'c,d', c: 'e', d: 'f', b: 'b', x: 'a', y: 'n' },
    lendItypes: { ac: 1, acsp: 1, bk: 1, cbc: 1, cbcd: 1, cd: 1, cdsp: 1, chper: 1, cper: 1, dvd: 1, dvdtv: 1, hol: 1, idvd: 1, pb: 1, per: 1, pro: 1, sc: 1, sm: 1, v: 1, vr: 1 }
  },
  'US-MNMHCL': {
    name: 'Hennepin County Library',
    ils: 'Horizon',
    tag: '949',
    subs: { a: 'm,c', c: 'd', d: 'q', b: 'b', v: 'e', x: 't', y: 'n' },
    lendItypes: { 'a10': 1, 'a21': 1, 'a7': 1, 'j21': 1, 'j7': 1 }
  },
  'US-MNDU': {
    name: 'Duluth Public Library',
    ils: 'Polaris',
    tag: '852',
    subs: { a: 'b', c: 'k,h,i,m', d: 'j', b: 'p', x: '7' },
    lendItypes: { 'True': 1 }
  },
 'US-MNSP': {
    name: 'Saint Paul Public Library',
    ils: 'III',
    tag: '945',
    subs: { a: 'l', c: '%099|%090|%050', b: 'i', x: 't', y: 'y' },
    lendLocs: {ar:{}, c:{}, cf:{}, cg:{}, ci:{}, cm:{}, cp:{}, cs:{}, cw:{}, cx:{}, cy:{}, db:{}, fsh:{}, ha:{}, hh:{}, hi:{}, me:{}, mlac:{}, rc:{}, rd:{}, rv:{}, sa:{}, sr:{}}
  },
  'US-MNWILPLS': {
    name: 'Pioneerland Library System',
    ils: 'III',
    idField: '907a',
    tag: '945',
    subs: { a: 'l', c: '%099', b: 'i', x: 't', y: 'y' },
    notLendLocs: { apar: {}, apeq: {}, apjr: {}, apref: {}, apres: {}, atar: {}, ateq: {}, atjr: {}, atref: {}, atres: {}, bear: {}, beeq: {}, bejr: {}, beref: {}, beres: {}, biar: {}, bieq: {}, bijr: {}, biref: {}, bires: {}, brar: {}, breq: {}, brjr: {}, brref: {}, brres: {}, caar: {}, caeq: {}, cajr: {}, caref: {}, cares: {}, ccar: {}, cceq: {}, ccjr: {}, ccref: {}, ccres: {}, coar: {}, coeq: {}, cojr: {}, coref: {}, cores: {}, dsar: {}, dseq: {}, dsjr: {}, dsref: {}, dsres: {}, dwar: {}, dweq: {}, dwjr: {}, dwref: {}, dwres: {}, fxar: {}, fxeq: {}, fxjr: {}, fxref: {}, fxres: {}, gcar: {}, gceq: {}, gcjr: {}, gcref: {}, gcres: {}, gfar: {}, gfeq: {}, gfjr: {}, gfref: {}, gfres: {}, glar: {}, gleq: {}, gljr: {}, glref: {}, glres: {}, grar: {}, greq: {}, grjr: {}, grref: {}, grres: {}, hear: {}, heeq: {}, hejr: {}, heref: {}, heres: {}, huar: {}, hueq: {}, hujr: {}, huref: {}, hures: {}, khar: {}, kheq: {}, khjr: {}, khref: {}, khres: {}, lfar: {}, lfeq: {}, lfjr: {}, lfref: {}, lfres: {}, llar: {}, lleq: {}, lljr: {}, llref: {}, llres: {}, mdar: {}, mdeq: {}, mdjr: {}, mdref: {}, mdres: {}, miar: {}, mieq: {}, mijr: {}, miref: {}, mires: {}, moar: {}, moeq: {}, mojr: {}, moref: {}, mores: {}, myar: {}, myeq: {}, myjr: {}, myref: {}, myres: {}, nlar: {}, nleq: {}, nljr: {}, nlref: {}, nlres: {}, olar: {}, oleq: {}, oljr: {}, olref: {}, olres: {}, orar: {}, oreq: {}, orjr: {}, orref: {}, orres: {}, rear: {}, reeq: {}, rejr: {}, reref: {}, reres: {}, ryar: {}, ryeq: {}, ryjr: {}, ryref: {}, ryres: {}, spar: {}, speq: {}, spjr: {}, spref: {}, spres: {}, wlar: {}, wleq: {}, wljr: {}, wlref: {}, wlres: {}, wnar: {}, wneq: {}, wnjr: {}, wnref: {}, wnres: {} }
  },
  'US-MNCAE': {
    name: 'East Central Regional Library',
    ils: 'Evergreen',
    tag: '852',
    subs: { a: 'c', c: 'j', b: 'p', v: 'v', y: 'p' },
    lendLocs: {'AV-Set':{}, 'Audio Cassettes':{}, 'Board Books':{}, 'Book on CD':{}, 'Compact Disc':{}, 'Easy Book':{}, 'Juv. Audio Cassettes':{}, 'Juv. Book on CD':{}, 'Juv. DVD':{}, 'Juv. Nonfiction':{}, 'Juv. Video Cassette':{}, 'Juvenile Biography':{}, 'Juvenile Fiction':{}, 'Large Print':{}, 'Teen Audio Cassette':{}, 'Teen Biography':{}, 'Teen Book on CD':{}, 'Teen Fiction':{}, 'Teen Nonfiction':{}, 'Video Cassette':{}, Biography:{}, Current:{}, DVD:{}, Fiction:{}, Minnesota:{}, Nonfiction:{}, Oversize:{}}
  },
  'US-MNMANTD': {
    name: 'Traverse des Sioux Library Cooperative',
    ils: 'Evergreen',
    tag: '852',
    subs: { a: 'b,c', c: 'j', b: 'p', v: 'v', x: 'g', y: 'p' },
    notLendLocs: {'AM Art Prints Non-Circulating':1, 'AM Chidren\'s Big Books':1, 'AM Children\'s Literature Area Reference':1, 'AM General Reserves':1, 'AM Rare Books Room':1, 'AM Ready Reference':1, 'AM Reference':1, 'AM Reserves Shelf':1, 'BC Reference':1, 'BD Adult Reference':1, 'BD Minnesota Reference Collection':1, 'BH Adult Reference':1, 'BH Junior Reference':1, 'BN Junior Reference':1, 'BN Library of Things':1, 'FB Bricelyn':1, 'FB Kiester':1, 'FW Adult Reference':1, 'FW Delavan':1, 'FW Easton':1, 'FW Junior Reference':1, 'LS Lucky Day':1, 'LW Adult Reference':1, 'LW Rotating Materials':1, 'MA Junior Vox Books':1, 'MA Lucky Day':1, 'NS Adult Reference':1, 'SB Adult Reference':1, 'SG Adult Reference':1, 'SG Storage':1, 'VL Adult Reference':1, 'VL Children Reference':1, 'VL Lucky Day Collection':1, 'VL Minnesota Reference Collection':1}
  },
  'US-MNTNR': {
    name: 'Northwest Regional Library',
    ils: 'Evergreen',
    tag: '852',
    subs: { a: 'b,c', c: 'j', b: 'p', v: 'v', x: 'g', y: 'p' },
    lendLocs: { 'GODEL Main': {}, 'GREENBUSH Main': {}, 'HALLOCK Main': {}, 'RED_LAKE_FALLS Main': {}, 'ROSEAU Main': {}, 'THIEF_RIVER_FALLS Main': {}, 'WARROAD Main': {}, 'ZLINK_KARLSTAD Main': {}, 'ZLINK_MIDDLE_RIVER Main': {} }
  },
  'US-MNMOHL': {
    name: 'Lake Agassiz Regional Library',
    ils: 'Evergreen',
    tag: '852',
    subs: { a: 'b,c', c: 'j', b: 'p', v: 'v', x: 'g', y: 'p' },
    lendLocs: { 'ADA Main': {}, 'ADA New': {}, 'BAGLEY Main': {}, 'BAGLEY New': {}, 'BARNESVILLE Main': {}, 'BARNESVILLE New': {}, 'BRECKENRIDGE Main': {}, 'BRECKENRIDGE New': {}, 'CLIMAX Main': {}, 'CLIMAX New': {}, 'CROOKSTON Main': {}, 'CROOKSTON New': {}, 'DETROIT_LAKES Main': {}, 'DETROIT_LAKES New': {}, 'FERTILE Main': {}, 'FERTILE New': {}, 'FOSSTON Main': {}, 'FOSSTON New': {}, 'HAWLEY Main': {}, 'HAWLEY New': {}, 'MAHNOMEN Main': {}, 'MAHNOMEN New': {}, 'MCINTOSH Main': {}, 'MCINTOSH New': {}, 'MOORHEAD Main': {}, 'MOORHEAD New': {}, 'ZLINK_CORMORANT Main': {}, 'ZLINK_CORMORANT New': {}, 'ZLINK_FRAZEE Main': {}, 'ZLINK_FRAZEE New': {}, 'ZLINK_GONVICK Main': {}, 'ZLINK_GONVICK New': {}, 'ZLINK_HALSTAD Main': {}, 'ZLINK_HALSTAD New': {}, 'ZLINK_HENDRUM Main': {}, 'ZLINK_HENDRUM New': {}, 'ZLINK_LAKE_PARK Main': {}, 'ZLINK_LAKE_PARK New': {}, 'ZLINK_ROTHSAY Main': {}, 'ZLINK_ROTHSAY New': {}, 'ZLINK_TWIN_VALLEY Main': {}, 'ZLINK_TWIN_VALLEY New': {}, 'ZLINK_ULEN Main': {}, 'ZLINK_ULEN New': {} }
  }
};

function getSubs(field) {
  let subs = {};
  field.subfields.forEach(s => {
    let code = Object.keys(s);
    if (!subs[code]) subs[code] = [];
    if (subs[code].indexOf(s[code]) === -1) subs[code].push(s[code]);
  });
  return subs;
}

export function showSettings() {
  return (localFields);
}

export function cluster_transform(clusterStr) {
  let now = new Date().toISOString();
  now = now.replace(/^(\d{4})-(\d\d)-(\d\d).*/, '$1$2$3000000.0')
  const f005 = now;
  let cluster = JSON.parse(clusterStr);
  let crecs = cluster.records;
  const f001 = cluster.clusterId;
  let f999s = [];
  let outItems = [];
  let preSize = '';
  let mainBib;
  let isMainBib;
  for (let x = 0; x < crecs.length; x++) {
    let crec = crecs[x];
    let sid = crec.sourceId;
    let lid = crec.localId;
    let rec = crec.payload.marc;
    let unknown = false;
    if (!rec.leader) {
      rec.leader = '00000cam a2200229Ia 4500';
      unknown = true
    }
    let rsize = rec.leader.substring(0, 5);
    if (rsize > preSize) {
      isMainBib = 1;
      mainBib = { leader: rec.leader, fields: [] };
    } else {
      isMainBib = 0;
    }
    preSize = rsize;

    // figure out mtypes from leader codes
    let mt = rec.leader.substring(6, 7);
    let bl = rec.leader.substring(7, 8);
    let mtype = '';
    if (unknown) {
      mtype = 'UNK'
    } else if (bl.match(/[sb]/)) {
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

    let recFields = {};
    let bibCall = {};

    for (let y = 0; y < rec.fields.length; y++) {
      let field = rec.fields[y];
      let tag = Object.keys(field)[0];
      if (tag.match(/050|082|09\d/)) {
        let csubs = getSubs(field[tag]);
        let a = (csubs.a) ? csubs.a.join(' ') : '';
        bibCall[tag] = (a && csubs.b) ? a + ' ' + csubs.b[0] : (a) ? a : '';
      }
      if (!recFields[tag]) recFields[tag] = [];
      recFields[tag].push(field[tag]);
      if (isMainBib) { 
        if ((tag > '009' && tag < '831') || tag.match(/^88./)) {
          mainBib.fields.push(field);
        }
        if (tag === '008') mainBib.fields.push(field);
      }
    }

    let lf = localFields[sid];
    let controlNumber = lid;

    // control number updates 
    controlNumber = controlNumber.replace(/^oai.+:/, '');

    if (sid.match(/^(US-MNMAC|US-MNCH|US-MNSHS)$/) && !controlNumber.match(/^u/)) {
      controlNumber = controlNumber.replace(/^/, 'u');
    }

    if (lf && lf.idField) {
      
      let tag = lf.idField.substring(0, 3);
      let sf = lf.idField.substring(3);
      let field = recFields[tag];
      if (lf.idField.match(/^00/)) {
        controlNumber = (recFields[lf.idField]) ? recFields[lf.idField][0] : '';
      } else if (field && sf) {
        let subs = getSubs(field[0]);
        controlNumber = (subs[sf]) ? subs[sf][0] : '';
      }
    }
    let f999 = {
      ind1: '1',
      ind2: '0',
      subfields: [
        { i: cluster.clusterId },
        { l: controlNumber },
        { s: sid }
      ]
    };
    /* this is a test-- delete or disable when done
    if (cluster.clusterId === '000d81e4-6349-4773-993c-9a6cbd9ef034' && sid === 'US-MNMAC') {
      f999.subfields.forEach(s => {
        if (s.s) {
          s.s = 'US-MIME';
        }
      });
    }
    */
    for (let a = 0; a < cluster.matchValues.length; a++) {
      f999.subfields.push({ m: cluster.matchValues[a] });
    }
    f999s.push({ '999': f999 });

    // normalized item fields
    if (lf) {
      let items = recFields[lf.tag] || [];
      let linkedFields = {};
      if (lf.linkedField) {
        let extra = recFields[lf.linkedField] || [];
        for (let e = 0; e < extra.length; e++) {
          let exField = extra[e];
          let esubs = getSubs(exField);
          let link = esubs[lf.linkSubs[1]];
          linkedFields[link] = exField;
        }
      }
      controlNumber = controlNumber.trim();
      for (let i = 0; i < items.length; i++) {
        let item = items[i];
        let outItem = {
          '999' : {
            ind1: 1,
            ind2: 1,
            subfields: [
              { l: controlNumber },
              { s: 'ISIL:' + sid },
              { i: lf.name },
              { t: mtype }
            ]
          }
        }
        let subData = getSubs(item);
        let location = '';
        let itype = '';
        for (let c in lf.subs) {
          if (lf.linkSubs && lf.linkSubs[0] && lf.subs[c].match(/^\w{3}/)) {
            let lsf = lf.subs[c].substring(3);
            let linkDat = subData[lf.linkSubs[0]];
            if (linkDat) {
              let linkedItem = linkedFields[linkDat];
              let linkedSubs = (linkedItem) ? getSubs(linkedItem) : {};
              let linkedData = linkedSubs[lsf] || [];
              if (linkedData[0]) {
                let linkedSubField = {};
                if (c === 'a') location = linkedData[0];
                if (c === 'x') itype = linkedData[0];
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
          text = text.trim();
          if (c === 'c' && lf.subs.c.match(/^%/)) {
            let cnTags = lf.subs.c.split(/\|/);
            for (let t = 0; t < cnTags.length; t++) {
              let tag = cnTags[t].replace(/^%/, '');
              text = bibCall[tag];
              if (text) break;
            }
          }
          if (text) {
            let obj = {};
            obj[c] = text;
            outItem['999'].subfields.push(obj);
          }
          if (!location && c === 'a') {
            location = text;
          }
          if (!itype && c === 'x') {
            itype = text;
          }
        }

        let pol = 0;
        if (lf.lendLocs && lf.lendLocs[location] || lf.notLendLocs && !lf.notLendLocs[location])  {
          pol = 1;
          if (lf.lendItypes && !lf.lendItypes[itype]) {
            pol = 0;
          }
        }
        if (!(lf.lendLocs || lf.notLendLocs) && lf.lendItypes && lf.lendItypes[itype]) {
          pol = 1;
        }

        if (lf.lendFunc) {
          pol = lf.lendFunc(recFields, outItem['999']) || pol;
        }
        let policy = (pol) ? 'LOANABLE' : 'UNLOANABLE';
        outItem['999'].subfields.push({ p: policy });
        outItems.push(outItem);
      }
    }
  }

  mainBib.fields.unshift({ '005': f005 });
  mainBib.fields.unshift({ '001': f001 });
  mainBib.fields.push(...f999s);
  mainBib.fields.push(...outItems);
  return JSON.stringify(mainBib, null, 2);
}

