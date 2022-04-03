package model;

public class Employee extends Person {
    private int salary;
    private int id_vi_tri;
    private int id_trinh_do;
    private int id_bo_phan;

    public Employee() {

    }

    public Employee(int id, String name, String Dob, String cmnd,
                    int salary, String Phone, String email,
                    String location, int id_vi_tri, int id_trinh_do,
                    int id_bo_phan) {
        super(id, name, Dob, cmnd, Phone, email, location);
        this.salary = salary;
        this.id_vi_tri = id_vi_tri;
        this.id_trinh_do = id_trinh_do;
        this.id_bo_phan = id_bo_phan;
    }

    public Employee(int salary, int id_vi_tri, int id_trinh_do, int id_bo_phan) {
        super();
        this.salary = salary;
        this.id_vi_tri = id_vi_tri;
        this.id_trinh_do = id_trinh_do;
        this.id_bo_phan = id_bo_phan;

    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public int getId_vi_tri() {
        return id_vi_tri;
    }

    public void setId_vi_tri(int id_vi_tri) {
        this.id_vi_tri = id_vi_tri;
    }

    public int getId_trinh_do() {
        return id_trinh_do;
    }

    public void setId_trinh_do(int id_trinh_do) {
        this.id_trinh_do = id_trinh_do;
    }

    public int getId_bo_phan() {
        return id_bo_phan;
    }

    public void setId_bo_phan(int id_bo_phan) {
        this.id_bo_phan = id_bo_phan;
    }

    @Override
    public String toString() {
        return "Employee [ EmployeeID: " + getId()
                + ",\n Name: " + getName()
                + ",\n Day of birth: " + getDob()
                + ",\n CMND: " + getCmnd()
                + ",\n salary: " + getSalary()
                + ",\n Phone number: " + getPhone()
                + ",\n Email: " + getEmail()
                + ",\n location: " + getLocation()
                + ",\n ma_vi_tri: " + getId_vi_tri()
                + ",\n id_trinh_do: " + getId_trinh_do()
                + ",\n id_bo_phan: " + getId_bo_phan()
                + "]";
    }
}
