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
public class post {
    private String username;
    private String post;
    private Date date;

    

    public post(String post, Date date) {
        this.post = post;
        this.date = date;
    }

    public post(String username, String post) {
        this.username = username;
        this.post = post;
        
    }
     public post(String username, String post,Date date) {
        this.username = username;
        this.post = post;
        this.date = date;
    }
    
    

   
   

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
    
    
}

