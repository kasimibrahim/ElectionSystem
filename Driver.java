package GIT.ElectionSystem;

import java.sql.*;
import java.util.HashMap;
import java.util.LinkedList;

class Driver {
    public static void main(String[] args) {

        HashMap<String, String> districtResult = new HashMap<String, String>();
        ;
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

                myRs.next();
                districtsTotalVotes.push(myRs.getInt("TotalNDCVotes"));
                districtsTotalVotes.push(Integer.parseInt(myRs.getString("TotalNPPVotes")));
                districtsTotalVotes.push(Integer.parseInt(myRs.getString("TotalGCPPVotes")));
                districtsTotalVotes.push(Integer.parseInt(myRs.getString("TotalPPPVotes")));
                districtsTotalVotes.push(Integer.parseInt(myRs.getString("TotalPNCVotes")));

                System.out.println(districtsTotalVotes);
                districtResult.put(everyDistrict, districtsTotalVotes.toString());
                districtsTotalVotes.clear();

            }
            System.out.println(districtResult.toString());

            System.out.println(districtsTotalVotes);

            // 4. Process the result set
            /*
             * while (myRs.next()) {
             * 
             * 
             * 
             * }
             */

        } catch (Exception e) {
            e.printStackTrace();

        }

    }
}
