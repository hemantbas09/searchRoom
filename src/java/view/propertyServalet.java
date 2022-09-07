package view;
import dao.propertyDao;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.propety;
import org.apache.catalina.User;

//@WebServlet("/postproperty")
public class propertyServalet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private propertyDao propertyDao;
       
           



    public propertyServalet() {

        this.propertyDao = new propertyDao();

    }

 /*public void init() {
        propertyDao = new propertyDao();
    }*/
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
      ;
        /*
        String contact = request.getParameter("contact");
        String propertyName = request.getParameter("propertyname");
        System.out.println("Property Name ="+propertyName);
        System.out.println("Contact Us ="+contact);
        String propertyImage = request.getParameter("file");
        System.out.println("propertyImage="+propertyImage);
        String propertyPrice = request.getParameter("price");
        System.out.println("propertyPrice="+propertyPrice);
        String propertyType = request.getParameter("ptype");
        System.out.println(" propertyType="+ propertyType);
        String propertyAddress = request.getParameter("address");
        System.out.println("propertyAddress="+propertyAddress);
        String propertyOtherDetails = request.getParameter("otherDetails");
        System.out.println("Details="+propertyOtherDetails);
        
        propety newProperty = new propety(propertyName, propertyImage, propertyPrice, contact, propertyType, propertyAddress, propertyOtherDetails);
        System.out.println("All="+newProperty);
    }*/
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        
        
       
         
         
        

        try {
            switch (action) {
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                    insertProperty(request, response);
                    break;
                case "/delete":
                    deleteProperty(request, response);
                    break;
                case "/edit":
                    showEditForm(request, response);
                    break;
                case "/update":
                    updateProperty(request, response);
                    break;
                default:
                    listProperty(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listProperty(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        try{
        List <User> listProperty = propertyDao.selectAllProperty();
        System.out.print("Chup lag"+listProperty);
        request.setAttribute("listProperty", listProperty);
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin/MyProperties.jsp");
        dispatcher.forward(request, response);
        }catch(Exception e){
            e.printStackTrace();
            System.out.print("K vayo k"+e);
        
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin/postproperty.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        User existingUser = propertyDao.selectProperty(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin/editForm.jsp");
        request.setAttribute("user", existingUser);
        dispatcher.forward(request, response);

    }

    private void insertProperty(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String currentUser = request.getParameter("currentUser");
        String contact = request.getParameter("contact");
        String propertyName = request.getParameter("propertyname");
        System.out.println(currentUser);
        String propertyImage = request.getParameter("file");
        String propertyPrice = request.getParameter("price");
        String propertyType = request.getParameter("ptype");
        String propertyAddress = request.getParameter("address");
        String propertyOtherDetails = request.getParameter("otherDetails");

        propety newProperty = new propety(currentUser,propertyName, propertyImage,propertyType,propertyAddress, contact,propertyPrice,   propertyOtherDetails);
        System.out.println(newProperty);
        propertyDao.insertProperty(newProperty);
        response.sendRedirect("admin/MyProperties.jsp");

    }



private void updateProperty(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String contact = request.getParameter("contact");
        String propertyName = request.getParameter("propertyname");
        String propertyImage = request.getParameter("file");
        String propertyPrice = request.getParameter("price");
        String propertyType = request.getParameter("ptype");
        String propertyAddress = request.getParameter("address");
        String propertyOtherDetails = request.getParameter("otherDetails");
        propety updateProperty = (propety) new propety(id, propertyName, propertyImage, propertyPrice, contact, propertyType, propertyAddress, propertyOtherDetails);
        propertyDao.updateProperty(updateProperty);
        response.sendRedirect("list");
    }

    private void deleteProperty(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        propertyDao.deleteProperty(id);
        response.sendRedirect("list");

    } 

}

