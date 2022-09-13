package view;

import dao.propertyDao;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.propety;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, //2mb
        maxFileSize = 1024 * 1024 * 10, //10mb
        maxRequestSize = 1024 * 1024 * 50)
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

        List<propety> listProperty = propertyDao.selectAllProperty();
        System.out.print(" Chal bey Thank You:" + listProperty);
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
        System.out.println("THis is the edit form " + id);
        propety existingUser = propertyDao.selectProperty(id);
        System.out.println("THis is the edit form " + existingUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin/editForm.jsp");
        request.setAttribute("property", existingUser);
        dispatcher.forward(request, response);

    }

    private void insertProperty(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, IllegalStateException, ServletException {
        String currentUser = request.getParameter("currentUser");
        String contact = request.getParameter("contact");
        String propertyName = request.getParameter("propertyname");
        System.out.println(currentUser);
        String propertyPrice = request.getParameter("price");
        String propertyType = request.getParameter("ptype");
        String propertyAddress = request.getParameter("address");
        String propertyOtherDetails = request.getParameter("otherDetails");

        try {
            String name = "a" + RandGeneratedStr();
            Part propertyImage = request.getPart("file");
            
            System.out.println(propertyImage);
            String fileName = "Static/Image/property/" + name + ".jpg";
            String contextPath = new File("").getAbsolutePath();
            System.out.println(fileName);
            System.out.println(contextPath);
            String imageSavePath = "/home/hemant61/NetBeansProjects/roomRent/web/" + File.separator + fileName;
            System.out.println(imageSavePath);
            File fileSaveDir = new File(imageSavePath);
            System.out.println(fileSaveDir);
            
            propertyImage.write(imageSavePath + File.separator);
            propety newProperty = new propety(currentUser, propertyName, fileName, propertyType, propertyAddress, contact, propertyPrice, propertyOtherDetails);
            System.out.println("row"+newProperty);
            propertyDao.insertProperty(newProperty);
            response.sendRedirect("list");
        } catch (Exception e) {

            System.out.println("HOme");
        }

    }

    private void updateProperty(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {

        try {
            String ids = request.getParameter("propertyId");
            String propertyImage = request.getParameter("file");
            String propertyName = request.getParameter("propertyname");
            String propertyType = request.getParameter("ptype");
            String propertyAddress = request.getParameter("address");
            String contact = request.getParameter("contact");
            String propertyPrice = request.getParameter("price");
            String propertyOtherDetails = request.getParameter("otherDetails");
            int id = Integer.parseInt(ids);
            propety updateProperty = new propety(propertyName, propertyImage, propertyType, propertyAddress, contact, propertyPrice, propertyOtherDetails, id);
            System.out.println("Why are u Running" + updateProperty.getName());
            System.out.println("Why are u Running" + updateProperty);
            System.out.println("Why are u Running" + contact);
            propertyDao.updateProperty(updateProperty);

            response.sendRedirect("list");
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("THis is an error");

        }
    }

    private void deleteProperty(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("propertyId"));
        System.out.print("row" + id);
        try {
            System.out.print("row" + id);
            propertyDao.deleteProperty(id);
            response.sendRedirect("list");

        } catch (Exception e) {
            System.out.print("row" + e);
        }

    }

    static String RandGeneratedStr() {
        char[] chars = "abcdefghijklmnopqrstuvwxyzABSDEFGHIJKLMNOPQRSTUVWXYZ1234567890".toCharArray();
        Random r = new Random(System.currentTimeMillis());
        char[] id = new char[8];
        for (int i = 0; i < 8; i++) {
            id[i] = chars[r.nextInt(chars.length)];
        }
        return new String(id);
    }
}
