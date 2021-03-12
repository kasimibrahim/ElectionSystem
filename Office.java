package GIT.ElectionSystem;

/**
 * This abstract represents all the offices in the Election System. It contains
 * common methods like collate and announce.
 * 
 * @author Group 11
 */

public abstract class Office {

    private String OfficeId;
    private String OfficerId;
    private String branch;

    /**
     * This method collates the votes of every candidate through the use of the JDBC
     * and a voters database of generated votes.
     * 
     * @param None
     * @return Nothing
     * @exception SQL Exception
     */

    public abstract void collate();

    /**
     * This method announces the results of the collaiton at the Office
     * 
     * 
     * @param None
     * @return String This returns the results of the collaiton at the Office.
     * 
     */
    public abstract String announce();

    /** Returns the ID of the Office */
    public String getOfficeId() {
        return OfficeId;
    }

    /** Returns the Officer ID */
    public String getOfficerId() {
        return OfficerId;
    }

    /** Returns the Office Branch */
    public String getBranch() {
        return branch;
    }
}
