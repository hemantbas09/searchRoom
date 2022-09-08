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

 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
      
       
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
        
        List <propety> listProperty = propertyDao.selectAllProperty();
        System.out.print(" Chal bey Thank You:"+listProperty);
        request.setAttribute("listProperty", listProperty);
        /*response.sendRedirect("admin/MyProperties.jsp");*/
       RequestDispatcher dispatcher = request.getRequestDispatcher("admin/MyProperties.jsp");
        dispatcher.forward(request, response);
       
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin/postproperty.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("propertyId"));
        System.out.println("THis is the edit form "+ id);
        propety existingUser = propertyDao.selectProperty(id);
        System.out.println("THis is the edit form "+ existingUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin/editForm.jsp");
        request.setAttribute("property", existingUser);
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
   

        
    try{
        String ids = request.getParameter("propertyId");
        int id = Integer.parseInt(ids);
        System.out.print(id+"This is the update form:");
        String contact = request.getParameter("contact");
        String propertyName = request.getParameter("propertyname");
        String propertyImage = request.getParameter("file");
        String propertyPrice = request.getParameter("price");
        String propertyType = request.getParameter("ptype");
        String propertyAddress = request.getParameter("address");
        String propertyOtherDetails = request.getParameter("otherDetails");
         System.out.println("Why are u Running"+ propertyOtherDetails);
        propety updateProperty = (propety)new propety(id, propertyName, propertyImage, propertyPrice, contact, propertyType, propertyAddress, propertyOtherDetails);
                System.out.print("Why are u Running"+updateProperty);
        propertyDao.updateProperty(updateProperty);

        response.sendRedirect("list");
        }
        catch(Exception e){
                System.out.println(e);
                System.out.println("THis is an error");
                
                }
    }

    private void deleteProperty(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("propertyId"));
        System.out.print("row"+id);
        try{
              System.out.print("row"+id);
        propertyDao. deleteProperty(id);
        response.sendRedirect("list");
        
        }catch(Exception e){
         System.out.print("row"+ e);
        }
       
        

    } 

}

