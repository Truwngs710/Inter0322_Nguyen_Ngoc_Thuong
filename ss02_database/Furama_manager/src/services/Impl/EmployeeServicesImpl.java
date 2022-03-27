package services.Impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import services.EmployeeServices;
import models.Employee;

public class EmployeeServicesImpl implements EmployeeServices{
    private static List<Employee> employeeList = new ArrayList<>();
    private static Scanner scan = new Scanner(System.in);



    @Override
    public void display() {
         for(Employee employee : employeeList) {
            System.out.println(employee.toString());
        }
    }

    @Override
    public void addNew() {
        System.out.println("Enter employee ID: ");
        int ID = Integer.parseInt(scan.nextLine());
        System.out.println("Enter name: ");
        String name = scan.nextLine();
        System.out.println("Enter date of birth: ");
        String day_of_birth = scan.nextLine();
        System.out.println("Enter gender: ");
        String sex = scan.nextLine();
        System.out.println("Enter cmnd: ");
        String pID = scan.nextLine();
        System.out.println("Enter phone number: ");
        String phone = scan.nextLine();
        System.out.println("Enter email: ");
        String email = scan.nextLine();
        System.out.println("Enter level: ");
        String level = scan.nextLine();
        System.out.println("Enter position: ");
        String position = scan.nextLine();
        System.out.println("Enter salary: ");
        int salary = Integer.parseInt(scan.nextLine());
        Employee employee = new Employee(ID, name, day_of_birth, sex, pID, phone,
                email, level, position, salary);
        employeeList.add(employee);
        System.out.println("Add employee successfully!");
         }

    @Override
    public void edit() {
        System.out.println("Enter EmployeeID you want to update: ");
        int searchID = Integer.parseInt(scan.nextLine());
        boolean isExist = false;
        for (Employee employee : employeeList) {
            if(employee.getID() == searchID) {
                isExist = true;
                System.out.println("Enter new information: ");
                System.out.println("Enter employee ID: ");
                boolean check;
                do {
                    check = true;
                    int employeeID = Integer.parseInt(scan.nextLine());
                    if(employeeID != searchID) {
                        for(Employee employee2 : employeeList) {
                            if(employee2.getID() == employeeID) {
                                check = false;
                                System.out.println("This ID is exist, enter EmployeeID again: ");
                                break;
                            }
                        }
                    }
                    if(check == true || employeeID == searchID) {
                        employee.setID(employeeID);
                        break;
                    }
                } while (check == false);
                System.out.println("Enter name: ");
                String name = scan.nextLine();
                employee.setName(name);
                System.out.println("Enter date of birth: ");
                String dOB = scan.nextLine();
                employee.setDay_of_birth(dOB);
                System.out.println("Enter gender: ");
                String gender = scan.nextLine();
                employee.setSex(gender);
                System.out.println("Enter CMND: ");
                String cMND = scan.nextLine();
                employee.setpID(cMND);
                System.out.println("Enter phone number: ");
                String phoneNumber = scan.nextLine();
                employee.setPhone(phoneNumber);
                System.out.println("Enter email: ");
                String email = scan.nextLine();
                employee.setEmail(email);
                System.out.println("Enter level: ");
                String level = scan.nextLine();
                employee.setLevel(level);
                System.out.println("Enter position: ");
                String position = scan.nextLine();
                employee.setPosition(position);
                System.out.println("Enter salary: ");
                int salary = Integer.parseInt(scan.nextLine());
                employee.setSalary(salary);
                System.out.println("Update successfully!");
                break;
            }
        }
        if(isExist == false)
            System.out.println("EmployeeID is not exist!");
    }

    @Override
    public void delete() {

    }

}