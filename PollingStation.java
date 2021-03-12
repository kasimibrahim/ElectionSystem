
package GIT.ElectionSystem;

import java.sql.*;
import java.util.HashMap;
import java.util.LinkedList;

/**
 * 
 * Polling Station Class for Election System. This class is the Polling Station
 * Class which uses a database called voters to read the number of votes for
 * every candidate in each polling station.
 * <p>
 */

public class PollingStation extends Office {
    // This is a hash map with candidate's party as a key and respective vote count
    // as value.
    static HashMap<String, String> PollingStationsResult = new HashMap<String, String>();

    // This is a linked list with contains the total votes of each party from each
    // polling station.
    static LinkedList<Integer> PollingStationTotalVotes = new LinkedList<Integer>();

    /**
     * This method collates the votes of every candidate through the use of the JDBC
     * and a voters database of generated votes.
     * 
     * @param None
     * @return Nothing
     * @exception SQL Exception
     */
    @Override
    public void collate() {
        // Array of Polling Stations
        String[] PollingStations = { "ABELENKPE JHS ", "MARY MOTHER OF GOOD COUNSEL CATHOLIC CHURCH 1",
                "OSOFO OWUO MEMORIAL SCHOOL NO.2", "CHRISTIAN BOOK CENTRE EAST LEGON 1",
                "NYAMEKYE PENTECOST CHURCH DARKUMAN (1)", "CHRIST JESUS EDUCATION. AWOSHIE (1)",
                "NOBLE KIDS ACADEMY MLITSAKPO (A)", "COMMUNITY CENTRE NKWANTA (A)", "R C JHS ASUONTAA",
                "MOTHER LOVE PREP SCH KASOA (A)", "D A PRIM SCH DZADZEPE", "D/A KG AKWADUUSU",
                "E/P PRIM SCH SIBI HILL TOP", "R/C J H S ADEISO (A)", "PRESBY CHURCH AKUKUSO KWABENG",
                "METHODIST PRIM. SCH, AKWASIASE", "NAAMA JHS", "PRESBY CHURCH AHYIAYEM", "COCOA SHED TANOANO",
                "TEMP BOOTH SALUGU", "COMMUNITY BORE-HOLE GURUMUNI", "POST OFFICE AGONA ASAFO",
                "D/A PRIM SCH SANTRAMOR NO1", "D C PRIM GYAPONG \"B\" (AFRICA)", "ST. ANTHONY PRIM SCH. N/A",
                "SENTIE PRIM SCH", "T/B SHERICHE-GONA KURA", "GPRTU OFFICE NTOTROSO",
                "UDS OLD ADMINISTRATION BLOCK WA B", "PRESBY JHS LONTO", "ENGLISH ARABIC PRIM SCHOOL NO.1",
                "MB SHED KANKYIAMOAD/A PRIM SCH KOJOBOURKROM", "D/A PRIM SCH NSONKONEE", "D/A PRIMARY SCHOOLL AVETI",
                "L/A PRIMARY SCHOOL KUNDA", "PARA SAFARI BAND LINE BURMA CAMP (B)",
                "JESUS OF NAZARETH (2) ABOSSEY OKAI", "METH CHURCH MAYERA (A)", "AFRICAN ADVANCE TECH/ PRIM.SCH NO1",
                "SANDEMA LOCAL COUNCIL HALL", "L/A PRIM SCH AHODJO", "KOLPELIGU PRIM SCH", "RAILWAYS OFF. AMASAMAN (A)",
                "CHURCH OF PENTECOST BETHEL MADINA", "HIGH COURT PREMISES - TOKONI (A)", "NWARE PRIM SCH B",
                "KUMPALGOGA", "D/A PRIM SCH DEDESO NO. 2", "BASINA PRIM SCH (A)", "NAVRONGO SENIOR SCHOOL \"B\"",
                "T/B 730- DARE", "TANKANGSA PRIMARY SCHOOL", "TEMP BOOTH NANYIAR", "NAYUGU", "la prim sch vondiel",
                "MOSQUE NEAR JAMINJA KOJO\"S HSE CHEREPONI", "KADAWU CENTRE", "D/A PRIM SCH NYOMOASE NO. 2",
                "MAKARANTA ADAMIYA", "L/A PRIM SCH NTANAASO", "THE CAMP KUFFOUR CAMP", "D/A PRIM. SCH.KONKORI",
                "C M B SHED AFRESENI", "CENTRAL MOSQUE NKANTANKA", "L/A PRIM SCH SUPONG", "R.C. CHURCH SUNURASE",
                "L A PRIM SCH KOENSIM", "E P J S S TAVIEFE-AVENYA", "L.A JHS DEDEDO", "D A PRIM SCH OTISU-KPODZI",
                "MAMPONG", "AGBEGA YOHE", "HEALTH POST, SEDORM", "L A PRIM SCH, APEGUSO", "COMMUNITY CENTRE ALEKPO",
                "L/A PRIM SCH ADIEMBRA-KWAE", "FANTEHENE\"S AREA ABOBOA N0.2", "SEKYEREKROM DAY CARE CENTRE",
                "OSEIKROM D/A PRIM", "ALHAJIKROM COMMUNITY CENTRE", "ASUBOI M/A J H S", "TEMP BOOTH NSUBONTA VILLAGE",
                "T/B, GOVERNOR", "PRISONS CANTEEN ANKAFUL", "MDCC,BISEASE", "MARKET SHED NARKWA", "METH PRIM KWAMAN",
                "ASANTEFOOKROM CCCOA SHED", "ANG PRIM SCH ESUADAE", "D/A PRIM SCH MENSAKROM",
                "D A PRIMARY SCH, ESIUKWA", "COMM SHED KENYAMEZOR", "D C PRIM TODZI", "MYOHAUNG BARRACKS A&B APREMDO",
                "D/C PRIMARY SCH. YIRENKYIKROM", "D C PRIM JUABO", "D C PRIMARY OLD ADIEMBRA", "PBC SHED NYAMEDISO",
                "D A PRIM SCH KPETE", "R/C PRIM. SCH. AGBEDRAFOR", "E P PRIM SCH KODZI", "MANHEAN J.H.S \"A\"",
                "MARTS ACADEMY NO1", "EBENEZER PARISH SCHOOL COMPLEX", "MARKATE PREP SCH, PENTECOST DOWN-ABLEKUMA (B)",
                "COCOA SHED AMPENKRO", "D/A PRIMARY SCHOOL TWIFO PRASO NO 1 VILLAGE", "AKWA NDOR MANTSE PALACE",
                "MAMPROBI POLYCLINIC MAMPROBI", "ST. MARK NURSERY, AGEGE TROTRO STATION (B)", "TEMP BOOTH KUNSOLA",
                "KOWIE PRIM SCH", "DUU PRIM SCHOOL", "KOGRI PRIM SCH", "SUKE PRIM SCHOOL", "BULLI PRIMARY SCHOOL",
                "ENG/ARABIC PRIM SCH HAMILE", "KABANYE J H S SCHOOL WA", "TESHIE-NATINGA PRIM SCH", "TINORGO PRIM.SCH.",
                "ZAMSTECH NO 2", "NYOGSI DAGLIGA", "REGIMANUEL GRAY SITE 19 (B)", "AL-HAK ISLAMIC SCHOOL AGYENKWA (A)",
                "GREATER ACCRA", "KASAPREKO DISTILLERY NUNGUA (B)", "TRADITIONAL AUTHORITY, NUNGUA (B)",
                "CELESTIAL SHS (A)", "MOUNTAIN OF FAITH MINISTRY, BUBIASHIE (B)",
                "KANESHIE 1&4 PRIM. SCH. (2) KANESHIE (B)", "NEW LIFE NO 1 PREP SCH, LA (A)",
                "ADABRAKA MARKET MOSQUE (B)", "APOSTLES REVELATION SOCIETY CHURCH (B)",
                "ANGLICAN PRIMARY SCHOOL NO 3 DOME", "NADAT MEMORAL SCH. WEST ADENTA (A)", "M/A PRIM SCH MANHEAN (A)",
                "ABLADJEI OPPOSITE WELDER (A)", "ST. SAY PREP SCH, GALILEA (B)", "D/A PRIMARY SCHOOL BAAKONDIDI",
                "ALAZARIA PRIMARY SCHOOL EFFIAKUMA (A)", "COMMUNITY CENTRE WARRIKROM APOWA",
                "DAY CARE CENTRE, PEPEKROM", "D/C PRIM SCH BOAKROM", "ADWUMAPA COCOA SHED ADOMKROM",
                "PBC COCOA SHED, ALHAJIKROM", "DC SCHOOL DOMEABRA", "D/A PRIN SCH WASABIAMPA",
                "INT CENTRAL GOSPEL CHURCH KASOA", "D A PRIM SCH AYAASE", "D/A PRIM SCHOOL KOJOKROM",
                "D/A PRIMARY SCHOOL ADADEKOFI", "WAMASO CATHOLIC PRIM SCHOOL", "PENTECOST CHURCH KOMENDA AMOTOE (B)",
                "D C PRIMARY SCHOOL, DONKOKROM", "METHODIST CHURCH BOJOANO", "PENTECOST PREP/MISSION NEW DORMAA",
                "U/C PRIM SCH \"A\" SUNYANI (B)", "CHRIST APOSTOLIC CHURCH (CENTRAL) GOASO",
                "PENTECOAST CHURCH DERMA (A)", "POST OFFICE TERCHIRE", "ISLAMIC PRIM. ANSUKROM",
                "ROMAN CATHOLIC CHURCH DOMFETE", "L/A PRIM SCHOOL MONKWANTA",
                "TORFIC MOSQUE (ABLUTION) AREA ABOABO N0.2", "ST. PETERS PRIMARY SCH, BUSUNU",
                "ACTION INTERNATIONAL SCH JAMA TEMPONIM", "L A PRIM SCH CARPENTER", "D/ANO.2JHSYEJI",
                "R/C PRIM. SCHOOL MONTONDO", "DAPRIMSCHJUA", "D/A PRI SCH. TACHEKU", "D/A PRIM AHOMAHOMASU",
                "PRESBY J.H.S. BOADUA", "L/ A PRIM SCH ODONTEASE", "D/A PRIM SCH BADWE", "ODIKRO\"S HOUSE ATWOTWOSU",
                "KPOSE", "OKOTOM POLLING STATION", "ISLAMIC PRIMARY SCHOOL SUHUM \"A\" (A)", "D/A PRIM SCH GORNIKOPE",
                "L/A PRIMARY SCHOOL YAMOAKROM", "FAWOMAN CMB SHED", "EJURAMAN EDUCATIONAL COMPLEX",
                "CMB SHED BONSUKROM", "CMB SHED YAWBOADIKROM", "D/A PRIM SCH ASEMPANAYE", "AFOTOM CMB SHED",
                "C M B SHED ASIKASU", "S D A PRIM SCH MENSAKROM", "L/A J H S SCH YAWKROM", "CMB SHED ADUPRI",
                "ANOMAWOBI L A PRIM SCH", "ABA YEJI STREET", "LA PRIM SCH DOMASE", };

        try {
            // 1. Get a connection to database
            Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voter", "root", "admin");
            // 2. Create a statement
            Statement myStmt = myConn.createStatement();

            // 3. Execute SQL query
            for (String everyPollingStation : PollingStations) {
                ResultSet myRs = myStmt.executeQuery("SELECT *,\n" + "    SUM(NDC) AS 'TotalNDCVotes',\n" + "\n"
                        + "    SUM(NPP) AS 'TotalNPPVotes',\n" + "    \n" + "    SUM(GCPP) AS 'TotalGCPPVotes',\n"
                        + "    \n" + "    SUM(PPP) AS 'TotalPPPVotes',\n" + "    \n"
                        + "    SUM(PNC) AS 'TotalPNCVotes',\n" + "    \n"
                        + "    (SUM(NDC) + SUM(NPP) + SUM(GCPP) + SUM(PPP) + SUM(PNC)) as 'TotalVotesCast'\n" + "FROM\n"
                        + "    pollingstation\n" + "WHERE pollingstationname = \"" + everyPollingStation + "\";");

                // 4. Process the result set
                myRs.next();
                PollingStationTotalVotes.push(myRs.getInt("TotalNDCVotes"));
                PollingStationTotalVotes.push(myRs.getInt("TotalNPPVotes"));
                PollingStationTotalVotes.push(myRs.getInt("TotalGCPPVotes"));
                PollingStationTotalVotes.push(myRs.getInt("TotalPPPVotes"));
                PollingStationTotalVotes.push(myRs.getInt("TotalPNCVotes"));
                PollingStationTotalVotes.push(myRs.getInt("TotalVotesCast"));

                PollingStationsResult.put(everyPollingStation, PollingStationTotalVotes.toString());
                PollingStationTotalVotes.clear();

            }

        } catch (SQLException e) {
            e.printStackTrace();

        }

    }

    /**
     * This method announces the results of the collaiton at the Polling Station
     * Level.
     * 
     * @param None
     * @return String This returns the results of the collaiton at the Polling
     *         Station Level.
     * 
     */
    @Override
    public String announce() {
        return PollingStationsResult.toString();

    }
}
