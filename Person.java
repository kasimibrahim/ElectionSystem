package voting_system;
import java.util.Calendar;

public abstract class Person {

    private String firstName;
    private String lastName;
    private Calendar DOB;
    private  int age;
    private char gender;
    private String nationality;
    private String address;
    private String phoneNumber;


    public Person() {
    }

    public Person(String firstName, String lastName, Calendar DOB, int age, char gender,
                  String nationality, String address, String phoneNumber) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.DOB = DOB;
        this.age = age;
        this.gender = gender;
        this.nationality = nationality;
        this.address = address;
        this.phoneNumber = phoneNumber;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Calendar getDOB() {
        return DOB;
    }

    public void setDOB(Calendar DOB) {
        this.DOB = DOB;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public char getGender() {
        return gender;
    }

    public void setGender(char gender) {
        this.gender = gender;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }


    public abstract void eat();

    public abstract void speak();

    public abstract void sleep();

    public abstract void register();
}
