/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package dao;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
import model.Login;
import config.dbConnection;
/**
 *
 * @author hemant61
 */

public class LoginDao {
     
public String authenticateUser(Login Login)
{
    String userName = Login.getUserName();
    String password = Login.getPassword();
 
    Connection con = null;
    Statement statement = null;
    ResultSet resultSet = null;
 
    String userNameDB = "";
    String passwordDB = "";
  
 
    try
    {
        con = dbConnection.createConnection();
        statement = con.createStatement();
        resultSet = statement.executeQuery("select username,password,role from authentication");
 
        while(resultSet.next())
        {
            userNameDB = resultSet.getString("username");
            passwordDB = resultSet.getString("password");

 
            if(userName.equals(userNameDB) && password.equals(passwordDB))
            return "viewProfile";
        }
    }
    catch(SQLException e)
    {
        e.printStackTrace();
    }
    return "Invalid user credentials";
}
}