package models;

public class Customer extends Person{
    private String level;
    private String position;

    public Customer() {
    }
    public Customer(int ID, String name, String day_of_birth, String sex, String pID,
                    String phone, String email, String level, String position, int salary) {
        super(ID, name, day_of_birth, sex, pID, phone, email);
        this.level = level;
        this.position = position;

    }
    public Customer(String level, String position ) {
        super();
        this.level = level;
        this.position = position;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    @Override
    public String toString() {
        return "Employee [ EmployeeID: " + getID()
                + ",\n Name: " + getName()
                + ",\n Day of birth: " + getDay_of_birth()
                + ",\n Gender: " + getSex()
                + ",\n CMND: " + getpID()
                + ",\n Phone number: " + getPhone()
                + ",\n Email: " + getEmail()
                + ",\n Level: " + level
                + ",\n Position: " + position
                + "]";
    }



}