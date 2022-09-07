/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author hemant61
 */
public class dbConnection {

    public static Connection createConnection() {
        Connection con = null;

        try {

            if (con == null) {
                //driver class load
                Class.forName("com.mysql.cj.jdbc.Driver");

                //create a connection..
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/searchRoom", "root", "");

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }
}
/*

<%@page import= "java.sql.*" %>
<%@page import="config.dbConnection"%>
<%

            Connection con = dbConnection.createConnection();
   %>
        <h1><%= con %></h1> 


*/