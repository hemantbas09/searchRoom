/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package view;

import com.dao.LoginDao;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Login;

import javax.servlet.annotation.WebServlet;

public class LoginServalet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public LoginServalet() {
    }

    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("loginusername");
        String password = request.getParameter("loginpassword");
        System.out.println("Inside servlet");
        Login login = new Login();

        login.setUserName(userName);
        login.setPassword(password);

        LoginDao loginDao = new LoginDao();
        System.out.println("Hemant Basnet");

        try {
            String userValidate = loginDao.authenticateUser(login);
            switch (userValidate) {
                case "tenant":
                    System.out.println("Tenant Section");
                    HttpSession tenantSession = request.getSession();
                    tenantSession.setAttribute("currentUser", userName);
                    response.sendRedirect("/roomRent/user/index.jsp");
                    break;
                case "owner":
                    System.out.println("Owner Section");
                    HttpSession ownerSession = request.getSession();
                    ownerSession.setAttribute("currentUser", userName);

                    response.sendRedirect("/user/index.jsp");
                    break;
                default:
                    System.out.println("Error message = " + userValidate);
                    System.out.println(userValidate);
                    request.setAttribute("errMessage", userValidate);
                    response.sendRedirect("index.jsp");
                    break;
            }
        } catch (IOException e1) {
            e1.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    

}
