package voting_system;

import java.util.Calendar;

public class Voter extends  Person{

    private String voterID;


    Voter(){
        super();
    }

    public Voter(String firstName, String lastName, Calendar DOB, int age, char gender,
                 String nationality, String address, String phoneNumber, String voterID) {
        super(firstName, lastName, DOB, age, gender, nationality, address, phoneNumber);
        this.voterID = voterID;
    }

    public void eat() {

    }


    public Calendar getDOB() {
        return super.getDOB();
    }

    public void register() {

    }


    public void speak() {
        System.out.println("Hello");
    }

    public void sleep() {

    }

    public void vote(){

    }


}
