<%-- 
    Document   : productdatabase
    Created on : Feb 20, 2020, 8:10:29 AM
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

                                    if(request.getParameter("submit")!=null)
                                    {

                                        String pname = request.getParameter("pname");
                                        String stock = request.getParameter("stock");
                                        String price = request.getParameter("price");
                                        String desc = request.getParameter("desc");
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajt7039", "root", "");
                                            Statement stmt = con.createStatement();
                                            int rows = stmt.executeUpdate("INSERT INTO product(pid,pname,stoke,price,description)values(NULL,'" + pname + "','" + stock + "','" + price + "','" + desc + "')");
                                            out.println("<script>");

                                            out.println("alert('Data Added Sucessfully!!')");
                                            out.println("</script>");

                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                      }
                                    %>
        <center>
      <form action="productdatabase.jsp" method="post">
        <input type="text" name="pname" placeholder="Enter product Name"><br>
            <input type="number" name="stock" placeholder="Enter product Stock"><br>
        <input type="number" name="price" placeholder="Enter product Price"><br>
         <textarea row="5" cols="10" name="desc"  placeholder="Enter product desc"></textarea><br><br>
        <input type="submit" name="submit" value="submit">
            
           
                             
      </form>
      </center>
      <center>
                                    <a href="Product_first.jsp">Home Page</a>
                                    </center>
      <%@include file="footer.jsp" %>
    </body>
    
</html>
