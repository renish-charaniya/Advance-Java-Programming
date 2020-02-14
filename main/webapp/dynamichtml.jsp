<%-- 
    Document   : dynamichtml
    Created on : 14-Feb-2020, 3:05:29 AM
    Author     : renish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Textfield Generator</title>
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
       <style type="text/css">
           
           form .button-4{
               margin: 20px;
               float: left;
           }
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




        <section class="contact-wrapper pad-75 has-animation" data-delay="0">
            <div class="container">
                <div class="row">

                    <div class="col-lg-10 text-left offset-lg-1">
                        <h2>Generate Textfields</h2>
                     

                        <div id="contact-formular">

                            <form id="contact-form" class="checkform" >


                                <div class="form-row clearfix form-field">
                                    
                                    <input type="number" min="1" name="textfield" class="name" value="" placeholder="Textfield Generator"/>
                                </div>
                               
                                <div id="form-note">
                                    <div class="alert alert-error pl-0 pr-0">
                                        <strong>Error</strong>: Please check your entries!
                                    </div>
                                </div>

                                <div class="form-submit">
                                    <div class="button-4">
                                        <div class="eff-4"></div>
                                        <input type="submit" name="populate" class="submit send_message" value="Generate" />
                                    </div>
                                </div>
                                <div class="form-submit">
                                    <div class="button-4">
                                        <div class="eff-4"></div>
                                        <input type="reset" class="submit send_message" value="reset" />
                                    </div>
                                </div>

                            </form>

                        </div>
                        <%! int n; %>
    <%
                                if(request.getParameter("populate")!=null)
                                {
                                   n = Integer.parseInt(request.getParameter("textfield"));
                                  for (int i = 0; i < n; i++)
                                  {
                                       out.println("<input type='text' name='textfield'+n class='form-control'  placeholder='Textbox "+(i+1)+"' /> <br/>");
                                  }
                                }
                                %>


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
