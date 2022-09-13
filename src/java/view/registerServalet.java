/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package view;

import dao.LoginDao;
import config.dbConnection;
import dao.regestrationDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Login;
import model.registration;

/**
 *
 * @author hemant61
 */
@MultipartConfig
public class registerServalet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String role = request.getParameter("role");

            String name = request.getParameter("name");

            String username = request.getParameter("username");
            
            
            
            String email = request.getParameter("email");

            String password = request.getParameter("password");

            String confirmPassword = request.getParameter("confirmPassword");

            // create user object and set all data to thath object:
            registration user = new registration(role, name, username, email, password, confirmPassword);

            //create user dao oject:
            regestrationDao dao = new regestrationDao(dbConnection.createConnection());
            

            
                
                if (password.equals(confirmPassword)) {
                    
                    if (role.equals("Tenant") || role.equals("Owner")) {

                       
                        if( dao.saveUser(user)){
                            out.println("done");
                        
                        }else{
                            out.println("Username is Already Taken");
                            
                        }
                    } else {

                        out.println("Please Select Your Role");

                    }
                    
                } else {
                    out.println("Same Password rakh chutiya");
                }
                

           

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
