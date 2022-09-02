/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

/**
 *
 * @author ram
 */

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
import model.Login;
import config.dbConnection;
import org.apache.catalina.User;
 
public class LoginDao {
 
public String authenticateUser(Login login)
{
    String userName = login.getUserName();
    String password = login.getPassword();
 
    Connection con = null;
    Statement statement = null;
    ResultSet resultSet = null;
 
    String userNameDB = "";
    String passwordDB = "";
    String roleDB = "";
 
    try
    {
        con = dbConnection.createConnection();
        statement = con.createStatement();
        resultSet = statement.executeQuery("select username,role,password from authentication");
        System.out.println(resultSet);
 
        while(resultSet.next())
        {
            userNameDB = resultSet.getString("username");
            passwordDB = resultSet.getString("password");
            roleDB = resultSet.getString("role");
 
            if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("tenant"))
            return "tenant";
            else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("owner"))
            return "owner";
        }
    }
    catch(SQLException e)
    {
        e.printStackTrace();
    }
    return "Invalid user credentials";
}
}