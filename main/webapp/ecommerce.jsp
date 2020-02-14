<%-- 
    Document   : ecommerce
    Created on : 14-Feb-2020, 3:29:17 AM
    Author     : renish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,com.vvp.ajt18004.Products" %>
<!DOCTYPE html>
<html lang="en-US">
    <%!
        String errorMessage = "";
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products</title>

        <!-- STYLESHEETS -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">

        <link rel="stylesheet" href="css/font-awesome.min.css">


        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <style>
            .form-field input[type="number"], .form-field textarea {
                margin-top: 0;
                display: block;
                width: 100%;
                border: none;
                margin-top: 8px;
                font-family: 'Poppins', sans-serif;
                font-size: 16px;
                color: #999;
                outline: none;
            }
        </style>

    </head>

    <%
        HashMap<Integer, Integer> cartItems = new HashMap<Integer, Integer>();
        String isAddedToCart = request.getParameter("addtocart");
        String quantity = request.getParameter("qty");
        if (isAddedToCart != null) {
            if (session.getAttribute("cart") != null) {
                cartItems = (HashMap<Integer, Integer>) session.getAttribute("cart");
            }
            try {
                int pid = Integer.parseInt(request.getParameter("pid"));
                int qty = Integer.parseInt(request.getParameter("qty"));
                if (qty <= 0 ) {
                    throw new NumberFormatException();
                }
                cartItems.put(pid, qty);
                session.setAttribute("cart", cartItems);
            } catch (NumberFormatException nfe) {
                errorMessage += "Check Quantity Allowance";
            }

        }
    %>

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
        <%
            Products p1 = new Products(1, "Limited edition v-neck t-shirt", "Exclusive", 4800d, 5);
            Products p2 = new Products(2, "T-shirt", "Super Skinny t-shirt", 2500d, 5);
            HashMap<Integer, Products> products = new HashMap<Integer, Products>();
            products.put(1, p1);
            products.put(2, p2);
            
            if (application.getAttribute("products") == null) {
                application.setAttribute("products", products);
            }
        %>


        <section class="meta-title shop-title">
            <div class="col-sm-12 text-center">
                <div class="page-title pad-100">
                    <h1 class="has-animation" data-delay="0"><b>Shop</b></h1>
                </div>
            </div>
        </section>

        <section class="shop-main-wrapper mb75">
            <div class="container">
                <div class="product-bar mb35">
                    <div class="row">
                        <div class="col-sm-6"><p>SHOWING      <%
                            int totalItems = 0;
                            if (session.getAttribute("cart") != null)
                                totalItems = ((HashMap<Integer, Integer>) session.getAttribute("cart")).size();
                                %>
                                <%= totalItems%> Products</p></div>
                        <h3>
                            <%
                                out.println(errorMessage);
                            %>
                        </h3>
                        <div class="col-sm-6 product-ordering text-right">
                            <a href="#" class="product-ordering-btn">DEFAULT SORTING</a>
                            <ul class="product-ordering-list">
                                <li class="active"><a href="#">Sort by popularity</a></li>
                                <li><a href="#">Sort by average rating</a></li>
                                <li><a href="#">Sort by newness</a></li>
                                <li><a href="#">Sort by price: low to high</a></li>
                                <li><a href="#">Sort by price: high to low</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                      
                <div class="shop-products "> 
                    <div class="row">
                        <div class="col-xl-4 col-md-6 mb40">
                            <div class="cabe-product">
                                <div class="product-inner">
                                    <figure class="product-image">
                                        <div class="product-image-holder">
                                            <a href="product-details.html">
                                                <img src="images/p-3-1.jpg" alt="Product Image" class="primary-image">
                                                <img src="images/p-3-2.jpg" alt="Product Image" class="secondary-image">
                                            </a>
                                        </div>
                                        <div class="cabe-product-action">
                                            <a href="#" class="quickview-btn action-btn"><img src="images/eye.png" alt="eye-icon"></a>
                                            <a href="ecommerce.jsp" name="addtocart" class="cart-btn action-btn"><img src="images/cart.png" alt="cart-icon"></a>
                                            <a href="#" class="wishlist-btn action-btn"><img src="images/heart.png" alt="heart-icon"></a>

                                        </div>
                                    </figure>
                                    
                                    <form id="contact-form" class="checkform" method="get">
                                        <div class="form-row clearfix ">
                                            <input type="hidden" name="pid" value="<%= p1.getProductId()%>" >
                                            <input type="number" class="name" name="qty" placeholder="Quantity"/>
                                            <input type="submit" name="addtocart" value="Add to Cart" >
                                        </div>
                                    </form>
                                    <div class="product-info text-center">

                                        <a class="product-title" href="product-details.html"><%= p1.getProductName()%> </a>
                                        <h6><%= p1.getProductDescription()%></h6>
                                        <span class="money"><%= p1.getProductPrice()%> </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4 col-md-6 mb40">
                            <div class="cabe-product">
                                <div class="product-inner">
                                    <figure class="product-image">
                                        <div class="product-image-holder">
                                            <a href="product-details.html">
                                                <img src="images/p-1-1.jpg" alt="Product Image" class="primary-image">
                                                <img src="images/p-1-2.jpg" alt="Product Image" class="secondary-image">
                                            </a>
                                        </div>
                                        <div class="cabe-product-action">
                                            <a href="#" class="quickview-btn action-btn"><img src="images/eye.png" alt="eye-icon"></a>
                                            <a href="#" class="cart-btn action-btn"><img src="images/cart.png" alt="cart-icon"></a>
                                            <a href="#" class="wishlist-btn action-btn"><img src="images/heart.png" alt="heart-icon"></a>

                                        </div>
                                    </figure>
                                      <form id="contact-form" class="checkform" method="get">
                                        <div class="form-row clearfix ">
                                            <input type="hidden" name="pid" value="<%= p2.getProductId()%>" >
                                            <input type="number" class="name" name="qty" placeholder="Quantity"/>
                                            <input type="submit" name="addtocart" value="Add to Cart" >
                                        </div>
                                    </form>
                                    <div class="product-info text-center">
                                        <a class="product-title" href="product-details.html"><%= p2.getProductName()%></a>
                                        <h6><%= p2.getProductDescription()%></h6>
                                        <span class="money"><%= p2.getProductPrice()%></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <% errorMessage = "";%>
                
                      <div class="form-row form-submit">
                                    <div class="button-4">
                                        <div class="eff-4"></div>
                                        <p>
                                        <a href="cart.jsp" class="submit send_message">Checkout</a>
                                        </p>
                                    </div>
                      </div>
            
                <!-- load more -->
                <div class="row">
                    <div class="col-lg-10 offset-lg-1">
                        <div class="row">
                            <div class="col-md-4 col-xs-2 text-right">
                                <a href="#" class="left-button"><img src="images/left-botton.png" alt="left-button"></a>
                            </div>
                            <div class="col-md-4 col-xs-8 text-center">
                                <ul class="page-nav text-center list-inline">
                                    <li class="list-inline-item"><a class="active" href="#">1</a></li>
                                    <li class="list-inline-item"><a href="#">2</a></li>
                                    <li class="list-inline-item"><a href="#">3</a></li>
                                    <li class="list-inline-item"><a href="#">4</a></li>
                                </ul>
                            </div>
                            <div class="col-md-4 col-xs-2 ">
                                <a href="#" class="left-button"><img src="images/right-button.png" alt="right-button"></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- load more -->
            </div>
        </section>

        <!-- footer wrapper -->
        <section class="footer-wrapper pad-75 bg-lightblue">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <ul class="social-icons-two light list-inline">
                            <li class="list-inline-item"><a href="#"><i class="icon-google-plus"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="icon-facebook"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="icon-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="icon-linedin"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="icon-instagram"></i></a></li>
                        </ul>
                        <p class="copyright-text">Copyrights © 2018 <b>Cabe</b> Theme <br> All Rights Reserved.</p>
                        <a href="#" class="back-top">BACK TO TOP</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- footer-wrapper -->


        <!-- SCRIPTS -->
        <script src="js/jquery-1.12.3.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/plugin.js"></script>
        <script src="js/main.js"></script>
    </body>

</html>
