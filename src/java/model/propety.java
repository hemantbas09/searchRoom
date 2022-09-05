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
    private String propotyFacilities;
    private String propotyPrice;

    public propety() {
    }

    
    public propety(String username, String name, String propotyImage, String propotyType, String propotyLocation, String propotyFacilities, String propotyPrice, Date postDate, String otherInformation) {
        this.username = username;
        this.name = name;
        this.propotyImage = propotyImage;
        this.propotyType = propotyType;
        this.propotyLocation = propotyLocation;
        this.propotyFacilities = propotyFacilities;
        this.propotyPrice = propotyPrice;
        this.postDate = postDate;
        this.otherInformation = otherInformation;
    }

    public propety(int propetyId, String username, String name, String propotyImage, String propotyType, String propotyLocation, String propotyFacilities, String propotyPrice, String otherInformation) {
        this.propetyId = propetyId;
        this.username = username;
        this.name = name;
        this.propotyImage = propotyImage;
        this.propotyType = propotyType;
        this.propotyLocation = propotyLocation;
        this.propotyFacilities = propotyFacilities;
        this.propotyPrice = propotyPrice;
        this.otherInformation = otherInformation;
    }
    
    
    
    
    public propety(int propetyId, String username, String name, String propotyImage, String propotyType, String propotyLocation, String propotyFacilities, String propotyPrice, Date postDate, String otherInformation) {
        this.propetyId = propetyId;
        this.username = username;
        this.name = name;
        this.propotyImage = propotyImage;
        this.propotyType = propotyType;
        this.propotyLocation = propotyLocation;
        this.propotyFacilities = propotyFacilities;
        this.propotyPrice = propotyPrice;
        this.postDate = postDate;
        this.otherInformation = otherInformation;
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

    public String getPropotyFacilities() {
        return propotyFacilities;
    }

    public void setPropotyFacilities(String propotyFacilities) {
        this.propotyFacilities = propotyFacilities;
    }

    public String getPropotyPrice() {
        return propotyPrice;
    }

    public void setPropotyPrice(String propotyPrice) {
        this.propotyPrice = propotyPrice;
    }

    public Date getPostDate() {
        return postDate;
    }

    public void setPostDate(Date postDate) {
        this.postDate = postDate;
    }

    public String getOtherInformation() {
        return otherInformation;
    }

    public void setOtherInformation(String otherInformation) {
        this.otherInformation = otherInformation;
    }
    private Date postDate;
    private String otherInformation;

}
