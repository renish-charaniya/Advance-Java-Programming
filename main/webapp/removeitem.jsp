<%-- 
    Document   : removeitem
    Created on : 15-Feb-2020, 2:04:45 AM
    Author     : renish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,com.vvp.ajt18004.Products"%>
<!DOCTYPE html>
<html>
    <body>
      <%
            HashMap <Integer,Products> products=(HashMap <Integer,Products>)application.getAttribute("products");
            HashMap <Integer,Integer> cartItems=(HashMap <Integer,Integer>)session.getAttribute("cart");
            String op=request.getParameter("delete");
            int pid=Integer.parseInt(request.getParameter("pid"));
                                       
            if(op.equals("delete"))
            {
                out.println("<h3 style='color:red;'>");
                out.println("Items removed form cart Sucessfully!!");
                out.println("</h3>");
                cartItems.remove(pid);
                session.setAttribute("cart", cartItems);
            }%>
         
 </body>
</html>
