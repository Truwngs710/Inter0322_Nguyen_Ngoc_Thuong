package models;

import java.io.Serializable;

public class House extends Facility implements Serializable{
    private int roomStandard;
    public int floorsNumber;

    public House() {
    }

    public House(String facilityID, String facilityName, int acreage, int rentalCost, int maxPeopleNumber, String rentalType,
                 int roomStandard, int floorsNumber) {
        super(facilityID, facilityName, acreage, rentalCost, maxPeopleNumber, rentalType);
        this.roomStandard = roomStandard;
        this.floorsNumber = floorsNumber;
    }
    public House(int roomStandard, int floorsNumber) {
        this.roomStandard = roomStandard;
        this.floorsNumber = floorsNumber;
    }

    public int getRoomStandard() {
        return roomStandard;
    }

    public void setRoomStandard(int roomStandard) {
        this.roomStandard = roomStandard;
    }

    public int getFloorsNumber() {
        return floorsNumber;
    }

    public void setFloorsNumber(int floorsNumber) {
        this.floorsNumber = floorsNumber;
    }

    @Override
    public String toString() {
        return "House ["
                + "FacilityID: " + getFacilityID()
                + ", Name: " + getFacilityName()
                + ", Acreage: " + getAcreage()
                + ", Rental cost: " + getRentalCost()
                + ", Max of people number: " + getMaxPeopleNumber()
                + ", Rental type: " + getRentalType()
                +", Room standard: " + roomStandard
                + ", Floors number: " + floorsNumber
                + "]";
    }

}