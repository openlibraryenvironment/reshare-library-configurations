/*
  Subfield guide: a: location, b: barcode, c: callNumber, d: callNumberType, g: copy, k: numberOfPieces, i: institutionName, 
  n: enumeration, u: chronology, v: volume, w: yearCaption, x: itemMaterialType, y: itemId
*/

const localFields = {
  'US-NJPOR': {
    name: 'Stockton University',
    tag: '995',
    subs: { a: 'p', b: 'b', c: 'c', d: 'd', k: 'x', x: 't', y: 'a', u: 'k,l', n: 'i,j' },
    lendLocs: [ 'DVDCOLL', 'GOVDOCS', 'MICRO', 'UPPERLEVEL', 'YPCOLL ' ]
  },
  'US-PGRAM': {
    name: 'Messiah University',
    tag: '852',
    subs: { a: 'b', b: 'p', c: 'm', v: 'w', y: '8', x: 'i' },
    lendLocs: [ 'audio', 'cafe', 'cd', 'cdov', 'dvd', 'dvdbr', 'dvdor', 'free', 'graphic', 'index', 'juv', 'juvf', 'juvov', 'mubook', 'scor', 'scorm', 'scorov', 'stax', 'staxov', 'tr', 'vide', 'videov' ]
  },
  'US-PRALV': {
    name: 'Alvernia University',
    ils: 'FOLIO',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', k: 'n', n: 'k', u: 'l', v: 'j', x: 'i' },
    lendLocs: [ 'DVDs – Wellness Zone, 1st Floor', 'Easy Reading Collection - 1st Floor', 'General Collection - 2nd Floor', 'Leisure Reading', 'Young Adult Fiction - 1st Floor', 'Young Adult Nonfiction - 1st Floor' ]
  },
  'US-PSHS': {
    name: 'Shippensburg University',
    tag: '995',
    subs: { a: 'aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', u: 'f,x', n: 'e,w', v: 'g' },
    lendLocs: [ 'CD', 'DVD', 'Luhrs', 'NEW', 'POP', 'SU', 'Stacks', 'StacksOV', 'YPC' ]
  },
  'US-NTR': {
    name: 'RPI',
    tag: '852',
    subs: { a: 'b,c', b: '876p', c: 'h,i', n: '8763', y: '8' },
    linkedField: '876',
    linkSubs: ['8', '9'],
    lendLocs: ['YRMA Beranek Collection', 'YRMA Book Stacks', 'YRMA CDROM', 'YRMA DVD', 'YRMA Outsize', 'YRMA Video', 'YRMM Book Stacks', 'YRMM CD (1st Floor)', 'YRMM CDROM (1st Floor)', 'YRMM DVD (2nd Floor)', 'YRMM Microform', 'YRMM Outsize', 'YRMM Phonorecord (1st Floor)', 'YRMM Technical Reports (3rd Floor)', 'YRMM Thesis Microfilm (1st Floor)', 'YRMM VHS Video (Service Desk)']
  },
  'US-NSYL': {
    name: 'Le Moyne College',
    tag: '945',
    idField: '907a',
    subs: { a: 'l', b: 'i', c: 'a,b', v: 'c', x: 't', y: 'y' },
    lendLocs: ['lbks', 'lbksm', 'lbkso', 'lmcod', 'lmvc', 'ltm', 'ltmyl']
  },
  'US-PATM': {
    name: 'Muhlenberg College',
    tag: '852',
    linkedField: '876',
    linkSubs: ['8','9'],
    subs: { a: 'c', b: '876p', c: 'k,h,i', k: '876x' },
    lendLocs: [ 'AV Area - Movies', 'Main Collection (Oversize)', 'Main Collection', 'Microform Area - Documents', 'Microform Area - Periodicals', 'Reference Atlases', 'U.S. Government Publications Microforms', 'U.S. Government Publications' ]
  },
  'US-DEWGBC': {
    name: 'Goldey-Beacom College',
    tag: '952',
    idField: '999c',
    subs: { a: 'c', b: 'p', c: 'o', d: '2', k: '3', n: 'h', x: 'y' },
    lendLocs: [ 'CART', 'OVERSIZE', 'STACKS', 'STORAGE', 'TECHROOM' ]
  },
  'US-PPHFC' : {
    name: 'Holy Family University',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', x: 'i' },
    oldlendLocs: [ 'Academic Media', 'Curriculum Library', 'DVDs', 'Display Lower Level', 'Display Main Level', 'Display Upper Level', 'Lower Level' ],
    lendLocs: [ 'Academic Media', 'DVDs', 'Display Main Level', 'Lower Level', 'Main Floor ~ Leisure', 'Main Floor ~ Stacks' ]
  },
  'US-PANL': {
    name: 'Lebanon Valley College',
    tag: '995',
    subs: { a: 'aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', u: 'f,x', n: 'e,w', v: 'g' },
    lendLocs: ['DISPLAY', 'GRAPHICNOV', 'JUVENILE', 'LOWERLV', 'OVERSIZE', 'SECONDFL', 'YOUNGADULT', 'DISPLAYTR', 'NEW BOOKS']
  },
  'US-TEST-P': {
    name: 'Test Institution',
    tag: '852',
    subs: { a: 'c', b: 'p' },
    lendLocs: ['Stacks']
  },
  'US-PDALCM': {
    name: 'Misericordia',
    tag: '852',
    linkedField: '876',
    linkSubs: ['8', '9'],
    subs: { a: 'c', b: '876p', c: 'h,i',  n: '3', v: '3', x: 't' },
    lendLocs: ['AV Center - 1st Floor', 'AV Center - 2nd Floor', 'Children\'s Lit. Book', 'Children\'s Lit. DVD', 'On Shelf']
  },
  'US-PLEB': {
    name: 'Bucknell University',
    tag: '852',
    linkedField: '876',
    linkSubs: ['8', '9'],
    subs: { a: 'b', b: '876p', c: 'h,i', n: '3', v: '3' },
    lendLocs: ['PBUB']
  },
  'US-PLOR': {
    name: 'Saint Francis University',
    tag: '852',
    linkedField: '876',
    linkSubs: ['8', '9'],
    subs: { a: 'c', b: '876p', c: 'h,i', n: '3', v: '3' },
    lendLocs: ['BIG BOOKS \[Lower Level\]', 'CD \[Ask at Circulation Desk\]', 'CHILDREN\'S LITERATURE OVERSIZE \[Lower Level\]', 'CHILDREN\'S LITERATURE \[Lower Level\]', 'DISPLAY SHELF', 'DVD \[Ask at Circulation Desk\]', 'GENERAL \[Lower Level\]', 'JUVENILE LITERATURE \[Lower Level\]', 'MINI BOOKS \[Lower Level\]', 'NEW BOOKS', 'OVERSIZE \[Lower Level\]', 'PERIODICALS', 'POPULAR READING \[Main\]', 'TEACHER\'S RESOURCE MATERIALS', 'YOUNG ADULT \[Lower Level\]']
  },
  'US-PCLVU': {
    name: 'Ursinus College',
    tag: '852',
    linkedField: '876',
    linkSubs: ['8', '9'],
    subs: { a: 'c', b: '876p', c: 'h,i', n: '3', v: '3' },
    lendLocs: ['Berman Books', 'Bestsellers', 'Eilts Collection', 'Faculty Publications', 'Fine Arts Collection', 'Folio Collection', 'Juvenile Literature', 'Main Collection']
  },
  'US-WVWELW': {
    name: 'West Liberty University',
    idField: '999c',
    tag: '952',
    subs: { a: 'c', b: 'p', c: 'o', d: '2', k: '3', n: 'h', x: 'y' },
    lendLocs: ['CHILD', 'FICTION', 'MOVIES', 'MOVIES', 'MUSIC', 'MUSICSCORE', 'REFERENCE', 'SERIALS', 'STACKS', 'THESISDISS', 'YA']
  },
  'US-PELC': {
    name: 'Elizabethtown College',
    tag: '995',
    subs: { a: 'aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', u: 'f,x', n: 'e,w', v: 'g' },
    lendLocs: ['display', 'etown', 'fac-dis', 'main', 'med-cd', 'med-dvd', 'new-books', 'score']
  },
  'US-NNCOO': {
    name: 'The Cooper Union',
    tag: '995',
    subs: { a: 'n,o', b: 'b', c: 'z', d: 'y', x: 't', n: 'f,g', u: 'i,j', k: 'p', y: 'a'},
    lendLocs: ['CU MAIN', 'CUOS MAIN']
  },
  'US-NJUPM': {
    name: 'Montclair State University',
    tag: '852',
    linkedField: '876', 
    linkSubs: ['8', '9'],
    subs: { a: 'c', b: '876p', c: 'h,i', d: '2', x: 'y', y: '8' },
    lendLocs: ['2nd Floor', 'Government Documents', 'Juvenile Collection - 1st Floor', 'Lower Level', 'Multimedia Dept.', 'Oversize - Lower Level']
  },
  'US-PWBK': {
    name: 'King\'s College',
    idField: '999c',
    tag: '952',
    subs: { a: 'c', b: 'p', c: 'o', d: '2', x: 'y' },
    lendLocs: ['COURT', 'DISPLAY', 'FIRST', 'SECOND']
  },
  'US-P': {
    name: 'State Library of Pennsylvania',
    tag: '995',
    subs: { a: 'z', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', u: 'f,x', n: 'e,w', v: 'g', w: 'd', k: 'gg' },
    lendLocs: ['sldocspa', 'sldocsus', 'slmain', 'slmainovr', 'slstkover', 'slstkrovr', 'slstks']
  },
  'US-PPPM': {
    name: 'Philadelphia Museum Art',
    tag: '930',
    subs: { a: '2', b: '5', c: 'h,i', x: 'm' },
    lendLocs: [ 'MAIN' ],
    lendItypes: ['BOOK', 'MONOGRAPH']
  },
  'US-PU': {
    name: 'University of Pennsylvania',
    tag: '995',
    subs: { a: 'i,aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a' },
    lendLocs: ['LippLib lipp', 'VanPeltLib easiaover', 'VanPeltLib eastasia', 'VanPeltLib vanp', 'VanPeltLib vpnewbook', 'VanPeltLib yarn']
  },
  'US-PMA': {
    name: 'Allegheny',
    tag: '995',
    subs: { a: 'aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a'},
    lendLocs: ['bksl', 'bksu', 'dvdl']
  },
  'US-NJNBRU': {
    name: 'Rutgers',
    tag: '995',
    subs: { a: 'l', b: 'b', c: 'c', x: 't', y: 'a', u: 'h,i', n: 'f,g', v: 'j', k: 'p' },
    lendLocs: ['alcyrillc', 'aldocc', 'aldoclusc', 'aldocnjc', 'aldocusc', 'aldocusfoc', 'alealfoc', 'alealstac', 'aledlabc', 'alefolioc', 'alfolioc', 'algalilic', 'aliylcc', 'aliylgcc', 'aljuvc', 'aljuvrc', 'almongolc', 'alofficec', 'alstackc', 'anstackc', 'cadocusc', 'cafolioc', 'carecreadg', 'castackc', 'chfolioc', 'chstackc', 'crcareerc', 'crfolioc', 'crstackc', 'daclempric', 'dadocc', 'dadocnjc', 'dadocusc', 'dafolioc', 'dastackc', 'dgcwglc', 'dgfolioc', 'dgplaysc', 'dgstackc', 'lsdocc', 'lsdocfoc', 'lsdocnjc', 'lsdocusc', 'lsdocusfoc', 'lsstackc', 'mafolioc', 'mastackc', 'sibenrushm', 'sichinardm', 'sistackm', 'smstackc']
  },
  'US-PPJ': {
    name: 'Thomas Jefferson',
    tag: '995',
    subs: { a: 'aa', b: 'b', c: 'bb', x: 't', y: 'a', n: 'f,g', v: 'j', k: 'x', w: 'd' },
    lendLocs: ['1ST_GRAPH', '4TH_STACKS', 'BKSTACKS1', 'BKSTACKS2']
  }, 
  'US-PBM': {
    name: 'Bryn Mawr',
    tag: '995',
    subs: { a: 'h', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', u: 'f,x', n: 'e,w' },
    lendLocs: ['ba', 'baf', 'baff', 'bc', 'bcf', 'bcff', 'bcsfi', 'bkraw', 'bs', 'bsff', 'bsx']
  },
  'US-PINU': {
    name: 'Indiana University of Pennsylvania',
    tag: '995',
    subs: { a: 'aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', u: 'f,x', n: 'e,w' },
    lendLocs: ['PZI1', 'PZII', 'PZIO', 'PZIT', 'SHAFER']
  },
  'US-PPIC': {
    name: 'Carnegie Mellon',
    tag: '995',
    subs: { a: 'i,aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a' },
    lendLocs: ['ENGR-SCI NEWBOOK', 'ENGR-SCI STACKS', 'HUNT CAREER-2', 'HUNT FA-NEWBK-4', 'HUNT FOLIOS-2', 'HUNT FOLIOS-4', 'HUNT NEWBOOK-1', 'HUNT OVRSZQ-3', 'HUNT OVRSZQ-4', 'HUNT STACKS-2', 'HUNT STACKS-3', 'HUNT STACKS-4', 'MELLON NEWBOOK', 'MELLON READING-RM', 'OFFSITE BY-REQUEST']
  },
  'US-PPIU': {
    name: 'University of Pittsburgh',
    tag: '995',
    subs: { a: 'i,aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', u: 'f,x', n: 'e,w' },
    lendLocs: ['ART stks', 'ART stksbrowse', 'ART stkscourse', 'ART stksfac', 'ART stksrr', 'CHEM stks', 'ENGR stks', 'ENGR stks2', 'HILL dis', 'HILL stks', 'HILL stksafro', 'HILL stksalld', 'HILL stkseac', 'HILL stkseaj', 'HILL stkseak', 'HILL stkssl1', 'HILL stkssl2', 'LANG over', 'LANG stks', 'MUS folio', 'MUS over', 'MUS stks', 'THOM stor', 'UPB curr', 'UPB frnd', 'UPB new', 'UPB over', 'UPB stks', 'UPG child', 'UPG curr', 'UPG graph', 'UPG stks', 'UPG young', 'UPJ curr', 'UPJ graph', 'UPJ juv', 'UPJ juvover', 'UPJ over', 'UPJ stks', 'UPJ young', 'UPT stks']
  },
  'US-PPT': {
    name: 'Temple',
    tag: 'ITM',
    subs: { a: 'n,m', b: 'b', c: 'q', x: 'd', y: 'x', u: 'h,i', n: 'f,g', v: 'j' },
    lendLocs: ['AMBLER stacks', 'ASRS ASRS', 'KARDON p_GovDocs', 'KARDON p_remote', 'MAIN hirsch', 'MAIN juvenile', 'MAIN stacks'],
    notLendItypes: ['2', '3', '22', '23']
  },
  'US-PAGLAUL': {
    name: 'Arcadia',
    idField: '999c',
    tag: '952',
    subs: { a: 'c', b: 'p', c: 'o', d: '2', x: 'y', y: '9', u: 'h', n: 'h', v: 'v' },
    lendLocs: ['CURRIC-FIC', 'CURRIC-JUV', 'CURRICULUM', 'DISPLAY', 'FACAUTH', 'MEDIA - AUDIOCASSETTE', 'OVERSIZE', 'STACKS', 'THESIS']
  },
  'US-PPIPP': {
    name: 'Point Park',
    idField: '999c',
    tag: '952',
    subs: { a: 'c', b: 'p', c: 'o', d: '2', x: 'y', y: '9', u: 'h', v: 'v' },
    lendLocs: ['AUDIOBOOK', 'CHILDRENS', 'MAIN', 'OVERSIZED', 'SAUDIOBOOK', 'SMAIN', 'SOVERSIZED']
  },
  'US-PGC': {
    name: 'Gettysburg',
    tag: '995',
    subs: { a: 'r', b: 'b', c: 't', d: 's', x: 'd', y: 'a', u: 'i,j', n: 'k,l', v: 'm', k: 'aa' },
    lendLocs: ['Alumni', 'BrowseGT', 'BrowseRoom', 'CollAuth', 'Display', 'NewBook', 'Offsite', 'Oversize', 'Stacks']
  },
  'US-PABBCUP': {
    name: 'Commonwealth',
    tag: '995',
    subs: { a: 'i,z', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', u: 'f,x', n: 'e,w' },
    lendLocs: ['Clearfield CLEAR', 'Clearfield CLEARADBK', 'Clearfield CLEARCAR', 'Clearfield CLEARCHIL', 'Clearfield CLEARFOL', 'Clearfield CLEARLREAD', 'MAN 1FN', 'MAN 1FS', 'MAN 2FN', 'MAN 3FN', 'MAN 3FS', 'MAN 4FN', 'MAN 4FS', 'MAN ATR1', 'MAN ATR2', 'MAN ATR3', 'MAN ATR4', 'MAN CSTK', 'Stevenson CALD', 'Stevenson CDMUS', 'Stevenson CHIL', 'Stevenson CUR', 'Stevenson E-CHIL', 'Stevenson FOL', 'Stevenson LREAD', 'Stevenson MAIN', 'Stevenson NBC', 'Stevenson NBS', 'Stevenson NEWBERY', 'Stevenson PER', 'Stevenson PICBOO', 'Stevenson TFOL', 'bloom GENCOLL', 'bloom GENCOLLOV', 'bloom JUVENILE', 'bloom JUVENILEOV', 'bloom JUVFIC', 'bloom JUVFICOV', 'bloom JUVNONFIC', 'bloom JUVNONFOV', 'bloom NewBooks']
  },
  'US-PPPSB': {
    name: 'Cairn',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'j', x: 'i', v: 'j' },
    lendLocs: ['Book Display', 'CD Collection', 'DVD Collection', 'EZBorrow', 'Library Storage', 'ML Thesis and Projects', 'Main Stacks 1st Floor', 'Main Stacks 2nd Floor (Mezz Level)', 'Music Scores', 'Technical Services Deptartment']
  },
  'US-NJGBS': {
    name: 'Rowan',
    tag: '995',
    linkedField: '900',
    linkSubs: ['ff', '8'],
    subs: { a: 'z', b: 's', c: '900f', x: 't', y: 'a', v: 'e' },
    lendLocs: ['Child3rdFl', 'Main', 'Wilson']
  },
  'US-PACALPWU': {
    name: 'PennWest',
    tag: '995',
    subs: { a: 'i,z', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', u: 'f,x', n: 'e,w', v: 'g' },
    lendLocs: ['Carlson Browsing', 'Carlson Carl Juv', 'Carlson Carl Main', 'Carlson Carl Ovrsz', 'Carlson Carl-3', 'Carlson Carl-fn', 'Carlson Carl-zo', 'Carlson CarlTxtbk', 'Carlson Douglass', 'EUP Book4', 'EUP Book5', 'EUP Book6', 'EUP Juvenile', 'MAN 2LC', 'MAN 3LC', 'MAN 4LC', 'MAN CURR', 'MAN FAC', 'MAN FDI', 'MAN GNC', 'Suhr Ven Juv', 'Suhr Ven Main', 'Suhr Ven-O']
  },
  'US-PCARLD': {
    name: 'Dickinson',
    tag: '999',
    subs: { a: 'l', b: 's', c: 'a', d: 'w', x: 't', v: 'j' },
    lendLocs: ['CIRC_DESK', 'E_ASIAN_RM', 'MUS_SCORES', 'OVERSIZE', 'STACKS', 'STORAGE']
  },
  'US-PPID': {
    name: 'Duquesne',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', x: 'i', n: 'k', u: 'l', v: 'j' },
    lendLocs: ['Gumberg 1st Floor Compact Shelving Folio', 'Gumberg 1st Floor Compact Shelving Oversize', 'Gumberg 1st Floor Compact Shelving Theses', 'Gumberg 2nd Floor General Collection', 'Gumberg 5th Floor Curriculum Center Big Books', 'Gumberg 5th Floor Curriculum Center Chapter Books', 'Gumberg 5th Floor Curriculum Center Picture Books', 'Gumberg 5th Floor Curriculum Center Stacks']
  },
  'US-PSCU': {
    name: 'Scranton',
    ils: 'FOLIO',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', k: 'n', n: 'k', u: 'l', v: 'j', x: 'i' },
    lendLocs: [ 'Circulating Collection', 'Graphic Novel Collection', 'Graphic Novel Spotlight', 'Mission Reflection Room', 'New Book Shelf', 'Oversize Collection' ],
    lendItypes: ['Book']
  },
  'US-WVHUM': {
    name: 'Marshall',
    idField: '907a',
    tag: '945',
    subs: { a: 'l', b: 'i', c: '%050|%090', x: 't', y: 'y', v: 'c' },
    lendLocs: ['drapp', 'drcd', 'drg', 'drgn', 'drj', 'drmfo', 'drmm', 'drmvc', 'drsc', 'gcg', 'gdg', 'mmvc', 'msg', 'scwv']
  },
  'US-PSRS': {
    name: 'Slippery Rock',
    tag: '950',
    subs: { a: 'f', b: 'a', c: 'm', d: 'l', x: 'b', y: 'z' },
    lendLocs: ['STACK2', 'STACK3']
  },
  'US-PWCS': {
    name: 'West Chester',
    tag: 'ERI',
    subs: { a: 'j', b: 'a', c: 'l', d: 's', x: 'c', y: '7', u: 'x,y', n: 'u,v', k: 'm' },
    lendLocs: ['docspa', 'docsus', 'fhg3', 'fhg3h', 'fhg3ho', 'fhg3o', 'fhg4', 'fhg4o', 'fhg5', 'fhg5o', 'fhg6', 'fhg6o', 'imcbb', 'imcbkk', 'imcjkd', 'imctxt', 'juve', 'juvebrd', 'juvejfic', 'juvenonf', 'juvepict', 'pmbk', 'pmbkov', 'pmed', 'pmmin', 'pmsc', 'pmscov']
  },
  'US-PPICC': {
    name: 'Chatham',
    idField: '999c',
    tag: '952',
    subs: { a: 'c', b: 'p', c: 'o', d: '2', x: 'y', y: '9', v: 'h' },
    lendLocs: ['CC', 'CIRC2', 'CIRC3', 'FEATURE', 'FOLIO', 'OLKES', 'POPULAR']
  },
  'US-PPD': {
    name: 'Drexel',
    tag: '995',
    subs: { a: 'i,aa', b: 's', c: 'bb', d: 'j', x: 'c', y: 'a', u: 'f,x', n: 'e,w', v: 'g', k: 'jj' },
    lendLocs: ['HHN d-dvd', 'HHN d-leisure', 'HHN d-oversize', 'HHN d-stacks', 'QL d-dvd', 'QL d-stacks', 'WWH d-child', 'WWH d-dvd', 'WWH d-leisure', 'WWH d-oversize', 'WWH d-stacks', 'WWH d-stacks-1', 'WWH d-td-1', 'WWH d-teen']
  },
  'US-PCW': {
    name: 'Widener',
    ils: 'FOLIO',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', k: 'n', n: 'k', u: 'l', v: 'j', x: 'i' },
    lendLocs: [ 'Wolfgram Circulating', 'Wolfgram Curriculum (LC)', 'Wolfgram Curriculum (local)', 'Wolfgram Tax Circulating' ]
  },
  'US-PMILS': {
    name: 'Millersville',
    tag: '995',
    subs: { a: 'aa', b: 's', c: 'bb', d: 'j', x: 't', y: 'a' },
    lendLocs: ['B', 'BDVD', 'BO', 'CKT', 'CPOS', 'CT', 'CTO', 'EXHIBIT', 'EZB', 'EZBM', 'EZB_LEND', 'GD', 'GDMC', 'GDMF', 'GDML', 'ILLB', 'J', 'JO', 'MEND', 'MF', 'MFD', 'N_M', 'OBOC', 'PROCCA', 'PROCLA', 'R', 'RESE', 'RESM', 'RESP', 'RESS', 'STORAGE_02', 'VC']
  },
  'US-PV': {
    name: 'Villanova',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'f,e,g', d: 'h', n: 'k', u: 'l', v: 'j', x: 'i', w: 'l' },
    lendLocs: ['Falvey Main Stacks', 'Main Stacks'],
    lendItypes: ['Book']
  },
  'US-PESS': {
    name: 'East Stroudsburg',
    tag: '955',
    subs: { a: 'z', b: 's', c: 'bb', d: 'j', x: 't', y: 'ff', u: 'f,x', n: 'e,w', v: 'e', w: 'f', k: 'g' },
    lendLocs: ['BIO', 'CHYAAWARD', 'CHILDBIO', 'CHILDDEWEY', 'CHILDEASY', 'CHILDFIC', 'FICTION', 'MAIN', 'OVERSIZE', 'YAFICTION']
  },
  'US-PSTDE': {
    name: 'Eastern',
    ils: 'FOLIO',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', k: 'n', n: 'k', u: 'l', v: 'j', x: 'i' },
    lendLocs: [ 'Faculty Publications Collection', 'Main Stacks Collection', 'Mazie Hall Collection', 'Social Justice Collection' ]
  },
  'US-PLF': {
    name: 'Franklin and Marshall',
    tag: '852',
    linkedField: '876',
    linkSubs: ['8','9'],
    subs: { a: 'b,c', b: '876p', c: 'h,i', n: '3', v: '3' },
    lendLocs: ['LFMC Flat Oversize Collection', 'LFMC General Collection', 'LFMC Oversize Collection', 'LFMM Flat Oversize Collection', 'LFMM General Collection', 'LFMM Oversize Collection']
  },
  'US-PNWC': {
    name: 'Westminster',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', k: 'n', n: 'k', u: 'l', v: 'j', x: 'i' },
    lendLocs: [ 'McGill Library CCB Collection', 'McGill Library General Book Stacks', 'McGill Library Juvenile Book Collection', 'McGill Library Juvenile Picture Books', 'McGill Library Library Staff Office', 'McGill Library Microfilm Cabinets/Periodicals', 'McGill Library Oversized Book Stacks', 'McGill Library Young Adult Books' ]
  },
  'US-NJSOOS': {
    name: 'Seton Hall',
    ils: 'FOLIO',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', k: 'n', n: 'k', u: 'l', v: 'j', x: 'i' },
    lendLocs: [ 'Turro Seminary Library - Main Collection', 'Turro Seminary Library - Newman Collection', 'Turro Seminary Library - Oversize', 'Walsh Library - Asian Collection', 'Walsh Library - Chinese Corner', 'Walsh Library - Curriculum Collection', 'Walsh Library - DVD Collection', 'Walsh Library - Doctoral Dissertations', 'Walsh Library - Faculty Publications', 'Walsh Library - Leisure Collection', 'Walsh Library - Main Collection Oversize', 'Walsh Library - Main Collection', 'Walsh Library - Master\'s Theses', 'Walsh Library - New Books', 'Walsh Library - On Display', 'Walsh Library - Valente Collection', 'Walsh Library - Valente Library New', 'Walsh Library - Valente Library Oversize', 'Walsh Library - Walsh Library CAPS Collection' ]
  },
  'US-WVU': {
    name: 'West Virgina University',
    tag: '852',
    linkedField: '876',
    linkSubs: ['8', '9'],
    subs: { a: 'b,c', b: '876p', c: 'h,i', n: '3', v: '3' },
    lendLocs: ['WVUA Appalachian Collection', 'WVUA Closed Stacks In Library Circulating', 'WVUA Closed Stacks', 'WVUA DVD', 'WVUA Eliza\'s', 'WVUA Government Documents Census', 'WVUA Government Documents Index', 'WVUA Government Documents Maps', 'WVUA Government Documents Media', 'WVUA Government Documents Microfiche', 'WVUA Government Documents Microfilm', 'WVUA Government Documents Prints', 'WVUA Government Documents West Virginia Media', 'WVUA Government Documents West Virginia', 'WVUA Government Documents', 'WVUA Microcard', 'WVUA Microfiche', 'WVUA Microfilm', 'WVUA Microphotography', 'WVUA Stacks Oversize', 'WVUA Stacks', 'WVUA WVU Electronic Theses and Dissertations', 'WVUD Closed Stacks In Library Circulating', 'WVUD Closed Stacks', 'WVUD Microfiche', 'WVUD Microfilm', 'WVUE Children\'s Award Winners Collection', 'WVUE Children\'s Collection', 'WVUE Closed Stacks In Library Circulating', 'WVUE Closed Stacks', 'WVUE Compact Shelving', 'WVUE Cookbook Collection', 'WVUE DVD', 'WVUE Government Documents', 'WVUE Leisure Reading', 'WVUE Microfiche', 'WVUE Microfilm', 'WVUE Miniature Score', 'WVUE Oversize', 'WVUE Patent', 'WVUE Stacks', 'WVUH Audiovisuals', 'WVUH CD-ROM', 'WVUH Closed Stacks In Library Circulating', 'WVUH Closed Stacks', 'WVUH Current Stacks', 'WVUH DVDS', 'WVUH Government Documents', 'WVUH Leisure Reading Collection', 'WVUH Microfiche', 'WVUH Microfilm', 'WVUL General Collection Non-Circulating', 'WVUL General Collection', 'WVUL Law Cleanup', 'WVUL Legal Leisure', 'WVUL Media Services Equipment 4 hours', 'WVUL Media Services Equipment 7 day', 'WVUL Media', 'WVUL Online', 'WVUL Oversize', 'WVUL Racial Justice Collection', 'WVUL Rare Book Room', 'WVUL Reference', 'WVUL Reserve', 'WVUL Storage', 'WVUL Study Aids', 'WVUL Video Collection', 'WVUL West Virginia Collection Non-Circulating', 'WVUL West Virginia Collection']
  },
  'US-PERG': {
    name: 'Gannon',
    tag: '999',
    subs: { a: 'l', b: 'i', c: 'a', d: 'w', x: 't', n: 'v', v: 'v', k: 'j' },
    lendLocs: ['DVD', 'EDVD', 'JUVENILE', 'PAPERBACK', 'PIC_BOOK', 'STACKS', 'YA-JUV']
  },
  'US-NNU': {
    name: 'NYU',
    tag: '995',
    subs: { a: 'n,o', b: 'b', c: 'z', d: 'y', x: 't', n: 'f,g', u: 'i,j', k: 'p', y: 'a'},
    lendLocs: [ 'BOBST BLEIS', 'BOBST EASIA', 'BOBST EASOV', 'BOBST FOLIO', 'BOBST MAIN', 'BOBST OVER', 'BOBST RR4CL', 'BOBST SCORE', 'OSNYU COUR', 'OSNYU COUR4', 'OSNYU EASIA', 'OSNYU MAIN' ]
  },
  'US-NNNS': {
    name: 'New School',
    tag: '995',
    subs: { a: 'n,o', b: 'b', c: 'z', d: 'y', x: 't', n: 'f,g', u: 'i,j', k: 'p', y: 'a'},
    lendLocs: ['TNSFO MAIN', 'TNSGI MAIN', 'TNSOS MAIN', 'TNSSC MAIN']
  },
  'US-PSC': {
    name: 'Swarthmore',
    tag: '995',
    subs: { a: 'aa', b: 'b', c: 'bb', d: 'j', x: 't', y: 'a', n: 'e,w', u: 'f,x', v: 'j', w: 'd', k: 'x' },
    lendLocs: ['sm']
  },
  'US-PHC': {
    name: 'Haverford',
    tag: '995',
    subs: { a: 'i', b: 's', c: 'bb', d: 'j', x: 'c', y: 'a', u: 'f,x', n: 'e,w', v: 'g', k: 'jj' },
    lendLocs: ['hm']
  },
  'US-NJMD': {
    name: 'Drew University',
    ils: 'FOLIO',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', x: 'i' },
    lendLocs: [ 'Level A Folio', 'Level A', 'Level B', 'Level C Reserves', 'Level C', 'Level D', 'Level E', 'Level F', 'Media Library' ]
  }, 
  'US-PBL': {
    name: 'Lehigh',
    ils: 'FOLIO',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', x: 'i' },
    lendLocs: ['Fairchild - 5th Floor - North', 'Fairchild - 6th Floor - North - Media Collection', 'Fairchild - 6th Floor - North', 'Fairchild - 7th Floor - North', 'LMC-B', 'LMC-G', 'Linderman 1st Floor - Reading Room - Faculty Authors', 'Linderman 1st Floor - Reading Room - Juvenile Collection', 'Linderman 1st Floor - Reading Room - New Books', 'Linderman 1st Floor - Reading Room - Reading Room Collection', 'Linderman 1st Floor - Rotunda', 'Linderman 2nd Floor - Rotunda', 'Linderman 3rd Floor - Rotunda', 'Linderman 3rd Floor - Stacks', 'Linderman 4th Floor - Stacks', 'Linderman Ground Floor - Lower Level', 'Linderman Ground Floor - Upper Level', 'Lucy\'s Cafe - Linderman Ground Level Rotunda']
  }, 
  'US-PWW': {
    name: 'Washington and Jefferson',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', x: 'i' },
    lendLocs: ['IRC', 'Music', 'Oversize', 'Plays', 'Reference', 'Stacks', 'Video', 'MUSIC', 'OVERSIZE', 'PLAYS', 'REFERENCE', 'STACKS', 'VIDEO']
  }, 
  'US-PEL': {
    name: 'Lafayette',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', x: 'i' },
    lendLocs: ['Media Browsing', 'Media Storage Room', 'Browsing', 'Folio Upper Level', 'Oversize Upper Level', 'Skillman Upper Level', 'Skillman Main Level', 'Skillman Lower Level', 'Kirby']
  },
  'US-PPLAS': {
    name: 'La Salle',
    ils: 'FOLIO',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', x: 'i' },
    lendLocs: [ '2ND FL FOLIO SHELVES', '2ND FLOOR', '2nd FL FOLIO SHELVES', '2nd FLOOR', '3RD FLOOR MEZZANINE', '3RD FLOOR', '3rd FLOOR MEZZANINE', '3rd FLOOR', 'AUDIOBOOK (REC. READING)', 'BOUND (LOWER LVL)', 'CHILDREN\'S BOOKS -- LOWER LEVEL', 'ILL DEPARTMENT', 'ILL Department', 'INTERLIB LOAN BOOK', 'MEETING ROOMS', 'NEW BOOKS', 'RECREATIONAL BKS, 1st floor', 'RECREATIONAL BOOKS, 1ST FLOOR', 'TEXTBOOKS', 'VIDEO SHELVES, LOWER LEVEL', 'VIDEO SHELVES, lower level' ]
  },
  'US-PWML': {
    name: 'Lycoming',
    ils: 'FOLIO',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', n: 'k', u: 'l', v: 'j', x: 'i' },
    lendLocs: [ 'Game Books', 'General Collection', 'Government Publication', 'Historial Collection', 'Juvenile Collection', 'Lycoming Authors', 'New Book Shelf', 'Oversize', 'Teaching Shelf', 'Videos and Video Games' ]
  },
  'US-PCOR': {
    name: 'Robert Morris',
    tag: '852',
    linkedField: '876',
    linkSubs: ['8', '9'],
    subs: { a: 'c', c: 'h,i', b: '876p' },
    lendLocs: ['Folio (Main Floor)', 'Kalevitch Collection', 'New Books', 'Oversize (Main Floor)', 'Pedagogy', 'Stacks (Top Floor)']
  },
  'US-PPSJ': {
    name: 'St. Joseph\'s University',
    tag: '995',
    subs: { a: 'z', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', n: 'e,w', u: 'f,x' },
    lendLocs: ['Leisure', 'Main', 'bks1', 'bks2', 'bks3', 'campbk', 'cmclit', 'gfgen']
  },
  'US-PSELS': {
    name: 'Susquehanna',
    tag: '995',
    subs: { a: 'z', b: 's', c: 'bb', d: 'j', x: 't', y: 'a', n: 'e,w', u: 'f,x' },
    lendLocs: ['FOLIO', 'FOLIOSCORE', 'JUV', 'JUVFOLIO', 'LESIURE', 'MAIN', 'MUSIC_CDS', 'OVERSIZE', 'SCORES', 'VIDEOS']
  },
  'US-PYC': {
    name: 'York',
    tag: '999',
    subs: { a: 'l', b: 'i', c: 'a', d: 'w', x: 't', v: 'v', k: 'j'},
    lendLocs: ['JUV', 'MEDIA', 'MFICHE', 'MFILM', 'OVERSIZE', 'SHELVES', 'YCP_AUTH']
  },
  'US-PPIL': {
    name: 'La Roche',
    idField: '907a',
    tag: '945',
    subs: { a: 'l', b: 'i', c: '%092', y: 'y' },
    lendLocs: ['brows', 'cd', 'circ', 'dvd', 'educ', 'jcal1', 'jcha1', 'jcha2', 'jcha3', 'jcha4', 'jcha5', 'jcha6', 'jcha7', 'jmat1', 'jnew1', 'jnew2', 'jnew3', 'jnew4', 'jpic1', 'jpic2', 'jpic3', 'jpic4', 'jpoet', 'jscie', 'jsoc', 'jsoc1', 'jsoc2', 'jsoc3', 'juv', 'ref', 'ya']
  },
  'US-PERMC': {
    name: 'Mercyhurst',
    idField: '999c',
    tag: '952',
    subs: { a: 'a,c', b: 'p', c: 'o', d: '2', x: 'y', y: '9', u: 'h', n: 'h', v: 'h' },
    lendLocs: ['HAMMER CURR', 'HAMMER NEWBOOK', 'HAMMER STACKS', 'HAMMER THESIS SPEC']
  },
  'US-PSCM': {
    name: 'Marywood',
    idField: '999c',
    tag: '952',
    subs: { a: 'c', b: 'p', c: 'o', d: '2', x: 'y', y: '9', u: 'h', n: 'h', v: 'h' },
    lendLocs: ['BIN', 'MARKETPL']
  },
  'US-PBMW': {
    name: 'Moravian',
    tag: '852',
    linkedField: '876',
    linkSubs: ['8', '9'],
    subs: { a: 'b,c', c: 'h,i', b: '876p' },
    lendLocs: ['MORA Bookstacks']
  },
  'US-PPCO': {
    name: 'PCOM',
    ils: 'FOLIO',
    tag: '952',
    subs: { a: 'd', b: 'm', c: 'e', d: 'h', n: 'k', u: 'l', v: 'j', x: 'i' },
    lendLocs: [ 'GA-Display', 'GA-Leisure', 'GA-Main', 'PA-Display', 'PA-Leisure', 'PA-Main', 'PA-Storage', 'PA-Thesis', 'SGA-Display', 'SGA-Leisure', 'SGA-Main' ]
  },
  'US-PST': {
    name: 'Penn State',
    tag: '999',
    subs: { a: 'm,l', c: 'a', d: 'w', b: 'i', x: 't'},
    lendLocs: ['ABINGTON STACKS-AA', 'ABINGTON STACKS-AB', 'ABINGTON STACKS-BD', 'ABINGTON STACKS-BK', 'ABINGTON STACKS-BR', 'ABINGTON STACKS-DE', 'ABINGTON STACKS-DS', 'ABINGTON STACKS-FE', 'ABINGTON STACKS-HB2', 'ABINGTON STACKS-HB3', 'ABINGTON STACKS-HN', 'ABINGTON STACKS-LV2', 'ABINGTON STACKS-MA', 'ABINGTON STACKS-MK', 'ABINGTON STACKS-NK', 'ABINGTON STACKS-SL', 'ABINGTON STACKS-SV', 'ABINGTON STACKS-WB', 'ABINGTON STACKS-WS', 'ABINGTON STACKS-YK', 'ALTOONA JUVENILEAA', 'ALTOONA MEDIA-AA', 'ALTOONA OVERSIZEAA', 'ALTOONA STACKS-AA', 'ALTOONA STACKS-AB', 'ALTOONA STACKS-BD', 'ALTOONA STACKS-BK', 'ALTOONA STACKS-BR', 'ALTOONA STACKS-DE', 'ALTOONA STACKS-DS', 'ALTOONA STACKS-FE', 'ALTOONA STACKS-HB2', 'ALTOONA STACKS-HB3', 'ALTOONA STACKS-HN', 'ALTOONA STACKS-LV2', 'ALTOONA STACKS-MA', 'ALTOONA STACKS-MK', 'ALTOONA STACKS-NK', 'ALTOONA STACKS-SL', 'ALTOONA STACKS-SV', 'ALTOONA STACKS-WB', 'ALTOONA STACKS-WS', 'ALTOONA STACKS-YK', 'BEAVER AFRIC-AMER', 'BEAVER GRFCNOV-BR', 'BEAVER STACKS-AA', 'BEAVER STACKS-AB', 'BEAVER STACKS-BD', 'BEAVER STACKS-BK', 'BEAVER STACKS-BR', 'BEAVER STACKS-DE', 'BEAVER STACKS-DS', 'BEAVER STACKS-FE', 'BEAVER STACKS-HB2', 'BEAVER STACKS-HB3', 'BEAVER STACKS-HN', 'BEAVER STACKS-LV2', 'BEAVER STACKS-MA', 'BEAVER STACKS-MK', 'BEAVER STACKS-NK', 'BEAVER STACKS-SL', 'BEAVER STACKS-SV', 'BEAVER STACKS-WB', 'BEAVER STACKS-WS', 'BEAVER STACKS-YK', 'BEHREND BROWSINGBD', 'BEHREND FACULTY-BD', 'BEHREND INDEP-LRNG', 'BEHREND OVERSIZEBD', 'BEHREND STACKS-AA', 'BEHREND STACKS-AB', 'BEHREND STACKS-BD', 'BEHREND STACKS-BK', 'BEHREND STACKS-BR', 'BEHREND STACKS-DE', 'BEHREND STACKS-DS', 'BEHREND STACKS-FE', 'BEHREND STACKS-HB2', 'BEHREND STACKS-HB3', 'BEHREND STACKS-HN', 'BEHREND STACKS-LV2', 'BEHREND STACKS-MA', 'BEHREND STACKS-MK', 'BEHREND STACKS-NK', 'BEHREND STACKS-SL', 'BEHREND STACKS-SV', 'BEHREND STACKS-WB', 'BEHREND STACKS-WS', 'BEHREND STACKS-YK', 'BEHREND THESIS-BD', 'BERKS DISPLAY-BK', 'BERKS NEWBOOK-BK', 'BERKS STACKS-AA', 'BERKS STACKS-AB', 'BERKS STACKS-BD', 'BERKS STACKS-BK', 'BERKS STACKS-BR', 'BERKS STACKS-DE', 'BERKS STACKS-DS', 'BERKS STACKS-FE', 'BERKS STACKS-HB2', 'BERKS STACKS-HB3', 'BERKS STACKS-HN', 'BERKS STACKS-LV2', 'BERKS STACKS-MA', 'BERKS STACKS-MK', 'BERKS STACKS-NK', 'BERKS STACKS-SL', 'BERKS STACKS-SV', 'BERKS STACKS-WB', 'BERKS STACKS-WS', 'BERKS STACKS-YK', 'BRANDYWINE GRFCNOV-DE', 'BRANDYWINE STACKS-AA', 'BRANDYWINE STACKS-AB', 'BRANDYWINE STACKS-BD', 'BRANDYWINE STACKS-BK', 'BRANDYWINE STACKS-BR', 'BRANDYWINE STACKS-DE', 'BRANDYWINE STACKS-DS', 'BRANDYWINE STACKS-FE', 'BRANDYWINE STACKS-HB2', 'BRANDYWINE STACKS-HB3', 'BRANDYWINE STACKS-HN', 'BRANDYWINE STACKS-LV2', 'BRANDYWINE STACKS-MA', 'BRANDYWINE STACKS-MK', 'BRANDYWINE STACKS-NK', 'BRANDYWINE STACKS-SL', 'BRANDYWINE STACKS-SV', 'BRANDYWINE STACKS-WB', 'BRANDYWINE STACKS-WS', 'BRANDYWINE STACKS-YK', 'DSL-CARL STACKS-DN', 'DSL-UP STACKS-DP','DUBOIS STACKS-AA', 'DUBOIS STACKS-AB', 'DUBOIS STACKS-BD', 'DUBOIS STACKS-BK', 'DUBOIS STACKS-BR', 'DUBOIS STACKS-DE', 'DUBOIS STACKS-DS', 'DUBOIS STACKS-FE', 'DUBOIS STACKS-HB2', 'DUBOIS STACKS-HB3', 'DUBOIS STACKS-HN', 'DUBOIS STACKS-LV2', 'DUBOIS STACKS-MA', 'DUBOIS STACKS-MK', 'DUBOIS STACKS-NK', 'DUBOIS STACKS-SL', 'DUBOIS STACKS-SV', 'DUBOIS STACKS-WB', 'DUBOIS STACKS-WS', 'DUBOIS STACKS-YK', 'FAYETTE GRFCNOV-FE', 'FAYETTE JUVENILEFE', 'FAYETTE STACKS-AA', 'FAYETTE STACKS-AB', 'FAYETTE STACKS-BD', 'FAYETTE STACKS-BK', 'FAYETTE STACKS-BR', 'FAYETTE STACKS-DE', 'FAYETTE STACKS-DS', 'FAYETTE STACKS-FE', 'FAYETTE STACKS-HB2', 'FAYETTE STACKS-HB3', 'FAYETTE STACKS-HN', 'FAYETTE STACKS-LV2', 'FAYETTE STACKS-MA', 'FAYETTE STACKS-MK', 'FAYETTE STACKS-NK', 'FAYETTE STACKS-SL', 'FAYETTE STACKS-SV', 'FAYETTE STACKS-WB', 'FAYETTE STACKS-WS', 'FAYETTE STACKS-YK', 'GALLEGHENY BROWSINGMK', 'GALLEGHENY STACKS-AA', 'GALLEGHENY STACKS-AB', 'GALLEGHENY STACKS-BD', 'GALLEGHENY STACKS-BK', 'GALLEGHENY STACKS-BR', 'GALLEGHENY STACKS-DE', 'GALLEGHENY STACKS-DS', 'GALLEGHENY STACKS-FE', 'GALLEGHENY STACKS-HB2', 'GALLEGHENY STACKS-HB3', 'GALLEGHENY STACKS-HN', 'GALLEGHENY STACKS-LV2', 'GALLEGHENY STACKS-MA', 'GALLEGHENY STACKS-MK', 'GALLEGHENY STACKS-NK', 'GALLEGHENY STACKS-SL', 'GALLEGHENY STACKS-SV', 'GALLEGHENY STACKS-WB', 'GALLEGHENY STACKS-WS', 'GALLEGHENY STACKS-YK', 'GREATVLY CURRIC-GV', 'GREATVLY NONPRINTGV', 'GREATVLY STACKS-GV', 'GREATVLY THESIS-GV', 'HARRISBURG AUDIO-HB', 'HARRISBURG CD-HB', 'HARRISBURG CURRIC-HB', 'HARRISBURG DOCS-HB', 'HARRISBURG JUVENILEHB', 'HARRISBURG MAPS-HB', 'HARRISBURG OVERSIZEHB', 'HARRISBURG PHONO-HB', 'HARRISBURG REPORTS-HB', 'HARRISBURG STACKS-AA', 'HARRISBURG STACKS-AB', 'HARRISBURG STACKS-BD', 'HARRISBURG STACKS-BK', 'HARRISBURG STACKS-BR', 'HARRISBURG STACKS-DE', 'HARRISBURG STACKS-DS', 'HARRISBURG STACKS-FE', 'HARRISBURG STACKS-HB2', 'HARRISBURG STACKS-HB3', 'HARRISBURG STACKS-HN', 'HARRISBURG STACKS-LV2', 'HARRISBURG STACKS-MA', 'HARRISBURG STACKS-MK', 'HARRISBURG STACKS-NK', 'HARRISBURG STACKS-SL', 'HARRISBURG STACKS-SV', 'HARRISBURG STACKS-WB', 'HARRISBURG STACKS-WS', 'HARRISBURG STACKS-YK', 'HARRISBURG THESIS-HBY', 'HAZELTON STACKS-AA', 'HAZELTON STACKS-AB', 'HAZELTON STACKS-BK', 'HAZELTON STACKS-BR', 'HAZELTON STACKS-DE', 'HAZELTON STACKS-DS', 'HAZELTON STACKS-FE', 'HAZELTON STACKS-HB2', 'HAZELTON STACKS-HB3', 'HAZELTON STACKS-NK', 'HAZELTON STACKS-WB', 'HAZELTON STACKS-WS', 'HAZELTON STACKS-YK', 'HAZLETON BROWSINGHN', 'HAZLETON MAPS-HN', 'HAZLETON STACKS-BD', 'HAZLETON STACKS-HN', 'HAZLETON STACKS-LV2', 'HAZLETON STACKS-MA', 'HAZLETON STACKS-MK', 'HAZLETON STACKS-SL', 'HAZLETON STACKS-SV', 'HAZLETON STORAGE-HN', 'LEHIGHVLY CAREERS-LV', 'LEHIGHVLY JUVENILELV', 'LEHIGHVLY STACKS-AA', 'LEHIGHVLY STACKS-AB', 'LEHIGHVLY STACKS-BD', 'LEHIGHVLY STACKS-BK', 'LEHIGHVLY STACKS-BR', 'LEHIGHVLY STACKS-DE', 'LEHIGHVLY STACKS-DS', 'LEHIGHVLY STACKS-FE', 'LEHIGHVLY STACKS-HB2', 'LEHIGHVLY STACKS-HB3', 'LEHIGHVLY STACKS-HN', 'LEHIGHVLY STACKS-LV', 'LEHIGHVLY STACKS-LV2', 'LEHIGHVLY STACKS-MA', 'LEHIGHVLY STACKS-MK', 'LEHIGHVLY STACKS-NK', 'LEHIGHVLY STACKS-SL', 'LEHIGHVLY STACKS-SV', 'LEHIGHVLY STACKS-WB', 'LEHIGHVLY STACKS-WS', 'LEHIGHVLY STACKS-YK', 'MONTALTO CIRCDESKMA', 'MONTALTO OVERSIZEMA', 'MONTALTO STACKS-AA', 'MONTALTO STACKS-AB', 'MONTALTO STACKS-BD', 'MONTALTO STACKS-BK', 'MONTALTO STACKS-BR', 'MONTALTO STACKS-DE', 'MONTALTO STACKS-DS', 'MONTALTO STACKS-FE', 'MONTALTO STACKS-HB2', 'MONTALTO STACKS-HB3', 'MONTALTO STACKS-HN', 'MONTALTO STACKS-LV2', 'MONTALTO STACKS-MA', 'MONTALTO STACKS-MK', 'MONTALTO STACKS-NK', 'MONTALTO STACKS-SL', 'MONTALTO STACKS-SV', 'MONTALTO STACKS-WB', 'MONTALTO STACKS-WS', 'MONTALTO STACKS-YK', 'NEWKEN CIRCDESKNK', 'NEWKEN DOCS-NK', 'NEWKEN OVERSIZENK', 'NEWKEN POPNON-NK', 'NEWKEN STACKS-AA', 'NEWKEN STACKS-AB', 'NEWKEN STACKS-BD', 'NEWKEN STACKS-BK', 'NEWKEN STACKS-BR', 'NEWKEN STACKS-DE', 'NEWKEN STACKS-DS', 'NEWKEN STACKS-FE', 'NEWKEN STACKS-HB2', 'NEWKEN STACKS-HB3', 'NEWKEN STACKS-HN', 'NEWKEN STACKS-LV2', 'NEWKEN STACKS-MA', 'NEWKEN STACKS-MK', 'NEWKEN STACKS-NK', 'NEWKEN STACKS-SL', 'NEWKEN STACKS-SV', 'NEWKEN STACKS-WB', 'NEWKEN STACKS-WS', 'NEWKEN STACKS-YK', 'SCHUYLKILL STACKS-AA', 'SCHUYLKILL STACKS-AB', 'SCHUYLKILL STACKS-BD', 'SCHUYLKILL STACKS-BK', 'SCHUYLKILL STACKS-BR', 'SCHUYLKILL STACKS-DE', 'SCHUYLKILL STACKS-DS', 'SCHUYLKILL STACKS-FE', 'SCHUYLKILL STACKS-HB2', 'SCHUYLKILL STACKS-HB3', 'SCHUYLKILL STACKS-HN', 'SCHUYLKILL STACKS-LV2', 'SCHUYLKILL STACKS-MA', 'SCHUYLKILL STACKS-MK', 'SCHUYLKILL STACKS-NK', 'SCHUYLKILL STACKS-SL', 'SCHUYLKILL STACKS-SV', 'SCHUYLKILL STACKS-WB', 'SCHUYLKILL STACKS-WS', 'SCHUYLKILL STACKS-YK', 'SHENANGO BNNF-SV', 'SHENANGO BOOKNOOKSV', 'SHENANGO LGBTQ-SV', 'SHENANGO MCDOWELLSV', 'SHENANGO MEDIA-SV', 'SHENANGO STACKS-AA', 'SHENANGO STACKS-AB', 'SHENANGO STACKS-BD', 'SHENANGO STACKS-BK', 'SHENANGO STACKS-BR', 'SHENANGO STACKS-DE', 'SHENANGO STACKS-DS', 'SHENANGO STACKS-FE', 'SHENANGO STACKS-HB2', 'SHENANGO STACKS-HB3', 'SHENANGO STACKS-HN', 'SHENANGO STACKS-LV2', 'SHENANGO STACKS-MA', 'SHENANGO STACKS-MK', 'SHENANGO STACKS-NK', 'SHENANGO STACKS-SL', 'SHENANGO STACKS-SV', 'SHENANGO STACKS-WB', 'SHENANGO STACKS-WS', 'SHENANGO STACKS-YK', 'UP-ANNEX ACAD-BLDG', 'UP-ANNEX ANNEX', 'UP-ANNEX CATO-2', 'UP-ANNEX CATO-PARK', 'UP-ARCHIT FOLIO-AC', 'UP-ARCHIT STACKS-AC', 'UP-ARTSHUM MUSIC-CTR', 'UP-ARTSHUM PAT-RDG-RM', 'UP-EMS MAPS-EM', 'UP-EMS MICROS-EM', 'UP-EMS OVERSIZEEM', 'UP-EMS STACKS-EM', 'UP-ENGIN POPULAR-EG', 'UP-ENGIN STACKS-EG', 'UP-MAPS MAP-GUIDES', 'UP-MAPS MAPS-MP', 'UP-MAPS OVERSIZEMP', 'UP-MAPS STORAGE-MP', 'UP-PAMS NEWBOOK-PM', 'UP-PAMS POPSCI-PM', 'UP-PAMS STACKS-PM', 'UP-PAT DOC-INTL', 'UP-PAT DOC-US', 'UP-PAT FOLIO-BU', 'UP-PAT FOLIO-ED', 'UP-PAT FOLIO-IN', 'UP-PAT FOLIO-LS', 'UP-PAT FOLIO-SS', 'UP-PAT FOLIO-US', 'UP-PAT JUVBIGBOOK', 'UP-PAT MINISCO', 'UP-PAT NEWBOOK-SS', 'UP-PAT OVERSIZEBU', 'UP-PAT OVERSIZEED', 'UP-PAT OVERSIZEIN', 'UP-PAT OVERSIZELS', 'UP-PAT OVERSIZEPA', 'UP-PAT OVERSIZESS', 'UP-PAT OVERSIZEUS', 'UP-PAT PAT-RDG-RM', 'UP-PAT PATERNO-2', 'UP-PAT PATERNO-3', 'UP-PAT PATERNO-4', 'UP-PAT PATERNO-5', 'UP-PAT PATTEE-1', 'UP-PAT PATTEE-1A', 'UP-PAT PATTEE-2', 'UP-PAT PATTEE-2A', 'UP-PAT PATTEE-3', 'UP-PAT PATTEE-B', 'UP-PAT PATTEE-BA', 'UP-PAT PATTEE-W1', 'UP-PAT PATTEE-W2', 'UP-PAT PATTEE-W2F', 'UP-PAT PATTEE-W3', 'WILKESBAR OVERSIZEWB', 'WILKESBAR PENNSYLVAN', 'WILKESBAR STACKS-AA', 'WILKESBAR STACKS-AB', 'WILKESBAR STACKS-BD', 'WILKESBAR STACKS-BK', 'WILKESBAR STACKS-BR', 'WILKESBAR STACKS-DE', 'WILKESBAR STACKS-DS', 'WILKESBAR STACKS-FE', 'WILKESBAR STACKS-HB2', 'WILKESBAR STACKS-HB3', 'WILKESBAR STACKS-HN', 'WILKESBAR STACKS-LV2', 'WILKESBAR STACKS-MA', 'WILKESBAR STACKS-MK', 'WILKESBAR STACKS-NK', 'WILKESBAR STACKS-SL', 'WILKESBAR STACKS-SV', 'WILKESBAR STACKS-WB', 'WILKESBAR STACKS-WS', 'WILKESBAR STACKS-YK', 'WSCRANTON ARCHIVE-WS', 'WSCRANTON ATLASES-WS', 'WSCRANTON MAPS-WS', 'WSCRANTON OVERSIZEWS', 'WSCRANTON SPECCOL-WS', 'WSCRANTON STACKS-AA', 'WSCRANTON STACKS-AB', 'WSCRANTON STACKS-BD', 'WSCRANTON STACKS-BK', 'WSCRANTON STACKS-BR', 'WSCRANTON STACKS-DE', 'WSCRANTON STACKS-DS', 'WSCRANTON STACKS-FE', 'WSCRANTON STACKS-HB2', 'WSCRANTON STACKS-HB3', 'WSCRANTON STACKS-HN', 'WSCRANTON STACKS-LV2', 'WSCRANTON STACKS-MA', 'WSCRANTON STACKS-MK', 'WSCRANTON STACKS-NK', 'WSCRANTON STACKS-SL', 'WSCRANTON STACKS-SV', 'WSCRANTON STACKS-WB', 'WSCRANTON STACKS-WS', 'WSCRANTON STACKS-YK', 'YORK MEDIA-YK', 'YORK STACKS-AA', 'YORK STACKS-AB', 'YORK STACKS-BD', 'YORK STACKS-BK', 'YORK STACKS-BR', 'YORK STACKS-DE', 'YORK STACKS-DS', 'YORK STACKS-FE', 'YORK STACKS-HB2', 'YORK STACKS-HB3', 'YORK STACKS-HN', 'YORK STACKS-LV2', 'YORK STACKS-MA', 'YORK STACKS-MK', 'YORK STACKS-NK', 'YORK STACKS-SL', 'YORK STACKS-SV', 'YORK STACKS-WB', 'YORK STACKS-WS', 'YORK STACKS-YK', 'YORK SWARTZ', 'YORK SWARTZ-MID', 'YORK SWARTZ-PIC', 'YORK SWARTZ-YA']
  }
};

function getSubs(field) {
  let subs = {};
  field.subfields.forEach(s => {
    let code = Object.keys(s);
    if (!subs[code]) subs[code] = [];
    subs[code].push(s[code]);
  });
  return subs;
}

export function showSettings() {
  return (localFields);
}

export function transform(clusterStr) {
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
  let isil = '';
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
      isil = sid;
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
      if (tag.match(/050|082|090|092|099/)) {
        let csubs = getSubs(field[tag]);
        bibCall[tag] = (csubs.a && csubs.b) ? csubs.a[0] + csubs.b[0] : (csubs.a) ? csubs.a[0] : '';
      }
      if (!recFields[tag]) recFields[tag] = [];
      recFields[tag].push(field[tag]);
      if (isMainBib) { 
        if ((tag > '009' && tag < '831') || tag.match(/^88./)) {
          mainBib.fields.push(field);
        }
        if (tag === '008' || tag === '007' || tag === '006') mainBib.fields.push(field);
      }
    }
    let isSuppressed = false;

    let lf = localFields[sid];
    if (lf && lf.ils && lf.ils === 'FOLIO') {
      let ff999 = recFields['999'];
      if (ff999) {
        for (let x = 0; x < ff999.length; x++) {
          let f = ff999[x];
          if (f.ind1 === 'f' && f.ind2 === 'f') {
            let subs = getSubs(f);
            if (subs.t && subs.t[0] === '1') {
              isSuppressed = true
            }
          }
        }
      }
      
    }
    let controlNumber = lid;
    if (sid === 'US-PYC') {
      controlNumber = controlNumber.replace(/.+:/, 'u');
    }
    if (sid === 'US-PST') {
      controlNumber = controlNumber.replace(/.+:/, 'a');
    }
    if (lf && lf.idField) {
      let tag = lf.idField.substring(0, 3);
      let sf = lf.idField.substring(3);
      let field = recFields[tag];
      if (field && sf) {
        let subs = getSubs(field[0]);
        controlNumber = (subs[sf]) ? subs[sf][0] : '';
      }
    } else if (recFields['001']) { 
      controlNumber = recFields['001'][0] || '';
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
    for (let a = 0; a < cluster.matchValues.length; a++) {
      f999.subfields.push({ m: cluster.matchValues[a] });
    }
    if (!isSuppressed) f999s.push({ '999': f999 });

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

        let policy = '';
        if (lf.lendLocs && lf.lendItypes) {
          policy = (lf.lendLocs.indexOf(location) > -1 && lf.lendItypes.indexOf(itype) > -1) ? 'LOANABLE' : 'UNLOANABLE'; 
        } else if (lf.lendLocs && lf.notLendItypes) {
          policy = (lf.lendLocs.indexOf(location) > -1 && lf.notLendItypes.indexOf(itype) === -1) ? 'LOANABLE' : 'UNLOANABLE';
        } else if (lf.lendLocs) {
          policy = (lf.lendLocs.indexOf(location) > -1) ? 'LOANABLE' : 'UNLOANABLE';
        } else {
          policy = 'UNLOANABLE';
        }
        if (lf.lendFunc) {
          policy = lf.lendFunc(recFields, outItem['999']) || policy;
        }
        outItem['999'].subfields.push({ p: policy });
        if (!isSuppressed && location) outItems.push(outItem);
      }
    }
  }

  mainBib.fields.unshift({ '005': f005 });
  mainBib.fields.unshift({ '003': isil });
  mainBib.fields.unshift({ '001': f001 });
  mainBib.fields.push(...f999s);
  mainBib.fields.push(...outItems);
  return JSON.stringify(mainBib, null, 2);
}

