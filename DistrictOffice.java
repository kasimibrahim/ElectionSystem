package GIT.ElectionSystem;

import java.sql.*;
import java.util.HashMap;
import java.util.LinkedList;

/**
 * 
 * The District Office Class for the Election System. This class which connects
 * to a database called voters to read the number of votes for every candidate
 * in each Distict Office.
 * 
 */

public class DistrictOffice extends Office {

    private String districtID;

    // This is a hash map with candidate's party as a key and respective vote count
    // as value.
    static HashMap<String, String> districtResult = new HashMap<String, String>();

    // This is a linked list with contains the total votes of each party from each
    // district office.
    static LinkedList<Integer> districtsTotalVotes = new LinkedList<Integer>();

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
        // Array of Districts.
        String[] districts = { "AYAWASO WEST", "ODODODIODIOO", "ABLEKUMA NORTH", "KPONE-KATAMANSO", "TARKWA NSUAEM",
                "BIA WEST", "AWUTU SENYA EAST", "AKATSI NORTH", "ATIWA WEST", "NKWANTA NORTH", "UPPER WEST AKIM",
                "AHAFO ANO NORTH", "EFFIDUASE/ASOKOR", "TANO NORTH", "SUNYANI EAST", "WALEWALE", "WA CENTRAL",
                "AGONA EAST", "SUHUM", "JUABOSO", "TROBU", "SISSALA EAST", "SALAGA SOUTH", "ASUTIFI NORTH", "KPANDAI",
                "PRU WEST", "DORMAA EAST", "TECHIMAN SOUTH", "NORTH DAYI", "KRACHI EAST", "DADEKOTOPON",
                "ABLEKUMA CENTRAL", "AMASAMAN", "ASHAIMAN", "BUILSA NORTH", "NSAWAM/ADOAGYIRI", "PUSIGA", "MADINA",
                "HOHOE", "BINDURI", "FANTEAKWA NORTH", "NAVRONGO CENTRAL", "SAVELUGU", "BUNKPURUGU", "GUSHEGU",
                "SAWLA TUNA KALBA", "CHEREPONI", "BOLE/BAMBOI", "ATEBUBU/AMANTIN", "KINTAMPO NORTH", "NKORANZA SOUTH",
                "AHAFO ANO SOUTH WEST", "BEREKUM WEST", "DORMAA CENTRAL", "BUEM", "HO CENTRAL", "HO WEST",
                "KRACHI WEST", "LOWER MANYA KROBO", "ASUOGYAMAN", "AFRAM PLAINS NORTH", "KADE", "ASAWASE", "JUABEN",
                "ATWIMA MPONUA", "BOSOME FREHO", "OFFINSO SOUTH", "EJURA SEKYEDUMASE", "NSUTA/KWAMANG/BEPOSO",
                "KOMENDA/EDINA/EGUAFO/ABREM (KEEA)", "AJUMAKO ENYAN ESIAM", "EKUMFI", "AGONA WEST",
                "UPPER DENKYIRA WEST", "GOMOA EAST", "ELLEMBELE", "AMENFI EAST", "KWESIMINTSIM", "AMENFI CENTRAL",
                "SEFWI WIAWSO", "AKATSI SOUTH", "ANLO", "TEMA-EAST", "ANYAA/SOWUTUOM", "ASSIN SOUTH",
                "TWIFO ATI MORKWAA", "AYAWASO CENTRAL", "KORLE KLOTTEY", "ABLEKUMA SOUTH", "ABLEKUMA WEST", "JIRAPA",
                "LAMBUSSIE-KARNI", "BOLGATANGA CENTRAL", "TEMA-WEST", "KROWOR", "OKAIKWEI SOUTH", "DOME/KWABENYA",
                "BORTIANOR-NGLESHIE AMANFRO", "HEMANG LOWER DENKYIRA", "EFFIA", "AHANTA WEST", "MPOHOR",
                "PRESTEA HUNI-VALLEY", "BIA EAST", "ASIKUMA/ODOBEN/BRAKWA", "FTWIFO ATI MORKWAA", "ASUNAFO NORTH",
                "TANO SOUTH", "JAMAN SOUTH", "KINTAMPO SOUTH", "DAMONGO", "TECHIMAN NORTH", "PRU EAST", "YENDI",
                "BIMBILLA", "AKWATIA", "ABIREM", "ADANSI ASOKWA", "BEKWAI", "AKWAPIM NORTH", "AFIGYA SEKYERE EAST",
                "AHAFO ANO SOUTH EAST", "KUMAWU" };

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

    }

    /**
     * This method announces the results of the collaiton at the Polling Station
     * Level.
     * 
     * @param None
     * @return String This returns the results of the collaiton at the District
     *         Office.
     * 
     */
    @Override
    public String announce() {
        return districtResult.toString();

    };
}
