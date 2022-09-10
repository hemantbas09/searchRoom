/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import static config.dbConnection.createConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.link;

/**
 *
 * @author hemant61
 */
public class linkDao {
    
    
     private static final String INSERT_PROPERTY_SQL = "INSERT INTO link" + "(username,link) VALUES " + " (?,?);";

    private static final String SELECT_PROPERTY_BY_ID = "select username, link from link where username =?";
    private static final String SELECT_ALL_PROPERTY = "select * from link";
   
    public linkDao() {
    }

//    Inser User:
    public void insertLink(link link) throws SQLException {
        System.out.println(INSERT_PROPERTY_SQL);
        // try-with-resource statement will auto close the connection.
        try ( Connection connection = createConnection();  PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PROPERTY_SQL)) {
            
            
            preparedStatement.setString(1, link.getUsername());
            preparedStatement.setString(2, link.getLink());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
            System.out.println("Nepal");

        }
    }

    public link selectLink(String username) {
       link user = null;
        // Step 1: Establishing a Connection
        try ( Connection connection = createConnection(); // Step 2:Create a statement using connection object
                  PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PROPERTY_BY_ID);) {
            preparedStatement.setString(1, username);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                
                String link = rs.getString("link");
               

                user = new link(username, link);
            System.out.println(user);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

    public List<link> selectAllProperty() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List<link> users = new ArrayList<>();
        // Step 1: Establishing a Connection
        try ( Connection connection = createConnection(); // Step 2:Create a statement using connection object
                  PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PROPERTY);) {
//            System.out.println("This is prepead statement"+preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                
                String username = rs.getString("username");
                String link = rs.getString("link");
               
                users.add( new link(username,link));
            
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
         System.out.println("hello Dao"+users);
         
        return users;
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
