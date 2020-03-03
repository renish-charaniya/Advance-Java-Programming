<%-- 
    Document   : Deletedatabase
    Created on : Feb 20, 2020, 8:55:26 AM
    Author     : oza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="header.jsp" %>
        <%
                                            String pid = request.getParameter("pid");
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajt7039", "root", "");
                                            Statement stmt = con.createStatement();
                                            int row=stmt.executeUpdate("Delete from product where pid = '"+pid+"'");
                                            if(row>0)
                                            {
                                                out.println("Data Deleted sucessfully!!!");
                                            }
                                            else
                                            {
                                                out.println("Not able to delete data");
                                            }

                                   %>
                                    <form action="Product_first.jsp" method="get">
                             <input type='submit' value='Home Page' class='btn btn-success' name='display'/>
                              </form><br/>
 <%@include file="footer.jsp" %>
    </body>
</html>
