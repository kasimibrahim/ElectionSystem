drop database voters;
create database voters;
use voters;

create table GreaterAccra
(
districtName varchar(20),
fname varchar(20),
lname varchar(20),
age int,
voterId varchar(20),
PollingStation varchar(50)
);

create table Western
(districtName varchar(20),
fname varchar(20),
lname varchar(20),
age int,
voterId varchar(10),
PollingStation varchar(50)
);


create table Central
(districtName varchar(20),
fname varchar(20),
lname varchar(20),
age int,
voterId varchar(10),
PollingStation varchar(50)
);

create table Volta
(districtName varchar(20),
fname varchar(20),
lname varchar(20),
age int,
voterId varchar(10),
PollingStation varchar(50)
);

create table Eastern
(districtName varchar(20),
fname varchar(20),
lname varchar(20),
age int,
voterId varchar(10),
PollingStation varchar(50)
);

create table Ashanti
(districtName varchar(20),
fname varchar(20),
lname varchar(20),
age int,
voterId varchar(10),
PollingStation varchar(50)
);

create table Ahafo
(districtName varchar(20),
fname varchar(20),
lname varchar(20),
age int,
voterId varchar(10),
PollingStation varchar(50)
);



create table Northern
(districtName varchar(20),
fname varchar(20),
lname varchar(20),
age int,
voterId varchar(10),
PollingStation varchar(50)
);

create table UpperEast
(districtName varchar(20),
fname varchar(20),
lname varchar(20),
age int,
voterId varchar(10),
PollingStation varchar(50)
);

create table UpperWest
(districtName varchar(20),
fname varchar(20),
lname varchar(20),
age int,
voterId varchar(10),
PollingStation varchar(50)
);


insert into GreaterAccra values
("Ayawaso West","Hajia","Bintu", 27, "1341223212", "GOLDEN ANGELS NURSERY AND DAY CARE"),
("Ayawaso North", "Kojo","Bowel", 23, "29124567456", "G P R T U KIOSK MAMOBI"),
("ODODODIODIOO", "Adjoa", "Smart", 38, "9032564321", "OSOFO OWUO MEMORIAL SCHOOL NO.2"),
("TEMA-EAST", "Hakeem", "Abdullah",27, "1526373898", "ANGLICAN PRIM SCH NO 1B"),
("ABLEKUMA NORTH", "Benjamin","Darko", 23, "1029392847", "ANGLICAN CHURCH ODORKOR");


insert into Western values
("BIA EAST","Mansa","Musa", 30, "1505024526", "ENGLISH-ARABIC SCH.CAMP 15 JUNCTION"),
("BIA WEST", "Kojo","Danso", 23, "2994582150", "CATHOLIC OLD MISSION ADJOAFUA"),
("JUABOSO", "Angela", "Ainoo", 29, "8792863321", "COCOA SHED GYATOKROM"),
("SHAMA", "Ama", "Bonze",35, "7032885571", "COMM CENTRE ABOADZE"),
("JUABOSO", "Darryl","Coleman", 20, "1900875431", "D C PRIM ABROKEFE");


insert into Central values
("CAPE COAST SOUTH","Kwabena","Agyekum", 34, "7341245256", "CHRISTIAN DIVINE CHURCH"),
("AJUMAKO ENYAN ESIAM", "Rita","Donkor", 26, "6512409215", "CPB, DENKYENDUA"),
("AGONA WEST", "Angela", "Baidoo", 40, "9772834856", "MINNIESOTA CHRISTIAN ACADEMY AMPONSAHKROM"),
("GOMOA WEST", "Alex", "Asiaw",38, "9872495651", "D A PRIM SCH AKYENPIM"),
("EKUMFI", "Ryan","Dadson", 25, "2020008743", "CPB AKOSOMBO AREA OTUAM");


insert into Volta values
("BIA EAST","Richmond","Dogbe", 37, "118824821", "ENGLISH-ARABIC SCH.CAMP 15 JUNCTION"),
("BIA WEST", "Etornam","Vlewo", 27, "7917457275", "CATHOLIC OLD MISSION ADJOAFUA"),
("JUABOSO", "Anne", "Adatsi", 25, "8892874321", "COCOA SHED GYATOKROM"),
("SHAMA", "Rhama", "Adadze",39, "4276855300", "COMM CENTRE ABOADZE"),
("JUABOSO", "Doris","Nkosi", 22, "2140787932", "D C PRIM ABROKEFE");


insert into Ashanti values
("BIA EAST","Kojo","Mensa", 30, "1322434252", "ENGLISH-ARABIC SCH.CAMP 15 JUNCTION"),
("BIA WEST", "Elvis","Antwi", 23, "2418910211", "CATHOLIC OLD MISSION ADJOAFUA"),
("JUABOSO", "Angela", "Ainoo", 29, "1292825821", "COCOA SHED GYATOKROM"),
("SHAMA", "Kwame", "Asante",35, "1432422531", "COMM CENTRE ABOADZE"),
("JUABOSO", "Efia","Adama", 20, "7645612432", "D C PRIM ABROKEFE");


insert into Ahafo values
("BIA EAST","Kwam","Sukura", 30, "534994513", "ENGLISH-ARABIC SCH.CAMP 15 JUNCTION"),
("BIA WEST", "Rabito","Dakar", 23, "2904450215", "CATHOLIC OLD MISSION ADJOAFUA"),
("JUABOSO", "Kahra", "Dade", 29, "1432854321", "COCOA SHED GYATOKROM"),
("SHAMA", "Ezekiel", "Kassim",35, "6542765531", "COMM CENTRE ABOADZE"),
("JUABOSO", "Procotor","Hassan", 46, "1328577432", "D C PRIM ABROKEFE");

insert into UpperEast values
("BIA EAST","Alhaji","Vladmir", 50, "2344648710", "ENGLISH-ARABIC SCH.CAMP 15 JUNCTION"),
("BIA WEST", "Baba","Sanda", 65, "7512980215", "CATHOLIC OLD MISSION ADJOAFUA"),
("JUABOSO", "Mustapha", "Adono", 46, "9552764321", "COCOA SHED GYATOKROM"),
("SHAMA", "Amanda", "Cactus",39, "6062795031", "COMM CENTRE ABOADZE"),
("JUABOSO", "Nazir","Tatum", 35, "1089087830", "D C PRIM ABROKEFE");

insert into UpperWest values
("BIA EAST","Aban","Gbagbe", 45, "1465240806", "ENGLISH-ARABIC SCH.CAMP 15 JUNCTION"),
("BIA WEST", "Kojo","Opong", 28, "2812943215", "CATHOLIC OLD MISSION ADJOAFUA"),
("JUABOSO", "Adwoa", "Nti", 29, "9099834781", "COCOA SHED GYATOKROM"),
("SHAMA", "Ama", "Benewaa",27, "6032495531", "COMM CENTRE ABOADZE"),
("JUABOSO", "Farouk","Suleman", 20, "2047064432", "D C PRIM ABROKEFE");

insert into Eastern values
("SUHUM","William","Twum", 30, "1276125212", "D/A PRIM SCH TEI MENSAH"),
("AKIM SWEDRU", "Cyhntia","AMpofo", 23, "6917650905", "APOLI"),
("ABETIFI", "Roy", "Asare", 29, "8052790621", "NSAREYE CMB SHED"),
("ABIREM", "Joy", "Adepa",35, "6230767531", "COMMUNITY GUEST HOUSE-NTRONANG"),
("AFRAM PLAINS NORTH", "Joseph","Anas", 19, "5940965332", "L/A PRIM SCH ZIKPO");

insert into Northern values
("WALEWALE","Musa","Musa", 31, "1252652926", "INTERNAL REV. OFFICE .WALEWALE (B)"),
("YAPEI-KUSAWGU", "Kojo","Danso", 23, "2912450215", "T/B CHOKOSI-PE"),
("SAWLA TUNA KALBA", "Rhopa", "Fadzo", 18, "9094334011", "L.A PRIM SCH TUNA (A)"),
("YAPEI-KUSAWGU", "Rahim", "Banda",21, "2032396571", "COMM CENTRE ABOADZE"),
("TAMALE SOUTH", "Abdul","Abdullah", 24, "1345087471", "KAKPAGYILI PRIM SCH. (B)");




