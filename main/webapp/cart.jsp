<%-- 
    Document   : cart
    Created on : 14-Feb-2020, 10:19:10 AM
    Author     : renish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,com.vvp.ajt18004.Products"%>
<!DOCTYPE html>
<html lang="en-US">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Checkout</title>
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png">

	<!-- STYLESHEETS -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">

	<link rel="stylesheet" href="css/font-awesome.min.css">


	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">


  <%
        if(request.getParameter("delete") != null){
            Integer removeItem = Integer.parseInt(request.getParameter("pid"));
            HashMap<Integer, Integer> cartItems = (HashMap<Integer,Integer>) session.getAttribute("cart");
            cartItems.remove(removeItem);
            session.setAttribute("cart",cartItems);
        }
    %>
</head>

<body>
	<!-- preloader -->
    <div id="loader-wrapper">
		<div class="loader-img"><img src="images/logo-2.png" alt="preloader"></div>
		<div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
	</div>
	<!-- search wrapper -->
	<div class="section search-section">
		<a href="#" class="close-search"><img src="images/close.png" alt="close"></a>
		<div class="centered">
			<form action="#">
				<input type="text" placeholder="Search here..">
				<button>Search</button>
			</form>
		</div>
	</div>
	<!-- search wrapper -->
 


	<section class="cart-wrapper pad-bottom-100">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 page-title pad-100 text-center">
					<h1><b>Cart</b></h1>
				</div>
			</div>
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="table-content table-responsive">
                                <table class="table text-center">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>

                                            <th class="text-left">Description</th>
                                            <th>price</th>
                                            <th>quantity</th>
                                            <th>total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            if (session.getAttribute("cart") != null) {
                                                HashMap<Integer, Integer> cartItems = (HashMap<Integer, Integer>) session.getAttribute("cart");
                                                Collection<Integer> pids = cartItems.keySet();

                                                Collection<Integer> qtys = cartItems.values();
                                                HashMap<Integer, Products> products = (HashMap<Integer, Products>) application.getAttribute("products");
                                                Iterator pidIterator = pids.iterator();
                                                Iterator getpid = pids.iterator();
                                                Iterator qtyIterator = qtys.iterator();
                                                while (pidIterator.hasNext()) {

                                                    Products temp = products.get(pidIterator.next());
                                                    Integer tempStock = (Integer) qtyIterator.next();

                                                    out.println("<tr>");
                                                    out.println("<td>");
                                                    out.println(temp.getProductId());
                                                    out.println("</td>");
                                                    out.println("<td>");
                                                    out.println(temp.getProductName());
                                                    out.println("</td>");
                                                    out.println("<td>");
                                                    out.println(temp.getProductDescription());
                                                    out.println("</td>");
                                                    out.println("<td>");
                                                    out.println(temp.getProductPrice());
                                                    out.println("</td>");
                                                    out.println("<td>");
                                                    out.println(tempStock);
                                                    out.println("</td>");
                                                    out.println("<td>");
                                                    out.println("<form action='cart.jsp' method='get'> "
                                                            + "  <button class='lar float-right update-cart' type='submit' name='delete'>Delete</button>"
                                                            + "<input type='hidden' name='pid' value='" + getpid.next() + "'>"
                                                            + "</form>"
                                                    );
                                                    out.println("</td>");
                                                    out.println("</tr>");

                                                }
                                            }
                                        %>




                                    </tbody>
                                </table>
                            </div>

	                <!--<button class="lar float-right update-cart" type="button">Update Cart</button>-->
				</div>
				
			</div>
		</div>
	</section>
	
	 
 

	
	 	 
<!-- SCRIPTS -->
<script src="js/jquery-1.12.3.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/plugin.js"></script>
<script src="js/main.js"></script>

</body>

</html>