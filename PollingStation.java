package GIT.ElectionSystem;

import java.sql.*;

public class PollingStation extends Office {

    @Override
    public String collate() {
        String result = "";
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
        return result;

    }

    @Override
    public void announce() {
        // TODO Auto-generated method stub

    };
}
