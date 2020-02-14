<%-- 
    Document   : calculator
    Created on : 03-Feb-2020, 12:44:52 PM
    Author     : renish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>


<!DOCTYPE html>
<html lang="en-US">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Renish | Calculator</title>
        <meta name="description" content="Cabe - Minimal and Personal Blog Template">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png">

        <!-- STYLESHEETS -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">

        <link rel="stylesheet" href="css/font-awesome.min.css">


        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">

        <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

        <style>
            form .button-4{
                margin-right: 20px;
                margin-top: 5px; 
                float: left;
            }
        </style>
    </head>
    <body>

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



        <!-- header section -->
        <section class="header-wrapper style-two">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-12 text-left">
                        <a href="index.html" class="logo"><img src="images/logor.png" alt="logo"></a>

                        <a href="#" class="menu-click"><span></span><span></span><span></span></a>
                    </div>
                    <div class="col-lg-8 col-md-12">
                        <nav id="main-menu" class="text-center">
                            <ul>
                                <li><a href="index.html">Assignment 1</a>
                                    <ul class="level-two">
                                        <li><a href="signup.html">Sign-Up</a></li>
                                        <li><a href="login.html">Login</a></li>
                                        <li><a href="table_generator.html">Table Generator</a></li>
                                        <li><a href="VisitorCounter">Visitor Counter</a>

                                        </li>

                                    </ul> 
                                </li>
                                <li><a href="index.html">Assignment 2</a>
                                    <ul class="level-two">
                                        <li><a href="home-v2.html">Login Form</a></li>
                                        <li><a href="home-v3.html">Assignment 2</a></li>
                                        <li><a href="home-v4.html">Assignment 3</a></li>
                                        <li><a href="home-v5.html">Assignment 4</a></li>

                                    </ul> 
                                </li>
                                <li><a href="index.html">Assignment 3</a>
                                    <ul class="level-two">
                                        <li><a href="home-v2.html">Login Form</a></li>
                                        <li><a href="home-v3.html">Assignment 2</a></li>
                                        <li><a href="home-v4.html">Assignment 3</a></li>
                                        <li><a href="home-v5.html">Assignment 4</a>
                                            <ul class="level-three">
                                                <li><a href="home-v14.html">Style 1</a></li>
                                                <li><a href="home-v15.html">Style 2</a></li>
                                                <li><a href="home-v16.html">Style 3</a></li>
                                                <li><a href="home-v17.html">Style 4</a></li>
                                            </ul>
                                        </li>

                                    </ul> 
                                </li>
                                <li><a href="index.html">Assignment 4</a>
                                    <ul class="level-two">
                                        <li><a href="home-v2.html">Login Form</a></li>
                                        <li><a href="home-v3.html">Assignment 2</a></li>
                                        <li><a href="home-v4.html">Assignment 3</a></li>
                                        <li><a href="home-v5.html">Assignment 4</a>
                                            <ul class="level-three">
                                                <li><a href="home-v14.html">Style 1</a></li>
                                                <li><a href="home-v15.html">Style 2</a></li>
                                                <li><a href="home-v16.html">Style 3</a></li>
                                                <li><a href="home-v17.html">Style 4</a></li>
                                            </ul>
                                        </li>

                                    </ul> 
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-lg-2 col-md-4 text-right">
                        <a href="#" class="search-icon"><img src="images/icons8-search-50.png" alt="search-icon"></a>
                    </div>
                </div>
            </div>
        </section>
        <!-- header section -->
        <%!
            double ans;
            double num1;
            double num2;

        %>
        <%

        

 if(request.getParameter("operation") != null)
            {
                char op = request.getParameter("operation").charAt(0);
                num1 = Double.parseDouble(request.getParameter("num1"));
                num2 = Double.parseDouble(request.getParameter("num2"));
            
                switch(op)
                {
                    case '+': 
                        ans = num1 + num2; 
                        break;
                    case '-': 
                      ans = num1 - num2; 
                           break;
                    case '*': 
                           ans = num1 * num2;   
                            break;
                    case '/': 
                           ans = num1 / num2;  
                    break;
                }
            }
        %>
        <section class="contact-wrapper pad-75 has-animation" data-delay="0">
            <div class="container">
                <div class="row">

                    <div class="col-lg-10 text-left offset-lg-1">
                        <h2>Calculator</h2>
                        <p>Enter Integer value as inputs.</p>

                        <div id="contact-formular">

                            <form id="contact-form" class="checkform" >


                                <div class="form-row clearfix form-field">
                                    <label for="name" class="req">Operand 1</label>
                                    <input type="text" name="num1" class="name" placeholder="<%= num1 %>"/>
                                </div>
                                <div class="form-row clearfix form-field">
                                    <label for="name" class="req">Operand 2</label>
                                    <input type="text" name="num2" class="name" placeholder="<%= num2 %>" />
                                </div>
                                <div class="form-row clearfix form-field">
                                    <label for="name" class="req">Result</label>
                                    <input type="text" name="answer" class="name" value="<%= ans %>" placeholder="output" readonly/>
                                </div>

                                <div id="form-note">
                                    <div class="alert alert-error pl-0 pr-0">
                                        <strong>Error</strong>: Please check your entries!
                                    </div>
                                </div>

                                <div class="form-submit">
                                    <div class="button-4">
                                        <div class="eff-4"></div>
                                        <input type="submit" class="submit send_message" name="operation" value="+" />
                                    </div>
                                </div>
                                <div class="form-submit">
                                    <div class="button-4">
                                        <input type="submit" class="submit send_message" name="operation" value="-" />
                                    </div>
                                </div>
                                <div class="form-row form-submit">
                                    <div class="button-4">
                                        <input type="submit" class="submit send_message" name="operation" value="*" />
                                    </div>
                                </div>
                                <div class="form-submit">
                                    <div class="button-4">
                                        <input type="submit" class="submit send_message" name="operation" value="/" />
                                    </div>
                                </div>
                                <div class="form-submit">
                                    <div class="button-4">
                                        <input type="reset" value="reset" class="submit send_message"  />
                                    </div>
                                </div>

                            </form>

                        </div>


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