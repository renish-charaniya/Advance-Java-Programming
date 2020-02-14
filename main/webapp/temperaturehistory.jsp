<%-- 
    Document   : temperaturehistory.jsp
    Created on : 8-Feb-2020, 2:34:40 PM
    Author     : renish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Temperature History</title>
    </head>
    <body>
        <% int no = 1;
        if (application.getAttribute("converter") != null)
         {
            HashMap<Double, Double> history = (HashMap<Double, Double>) application.getAttribute("converter");
            
            out.println("<table border='1' >");
            out.println("<tr align='center'>");
            out.println("<th>No.</th>");
            out.println("<th>Celsius</th>");
            out.println("<th>Fahrenheit</th>");
            out.println("</tr>");
            for (Map.Entry<Double, Double> d : history.entrySet())
            {
                out.println("<tr align='center'><td>" + (no++) + "</td><td>" + d.getKey() + "</td><td>" + d.getValue() + "</td></tr>");
            }
              out.println("</table>");
        }
      else
      {
          out.println("<h3 style='color:red;'>No History</h3>");
      }
     %>

    </body>
</html>
