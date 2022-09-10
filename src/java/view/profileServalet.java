/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package view;

import dao.postDao;
import dao.profileDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.post;
import model.profile;

/**
 *
 * @author hemant61
 */
public class profileServalet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private profileDao profileDao;

    public profileServalet() {

        this.profileDao = new profileDao();

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
                case "/newProfile":
                    showNewForm(request, response);
                    break;
                case "/insertProfile":
                    insertProfile(request, response);
                    break;

                case "/editProfile":

                    showEditForm(request, response);

                    break;
                case "/updateProfile":
                    updateProfile(request, response);
                    break;
                default:
                    listProfile(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listProfile(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String username = request.getParameter("currentUsername");
        profile listProperty = profileDao.selectProfile(username);
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
        String username = request.getParameter("currentUsername");

        profile existingUser = profileDao.selectProfile(username);
        System.out.println("THis is the edit form " + existingUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin/editForm.jsp");
        request.setAttribute("property", existingUser);
        dispatcher.forward(request, response);

    }

    private void insertProfile(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String currentUser = request.getParameter("currentUser");
        String Name = request.getParameter("name");
        System.out.println(Name);
        String contactNumber = request.getParameter("contact");
        String Address = request.getParameter("address");
        String Email = request.getParameter("email");

        profile newProfile = new profile(currentUser, Name, Address, Email, contactNumber);
        System.out.println(newProfile);
        profileDao.insertProfile(newProfile);
        response.sendRedirect("common/profileView.jsp");

    }

    private void updateProfile(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {

        try {
            String currentUser = request.getParameter("currentUser");
            String Name = request.getParameter("name");
            String contactNumber = request.getParameter("contact");
            String Address = request.getParameter("address");
            String Email = request.getParameter("email");
            profile updateProfile = new profile(currentUser, Name, Address, Email, contactNumber);
           
            profileDao.updateProfile(updateProfile);

            response.sendRedirect("list");
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("THis is an error");

        }
    }

}
