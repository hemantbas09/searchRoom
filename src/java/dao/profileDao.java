/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import static config.dbConnection.createConnection;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.profile;
import model.propety;

/**
 *
 * @author hemant61
 */
public class profileDao {
    
    
      private static final String INSERT_PROFILE_SQL = "INSERT INTO profile" + "  (username,name,email,address,contactNumber) VALUES "
            + " (?,?,?,?,?);";

    private static final String SELECT_PROFILE_BY_Username = "select username, name email,address,contactNumber from profile where username =?";
    private static final String SELECT_ALL_PROFILE = "select * from profile";
    private static final String DELETE_PROFILE_SQL = "delete from profile  where username = ?;";
    private static final String UPDATE_PROFILE_SQL = "update profile set username=?,name=?,email=?,address=?,contactNumber=? where username =?; ";

    public  profileDao() {
    }

//    Inser User:
    public void insertProfile(profile profile) throws SQLException {
       
        // try-with-resource statement will auto close the connection.
        try ( Connection connection = createConnection();  PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PROFILE_SQL)) {
            
            preparedStatement.setString(1, profile.getUsername());
            preparedStatement.setString(2,profile.getName());
            preparedStatement.setString(3, profile.getEmail());
            preparedStatement.setString(4, profile.getAddress());
            preparedStatement.setString(5, profile.getContactNumber());
           

            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
            System.out.println("Nepal");

        }
    }

    public profile selectProfile(String username) {
       profile user = null;
        // Step 1: Establishing a Connection
        try ( Connection connection = createConnection(); // Step 2:Create a statement using connection object
                  PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PROFILE_BY_Username);) {
            preparedStatement.setString(1, username);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                
               
                String name = rs.getString("name");
                String email = rs.getString("email");
                String address = rs.getString("address");
                String contactNumber = rs.getString("contactNumber");
                

                user = new profile(username, name, email, address, contactNumber);
            System.out.println(user);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

 
    public boolean updateProfile(profile profile) throws SQLException {
        boolean rowUpdated;
        try (
                 Connection connection = createConnection();  
                PreparedStatement updateStatement = connection.prepareStatement(UPDATE_PROFILE_SQL);) {
            
             System.out.println("Hemant Basnet");
             
            
            
             
//             updateStatement.setString(1, Property.getPropotyImage());
             updateStatement.setString(1, profile.getName());
             updateStatement.setString(2, profile.getEmail());
             updateStatement.setString(3, profile.getAddress());
             updateStatement.setString(4, profile.getContactNumber());
             updateStatement.setString(5, profile.getUsername());
            
          
            rowUpdated =  updateStatement.executeUpdate() > 0;
            System.out.println("updated USer===" +  updateStatement);
             System.out.println(rowUpdated);
           
        }
        return rowUpdated;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
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
