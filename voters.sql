drop database if exists voter; 
create database Voter;
use Voter;

create table PollingStation
(
PollingStationName varchar(80),
District varchar(50),
Region varchar(40),
NDC int(20),
NPP int(20),
GCPP int(20),
PPP int(20),
PNC int(20)

);

create table District
(
DistrictName varchar(40),
Region varchar(40),
primary key(Region)
);

create table Region
(RegionName varchar(40)
);




insert into PollingStation values("ABELENKPE JHS ", "AYAWASO WEST","GREATER ACCRA",700,10025,826,100,500);
insert into PollingStation values("MARY MOTHER OF GOOD COUNSEL CATHOLIC CHURCH 1", "AYAWASO WEST","GREATER ACCRA",280,8523,8561,299,133);
insert into PollingStation values("OSOFO OWUO MEMORIAL SCHOOL NO.2", "ODODODIODIOO","GREATER ACCRA",900,8523,815,400,233);
insert into PollingStation values("CHRISTIAN BOOK CENTRE EAST LEGON 1", "AYAWASO WEST","GREATER ACCRA",2850,5525,65,423,213);
insert into PollingStation values("NYAMEKYE PENTECOST CHURCH DARKUMAN (1)", "ABLEKUMA NORTH", "GREATER ACCRA",2010,5500,600,200,100);
insert into PollingStation values("CHRIST JESUS EDUCATION. AWOSHIE (1)", "ABLEKUMA NORTH", "GREATER ACCRA", 5000,4500,200,500,100);
insert into PollingStation values("NOBLE KIDS ACADEMY MLITSAKPO (A)", "KPONE-KATAMANSO","GREATER ACCRA",8000,9000,700,3000,900);
insert into PollingStation values("COMMUNITY CENTRE NKWANTA (A)","TARKWA NSUAEM","WESTERN", 2500,4500,700,850,120);
insert into PollingStation values("R C JHS ASUONTAA","BIA WEST","WESTERN", 400,650,234,70,5);
insert into PollingStation values("MOTHER LOVE PREP SCH KASOA (A)","AWUTU SENYA EAST","CENTRAL",1900,2500,700,250,400);
insert into PollingStation values("D A PRIM SCH DZADZEPE","AKATSI NORTH","VOLTA",500,300,100,50,200);
insert into PollingStation values("D/A KG AKWADUUSU","ATIWA WEST","EASTERN",1000,900,800,20,10);
insert into PollingStation values("E/P PRIM SCH SIBI HILL TOP","NKWANTA NORTH","VOLTA",1500,300,400,100,300);
insert into PollingStation values("R/C J H S ADEISO (A)","UPPER WEST AKIM","EASTERN", 1800,2789,900,217,209);
insert into PollingStation values("PRESBY CHURCH AKUKUSO KWABENG","ATIWA WEST","VOLTA",600, 50, 80,70,10);
insert into PollingStation values("METHODIST PRIM. SCH, AKWASIASE","AHAFO ANO NORTH","ASHANTI", 9000, 3576,400,200,200);
insert into PollingStation values("NAAMA JHS","EFFIDUASE/ASOKOR","ASHANTI", 1100, 1367, 100,900, 200);
insert into PollingStation values("PRESBY CHURCH AHYIAYEM","TANO NORTH","BRONG AHAFO",1300,300,100,12,0);
insert into PollingStation values("COCOA SHED TANOANO","SUNYANI EAST","BRONG AHAFO", 3000,500,60,70,2);
insert into PollingStation values("TEMP BOOTH SALUGU","WALEWALE","NORTHERN", 3000,1000,100,500,150);
insert into PollingStation values("COMMUNITY BORE-HOLE GURUMUNI","WA CENTRAL","UPPER WEST",1500,125,99,10,23);
insert into PollingStation values("POST OFFICE AGONA ASAFO","AGONA EAST","CENTRAL", 900, 5678,20,1,24);
insert into PollingStation values("D/A PRIM SCH SANTRAMOR NO1","SUHUM","EASTERN", 7878,9043,408,59,4783);
insert into PollingStation values("D C PRIM GYAPONG 'B' (AFRICA)","JUABOSO","WESTERN", 158,589,10,0,11);
insert into PollingStation values("ST. ANTHONY PRIM SCH. N/A","TROBU","GREATER ACCRA",510,780,21,5,0);
insert into PollingStation values("SENTIE PRIM SCH","SISSALA EAST","UPPER WEST",6000,1257,89,43,10);
insert into PollingStation values("T/B SHERICHE-GONA KURA","SALAGA SOUTH","NORTHERN",1234,4567,289,10,23);
insert into PollingStation values("GPRTU OFFICE NTOTROSO","ASUTIFI NORTH","BRONG AHAFO",25367,538,27,90,21);
insert into PollingStation values("UDS OLD ADMINISTRATION BLOCK WA B","WA CENTRAL","UPPER WEST",374,780,89,23,0);
insert into PollingStation values("PRESBY JHS LONTO","KPANDAI","NORTHERN", 10000,2394,201,20,91);
insert into PollingStation values("ENGLISH ARABIC PRIM SCHOOL NO.1","PRU WEST","BRONG AHAFO", 5000,234,27,10,2);
insert into PollingStation values("MB SHED KANKYIAMOAD/A PRIM SCH KOJOBOURKROM","DORMAA EAST","BRONG AHAFO",2891,234,89,100,18);
insert into PollingStation values("D/A PRIM SCH NSONKONEE","TECHIMAN SOUTH","BRONG AHAFO",8901,2890,579,37,480);
insert into PollingStation values("D/A PRIMARY SCHOOLL AVETI","NORTH DAYI","VOLTA", 7890, 7889,356,489,109);
insert into PollingStation values("L/A PRIMARY SCHOOL KUNDA","KRACHI EAST","VOLTA", 920,1987,203,2780,230);
insert into PollingStation values("PARA SAFARI BAND LINE BURMA CAMP (B)","DADEKOTOPON","GREATER ACCRA",280,689,280,298,12);
insert into PollingStation values("JESUS OF NAZARETH (2) ABOSSEY OKAI","ABLEKUMA CENTRAL","GREATER ACCRA",132,723,20,2,12);
insert into PollingStation values("METH CHURCH MAYERA (A)","AMASAMAN","GREATER ACCRA",2098,3567,908,278,234);
insert into PollingStation values("AFRICAN ADVANCE TECH/ PRIM.SCH NO1","ASHAIMAN","GREATER ACCRA",74,36,7,2,0);
insert into PollingStation values("SANDEMA LOCAL COUNCIL HALL","BUILSA NORTH","UPPER EAST",189,233,38,0,10);
insert into PollingStation values("L/A PRIM SCH AHODJO","NSAWAM/ADOAGYIRI","EASTERN",123,478,0,0,0);
insert into PollingStation values("KOLPELIGU PRIM SCH","PUSIGA","UPPER EAST",230,246,188,7,4);
insert into PollingStation values("RAILWAYS OFF. AMASAMAN (A)","AMASAMAN","GREATER ACCRA",1,33,7,0,0);
insert into PollingStation values("CHURCH OF PENTECOST BETHEL MADINA","MADINA","GREATER ACCRA",432,416,108,23,2);
insert into PollingStation values("HIGH COURT PREMISES - TOKONI (A)","HOHOE","VOLTA",448,356,9,28,0);
insert into PollingStation values("NWARE PRIM SCH B","PUSIGA","UPPER EAST",272,224,1,0,8);
insert into PollingStation values("KUMPALGOGA","BINDURI","UPPER EAST",123,20,5,0,0);
insert into PollingStation values("D/A PRIM SCH DEDESO NO. 2","FANTEAKWA NORTH","EASTERN",93,42,0,4,1);
insert into PollingStation values("BASINA PRIM SCH (A)","NAVRONGO CENTRAL","UPPER EAST",161,148,0,1,0);
insert into PollingStation values("NAVRONGO SENIOR SCHOOL 'B'","NAVRONGO CENTRAL","UPPER EAST",121,121,0,2,1);
insert into PollingStation values("T/B 730- DARE","SAVELUGU","NORTHERN",193,10,0,0,0);
insert into PollingStation values("TANKANGSA PRIMARY SCHOOL","BUILSA NORTH","UPPER EAST",125,119,0,0,0);
insert into PollingStation values("TEMP BOOTH NANYIAR","BUNKPURUGU","NORTHERN",364,339,0,1,1);
insert into PollingStation values("NAYUGU","GUSHEGU","NORTHERN",192,179,0,0,0);
insert into PollingStation values("la prim sch vondiel","SAWLA TUNA KALBA","NORTHERN",125,120,0,0,0);
insert into PollingStation values("MOSQUE NEAR JAMINJA KOJO'S HSE CHEREPONI","CHEREPONI","NORTHERN",90,89,1,3,0);
insert into PollingStation values("KADAWU CENTRE","BOLE/BAMBOI","NORTHERN",112,8,4,4,1);
insert into PollingStation values("D/A PRIM SCH NYOMOASE NO. 2","ATEBUBU/AMANTIN","BRONG AHAFO",487,456,0,0,1);
insert into PollingStation values("MAKARANTA ADAMIYA","KINTAMPO NORTH","BRONG AHAFO",87,62,0,0,0);
insert into PollingStation values("L/A PRIM SCH NTANAASO","NKORANZA SOUTH","BRONG AHAFO",109,100,0,0,2);
insert into PollingStation values("D/A PRIM SCH DEDESO NO. 2","FANTEAKWA NORTH","EASTERN",93,2,0,4,1);
insert into PollingStation values("THE CAMP KUFFOUR CAMP","SUNYANI EAST","BRONG AHAFO",193,152,0,10,11);
insert into PollingStation values("D/A PRIM. SCH.KONKORI","AHAFO ANO NORTH","ASHANTI",186,149,0,12,10);
insert into PollingStation values("C M B SHED AFRESENI","AHAFO ANO SOUTH WEST","ASHANTI",191,219,38,49,20);
insert into PollingStation values("CENTRAL MOSQUE NKANTANKA","BEREKUM WEST","BRONG AHAFO",147,152,0,0,1);
insert into PollingStation values("L/A PRIM SCH SUPONG","DORMAA CENTRAL","BRONG AHAFO",148,133,0,1,1);
insert into PollingStation values("R.C. CHURCH SUNURASE","DORMAA EAST","BRONG AHAFO",143,138,0,5,0);
insert into PollingStation values("L A PRIM SCH KOENSIM","BUEM","VOLTA",93,2,0,4,1);
insert into PollingStation values("E P J S S TAVIEFE-AVENYA","HO CENTRAL","VOLTA",519,37,0,4,0);
insert into PollingStation values("L.A JHS DEDEDO","HO WEST","VOLTA",589,4,0,0,0);
insert into PollingStation values("D A PRIM SCH OTISU-KPODZI","KRACHI WEST","VOLTA",143,1,0,0,0);
insert into PollingStation values("MAMPONG","LOWER MANYA KROBO","EASTERN",217,138,0,4,1);
insert into PollingStation values("AGBEGA YOHE","LOWER MANYA KROBO","EASTERN",440,167,0,2,1);
insert into PollingStation values("HEALTH POST, SEDORM","ASUOGYAMAN","EASTERN",213,67,0,0,0);
insert into PollingStation values("L A PRIM SCH, APEGUSO","ASUOGYAMAN","EASTERN",440,233,0,3,0);
insert into PollingStation values("COMMUNITY CENTRE ALEKPO","AFRAM PLAINS NORTH","EASTERN",136,11,0,0,1);
insert into PollingStation values("L/A PRIM SCH ADIEMBRA-KWAE","KADE","EASTERN",76,11,0,0,0);
insert into PollingStation values("FANTEHENE'S AREA ABOBOA N0.2","ASAWASE","ASHANTI",195,222,0,4,1);
insert into PollingStation values("SEKYEREKROM DAY CARE CENTRE","JUABEN","ASHANTI",240,134,0,40,10);
insert into PollingStation values("OSEIKROM D/A PRIM","ATWIMA MPONUA","ASHANTI",73,16,0,0,0);
insert into PollingStation values("ALHAJIKROM COMMUNITY CENTRE","BOSOME FREHO","ASHANTI",93,2,0,4,1);
insert into PollingStation values("ASUBOI M/A J H S","OFFINSO SOUTH","ASHANTI",93,2,0,4,1);
insert into PollingStation values("TEMP BOOTH NSUBONTA VILLAGE","EJURA SEKYEDUMASE","ASHANTI",93,2,0,4,1);
insert into PollingStation values("T/B, GOVERNOR","NSUTA/KWAMANG/BEPOSO","ASHANTI",93,2,0,4,1);
insert into PollingStation values("PRISONS CANTEEN ANKAFUL","KOMENDA/EDINA/EGUAFO/ABREM (KEEA)","CENTRAL",93,2,0,4,1);
insert into PollingStation values("MDCC,BISEASE","AJUMAKO ENYAN ESIAM","CENTRAL",462,289,0,0,1);
insert into PollingStation values("MARKET SHED NARKWA","EKUMFI","CENTRAL",132,122,0,1,1);
insert into PollingStation values("MDCC,BISEASE","FANTEAKWA NORTH","CENTRAL",112,456,0,0,0);
insert into PollingStation values("METH PRIM KWAMAN","AGONA WEST","CENTRAL",233,143,0,6,0);
insert into PollingStation values("ASANTEFOOKROM CCCOA SHED","UPPER DENKYIRA WEST","CENTRAL",47,45,1,4,1);
insert into PollingStation values("ANG PRIM SCH ESUADAE","UPPER DENKYIRA WEST","CENTRAL",116,230,0,1,0);
insert into PollingStation values("D/A PRIM SCH MENSAKROM","UPPER DENKYIRA WEST","CENTRAL",63,57,0,0,0);
insert into PollingStation values("D A PRIMARY SCH, ESIUKWA","GOMOA EAST","CENTRAL",93,87,0,0,0);
insert into PollingStation values("COMM SHED KENYAMEZOR","ELLEMBELE","WESTERN",93,82,0,2,0);
insert into PollingStation values("D C PRIM TODZI","AMENFI EAST","WESTERN",78,87,0,12,11);
insert into PollingStation values("MYOHAUNG BARRACKS A&B APREMDO","KWESIMINTSIM","WESTERN",156,235,1,1,1);
insert into PollingStation values("D/C PRIMARY SCH. YIRENKYIKROM","AMENFI CENTRAL","WESTERN",90,56,0,0,0);
insert into PollingStation values("D C PRIM JUABO","AMENFI CENTRAL","WESTERN",93,2,0,4,1);
insert into PollingStation values("D C PRIMARY OLD ADIEMBRA","SEFWI WIAWSO","WESTERN",132,122,0,1,1);
insert into PollingStation values("PBC SHED NYAMEDISO","FANTEAKWA NORTH","WESTERN",63,57,0,0,0);
insert into PollingStation values("D A PRIM SCH KPETE","AKATSI NORTH","VOLTA",93,2,0,4,1);
insert into PollingStation values("R/C PRIM. SCH. AGBEDRAFOR","AKATSI SOUTH","VOLTA",132,122,0,1,1);
insert into PollingStation values("E P PRIM SCH KODZI","ANLO","VOLTA",233,143,0,6,0);
insert into PollingStation values("MANHEAN J.H.S 'A'","TEMA-EAST","GREATER ACCRA",132,122,0,1,1);
insert into PollingStation values("MARTS ACADEMY NO1","ASHAIMAN","GREATER ACCRA",93,2,0,4,1);
insert into PollingStation values("EBENEZER PARISH SCHOOL COMPLEX","ASHAIMAN","GREATER ACCRA",132,122,0,1,1);
insert into PollingStation values("MARKATE PREP SCH, PENTECOST DOWN-ABLEKUMA (B)","ANYAA/SOWUTUOM","GREATER ACCRA",93,2,0,4,1);
insert into PollingStation values("COCOA SHED AMPENKRO","ASSIN SOUTH","CENTRAL",195,222,0,4,1);
insert into PollingStation values("D/A PRIMARY SCHOOL TWIFO PRASO NO 1 VILLAGE","TWIFO ATI MORKWAA","CENTRAL",93,2,0,4,1);
insert into PollingStation values("AKWA NDOR MANTSE PALACE","AYAWASO CENTRAL","GREATER ACCRA",195,222,0,4,1);
insert into PollingStation values("AKWA NDOR MANTSE PALACE","KORLE KLOTTEY","GREATER ACCRA",233,143,0,6,0);
insert into PollingStation values("MAMPROBI POLYCLINIC MAMPROBI","ABLEKUMA SOUTH","GREATER ACCRA",93,2,0,4,1);
insert into PollingStation values("ST. MARK NURSERY, AGEGE TROTRO STATION (B)","ABLEKUMA WEST","GREATER ACCRA",93,2,0,4,1);
insert into PollingStation values("TEMP BOOTH KUNSOLA","SISSALA EAST","UPPER WEST",132,122,0,1,8);
insert into PollingStation values("KOWIE PRIM SCH","SISSALA EAST","UPPER WEST",93,2,0,4,1);
insert into PollingStation values("DUU PRIM SCHOOL","SISSALA EAST","UPPER WEST",195,222,0,4,1);
insert into PollingStation values("KOGRI PRIM SCH","JIRAPA","UPPER WEST",132,122,0,1,0);
insert into PollingStation values("SUKE PRIM SCHOOL","LAMBUSSIE-KARNI","UPPER WEST",93,52,0,14,1);
insert into PollingStation values("BULLI PRIMARY SCHOOL","LAMBUSSIE-KARNI","UPPER WEST",13,2,0,0,1);
insert into PollingStation values("ENG/ARABIC PRIM SCH HAMILE","LAMBUSSIE-KARNI","UPPER WEST",183,221,0,13,0);
insert into PollingStation values("KABANYE J H S SCHOOL WA","WA CENTRAL","UPPER WEST",156,132,0,50,1);
insert into PollingStation values("TESHIE-NATINGA PRIM SCH","PUSIGA","UPPER EAST",43,32,0,0,0);
insert into PollingStation values("TINORGO PRIM.SCH.","BINDURI","UPPER EAST",193,232,0,4,1);
insert into PollingStation values("ZAMSTECH NO 2","BOLGATANGA CENTRAL","UPPER EAST",113,112,0,0,0);
insert into PollingStation values("NYOGSI DAGLIGA","NAVRONGO CENTRAL","UPPER EAST",86,14,0,0,0);
insert into PollingStation values("REGIMANUEL GRAY SITE 19 (B)","TEMA-WEST","TEMA-WEST",103,99,0,6,5);
insert into PollingStation values("AL-HAK ISLAMIC SCHOOL AGYENKWA (A)","KPONE-KATAMANSO","EASTERN",103,155,0,9,0);
insert into PollingStation values("GREATER ACCRA","FANTEAKWA NORTH","GREATER ACCRA",573,456,0,9,11);
insert into PollingStation values("AL-HAK ISLAMIC SCHOOL AGYENKWA (A)","KPONE-KATAMANSO","GREATER ACCRA",83,190,0,0,0);
insert into PollingStation values("KASAPREKO DISTILLERY NUNGUA (B)","FANTEAKWA NORTH","GREATER ACCRA",93,2,0,4,1);
insert into PollingStation values("TRADITIONAL AUTHORITY, NUNGUA (B)","KROWOR","GREATER ACCRA",93,2,0,4,1);
insert into PollingStation values("CELESTIAL SHS (A)","ASHAIMAN","GREATER ACCRA",93,2,0,4,1);
insert into PollingStation values("MOUNTAIN OF FAITH MINISTRY, BUBIASHIE (B)","OKAIKWEI SOUTH","GREATER ACCRA",93,2,0,4,1);
insert into PollingStation values("KANESHIE 1&4 PRIM. SCH. (2) KANESHIE (B)","OKAIKWEI SOUTH","GREATER ACCRA",93,2,0,4,1);
insert into PollingStation values("NEW LIFE NO 1 PREP SCH, LA (A)","DADEKOTOPON","GREATER ACCRA",93,2,0,4,1);
insert into PollingStation values("ADABRAKA MARKET MOSQUE (B)","KORLE KLOTTEY","GREATER ACCRA",93,2,0,4,1);
insert into PollingStation values("APOSTLES REVELATION SOCIETY CHURCH (B)","ODODODIODIOO","GREATER ACCRA",93,2,0,4,1);
insert into PollingStation values("ANGLICAN PRIMARY SCHOOL NO 3 DOME","DOME/KWABENYA","GREATER ACCRA",93,2,0,4,1);
insert into PollingStation values("NADAT MEMORAL SCH. WEST ADENTA (A)","MADINA","GREATER ACCRA",93,2,0,4,1);
insert into PollingStation values("M/A PRIM SCH MANHEAN (A)","AMASAMAN","GREATER ACCRA",93,2,0,4,1);
insert into PollingStation values("ABLADJEI OPPOSITE WELDER (A)","DOME/KWABENYA","GREATER ACCRA",93,2,0,4,1);
insert into PollingStation values("ST. SAY PREP SCH, GALILEA (B)","BORTIANOR-NGLESHIE AMANFRO","GREATER ACCRA",93,2,0,4,1);
insert into PollingStation values("D/A PRIMARY SCHOOL BAAKONDIDI","HEMANG LOWER DENKYIRA","CENTRAL",93,2,0,4,1);
insert into PollingStation values("ALAZARIA PRIMARY SCHOOL EFFIAKUMA (A)","EFFIA","WESTERN",93,2,0,4,1);
insert into PollingStation values("COMMUNITY CENTRE WARRIKROM APOWA","AHANTA WEST","WESTERN",83,92,0,0,0);
insert into PollingStation values("DAY CARE CENTRE, PEPEKROM","MPOHOR","WESTERN",15,9,0,0,0);
insert into PollingStation values("D/C PRIM SCH BOAKROM","PRESTEA HUNI-VALLEY","WESTERN",93,2,0,4,1);
insert into PollingStation values("ADWUMAPA COCOA SHED ADOMKROM","BIA WEST","EASTERN",83,92,0,0,0);
insert into PollingStation values("PBC COCOA SHED, ALHAJIKROM","BIA EAST","WESTERN",93,2,0,4,1);
insert into PollingStation values("DC SCHOOL DOMEABRA","FANTEAKWA NORTH","WESTERN",83,92,0,0,0);
insert into PollingStation values("D/A PRIN SCH WASABIAMPA","ASIKUMA/ODOBEN/BRAKWA","CENTRAL",193,452,0,13,1);
insert into PollingStation values("INT CENTRAL GOSPEL CHURCH KASOA","AWUTU SENYA EAST","CENTRAL",83,92,0,0,0);
insert into PollingStation values("D A PRIM SCH AYAASE","ASSIN SOUTH","CENTRAL",156,142,0,9,0);
insert into PollingStation values("D/A PRIM SCHOOL KOJOKROM","FTWIFO ATI MORKWAA","CENTRAL",163,172,0,0,1);
insert into PollingStation values("D/A PRIMARY SCHOOL ADADEKOFI","TWIFO ATI MORKWAA","CENTRAL",93,2,0,4,1);
insert into PollingStation values("WAMASO CATHOLIC PRIM SCHOOL","TWIFO ATI MORKWAA","CENTRAL",83,92,0,0,0);
insert into PollingStation values("PENTECOST CHURCH KOMENDA AMOTOE (B)","KOMENDA/EDINA/EGUAFO/ABREM (KEEA)","CENTRAL",93,2,0,4,1);
insert into PollingStation values("D C PRIMARY SCHOOL, DONKOKROM","BIA EAST","WESTERN",93,2,0,4,1);
insert into PollingStation values("METHODIST CHURCH BOJOANO","EKUMFI","CENTRAL",93,2,0,4,1);
insert into PollingStation values("PENTECOST PREP/MISSION NEW DORMAA","SUNYANI EAST","BRONG AHAFO",93,2,0,4,1);
insert into PollingStation values("U/C PRIM SCH 'A' SUNYANI (B)","SUNYANI EAST","BRONG AHAFO",93,2,0,4,1);
insert into PollingStation values("CHRIST APOSTOLIC CHURCH (CENTRAL) GOASO","ASUNAFO NORTH","BRONG AHAFO",90,66,0,4,1);
insert into PollingStation values("PENTECOAST CHURCH DERMA (A)","TANO SOUTH","BRONG AHAFO",513,377,0,9,11);
insert into PollingStation values("POST OFFICE TERCHIRE","TANO NORTH","BRONG AHAFO",93,2,0,4,1);
insert into PollingStation values("ISLAMIC PRIM. ANSUKROM","JAMAN SOUTH","BRONG AHAFO",93,2,0,4,1);
insert into PollingStation values("ROMAN CATHOLIC CHURCH DOMFETE","BEREKUM WEST","BRONG AHAFO",143,26,0,0,1);
insert into PollingStation values("L/A PRIM SCHOOL MONKWANTA","KINTAMPO SOUTH","BRONG AHAFO",93,2,0,4,1);
insert into PollingStation values("TORFIC MOSQUE (ABLUTION) AREA ABOABO N0.2","ASAWASE","ASHANTI",93,2,0,4,1);
insert into PollingStation values("ST. PETERS PRIMARY SCH, BUSUNU","DAMONGO","NORTHERN",56,72,0,1,1);
insert into PollingStation values("ACTION INTERNATIONAL SCH JAMA TEMPONIM","TECHIMAN NORTH","BRONG AHAFO",193,112,0,0,0);
insert into PollingStation values("L A PRIM SCH CARPENTER","BOLE/BAMBOI","NORTHERN",93,2,0,4,1);
insert into PollingStation values("D/ANO.2JHSYEJI","PRU EAST"," BRONG AHAFO",93,79,0,0,0);
insert into PollingStation values("R/C PRIM. SCHOOL MONTONDO","YENDI","NORTHERN",165,162,0,5,7);
insert into PollingStation values("DAPRIMSCHJUA","BIMBILLA","NORTHERN",13,0,0,0,0);
insert into PollingStation values("D/A PRI SCH. TACHEKU","CHEREPONI","NORTHERN",63,42,0,4,1);
insert into PollingStation values("D/A PRIM AHOMAHOMASU","FANTEAKWA NORTH","EASTERN",23,2,0,4,1);
insert into PollingStation values("PRESBY J.H.S. BOADUA","AKWATIA","EASTERN",135,142,0,4,1);
insert into PollingStation values("L/ A PRIM SCH ODONTEASE","ABIREM","EASTERN",154,2,0,3,0);
insert into PollingStation values("D/A PRIM SCH BADWE","ADANSI ASOKWA","ASHANTI",94,34,0,1,1);
insert into PollingStation values("ODIKRO'S HOUSE ATWOTWOSU","BEKWAI","ASHANTI",93,122,0,0,0);
insert into PollingStation values("KPOSE","LOWER MANYA KROBO","EASTERN",233,234,1,5,1);
insert into PollingStation values("OKOTOM POLLING STATION","AKWAPIM NORTH","EASTERN",93,2,0,4,1);
insert into PollingStation values("ISLAMIC PRIMARY SCHOOL SUHUM 'A' (A)","SUHUM","EASTERN",65,276,0,7,21);
insert into PollingStation values("D/A PRIM SCH GORNIKOPE","AKATSI SOUTH","VOLTA",56,72,0,1,1);
insert into PollingStation values("L/A PRIMARY SCHOOL YAMOAKROM","AFIGYA SEKYERE EAST","ASHANTI",93,122,0,4,2);
insert into PollingStation values("FAWOMAN CMB SHED","OFFINSO SOUTH","ASHANTI",493,422,0,0,4);
insert into PollingStation values("EJURAMAN EDUCATIONAL COMPLEX","EJURA SEKYEDUMASE","ASHANTI",413,512,0,12,11);
insert into PollingStation values("CMB SHED BONSUKROM","AHAFO ANO SOUTH EAST","ASHANTI",43,12,0,1,1);
insert into PollingStation values("CMB SHED YAWBOADIKROM","AHAFO ANO SOUTH EAST","ASHANTI",135,231,0,5,0);
insert into PollingStation values("D/A PRIM SCH ASEMPANAYE","AHAFO ANO SOUTH EAST","AHAFO ANO SOUTH EAST",53,34,0,0,0);
insert into PollingStation values("AFOTOM CMB SHED","OFFINSO SOUTH","ASHANTI",193,122,0,4,2);
insert into PollingStation values("C M B SHED ASIKASU","TANO SOUTH","BRONG AHAFO",124,102,0,4,1);
insert into PollingStation values("S D A PRIM SCH MENSAKROM","SUNYANI EAST","BRONG AHAFO",56,72,0,1,1);
insert into PollingStation values("L/A J H S SCH YAWKROM","DORMAA CENTRAL","BRONG AHAFO",153,245,0,9,0);
insert into PollingStation values("CMB SHED ADUPRI","ATWIMA MPONUA","ASHANTI",56,72,0,1,1);
insert into PollingStation values("ANOMAWOBI L A PRIM SCH","ATWIMA MPONUA","EASTERN",56,72,0,1,1);
insert into PollingStation values("ANOMAWOBI L A PRIM SCH","BOSOME FREHO","EASTERN",103,149,0,0,1);
insert into PollingStation values("ABA YEJI STREET","ASAWASE","ASHANTI",143,243,0,4,1);
insert into PollingStation values("L\A PRIM SCH DOMASE","KUMAWU","ASHANTI",134,224,1,1,1);

SELECT distinct region from pollingstation;



SELECT * FROM voter.pollingstation;
SELECT SUM(NDC) AS 'TotalNDCVotes'  FROM pollingstation ;
SELECT SUM(NPP) AS 'TotalNPPVotes' FROM pollingstation ;




