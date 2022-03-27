package models;

public class Employee extends Person{
    private String level;
    private String position;
    private int salary;

    public Employee() {
    }
    public Employee(int ID, String name, String day_of_birth, String sex, String pID,
                    String phone, String email, String level, String position, int salary) {
        super(ID, name, day_of_birth, sex, pID, phone, email);
        this.level = level;
        this.position = position;
        this.salary = salary;

    }
    public Employee(String level, String position, int salary) {
        super();
        this.level = level;
        this.position = position;
        this.salary = salary;
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

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
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
                + ",\n Salary: " + salary
                + "]";
    }



}