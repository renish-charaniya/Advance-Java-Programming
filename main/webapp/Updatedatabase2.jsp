<%-- 
    Document   : Updatedatabase
    Created on : Feb 20, 2020, 9:06:31 AM
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
                                        String pname = request.getParameter("pname");
                                        String stock = request.getParameter("stock");
                                        String price = request.getParameter("price");
                                        String desc = request.getParameter("desc");

                                            if(pid!=null){
                                                int productid = Integer.parseInt(pid);
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajt7039", "root", "");
                                            String sql = "Update product set pid=?,pname=?,stoke=?,price=?,description=? where pid='"+pid+"'";
                                            PreparedStatement ps = con.prepareStatement(sql);
                                            ps.setString(1,pid);
                                            ps.setString(2,pname);
                                            ps.setString(3,stock);
                                            ps.setString(4,price);
                                            ps.setString(5,desc);
                                            int i = ps.executeUpdate();
                                            if(i>0){
                                                 out.println("<script>");
                                                out.println("alert('Data Updated Sucessfully!!')");
                                                out.println("</script>");


                                            }
                                            else{
                                                out.println("<script>");
                                                out.println("alert('There Was a problem')");
                                                out.println("</script>");
                                                }
                                           }
                                                         
                                   //  response.sendRedirect("DisplayData.jsp");
                                    %>
                                     <form action="Product_first.jsp" method="get">
                             <input type='submit' value='Home Page' class='btn btn-success' name='display'/>
                              </form><br/>
                               <%@include file="footer.jsp" %>
    </body>
</html>
