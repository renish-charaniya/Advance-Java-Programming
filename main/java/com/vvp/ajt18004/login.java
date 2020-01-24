/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.vvp.ajt18004;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author renish
 */
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
              String unm=request.getParameter("uname");
              String pswd=request.getParameter("password");
              if(unm.equals("admin") && pswd.equals("admin")){
            out.println("<!DOCTYPE html>\n" +
"<html lang=\"en-US\">\n" +
"\n" +
"<head>\n" +
"	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n" +
"	<title>Cabe - Minimal and Personal Blog Template</title>\n" +
"	<meta name=\"description\" content=\"Cabe - Minimal and Personal Blog Template\">\n" +
"	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n" +
"	<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"images/favicon.png\">\n" +
"\n" +
"	<!-- STYLESHEETS -->\n" +
"	<link href=\"https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700\" rel=\"stylesheet\">\n" +
"	<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\" type=\"text/css\" media=\"all\">\n" +
"	<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" media=\"all\">\n" +
"\n" +
"	<link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n" +
"\n" +
"\n" +
"	<link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\">\n" +
"	<link rel=\"stylesheet\" href=\"css/owl.theme.default.min.css\">\n" +
"\n" +
"	<!--[if lt IE 9]>\n" +
"      <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n" +
"      <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n" +
"    <![endif]-->\n" +
"\n" +
"</head>\n" +
"\n" +
"<body>\n" +
"	<!-- preloader -->\n" +
"    <div id=\"loader-wrapper\">\n" +
"		<div class=\"loader-img\"><img src=\"images/logo-2.png\" alt=\"preloader\"></div>\n" +
"		<div class=\"loader-section section-left\"></div>\n" +
"        <div class=\"loader-section section-right\"></div>\n" +
"	</div>\n" +
"\n" +
"	<!-- search wrapper -->\n" +
"	<div class=\"section search-section\">\n" +
"		<a href=\"#\" class=\"close-search\"><img src=\"images/close.png\" alt=\"close\"></a>\n" +
"		<div class=\"centered\">\n" +
"			<form action=\"#\">\n" +
"				<input type=\"text\" placeholder=\"Search here..\">\n" +
"				<button>Search</button>\n" +
"			</form>\n" +
"		</div>\n" +
"	</div>\n" +
"	<!-- search wrapper -->\n" +
" <!-- header section -->\n" +
"	<section class=\"header-wrapper style-two\">\n" +
"		<div class=\"container\">\n" +
"			<div class=\"row\">\n" +
"				<div class=\"col-lg-2 col-md-12 text-left\">\n" +
"					<a href=\"index.html\" class=\"logo\"><img src=\"images/logo.png\" alt=\"logo\"></a>\n" +
"                                  \n" +
"					<a href=\"#\" class=\"menu-click\"><span></span><span></span><span></span></a>\n" +
"				</div>\n" +
"				<div class=\"col-lg-8 col-md-12\">\n" +
"					<nav id=\"main-menu\" class=\"text-center\">\n" +
"						<ul>\n" +
"							<li><a href=\"index.html\">Assignment 1</a>\n" +
"								<ul class=\"level-two\">\n" +
"									<li><a href=\"home-v2.html\">Login Form</a></li>\n" +
"									<li><a href=\"home-v3.html\">Assignment 2</a></li>\n" +
"									<li><a href=\"home-v4.html\">Assignment 3</a></li>\n" +
"									<li><a href=\"home-v5.html\">Assignment 4</a>\n" +
"                                                                           <ul class=\"level-three\">\n" +
"											<li><a href=\"home-v14.html\">Style 1</a></li>\n" +
"											<li><a href=\"home-v15.html\">Style 2</a></li>\n" +
"											<li><a href=\"home-v16.html\">Style 3</a></li>\n" +
"											<li><a href=\"home-v17.html\">Style 4</a></li>\n" +
"										</ul>\n" +
"                                                                        </li>\n" +
"								\n" +
"								</ul> \n" +
"							</li>\n" +
"                                                        <li><a href=\"index.html\">Assignment 2</a>\n" +
"								<ul class=\"level-two\">\n" +
"									<li><a href=\"home-v2.html\">Login Form</a></li>\n" +
"									<li><a href=\"home-v3.html\">Assignment 2</a></li>\n" +
"									<li><a href=\"home-v4.html\">Assignment 3</a></li>\n" +
"									<li><a href=\"home-v5.html\">Assignment 4</a>\n" +
"                                                                           <ul class=\"level-three\">\n" +
"											<li><a href=\"home-v14.html\">Style 1</a></li>\n" +
"											<li><a href=\"home-v15.html\">Style 2</a></li>\n" +
"											<li><a href=\"home-v16.html\">Style 3</a></li>\n" +
"											<li><a href=\"home-v17.html\">Style 4</a></li>\n" +
"										</ul>\n" +
"                                                                        </li>\n" +
"								\n" +
"								</ul> \n" +
"							</li>\n" +
"                                                        <li><a href=\"index.html\">Assignment 3</a>\n" +
"								<ul class=\"level-two\">\n" +
"									<li><a href=\"home-v2.html\">Login Form</a></li>\n" +
"									<li><a href=\"home-v3.html\">Assignment 2</a></li>\n" +
"									<li><a href=\"home-v4.html\">Assignment 3</a></li>\n" +
"									<li><a href=\"home-v5.html\">Assignment 4</a>\n" +
"                                                                           <ul class=\"level-three\">\n" +
"											<li><a href=\"home-v14.html\">Style 1</a></li>\n" +
"											<li><a href=\"home-v15.html\">Style 2</a></li>\n" +
"											<li><a href=\"home-v16.html\">Style 3</a></li>\n" +
"											<li><a href=\"home-v17.html\">Style 4</a></li>\n" +
"										</ul>\n" +
"                                                                        </li>\n" +
"								\n" +
"								</ul> \n" +
"							</li>\n" +
"                                                        <li><a href=\"index.html\">Assignment 4</a>\n" +
"								<ul class=\"level-two\">\n" +
"									<li><a href=\"home-v2.html\">Login Form</a></li>\n" +
"									<li><a href=\"home-v3.html\">Assignment 2</a></li>\n" +
"									<li><a href=\"home-v4.html\">Assignment 3</a></li>\n" +
"									<li><a href=\"home-v5.html\">Assignment 4</a>\n" +
"                                                                           <ul class=\"level-three\">\n" +
"											<li><a href=\"home-v14.html\">Style 1</a></li>\n" +
"											<li><a href=\"home-v15.html\">Style 2</a></li>\n" +
"											<li><a href=\"home-v16.html\">Style 3</a></li>\n" +
"											<li><a href=\"home-v17.html\">Style 4</a></li>\n" +
"										</ul>\n" +
"                                                                        </li>\n" +
"								\n" +
"								</ul> \n" +
"							</li>\n" +
"						</ul>\n" +
"					</nav>\n" +
"				</div>\n" +
"				<div class=\"col-lg-2 col-md-4 text-right\">\n" +
"					<a href=\"#\" class=\"search-icon\"><img src=\"images/icons8-search-50.png\" alt=\"search-icon\"></a>\n" +
"				</div>\n" +
"			</div>\n" +
"		</div>\n" +
"	</section>\n" +
"	<!-- header section -->\n" +
"	\n" +
"	<!-- top header -->\n" +
"	<section class=\"top-header style-seven pad-150\">\n" +
"		<div class=\"container\">\n" +
"			<div class=\"row\">\n" +
"				<div class=\"col-sm-8 offset-sm-2 text-left\">\n" +
"			\n" +
"					<p class=\"has-animation\" data-delay=\"20\">Username <b>"+unm+"</b></p>\n" +
"					<p class=\"has-animation\" data-delay=\"20\">Password <b>"+pswd+"</b></p>\n" +
                                       " <p class=\"has-animation\" data-delay=\"20\"><i>Login Successful</i></p>\n" +
"			\n" +
"				</div>\n" +
"			</div>\n" +
"		</div>\n" +
"	</section>\n" +
"	<!-- top header -->\n" +
"\n" +
"	 \n" +
"	\n" +
"	 \n" +
"<!-- SCRIPTS -->\n" +
"<script src=\"js/jquery-1.12.3.min.js\"></script>\n" +
"<script src=\"js/popper.min.js\"></script>\n" +
"<script src=\"js/plugin.js\"></script>\n" +
"<script src=\"js/main.js\"></script>\n" +
"\n" +
"</body>\n" +
"\n" +
"</html>");
        }else{
                  out.println("<html><body><h1>Incorrect Credentials</h1></body></html>");
              }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
