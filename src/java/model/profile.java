/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author hemant61
 */
public class profile {
    private String username;
    private String name;
    private String email;
    private String address;
    private String contactNumber;

    public profile(String username1, String name1, String email1, String address1, String contactNumber1) {
        this.username = username1;
        this.name = name1;
        this.email = email1;
        this.address = address1;
        this.contactNumber = contactNumber1;
    }

    

    public profile(String name, String email, String address, String contactNumber) {
        this.name = name;
        this.email = email;
        this.address = address;
        this.contactNumber = contactNumber;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }
    
    
    
}
