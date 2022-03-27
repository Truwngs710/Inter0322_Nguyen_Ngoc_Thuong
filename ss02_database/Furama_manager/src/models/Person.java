package models;

public abstract class Person {
    private int ID;
    private String name;
    private String Day_of_birth;
    private String sex;
    private String pID;
    private String phone;
    private String email;

    public Person() {
        // TODO Auto-generated constructor stub
    }

    public Person(int ID, String name, String Day_of_birth, String sex, String pID, String phone,
                  String email) {
        this.ID = ID;
        this.name = name;
        this.Day_of_birth = Day_of_birth;
        this.sex = sex;
        this.pID = pID;
        this.phone = phone;
        this.email = email;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDay_of_birth() {
        return Day_of_birth;
    }

    public void setDay_of_birth(String Day_of_birth) {
        this.Day_of_birth = Day_of_birth;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getpID() {
        return pID;
    }

    public void setpID(String pID) {
        this.pID = pID;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
