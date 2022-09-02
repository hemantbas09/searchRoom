/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.*;
import model.registration;
import org.apache.catalina.User;
import config.dbConnection;

/**
 *
 * @author hemant61
 */
public class regestrationDao {

    private Connection con;

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

    // get User by username and Password:
    public String Login(registration login) {

        String query = "select * from user where username=? and password=? ";
        String userName = login.getUsername();
        String password = login.getPassword();

        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;

        String userNameDB = "";
        String passwordDB = "";
        String roleDB = "";

        try {
            con = dbConnection.createConnection();
            statement = con.createStatement();
            resultSet = statement.executeQuery("select username,password,role from users");

            while (resultSet.next()) {
                userNameDB = resultSet.getString("username");
                passwordDB = resultSet.getString("password");
                roleDB = resultSet.getString("role");

                if (userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Tenant")) {
                    return "Tenet";
                } else if (userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Owner")) {
                    return "Owner";
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "Invalid user cred";

    }
}

