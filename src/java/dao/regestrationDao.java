/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import config.dbConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.registration;
/**
 *
 * @author hemant61
 */
public class regestrationDao {

  
    
     public int registerUser(registration user) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO authentication" +
            "  (role, name, username,email, password, confirmPassword) VALUES " +
            " (?, ?, ?, ?, ?,?,?);";

        int result = 0;

       

        try( Connection con = dbConnection.createConnection();
        
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = con.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, user.getRole());
            preparedStatement.setString(2,  user.getName());
            preparedStatement.setString(3,  user.getUsername());
            preparedStatement.setString(4,  user.getEmail());
            preparedStatement.setString(5,  user.getPassword());
            preparedStatement.setString(6,  user.getConfirmPassword());

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
    
}
