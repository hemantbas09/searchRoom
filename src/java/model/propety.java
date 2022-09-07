/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author hemant61
 */
public class propety {

    private int propetyId;
    private String username;
    private String name;
    private String propotyImage;
    private String propotyType;
    private String propotyLocation;
    private String contact;
    private String propotyPrice;
    private String otherInformation;

    public propety() {
    }

    public propety(String username, String name, String propotyImage, String propotyType, String propotyLocation, String contact, String propotyPrice, String otherInformation) {
        this.username = username;
        this.name = name;
        this.propotyImage = propotyImage;
        this.propotyType = propotyType;
        this.propotyLocation = propotyLocation;
        this.contact = contact;
        this.propotyPrice = propotyPrice;
        this.otherInformation = otherInformation;
    }

    public propety(String name, String propotyImage, String propotyType, String propotyLocation, String contact, String propotyPrice, String otherInformation) {
        this.name = name;
        this.propotyImage = propotyImage;
        this.propotyType = propotyType;
        this.propotyLocation = propotyLocation;
        this.contact = contact;
        this.propotyPrice = propotyPrice;
        this.otherInformation = otherInformation;
    }
    
    

    public propety(int propetyId, String username, String name, String propotyImage, String propotyType, String propotyLocation, String contact, String propotyPrice, String otherInformation) {
        this.propetyId = propetyId;
        this.username = username;
        this.name = name;
        this.propotyImage = propotyImage;
        this.propotyType = propotyType;
        this.propotyLocation = propotyLocation;
        this.contact = contact;
        this.propotyPrice = propotyPrice;
        this.otherInformation = otherInformation;
    }

    public propety(int id, String username, String name, String propertyType, String propertyLocation, String contact, String propertyPrice) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public propety(int id, String propertyName, String propertyImage, String propertyPrice, String contact, String propertyType, String propertyAddress, String propertyOtherDetails) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

   

   
   

    
    

    public int getPropetyId() {
        return propetyId;
    }

    public void setPropetyId(int propetyId) {
        this.propetyId = propetyId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPropotyImage() {
        return propotyImage;
    }

    public void setPropotyImage(String propotyImage) {
        this.propotyImage = propotyImage;
    }

    public String getPropotyType() {
        return propotyType;
    }

    public void setPropotyType(String propotyType) {
        this.propotyType = propotyType;
    }

    public String getPropotyLocation() {
        return propotyLocation;
    }

    public void setPropotyLocation(String propotyLocation) {
        this.propotyLocation = propotyLocation;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getPropotyPrice() {
        return propotyPrice;
    }

    public void setPropotyPrice(String propotyPrice) {
        this.propotyPrice = propotyPrice;
    }

    public String getOtherInformation() {
        return otherInformation;
    }

    public void setOtherInformation(String otherInformation) {
        this.otherInformation = otherInformation;
    }

    
    
    

}


    
