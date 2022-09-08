/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

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

public class LoginDao {

    public String authenticateUser(Login login) {
        String userName = login.getUserName();
        String password = login.getPassword();

       
        try {
            Connection con = dbConnection.createConnection();
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("select username,role,password from authentication");
            System.out.println(resultSet);

            while (resultSet.next()) {
                String userNameDB = resultSet.getString("username");
                String passwordDB = resultSet.getString("password");
                String roleDB = resultSet.getString("role");

                if (userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Tenant")) {
                    return "Tenant";
                } else if (userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Owner")) {
                    return "Owner";
                }

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "No Found";

    }

   
    
}
