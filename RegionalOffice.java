package GIT.ElectionSystem;

import java.sql.*;
import java.util.HashMap;
import java.util.LinkedList;

/**
 * 
 * THe Regional Office Class for Election System. This class is the Polling
 * Station Class which uses a database called voters to read the number of votes
 * for every candidate in each Region.
 * <p>
 */

public class RegionalOffice extends Office {
    // This is a hash map with candidate's party as a key and respective vote count
    // as value.
    static HashMap<String, String> RegionResult = new HashMap<String, String>();

    // This is a linked list with contains the total votes of each party from each
    // regional office.
    static LinkedList<Integer> RegionsTotalVotes = new LinkedList<Integer>();

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
        // Array of Regions
        String[] Regions = { "GREATER ACCRA", "WESTERN", "CENTRAL", "VOLTA", "EASTERN", "ASHANTI", "BRONG AHAFO",
                "NORTHERN", "UPPER WEST", "UPPER EAST", "CENTRAL", "TEMA-WEST", "BRONG AHAFO",
                "AHAFO ANO SOUTH EAST", };

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
                        + "    (SUM(NDC) + SUM(NPP) + SUM(GCPP) + SUM(PPP) + SUM(PNC)) as 'TotalVotesCast'\n" + "FROM\n"
                        + "    pollingstation\n" + "WHERE Region = \"" + everyRegion + "\";");

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

    }

    /**
     * This method announces the results of the collaiton at the Regional Level.
     * 
     * @param None
     * @return String This returns the results of the collaiton at the Regional
     *         Office.
     * 
     */
    @Override
    public String announce() {
        return RegionResult.toString();

    }
}
