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
import javax.servlet.http.Cookie;

public class LoginServalet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public LoginServalet() {
    }

    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("loginusername");
        String password = request.getParameter("loginpassword");
        String checkBox = request.getParameter("checkBox");
        System.out.println(checkBox);
        Login login = new Login();
        login.setUserName(userName);
        login.setPassword(password);
        System.out.println("username" + userName);
        System.out.println("password " + password);

        LoginDao loginDao = new LoginDao();
        System.out.println("Hemant Basnet");

        if (checkBox != null) {

            System.out.println("remember : " + checkBox);
            Cookie cUserName = new Cookie("cookuser", userName.trim());
            Cookie cPassword = new Cookie("cookpass", password.trim());
            Cookie cRemember = new Cookie("cookrem", checkBox.trim());
            cUserName.setMaxAge(60 * 60 * 24 * 15);// 15 days
            cPassword.setMaxAge(60 * 60 * 24 * 15);
            cRemember.setMaxAge(60 * 60 * 24 * 15);
            response.addCookie(cUserName);
            response.addCookie(cPassword);
            response.addCookie(cRemember);
        }
        try {
            String userValidate = loginDao.authenticateUser(login);
            switch (userValidate) {
                case "Tenant":
                    System.out.println("Tenant Section");
                    HttpSession tenantSession = request.getSession();
                    tenantSession.setMaxInactiveInterval(1*60);
                    tenantSession.setAttribute("currentUser", userName);
                    tenantSession.setAttribute("currentPassword", password);
                    tenantSession.setAttribute("role", userValidate);
                    response.sendRedirect("/roomRent/user/index.jsp");
                    break;
                case "Owner":
                    System.out.println("Owner Section");
                    HttpSession ownerSession = request.getSession();
                    ownerSession.setMaxInactiveInterval(15);
                    ownerSession.setAttribute("currentPassword", password);
                    ownerSession.setAttribute("currentUser", userName);
                     ownerSession.setAttribute("role", userValidate);

                    response.sendRedirect("/roomRent/user/index.jsp");
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
