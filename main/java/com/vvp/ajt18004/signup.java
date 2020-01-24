/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vvp.ajt18004;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author renish
 */
public class signup extends HttpServlet {

       static int nameValidate(String name)
    {
        if(name.length()>=6 && name.length()<=20)
        {
            return 1;
        }
        return 0;
    }

        static int passwordValidate(String password)
    {
        int digit=0,upper=0,special=0;
        if(password.length()>=6 && password.length()<=20)
        {
            for(int i=0;i<=password.length();i++)
            {
                if(password.charAt(i)>='A' && password.charAt(i)<='Z')
                {
                    upper=1;
                }
                if(password.charAt(i)>='0' && password.charAt(i)<='9')
                {
                    digit=1;
                }
                if(!(password.charAt(i)>= 65 && password.charAt(i)<= 90) || (password.charAt(i)>= 97 && password.charAt(i)<= 122)||(password.charAt(i)>= 48 && password.charAt(i)<= 57))
                {
                    special=1;
                }
                if(upper==1 && digit==1 && special==1)
                {
                    break;
                }
            }
            return 1;
        }
        return 0;
    }

    static int emailValidate(String email)
    {
        String s=email;
		int l=s.length();
		char charno;
		int i;
		int firstpart_length=s.indexOf('@');
		if (!((s.charAt(0)>='0' && s.charAt(0)<='9') || (s.charAt(0)>='a' && s.charAt(0)<='z')))
		{
                        return 0;
		}
		if (!(firstpart_length>=8 && firstpart_length<=20))
		{
                        return 0;
		}
		for (i=1;i<firstpart_length;i++)
		{
			if (!((s.charAt(i)>='0' && s.charAt(i)<='9') ||(s.charAt(i)>='a'&&s.charAt(i)<='z')||(s.charAt(i)=='_')||(s.charAt(i)=='.')))
			{
                                return 0;
			}
		}
		String s2=s.substring((firstpart_length));
		if(( s2.indexOf('.') - s2.indexOf('@') ) - 1 <=2  )
		{
                        return 0;
		}
		for (i=s2.indexOf('@')+1;i<s2.indexOf('.') ;i++ )
		{
			if (!(s2.charAt(i)>='a' && s2.charAt(i)<='z'))
			{
                                return 0;
			}
		}
		for (i=s2.indexOf('.')+1;i<s2.length();i++)
		{
			if (!(s2.charAt(i)>='a' && s2.charAt(i)<='z'))
			{
                                return 0;
			}
		}
                return 1;
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String username = request.getParameter("uname");
            String email = request.getParameter("email");
            String password = request.getParameter("pswd");
            int semester = Integer.parseInt(request.getParameter("sem"));
            String address = request.getParameter("address");
            String branch = request.getParameter("branch");
            String gender = request.getParameter("gender");
            String hobby= request.getParameter("hobbies");

            int check[] = new int[5];

            check[0]=nameValidate(username);
            check[1]=passwordValidate(password);
            check[2]=emailValidate(email);

            int i=0;
        

            if(i==check.length)
                out.println("Registration Sucessfully<br>");

            out.println("username: "+username+"<br>");
            out.println("email: "+email+"<br>");
            out.println("password: "+password+"<br>");
            out.println("semester: "+semester+"<br>");
            out.println("address: "+address+"<br>");
            out.println("branch: "+branch+"<br>");
            out.println("gender: "+gender+"<br>");
            out.println("hobby: "+hobby);
            
                for(i=0;i<check.length;i++)
            {
                if(check[i]==0)
                {
                    out.println("Invalid Registration");
                    break;
                }
            }
            

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
