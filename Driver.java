package GIT.ElectionSystem;

import java.sql.*;
import java.util.HashMap;
import java.util.LinkedList;

class Driver {
    public static void main(String[] args) {
        HashMap<String, String> PollingStationsResult = new HashMap<String, String>();

        LinkedList<Integer> PollingStationTotalVotes = new LinkedList<Integer>();
        String result = "";
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
                "KUMPALGOGA", "D/A PRIM SCH DEDESO NO. 2", };

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

        } catch (Exception e) {
            e.printStackTrace();

        }
        System.out.println(PollingStationsResult.toString());

    }

}
