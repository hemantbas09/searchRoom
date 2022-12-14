/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package view;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class logoutServalet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    
    
    

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false); //Fetch session object

       

       
        if (session != null) //If session is not null
        {
            session.invalidate(); //removes all session attributes bound to the session
            response.sendRedirect("/roomRent/index.jsp");
            System.out.println("Logged out");
        }
        else{
           response.sendRedirect("/roomRent/index.jsp");
        
        }
    }
}
