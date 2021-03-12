package GIT.ElectionSystem;

import java.sql.*;
import java.util.HashMap;

/**
 * 
 * The EC Office Class for the Election System. This class which connects to a
 * database called voters to read the number of votes for every candidate in
 * each Distict Office, Regional Office and Every Polling Station and gives a
 * total of all votes.
 * 
 */

public class EC extends Office {
    // This variable contains the results of the query which returns the total votes
    // of every candidate.
    String result = "";

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

        // This is a hash map with candidate's party as a key and respective vote count
        // as value.
        HashMap<String, String> OverallVotes = new HashMap<String, String>();

        try {
            // 1. Get a connection to database
            Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/voter", "root", "admin");
            // 2. Create a statement
            Statement myStmt = myConn.createStatement();

            // 3. Execute SQL query
            ResultSet myRs = myStmt.executeQuery(

                    "SELECT SUM(NDC) AS 'TotalNDCVotes',SUM(NPP) AS 'TotalNPPVotes',SUM(GCPP) AS 'TotalGCPPVotes',SUM(PPP) AS 'TotalPPPVotes',SUM(PNC) AS 'TotalPNCVotes', (SUM(NDC) + SUM(NPP) + SUM(GCPP) + SUM(PPP) + SUM(PNC)) as 'TotalVotesCast' FROM pollingstation;");

            // 4. Process the result set
            while (myRs.next()) {
                result = ("TotalNDCVotes =" + " " + myRs.getInt("TotalNDCVotes") + " ," + " " + "TotalNPPVotes =" + " "
                        + myRs.getInt("TotalNPPVotes") + " ," + " " + "TotalGCPPVotes =" + " "
                        + myRs.getInt("TotalGCPPVotes") + " ," + " " + "TotalPPPVotes =" + " "
                        + myRs.getInt("TotalPPPVotes") + " ," + " " + "TotalPNCVotes =" + " "
                        + myRs.getInt("TotalPNCVotes")) + " ," + " " + "TotalVotesCast =" + " "
                        + myRs.getInt("TotalVotesCast");

            }

        } catch (Exception e) {
            e.printStackTrace();

        }

    }

    /**
     * This method announces the results of the collaiton at the Distict Office,
     * Regional Office and Every Polling Station and gives a total of all votes.
     * 
     * @param None
     * @return String This returns the results of the collaiton at all Offices.
     * 
     */
    @Override
    public String announce() {
        // A hash map which contains all the votes collated at each Office.
        HashMap<String, String> Votes = new HashMap<String, String>();
        String RV = "RegionalVotes";
        String PSV = "PollingStationVotes";
        String DSV = "DistricVotes";
        String TV = "TotalVotes";

        Votes.put(RV, RegionalOffice.RegionResult.toString());
        Votes.put(PSV, PollingStation.PollingStationsResult.toString());
        Votes.put(DSV, DistrictOffice.districtResult.toString());
        Votes.put(TV, result);

        return Votes.toString();

    }

}
