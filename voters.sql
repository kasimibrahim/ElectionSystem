drop database if exists voter; 
create database Voter;
use Voter;

CREATE TABLE PollingStation (
    PollingStationName VARCHAR(80),
    District VARCHAR(50),
    Region VARCHAR(40),
    NDC INT(20),
    NPP INT(20),
    GCPP INT(20),
    PPP INT(20),
    PNC INT(20)
);

CREATE TABLE District (
    DistrictName VARCHAR(40),
    Region VARCHAR(40)
);

CREATE TABLE Region (
    RegionName VARCHAR(40)
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
insert into PollingStation values("SANDEMA LOCAL COUNCIL HALL","BUILSA NORTH","UPPER EAST",89,233,38,0,10);
insert into PollingStation values("L/A PRIM SCH AHODJO","NSAWAM/ADOAGYIRI","EASTERN",123,478,0,0,0);
insert into PollingStation values("KOLPELIGU PRIM SCH","PUSIGA","UPPER EAST",230,6,188,7,4);
insert into PollingStation values("RAILWAYS OFF. AMASAMAN (A)","AMASAMAN","GREATER ACCRA",1,33,7,0,0);
insert into PollingStation values("CHURCH OF PENTECOST BETHEL MADINA","MADINA","GREATER ACCRA",432,1,108,23,2);
insert into PollingStation values("HIGH COURT PREMISES - TOKONI (A)","HOHOE","VOLTA",448,0,9,28,0);
insert into PollingStation values("NWARE PRIM SCH B","PUSIGA","UPPER EAST",272,4,1,0,8);
insert into PollingStation values("KUMPALGOGA","BINDURI","UPPER EAST",123,20,5,0,0);
insert into PollingStation values("D/A PRIM SCH DEDESO NO. 2","FANTEAKWA NORTH","EASTERN",93,2,0,4,1);

SELECT DISTRICT FROM PollingStation;


SELECT 
    *
FROM
    voter.pollingstation;
SELECT 
    SUM(NDC) AS 'TotalNDCVotes',

    SUM(NPP) AS 'TotalNPPVotes',
    
    SUM(GCPP) AS 'TotalNPPVotes',
    
    SUM(PPP) AS 'TotalNPPVotes',
    
    SUM(PNC) AS 'TotalNPPVotes',
    
    (SUM(NDC) + SUM(NPP) + SUM(GCPP) + SUM(PPP) + SUM(PNC)) as 'Total Votes Cast'
FROM
    pollingstation;




