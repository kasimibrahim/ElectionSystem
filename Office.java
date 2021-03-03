package voting_system;

public abstract class Office {

    private String OfficeId;
    private String OfficerId;
    private String branch;


    public abstract void collate();
    public abstract void announce();

    public String getOfficeId() {
        return OfficeId;
    }

    public String getOfficerId() {
        return OfficerId;
    }

    public String getBranch() {
        return branch;
    }
}
