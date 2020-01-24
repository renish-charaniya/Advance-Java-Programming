/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vvp.ajt18004;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author renish
 */
public class Signup extends HttpServlet {

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
          
             String message = "";
            //username validation
            String username = request.getParameter("uname");
            if(username.length() < 6)
                message += "Invalid Username. Minimum length of username should be 6.</br>";
            
            //password validation
//            
//            ^     # start-of-string
//(?=.*[0-9])       # a digit must occur at least once
//(?=.*[a-z])       # a lower case letter must occur at least once
//(?=.*[A-Z])       # an upper case letter must occur at least once
//(?=.*[@#$%^&+=])  # a special character must occur at least once
//(?=\S+$)          # no whitespace allowed in the entire string
//.{8,}             # anything, at least eight places though
//$                 # end-of-string
            String password = request.getParameter("pswd");
            if(!Pattern.matches("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$", password))
                message += "Invalid Password.</br> A digit must occur at least once</br>\n" +
"a lower case letter must occur at least once\n</br>" +
"an upper case letter must occur at least once\n</br>" +
"a special character must occur at least once\n</br>" +
"no whitespace allowed in the entire string\n</br>" +
"anything, at least eight places though </br>";
          
            String confirmPassword = request.getParameter("cpswd");
            if(!confirmPassword.equals(password))
                message += "Password and Confirm Password must be the same. </br>";
            
            //phone number validation
            String phoneNumber = request.getParameter("phno");
            if(!Pattern.matches("^[0-9]{6,10}$",phoneNumber))
               message += "The phone number should contain 6-10 digits. </br>";
            
            //address validation
            String address = request.getParameter("address");
            String[] testAddress = address.split("\\n");
            if(testAddress.length < 3)
               message += "Address should contain at least 3 lines. </br>";
            
            //hobbies validation
            String[] hobbies = request.getParameterValues("hobbies");
            if(hobbies.length < 3)
                message += "You should have at least 3 hobbies selected. </br>";
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Signup Form</title>");            
            out.println("</head>");
            out.println("<body>");
            if(message.length() > 0)
                out.println("<h2>" + message + "</h2>");
            else
                out.println("<h2>Registration Successfull ! </h2>");
            out.println("</body>");
            out.println("</html>");
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
