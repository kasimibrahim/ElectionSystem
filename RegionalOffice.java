package GIT.ElectionSystem;

import java.sql.*;
import java.util.HashMap;
import java.util.LinkedList;

public class RegionalOffice extends Office {

    public RegionalOffice() {
        super();
    }

    @Override
    public String collate() {
        HashMap<String, String> RegionResult = new HashMap<String, String>();

        LinkedList<Integer> RegionsTotalVotes = new LinkedList<Integer>();

        String[] Regions = { "GREATER ACCRA", "WESTERN", "CENTRAL", "VOLTA", "EASTERN", "ASHANTI", "BRONG AHAFO",
                "NORTHERN", "UPPER WEST", "UPPER EAST" };

        try {
            // 1. Get a connection to database
            Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voter", "root", "admin");
            // 2. Create a statement
            Statement myStmt = myConn.createStatement();

            // 3. Execute SQL query
            for (String everyRegion : Regions) {
                ResultSet myRs = myStmt.executeQuery("SELECT Region,\n" + "    SUM(NDC) AS 'TotalNDCVotes',\n" + "\n"
                        + "    SUM(NPP) AS 'TotalNPPVotes',\n" + "    \n" + "    SUM(GCPP) AS 'TotalGCPPVotes',\n"
                        + "    \n" + "    SUM(PPP) AS 'TotalPPPVotes',\n" + "    \n"
                        + "    SUM(PNC) AS 'TotalPNCVotes',\n" + "    \n"
                        + "    (SUM(NDC) + SUM(NPP) + SUM(GCPP) + SUM(PPP) + SUM(PNC)) as 'Total Votes Cast'\n"
                        + "FROM\n" + "    pollingstation\n" + "WHERE Region = \"" + everyRegion + "\";");

                // 4. Process the result set
                myRs.next();
                RegionsTotalVotes.push(myRs.getInt("TotalNDCVotes"));
                RegionsTotalVotes.push(myRs.getInt(myRs.getString("TotalNPPVotes")));
                RegionsTotalVotes.push(myRs.getInt(myRs.getString("TotalGCPPVotes")));
                RegionsTotalVotes.push(myRs.getInt(myRs.getString("TotalPPPVotes")));
                RegionsTotalVotes.push(myRs.getInt(myRs.getString("TotalPNCVotes")));
                RegionsTotalVotes.push(myRs.getInt("TotalVotesCast"));

                RegionResult.put(everyRegion, RegionsTotalVotes.toString());
                RegionsTotalVotes.clear();

            }

        } catch (Exception e) {
            e.printStackTrace();

        }
        return RegionResult.toString();

    }

    @Override
    public void announce() {

    }
}
