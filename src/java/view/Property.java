/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package view;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.propety;

/**
 *
 * @author hemant61
 */
public class Property extends HttpServlet {

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
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
