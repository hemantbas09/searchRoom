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
import model.post;


/**
 *
 * @author hemant61
 */
public class postDao {
    
    private static final String INSERT_POST_SQL = "INSERT INTO post" + "  (username,post) VALUES "+ " (?,?);";
    private static final String SELECT_ALL_POST = "select * from post";
    
    public postDao() {
        
    }

//    Inser User:
    public void insertPost(post post) throws SQLException {
        System.out.println(INSERT_POST_SQL);
        // try-with-resource statement will auto close the connection.
        try ( Connection connection = createConnection();  PreparedStatement preparedStatement = connection.prepareStatement(INSERT_POST_SQL)) {
            
            
            preparedStatement.setString(1, post.getUsername());
            preparedStatement.setString(2, post.getPost());
        

            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
            System.out.println("Nepal");

        }
    }

   

    public List<post> selectAllPost() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List<post> users = new ArrayList<>();
        // Step 1: Establishing a Connection
        try ( Connection connection = createConnection(); // Step 2:Create a statement using connection object
                  PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_POST);) {
//            System.out.println("This is prepead statement"+preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                
                String username = rs.getString("username");
                String post = rs.getString("post"); 
                Date date = rs.getDate("date");
                users.add(new post(username,post,date));
            
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
