/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package view;

import dao.postDao;
import dao.propertyDao;
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
import model.propety;

/**
 *
 * @author hemant61
 */
public class postServalet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private postDao postDao;

    public postServalet() {

        this.postDao = new postDao();

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

                case "/insertPost":
                    insertPost(request, response);
                    break;
                default:
                    listPost(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listPost(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {

        List<post> listPost = postDao.selectAllPost();
        System.out.print(" Chal bey Thank You:" + listPost);
        request.setAttribute("listPost", listPost);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/post.jsp");
        dispatcher.forward(request, response);

    }

    private void insertPost(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String currentUser = request.getParameter("currentUser");
        String post = request.getParameter("post");
        
        post newPost = new post(currentUser,post);

        postDao.insertPost(newPost);
        response.sendRedirect("user/post.jsp");

    }
}


