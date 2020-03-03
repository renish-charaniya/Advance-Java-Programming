<%-- 
    Document   : updatedatabase1
    Created on : Feb 24, 2020, 10:49:29 PM
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
        String sql = "select * from product where pid = '" + pid + "' ";
        ResultSet rs = stmt.executeQuery(sql);
        while (rs.next()) {
        %>
        <form action="Updatedatabase2.jsp" method="post" role="form" class="contactForm">

            <input type="hidden" name="pid" value="<%=rs.getInt(1)%>"/>

            <input type="text" name="pid" value="<%=rs.getInt(1)%>" class="form-control" placeholder="Enter Product Name" autocomplete="off"/>


            <input type="text" name="pname" value="<%= rs.getString(2)%>" class="form-control" placeholder="Enter Product Name" autocomplete="off"/>


            <input type="number" name="stock" value="<%= rs.getInt(3)%>" class="form-control" placeholder="Enter Product Stocks" autocomplete="off"/>


            <input type="number" name="price" value="<%= rs.getFloat(4)%>" class="form-control" placeholder="Enter Product Price" autocomplete="off"/>

            <input type="text" name="desc" value="<%= rs.getString(5)%>" class="form-control" placeholder="Enter Product Description" autocomplete="off"/>

            <input type="submit" name="update" value="UpdateData" class="button"/>
        </form>

        <%
                                        }
                                        con.close();
                                        %>
                                         <form action="Product_first.jsp" method="get">
                             <input type='submit' value='Cancel Update' class='btn btn-success' name='display'/>
                              </form><br/>
                               <%@include file="footer.jsp" %>
    </body>
</html>
