package controllers;


import java.util.Scanner;

import services.Impl.EmployeeServicesImpl;
import services.EmployeeServices;
import services.Impl.CustomerServicesImpl;
import services.Impl.FacilityServiceImpl;


public class FuramaController {
    public static void main(String[] args) {
        displayMainMenu();

    }

    public static void displayMainMenu() {
        boolean check = true;
        while (check) {
            System.out.println("**********MENU********");
            System.out.println("1. Employee Management");
            System.out.println("2. Customer Management");
            System.out.println("3. Facility Management");
            System.out.println("4. Booking Management");
            System.out.println("5. Promotion Management");
            System.out.println("6. Exit");
            System.out.println("");
            System.out.println("Type a number on menu to chosse: ");
            Scanner scanner = new Scanner(System.in);
            switch (scanner.nextInt()) {
                case 1: {
                    displayEmployeeMenu();
                    break;
                }
                case 2: {
                    displayCustomerMenu();
                    break;
                }
                case 3: {
                    displayFacilityMenu();
                    break;
                }
                case 4: {
                    displayBookingMenu();
                    break;
                }
                case 5: {
                    displayPromotionMenu();
                    break;
                }
                case 6: {
                    System.exit(0);
                    break;
                }
            }
        }
    }

    public static void displayEmployeeMenu() {
        EmployeeServicesImpl EmployeeServices = new EmployeeServicesImpl();
        boolean check = true;
        while (check) {
            System.out.println("1. Display list employees");
            System.out.println("2. Add new employees");
            System.out.println("3. Edit employees");
            System.out.println("4. Back to menu");
            Scanner scanner = new Scanner(System.in);
            switch (scanner.nextInt()) {
                case 1: {
                    EmployeeServices.display();
                    break;
                }
                case  2: {
                    EmployeeServices.addNew();
                     break;
                }
                case  3: {
                    EmployeeServices.edit();
                    break;
                }
                case 4: {
                    displayMainMenu();
                    break;
                }
            }
        }
    }
    public static void displayCustomerMenu() {
        CustomerServicesImpl customerService = new CustomerServicesImpl();
        boolean check = true;
        while (check) {
            System.out.println("1. Display list customer");
            System.out.println("2. Add new customer");
            System.out.println("3. Edit customer");
            System.out.println("4. Back to menu");
            Scanner scanner = new Scanner(System.in);
            switch (scanner.nextInt()) {
                case 1: {
                    customerService.display();
                    break;
                }
                case 2: {
                    customerService.addNew();
                    break;
                }
                case 3: {
                    customerService.edit();
                    break;
                }
                case 4: {
                    return;
                }
            }
        }
    }
    public static void displayFacilityMenu() {
        FacilityServiceImpl facilityService = new FacilityServiceImpl();

        boolean check = true;
        while (check) {
            System.out.println("1. Display list facility");
            System.out.println("2. Add new facility");
            System.out.println("3. Display list facility maintenance");
            System.out.println("4. Back to menu");
            Scanner scanner = new Scanner(System.in);
            switch (scanner.nextInt()) {
                case 1: {
                    facilityService.display();
                    break;
                }
                case 2: {
                    addNewFacilityMenu();
                    break;
                }
                case 3:{
                    facilityService.displayMaintain();
                }
                case 4:{
                    return;
                }
            }
        }
    }
    public static void displayBookingMenu() {
        boolean check = true;
        while (check) {
            System.out.println("2. Add new booking");
            System.out.println("1. Display list booking");
            System.out.println("3. Create new constracts");
            System.out.println("4. Display list contracts");
            System.out.println("5. Edit contracts");
            System.out.println("6. Return main menu");

            Scanner scanner = new Scanner(System.in);
            switch (scanner.nextInt()) {
                case 1: {
                    System.out.println("asdfsdfs");
                    break;
                }
                case 6: {
                    displayMainMenu();
                    break;
                }
            }
        }
    }
    public static void displayPromotionMenu() {
        boolean check = true;
        while (check) {
            System.out.println("1. Display list customers use service");
            System.out.println("2. Display list customers get voucher");
            System.out.println("3. Back to menu");
            Scanner scanner = new Scanner(System.in);
            switch (scanner.nextInt()) {
                case 1: {
                    System.out.println("asdfsdfs");
                    break;
                }
                case 3: {
                    displayMainMenu();
                    break;
                }
            }
        }
    }
    public static void addNewFacilityMenu() {
        FacilityServiceImpl facilityService = new FacilityServiceImpl();
        Scanner scan = new Scanner(System.in);
        boolean subCheck = true;
        while (subCheck){
            System.out.println("1. Add new villa");
            System.out.println("2. Add new house");
            System.out.println("3. Add new room");
            System.out.println("4. Return Facility Management menu");
            System.out.print("Please choose a function: ");
            int functionNumber = 0;
            try {
                functionNumber = Integer.parseInt(scan.nextLine());
            } catch (NumberFormatException e) {
                System.out.println("You entered the wrong format, please enter it again: ");
            }
            switch (functionNumber) {
                case 1:{
                    facilityService.addNewVilla();
                    break;
                }
                case 2:{
                    facilityService.addNewHouse();
                    break;
                }
                case 3:{
                    facilityService.addNewRoom();
                    break;
                }
                case 4:{
                    return;
                }
                default:
                    System.out.println("The selected function is not valid!");
            }
        }
    }
}
