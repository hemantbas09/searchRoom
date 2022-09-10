/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package view;

import dao.linkDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.link;

/**
 *
 * @author hemant61
 */
public class linkServalet extends HttpServlet {

    
    private static final long serialVersionUID = 1L;
    private linkDao linkDao;
    

    public linkServalet() {

        this.linkDao = new linkDao();

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
                
                case "/insertLink":
                    insertLink(request, response);
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
        
        
        String username=request.getParameter("username");
        link listLink = linkDao.selectLink(username);
        request.setAttribute("listLink", listLink);
        /*response.sendRedirect("admin/MyProperties.jsp");*/
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);

    }

   
   

    private void insertLink(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String currentUser = request.getParameter("currentUser");
        String link = request.getParameter("link");
        

       link newlink = new link(currentUser,link);
        
        linkDao.insertLink(newlink);
        response.sendRedirect("index.jsp");

    }

 

  

}
