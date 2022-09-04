/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import config.dbConnection;
import java.sql.*;
import model.Login;
import model.registration;

/**
 *
 * @author hemant61
 */
public class regestrationDao {

    private final Connection con;

    public regestrationDao(Connection con) {
        this.con = con;
    }
    // method to insert user to databse:

    public boolean saveUser(registration user) {
        boolean f = false;

        try {

            // User send to database:
            String query = "insert into authentication(role, name, username,email, password, confirmPassword) values (?, ?, ?, ?, ?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, user.getRole());
            pst.setString(2, user.getName());
            pst.setString(3, user.getUsername());
            pst.setString(4, user.getEmail());
            pst.setString(5, user.getPassword());
            pst.setString(6, user.getConfirmPassword());

            pst.executeUpdate();
            f = true;
        } catch (Exception e) {

            e.printStackTrace();

        }
        return f;

    }
    

}


