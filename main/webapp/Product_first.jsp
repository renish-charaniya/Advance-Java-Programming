<%-- 
    Document   : Product_first
    Created on : Feb 26, 2020, 5:55:38 PM
    Author     : oza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <center>
        <h1>Perform Insert Update Delete Display Operation</h1>
        <form action="Displaydatabase.jsp" method="get">
                          <input type='submit' value='Display Data' class='btn btn-success' name='display'/>
                              </form><br/>

           <form action="productdatabase.jsp" method="get">
                          <input type='submit' value='Insert Data' class='btn btn-success' name='display'/>
                              </form><br/>

            
                              <%@include file="footer.jsp" %>
</center>
</body>

</html>
