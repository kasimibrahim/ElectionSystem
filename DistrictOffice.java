package GIT.ElectionSystem;

import java.sql.*;
import java.util.HashMap;
import java.util.LinkedList;

public class DistrictOffice extends Office {

    private String districtID;

    @Override
    public String collate() {
        HashMap<String, String> districtResult = new HashMap<String, String>();

        LinkedList<Integer> districtsTotalVotes = new LinkedList<Integer>();

        String[] districts = { "AYAWASO WEST", "ODODODIODIOO", "ABLEKUMA NORTH", "KPONE-KATAMANSO", "TARKWA NSUAEM",
                "BIA WEST", "AWUTU SENYA EAST", "AKATSI NORTH", "ATIWA WEST", "NKWANTA NORTH", "UPPER WEST AKIM",
                "AHAFO ANO NORTH", "EFFIDUASE/ASOKOR", "TANO NORTH", "SUNYANI EAST", "WALEWALE", "WA CENTRAL",
                "AGONA EAST", "SUHUM", "JUABOSO", "TROBU", "SISSALA EAST", "SALAGA SOUTH", "ASUTIFI NORTH", "KPANDAI",
                "PRU WEST", "DORMAA EAST", "TECHIMAN SOUTH", "NORTH DAYI", "KRACHI EAST", "DADEKOTOPON",
                "ABLEKUMA CENTRAL", "AMASAMAN", "ASHAIMAN", "BUILSA NORTH", "NSAWAM/ADOAGYIRI", "PUSIGA", "MADINA",
                "HOHOE", "BINDURI", "FANTEAKWA NORTH" };

        try {
            // 1. Get a connection to database
            Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voter", "root", "admin");
            // 2. Create a statement
            Statement myStmt = myConn.createStatement();

            // 3. Execute SQL query
            for (String everyDistrict : districts) {
                ResultSet myRs = myStmt.executeQuery("SELECT district,\n" + "    SUM(NDC) AS 'TotalNDCVotes',\n" + "\n"
                        + "    SUM(NPP) AS 'TotalNPPVotes',\n" + "    \n" + "    SUM(GCPP) AS 'TotalGCPPVotes',\n"
                        + "    \n" + "    SUM(PPP) AS 'TotalPPPVotes',\n" + "    \n"
                        + "    SUM(PNC) AS 'TotalPNCVotes',\n" + "    \n"
                        + "    (SUM(NDC) + SUM(NPP) + SUM(GCPP) + SUM(PPP) + SUM(PNC)) as 'Total Votes Cast'\n"
                        + "FROM\n" + "    pollingstation\n" + "WHERE district = \"" + everyDistrict + "\";");

                // 4. Process the result set
                myRs.next();
                districtsTotalVotes.push(myRs.getInt("TotalNDCVotes"));
                districtsTotalVotes.push(myRs.getInt("TotalNPPVotes"));
                districtsTotalVotes.push(myRs.getInt("TotalGCPPVotes"));
                districtsTotalVotes.push(myRs.getInt("TotalPPPVotes"));
                districtsTotalVotes.push(myRs.getInt("TotalPNCVotes"));

                districtResult.put(everyDistrict, districtsTotalVotes.toString());
                districtsTotalVotes.clear();

            }

        } catch (Exception e) {
            e.printStackTrace();

        }
        return districtResult.toString();

    }

    @Override
    public void announce() {
        // TODO Auto-generated method stub

    };
}
