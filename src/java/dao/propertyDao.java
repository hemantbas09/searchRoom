package dao;

import static config.dbConnection.createConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.propety;

/**
 *
 * @author hemant61
 */
public class propertyDao {

    private static final String INSERT_PROPERTY_SQL = "INSERT INTO property" + "  (username,propImage, propHeading, PropType, propLocation,Contact,propPrice,otherInformation) VALUES "
            + " (?,?,?,?,?,?,?,?);";

    private static final String SELECT_PROPERTY_BY_ID = "select propotyId,username, propImage, propHeading, PropType, propLocation,Contact,propPrice,otherInformation from property where propotyId =?";
    private static final String SELECT_ALL_PROPERTY = "select * from property";
    private static final String DELETE_PROPERTY_SQL = "delete from property where propotyId = ?;";
    private static final String UPDATE_PROPERTY_SQL = "update property set propHeading=?,PropType=?,propLocation=?,Contact=?,propPrice=?,otherInformation=? where propotyId =?; ";

    public propertyDao() {
    }

//    Inser User:
    public void insertProperty(propety Property) throws SQLException {
        System.out.println(INSERT_PROPERTY_SQL);
        // try-with-resource statement will auto close the connection.
        try ( Connection connection = createConnection();  PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PROPERTY_SQL)) {
            
            
            preparedStatement.setString(1, Property.getUsername());
            preparedStatement.setString(2, Property.getPropotyImage());
            preparedStatement.setString(3, Property.getName());
            preparedStatement.setString(4, Property.getPropotyType());
            preparedStatement.setString(5, Property.getPropotyLocation());
            preparedStatement.setString(6, Property.getContact());
            preparedStatement.setString(7, Property.getPropotyPrice());
            preparedStatement.setString(8, Property.getOtherInformation());

            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
            System.out.println("Nepal");

        }
    }

    public propety selectProperty(int id) {
       propety user = null;
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
                String contact = rs.getString("Contact");
                String propertyPrice = rs.getString("propPrice");
                String OtherInformation = rs.getString("otherInformation");

                user = new propety(id, username, name, propertyImage, propertyType, propertyLocation, contact, propertyPrice, OtherInformation);
            System.out.println(user);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

    public List<propety> selectAllProperty() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List<propety> users = new ArrayList<>();
        // Step 1: Establishing a Connection
        try ( Connection connection = createConnection(); // Step 2:Create a statement using connection object
                  PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PROPERTY);) {
//            System.out.println("This is prepead statement"+preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("propotyId");
                System.out.println("This is prepead statement "+id );
                String username = rs.getString("username");
                String name = rs.getString("propHeading");
                String propertyImage = rs.getString("propImage");
                String propertyType = rs.getString("PropType");
                String propertyLocation = rs.getString("propLocation");
                String contact = rs.getString("Contact");
                String propertyPrice = rs.getString("propPrice");
                String OtherInformation = rs.getString("otherInformation");
                users.add( new propety(id,username,name,propertyImage, propertyType,  propertyLocation, contact,propertyPrice, OtherInformation));
            
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
         System.out.println("hello Dao"+users);
         
        return users;
    }

    public boolean deleteProperty(int id) throws SQLException {
        boolean rowDeleted;
        try ( Connection connection = createConnection();  PreparedStatement statement = connection.prepareStatement(DELETE_PROPERTY_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateProperty(propety Property) throws SQLException {
        boolean rowUpdated;
        try (
                 Connection connection = createConnection();  
                PreparedStatement updateStatement = connection.prepareStatement(UPDATE_PROPERTY_SQL);) {
            
             System.out.println("Hemant Basnet");
              System.out.println(Property);
            
            
             
//             updateStatement.setString(1, Property.getPropotyImage());
             updateStatement.setString(1, Property.getName());
             updateStatement.setString(2, Property.getPropotyType());
             updateStatement.setString(3, Property.getPropotyLocation());
             updateStatement.setString(4, Property.getContact());
             updateStatement.setString(5, Property.getPropotyPrice());
             updateStatement.setString(6, Property.getOtherInformation());
             updateStatement.setInt(7, Property.getPropetyId());
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
