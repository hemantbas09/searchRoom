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
import model.propety;
import org.apache.catalina.User;

/**
 *
 * @author hemant61
 */
public class propertyDao {

    private static final String INSERT_PROPERTY_SQL = "INSERT INTO property" + "  (username, propImage, propHeading, PropType, propLocation,propFacilities,propPrice,otherInformation) VALUES "
            + " (?, ?, ?,?,?,?,?,?,?,?);";

    private static final String SELECT_PROPERTY_BY_ID = "select propetyId,username, propImage, propHeading, PropType, propLocation,propFacilities,propPrice,otherInformationy from property where propotyId =?";
    private static final String SELECT_ALL_PROPERTY = "select * from property";
    private static final String DELETE_PROPERTY_SQL = "delete from property where propotyId = ?;";
    private static final String UPDATE_PROPERTY_SQL = "update property set username=?, propImage=?, propHeading=?, PropType=?, propLocation=?,propFacilities=?,propPrice=?,otherInformationy=? from property where propotyId =? ";

    public propertyDao() {
    }

//    Inser User:
    public void insertUser(propety Property) throws SQLException {
        System.out.println(INSERT_PROPERTY_SQL);
        // try-with-resource statement will auto close the connection.
        try ( Connection connection = createConnection();  PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PROPERTY_SQL)) {
            preparedStatement.setString(1, Property.getUsername());
            preparedStatement.setString(2, Property.getName());
            preparedStatement.setString(3, Property.getPropotyImage());
            preparedStatement.setString(4, Property.getPropotyType());
            preparedStatement.setString(5, Property.getPropotyLocation());
            preparedStatement.setString(6, Property.getPropotyFacilities());
            preparedStatement.setString(7, Property.getPropotyPrice());
            preparedStatement.setString(8, Property.getOtherInformation());

            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public User selectUser(int id) {
        User user = null;
        // Step 1: Establishing a Connection
        try ( Connection connection = createConnection(); // Step 2:Create a statement using connection object
                  PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PROPERTY_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String username = rs.getString("username");
                String name = rs.getString("propHeading");
                String propertyImage = rs.getString("propImage");
                String propertyType = rs.getString("PropType");
                String propertyLocation = rs.getString("propLocation");
                String propertyFacilities = rs.getString("propFacilities");
                String propertyPrice = rs.getString("propPrice");

                String OtherInformation = rs.getString("otherInformation");

                user = (User) new propety(id, username, name, propertyImage, propertyType, propertyLocation, propertyFacilities, propertyPrice, OtherInformation);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

    public List<propety> selectAllUsers() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List<propety> users = new ArrayList<>();
        // Step 1: Establishing a Connection
        try ( Connection connection = createConnection(); // Step 2:Create a statement using connection object
                  PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PROPERTY);) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("id");
               String username = rs.getString("username");
                String name = rs.getString("propHeading");
                String propertyImage = rs.getString("propImage");
                String propertyType = rs.getString("PropType");
                String propertyLocation = rs.getString("propLocation");
                String propertyFacilities = rs.getString("propFacilities");
                String propertyPrice = rs.getString("propPrice");
                String OtherInformation = rs.getString("otherInformation");
                users.add(new propety (id, username, name, propertyImage, propertyType, propertyLocation, propertyFacilities, propertyPrice, OtherInformation));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }

    public boolean deleteUser(int id) throws SQLException {
        boolean rowDeleted;
        try ( Connection connection = createConnection();  PreparedStatement statement = connection.prepareStatement(DELETE_PROPERTY_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateUser(propety Property) throws SQLException {
        boolean rowUpdated;
        try ( 
                Connection connection = createConnection();  
                PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_PROPERTY_SQL);)
        
        {
            System.out.println("updated USer:" + preparedStatement);
           
            preparedStatement.setString(1, Property.getUsername());
            preparedStatement.setString(2, Property.getName());
            preparedStatement.setString(3, Property.getPropotyImage());
            preparedStatement.setString(4, Property.getPropotyType());
            preparedStatement.setString(5, Property.getPropotyLocation());
            preparedStatement.setString(6, Property.getPropotyFacilities());
            preparedStatement.setString(7, Property.getPropotyPrice());
            preparedStatement.setString(8, Property.getOtherInformation());
            preparedStatement.setInt(9, Property.getPropetyId());

            rowUpdated = preparedStatement.executeUpdate() > 0;
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
