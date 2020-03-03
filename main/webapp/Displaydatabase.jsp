<%-- 
    Document   : Displaydatabase
    Created on : Feb 20, 2020, 8:39:53 AM
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
     <table border="1" class="table table-hover table-dark">
                                        <tr>
                                            <th>Product Id</th>
                                            <th>Product Name</th>
                                            <th>Stock</th>
                                            <th>Price</th>
                                            <th>Description</th>
                                            <th>Operation</th>
                                            <th>Operation</th>
                                        </tr>

                                    <%

                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "");
                                            Statement stmt = con.createStatement();
                                            ResultSet rs = stmt.executeQuery("Select * from product");
                                            while(rs.next())
                                            {
                                   %>
                                              <tr>
                                               <td><%= rs.getInt(1) %></td>
                                               <td><%= rs.getString(2)%></td>
                                               <td><%= rs.getDouble(3)%></td>
                                               <td><%= rs.getInt(4)%></td>
                                               <td><%= rs.getString(5)%></td>
                                               <td><a href="updatedatabase1.jsp?pid=<%= rs.getInt(1)%>">Update</a></td>
                                               <td><a href="Deletedatabase.jsp?pid=<%= rs.getInt(1)%>">Delete</a></td>
                                               
                                               </tr>
                                       <%
                                             }
                                                stmt.close();
                                                con.close();
                                        %>
                                    </table>
                                     <form action="Product_first.jsp" method="get">
                             <input type="submit" value="Home Page" class="btn btn-success" name="homepage"/>
                        
    </body>
</html>
