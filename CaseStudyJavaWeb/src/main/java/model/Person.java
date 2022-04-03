package model;

public abstract class Person {
    private int id;
    private String name;
    private String Dob;
    private String cmnd;
    private String Phone;
    private String email;
    private String location;

    public Person() {

    }

    public Person(int id) {
        this.id = id;
    }


    public Person(int id, String name, String Dob, String cmnd,
                  String Phone, String email, String location) {
        this.id = id;
        this.name = name;
        this.Dob = Dob;
        this.cmnd = cmnd;
        this.Phone = Phone;
        this.email = email;
        this.location = location;



    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return Dob;
    }

    public void setDob(String dob) {
        Dob = dob;
    }

    public String getCmnd() {
        return cmnd;
    }

    public void setCmnd(String cmnd) {
        this.cmnd = cmnd;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String location) {
        this.email = email;
    }
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
}
