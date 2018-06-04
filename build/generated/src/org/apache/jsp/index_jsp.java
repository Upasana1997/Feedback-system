package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import classes.myConnection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_scope;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_redirect_url_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_query_var_dataSource;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_set_var_value_scope = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_redirect_url_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_query_var_dataSource = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_set_var_value_scope.release();
    _jspx_tagPool_c_redirect_url_nobody.release();
    _jspx_tagPool_c_if_test.release();
    _jspx_tagPool_sql_query_var_dataSource.release();
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login Page</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("  <script  src=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-show-password/1.0.3/bootstrap-show-password.min.js\"></script>\n");
      out.write(" \n");
      out.write("  <script src=\"js/main.js\"></script>\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\n");
      out.write("  \n");
      out.write("\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\t<meta name=\"description\" content=\"Course Project\">\n");
      out.write("\t\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"styles/bootstrap4/bootstrap.min.css\">\n");
      out.write("\t<link href=\"plugins/fontawesome-free-5.0.1/css/fontawesome-all.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"plugins/OwlCarousel2-2.2.1/owl.carousel.css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"plugins/OwlCarousel2-2.2.1/owl.theme.default.css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"plugins/OwlCarousel2-2.2.1/animate.css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"styles/main_styles.css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"styles/responsive.css\">\n");
      out.write("\t\n");
      out.write("\t<script src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("  <style>\n");
      out.write("* {box-sizing: border-box;}\n");
      out.write("body {font-family: Verdana, sans-serif;}\n");
      out.write(".mySlides {display: none;}\n");
      out.write("img {vertical-align: middle;}\n");
      out.write("\n");
      out.write("/* Slideshow container */\n");
      out.write(".slideshow-container {\n");
      out.write("  max-width: 1000px;\n");
      out.write("  position: relative;\n");
      out.write("  margin: auto;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Caption text */\n");
      out.write(".text {\n");
      out.write("  color: #f2f2f2;\n");
      out.write("  font-size: 15px;\n");
      out.write("  padding: 8px 12px;\n");
      out.write("  position: absolute;\n");
      out.write("  bottom: 8px;\n");
      out.write("  width: 100%;\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Number text (1/3 etc) */\n");
      out.write(".numbertext {\n");
      out.write("  color: #f2f2f2;\n");
      out.write("  font-size: 12px;\n");
      out.write("  padding: 8px 12px;\n");
      out.write("  position: absolute;\n");
      out.write("  top: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* The dots/bullets/indicators */\n");
      out.write(".dot {\n");
      out.write("  height: 15px;\n");
      out.write("  width: 15px;\n");
      out.write("  margin: 0 2px;\n");
      out.write("  background-color: #bbb;\n");
      out.write("  border-radius: 50%;\n");
      out.write("  display: inline-block;\n");
      out.write("  transition: background-color 0.6s ease;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".active {\n");
      out.write("  background-color: #717171;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Fading animation */\n");
      out.write(".fade {\n");
      out.write("  -webkit-animation-name: fade;\n");
      out.write("  -webkit-animation-duration: 1.5s;\n");
      out.write("  animation-name: fade;\n");
      out.write("  animation-duration: 1.5s;\n");
      out.write("}\n");
      out.write("\n");
      out.write("@-webkit-keyframes fade {\n");
      out.write("  from {opacity: .4} \n");
      out.write("  to {opacity: 1}\n");
      out.write("}\n");
      out.write("\n");
      out.write("@keyframes fade {\n");
      out.write("  from {opacity: .4} \n");
      out.write("  to {opacity: 1}\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* On smaller screens, decrease text size */\n");
      out.write("@media only screen and (max-width: 300px) {\n");
      out.write("  .text {font-size: 11px}\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("    <body>\n");
      out.write("         <div>\n");
      out.write("    <nav class=\"navbar navbar-inverse\">\n");
      out.write("      <div class=\"container-fluid\">\n");
      out.write("        <div class=\"navbar-header\">\n");
      out.write("          <!-- <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\"\n");
      out.write("            aria-expanded=\"false\"> -->\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("            <span class=\"icon-bar\"></span>\n");
      out.write("          </button>\n");
      out.write("          <a class=\"navbar-brand\" href=\"#\">\n");
      out.write("            <img id=\"image\" src=\"logo_chitkaara_horizontal.png\">\n");
      out.write("          </a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("          <ul class=\"nav navbar-nav  navbar-right\">\n");
      out.write("            <li>\n");
      out.write("                <a data-target=\"#studentmodal\" data-toggle=\"modal\" href=\"#studentmodal\">Student Login</a>\n");
      out.write("            </li>\n");
      out.write("            <li>\n");
      out.write("              <a data-target=\"#teachermodal\" data-toggle=\"modal\" href=\"#teachermodal\">Teacher Login</a>\n");
      out.write("            </li>\n");
      out.write("            <li>\n");
      out.write("                <a data-target=\"#adminmodal\" data-toggle=\"modal\" href=\"#adminmodal\">Admin Login</a>\n");
      out.write("              </li>\n");
      out.write("           \n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("  </div> \n");
      out.write("        \n");
      out.write("        <div class=\"super_container\">\n");
      out.write("\n");
      out.write("\t\t<!-- Header -->\n");
      out.write("\n");
      out.write("\t\t<header class=\"header d-flex flex-row\">\n");
      out.write("\t\t\t<div class=\"header_content d-flex flex-row align-items-center\">\n");
      out.write("\t\t\t\t<!-- Logo -->\n");
      out.write("\t\t\t\t<div class=\"logo_container\">\n");
      out.write("\t\t\t\t\t<div class=\"logo\">\n");
      out.write("\t\t\t\t\t\t<img src=\"images/chitkara-logo.png\" alt=\"\" style=\"width:50%;height:50%\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t<!-- Main Navigation -->\n");
      out.write("\t\t\t\t<nav class=\"main_nav_container\">\n");
      out.write("\t\t\t\t\t<div class=\"main_nav\">\n");
      out.write("\t\t\t\t\t\t<ul class=\"main_nav_list\">\n");
      out.write("\t\t\t\t\t\t\t<li class=\"main_nav_item\">\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"#\">Home</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"main_nav_item\">\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"#mid\" data-target=\"#mid\">About us</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"main_nav_item\">\n");
      out.write("\t\t\t\t\t\t\t\t<a data-target=\"#studentmodal\" data-toggle=\"modal\" href=\"#studentmodal\">Student Login</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"main_nav_item\">\n");
      out.write("\t\t\t\t\t\t\t\t<a data-target=\"#teachermodal\" data-toggle=\"modal\" href=\"#teachermodal\">Teacher Login</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"main_nav_item\">\n");
      out.write("\t\t\t\t\t\t\t\t<a data-target=\"#adminmodal\" data-toggle=\"modal\" href=\"#adminmodal\">Admin Login</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"main_nav_item\">\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"#foot\" data-target=\"#foot\">Contact</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</nav>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"header_side d-flex flex-row justify-content-center align-items-center\">\n");
      out.write("\t\t\t\t<img src=\"images/phone-call.svg\" alt=\"\">\n");
      out.write("\t\t\t\t<span>+095011 05714</span>\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t<!-- Hamburger -->\n");
      out.write("\t\t\t<div class=\"hamburger_container\">\n");
      out.write("\t\t\t\t<i class=\"fas fa-bars trans_200\"></i>\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t</header>\n");
      out.write("\n");
      out.write("\t\t<!-- Menu -->\n");
      out.write("\t\t<div class=\"menu_container menu_mm\">\n");
      out.write("\n");
      out.write("\t\t\t<!-- Menu Close Button -->\n");
      out.write("\t\t\t<div class=\"menu_close_container\">\n");
      out.write("\t\t\t\t<div class=\"menu_close\"></div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t<!-- Menu Items -->\n");
      out.write("\t\t\t<div class=\"menu_inner menu_mm\">\n");
      out.write("\t\t\t\t<div class=\"menu menu_mm\">\n");
      out.write("\t\t\t\t\t<ul class=\"menu_list menu_mm\">\n");
      out.write("\t\t\t\t\t\t<li class=\"menu_item menu_mm\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">Home</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li class=\"menu_item menu_mm\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">About us</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li class=\"menu_item menu_mm\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">Student Login</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li class=\"menu_item menu_mm\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">Admin Login</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li class=\"menu_item menu_mm\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">Teacher Login</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li class=\"menu_item menu_mm\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\">Contact</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<!-- Menu Social -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"menu_social_container menu_mm\">\n");
      out.write("\t\t\t\t\t\t<ul class=\"menu_social menu_mm\">\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu_social_item menu_mm\">\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"https://youtube.com/chitkaraU\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<i class=\"fab fa-youtube\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu_social_item menu_mm\">\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"https://www.linkedin.com/edu/school?id=43021\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<i class=\"fab fa-linkedin-in\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu_social_item menu_mm\">\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"https://www.instagram.com/chitkarau/\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<i class=\"fab fa-instagram\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu_social_item menu_mm\">\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"https://www.facebook.com/ChitkaraU\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<i class=\"fab fa-facebook-f\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu_social_item menu_mm\">\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"https://twitter.com/chitkarau\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<i class=\"fab fa-twitter\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\t\t<!-- Home -->\n");
      out.write("\n");
      out.write("\t\t<div class=\"home\">\n");
      out.write("\n");
      out.write("\t\t\t<!-- Hero Slider -->\n");
      out.write("\t\t\t<div class=\"hero_slider_container\">\n");
      out.write("\t\t\t\t<div class=\"hero_slider owl-carousel\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t<!-- Hero Slide -->\n");
      out.write("\t\t\t\t\t<div class=\"hero_slide\">\n");
      out.write("\t\t\t\t\t\t<div class=\"hero_slide_background\" style=\"background-image:url(images/bcg3.jpg)\"></div>\n");
      out.write("\t\t\t\t\t\t<div class=\"hero_slide_container d-flex flex-column align-items-center justify-content-center\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"hero_slide_content text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t<h1 data-animation-in=\"fadeInUp\" data-animation-out=\"animate-out fadeOut\">Your Feedback matters for us!</h1>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<!-- Hero Slide -->\n");
      out.write("\t\t\t\t\t<div class=\"hero_slide\">\n");
      out.write("\t\t\t\t\t\t<div class=\"hero_slide_background\" style=\"background-image:url(images/bcg2.jpg)\"></div>\n");
      out.write("\t\t\t\t\t\t<div class=\"hero_slide_container d-flex flex-column align-items-center justify-content-center\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"hero_slide_content text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t<h1 data-animation-in=\"fadeInUp\" data-animation-out=\"animate-out fadeOut\">Your Feedback matters for us!</h1>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<!-- Hero Slide -->\n");
      out.write("\t\t\t\t\t<div class=\"hero_slide\">\n");
      out.write("\t\t\t\t\t\t<div class=\"hero_slide_background\" style=\"background-image:url(images/bcg5.jpg)\"></div>\n");
      out.write("\t\t\t\t\t\t<div class=\"hero_slide_container d-flex flex-column align-items-center justify-content-center\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"hero_slide_content text-center\">\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"hero_slider_left hero_slider_nav trans_200\">\n");
      out.write("\t\t\t\t\t<span class=\"trans_200\">prev</span>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"hero_slider_right hero_slider_nav trans_200\">\n");
      out.write("\t\t\t\t\t<span class=\"trans_200\">next</span>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\t\t<div class=\"hero_boxes\">\n");
      out.write("\t\t\t<div class=\"hero_boxes_inner\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<div class=\"row\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-4 hero_box_col\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"hero_box d-flex flex-row align-items-center justify-content-start\">\n");
      out.write("\t\t\t\t\t\t\t\t<img src=\"images/earth-globe.svg\" class=\"svg\" alt=\"\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"hero_box_content\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<h2 class=\"hero_box_title\">Got Feedback!</h2>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-4 hero_box_col\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"hero_box d-flex flex-row align-items-center justify-content-start\">\n");
      out.write("\t\t\t\t\t\t\t\t<img src=\"images/books.svg\" class=\"svg\" alt=\"\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"hero_box_content\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<h2 class=\"hero_box_title\">We would love to here about them.</h2>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-4 hero_box_col\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"hero_box d-flex flex-row align-items-center justify-content-start\">\n");
      out.write("\t\t\t\t\t\t\t\t<img src=\"images/professor.svg\" class=\"svg\" alt=\"\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"hero_box_content\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<h2 class=\"hero_box_title\">And provide you the best possible solution</h2>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\t\t<!-- Popular -->\n");
      out.write("\n");
      out.write("\t\t<div class=\"popular page_section\" >\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"col\">\n");
      out.write("\t\t\t\t\t\t<div class=\"section_title text-center\">\n");
      out.write("\t\t\t\t\t\t\t<h1>Our Mission</h1>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"row course_boxes\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t<!-- Popular Course Item -->\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-4 course_box\">\n");
      out.write("\t\t\t\t\t\t<div class=\"card\">\n");
      out.write("\t\t\t\t\t\t\t<img class=\"card-img-top\" src=\"images/course_1.jpg\" alt=\"\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"card-body text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"card-title\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3>To inculcate high moral, ethical and professional standards amongst our students\n");
      out.write("\t\t\t\t\t\t\t\t\t</h3>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<!-- Popular Course Item -->\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-4 course_box\">\n");
      out.write("\t\t\t\t\t\t<div class=\"card\">\n");
      out.write("\t\t\t\t\t\t\t<img class=\"card-img-top\" src=\"images/course_2.jpg\" alt=\"\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"card-body text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"card-title\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3>To carry out the academic process for achieving excellence through active teacher-student-industry participation\n");
      out.write("\t\t\t\t\t\t\t\t\t</h3>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<!-- Popular Course Item -->\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-4 course_box\">\n");
      out.write("\t\t\t\t\t\t<div class=\"card\">\n");
      out.write("\t\t\t\t\t\t\t<img class=\"card-img-top\" src=\"images/course_3.jpg\" alt=\"\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"card-body text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"card-title\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<h3>To contribute to build a skillful society</h3>\n");
      out.write("\t\t\t\t\t\t\t\t\t<br>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t<!-- Services -->\n");
      out.write("\n");
      out.write("\t\t<div class=\"services page_section\" id=\"mid\">\n");
      out.write("\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"col\">\n");
      out.write("\t\t\t\t\t\t<div class=\"section_title text-center\">\n");
      out.write("\t\t\t\t\t\t\t<h1>Our Overview</h1>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"row services_row\">\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-12 service_item text-left d-flex flex-column align-items-start justify-content-start\">\n");
      out.write("\t\t\t\t\t\t<div class=\"icon_container d-flex flex-column justify-content-end\">\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<p>In the year 2002, Chitkara Educational Trust established its Punjab campus 30 kilometers from Chandigarh, on the Chandigarh–Patiala\n");
      out.write("\t\t\t\t\t\t\tNational Highway. In the year 2010 Chitkara University was established by the Punjab State Legislature under “The\n");
      out.write("\t\t\t\t\t\t\tChitkara University Act”. Chitkara University, the best university in Punjab is a government-recognized university\n");
      out.write("\t\t\t\t\t\t\twith the right to confer degrees as per the Sections 2(f) and 22(1) of the UGC Act, 1956. The sprawling campus of\n");
      out.write("\t\t\t\t\t\t\tthe University is equidistant from Chandigarh, Mohali, Panchkula, Ambala and Patiala. The University offers multi-disciplinary\n");
      out.write("\t\t\t\t\t\t\tprograms, all of which are designed to be industry-relevant. As a result of this student-centric approach, Chitkara\n");
      out.write("\t\t\t\t\t\t\tUniversity is renowned as one of the best private universities in the North India region. From business management\n");
      out.write("\t\t\t\t\t\t\tprograms to programs in nursing and medical laboratory technologies; and from computer science, electronics and mechanical\n");
      out.write("\t\t\t\t\t\t\tengineering programs, to hotel management and architecture—Chitkara University, Punjab is a veritable cornucopia of\n");
      out.write("\t\t\t\t\t\t\teducational services. Curriculum is delivered in spacious, amphitheatre-style classrooms—fitted with modern information\n");
      out.write("\t\t\t\t\t\t\tand communication technology (ICT) equipment—and in well-equipped, modern laboratories. Additionally, students are\n");
      out.write("\t\t\t\t\t\t\tencouraged—and provided relevant facilities—to participate in co-curricular and extra-curricular activities through\n");
      out.write("\t\t\t\t\t\t\tvarious clubs and societies on the campus. It is because of the cumulative effect of an elaborate in-campus academic\n");
      out.write("\t\t\t\t\t\t\tinfrastructure; strong national and international collaborations; and a robust on-campus recruitment record—including\n");
      out.write("\t\t\t\t\t\t\tregular recruitment by reputed blue-chip companies—that the University finds favor with national as well as international\n");
      out.write("\t\t\t\t\t\t\tstudents. A healthy number of foreign students regularly study at the campus and number of them also visit on exchange\n");
      out.write("\t\t\t\t\t\t\tprograms, adding to the cultural diversity found on campus. The University in Punjab provides several opportunities\n");
      out.write("\t\t\t\t\t\t\tfor local students, too, to visit foreign universities and institutions on such exchange programs, thereby helping\n");
      out.write("\t\t\t\t\t\t\tthem receive invaluable international exposure. The University has at the centre of its philosophical core the commitment\n");
      out.write("\t\t\t\t\t\t\tto excellence in education. It is the strong academic heritage of the University, and such firmness on matters of\n");
      out.write("\t\t\t\t\t\t\tprinciples that has seen it grow from strength to strength in such a short span of time.</p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\t\t<!-- Testimonials -->\n");
      out.write("\n");
      out.write("\t\t<div class=\"testimonials page_section\">\n");
      out.write("\t\t\t<!-- <div class=\"testimonials_background\" style=\"background-image:url(images/testimonials_background.jpg)\"></div> -->\n");
      out.write("\t\t\t<div class=\"testimonials_background_container prlx_parent\">\n");
      out.write("\t\t\t\t<div class=\"testimonials_background prlx\" style=\"background-image:url(images/review.jpg)\"></div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"col\">\n");
      out.write("\t\t\t\t\t\t<div class=\"section_title text-center\">\n");
      out.write("\t\t\t\t\t\t\t<h1>What our students say</h1>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"col-lg-10 offset-lg-1\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<div class=\"testimonials_slider_container\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t<!-- Testimonials Slider -->\n");
      out.write("\t\t\t\t\t\t\t<div class=\"owl-carousel owl-theme testimonials_slider\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t<!-- Testimonials Item -->\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"owl-item\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"testimonials_item text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"quote\">“</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p class=\"testimonials_text\"> According to me, it is the best college. Many companies came to our campus and gave a chance to the students. The\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tcollege provides 100% placement guarantee. The college provides the best opportunities to students. I have been\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tstudying for four years, so I feel fortunate because I am in the best university. Here, we only explore our potential.</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"testimonial_user\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"testimonial_name\">Biny</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"testimonial_title\">Batch 2021</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t<!-- Testimonials Item -->\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"owl-item\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"testimonials_item text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"quote\">“</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p class=\"testimonials_text\">Chitkara University is the university with awesome infrastructure and academic facilities to students with a well\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\trenowned faculty and administration with strict Anti-Ragging Policies, organizes various events Like Techelone\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tand Algorythm for students with a Star-Night with Gippy Grewal, Badshah and Many More.Awesome Alumini Network\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tknown as CAN(Chitkara Alumini Network) recently Was organized in Chandigarh I was there and arrangement was awesome\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tat MTV Flyp café at chandigarh</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"testimonial_user\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"testimonial_name\">Navdeep Singh</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"testimonial_title\">Batch 2017</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t<!-- Testimonials Item -->\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"owl-item\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"testimonials_item text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"quote\">“</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p class=\"testimonials_text\">The institution is well-built with beautiful blocks and lecture halls all over the campus. The cafeteria is one\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tof the best things I've ever seen. Many food chains like La Pinoz Pizza are already a part of the campus and more\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tto join soon. The environment is very refreshing, and almost all sports facilities are available.</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"testimonial_user\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"testimonial_name\">Pulkit</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"testimonial_title\">Batch 2019</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t<!-- Footer -->\n");
      out.write("\n");
      out.write("\t\t<footer class=\"footer\">\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\n");
      out.write("\t\t\t\t<!-- Footer Content -->\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"footer_content\">\n");
      out.write("\t\t\t\t\t<div class=\"row\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<!-- Footer Column - About -->\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-3 footer_col\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t<!-- Logo -->\n");
      out.write("\t\t\t\t\t\t\t<div class=\"logo_container\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"logo\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<img src=\"images/CU_logo.png\" alt=\"\" style=\"width:50%;height:50%\">\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<div>\n");
      out.write("\t\t\t\t\t\t\t\t<br>\n");
      out.write("\t\t\t\t\t\t\t\t<h3>Our Vision</h3>\n");
      out.write("\t\t\t\t\t\t\t\t<p class=\"footer_about_text\">To be a globally recognized organization promoting academic excellence through interdisciplinary applied research\n");
      out.write("\t\t\t\t\t\t\t\t\tand to expand realms of knowledge through innovation.</p>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<!-- Footer Column - Menu -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-3 footer_col\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"footer_column_title\">Menu</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"footer_column_content\">\n");
      out.write("\t\t\t\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"footer_list_item\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\">Home</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"footer_list_item\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\">About Us</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"footer_list_item\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\">Student Login</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"footer_list_item\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\">Teacger Login</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"footer_list_item\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\">Admin Login</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<!-- Footer Column - Contact -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-3 footer_col\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"footer_column_title\">Contact</div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"footer_column_content\">\n");
      out.write("\t\t\t\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"footer_contact_item\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"footer_contact_icon\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<img src=\"images/placeholder.svg\" alt=\"\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\tCHITKARA UNIVERSITY (PUNJAB) Chandigarh-Patiala National Highway Punjab 140 401\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"footer_contact_item\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"footer_contact_icon\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<img src=\"images/placeholder.svg\" alt=\"\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\tCHANDIGARH INFORMATION CENTRE SCO 160-161, Sector 9-C Chandigarh 160 009\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"footer_contact_item\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"footer_contact_icon\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<img src=\"images/smartphone.svg\" alt=\"\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\tTel:- +91.1762.507084-86, Mandeep Berwal – 9501105718\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"footer_contact_item\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"footer_contact_icon\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<img src=\"images/envelope.svg\" alt=\"\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>admissions@chitkara.edu.in\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t<!-- Footer Copyright -->\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"footer_bar d-flex flex-column flex-sm-row align-items-center\" id=\"foot\">\n");
      out.write("\t\t\t\t\t\t<div class=\"footer_social ml-sm-auto\">\n");
      out.write("\t\t\t\t\t\t<ul class=\"menu_social\">\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu_social_item\">\n");
      out.write("\t\t\t\t\t\t\t\t<a target=\"_blank\" href=\"https://youtube.com/chitkaraU\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<i class=\"fab fa-youtube\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu_social_item\">\n");
      out.write("\t\t\t\t\t\t\t\t<a target=\"_blank\" href=\"https://www.linkedin.com/edu/school?id=43021\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<i class=\"fab fa-linkedin-in\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu_social_item\">\n");
      out.write("\t\t\t\t\t\t\t\t<a target=\"_blank\" href=\"https://www.instagram.com/chitkarau/\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<i class=\"fab fa-instagram\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu_social_item\">\n");
      out.write("\t\t\t\t\t\t\t\t<a target=\"_blank\" href=\"https://www.facebook.com/ChitkaraU\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<i class=\"fab fa-facebook-f\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu_social_item\">\n");
      out.write("\t\t\t\t\t\t\t\t<a target=\"_blank\" href=\"https://twitter.com/chitkarau\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<i class=\"fab fa-twitter\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</footer>\n");
      out.write("\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\t<script src=\"js/jquery-3.2.1.min.js\"></script>\n");
      out.write("\t<script src=\"styles/bootstrap4/popper.js\"></script>\n");
      out.write("\t<script src=\"styles/bootstrap4/bootstrap.min.js\"></script>\n");
      out.write("\t<script src=\"plugins/greensock/TweenMax.min.js\"></script>\n");
      out.write("\t<script src=\"plugins/greensock/TimelineMax.min.js\"></script>\n");
      out.write("\t<script src=\"plugins/scrollmagic/ScrollMagic.min.js\"></script>\n");
      out.write("\t<script src=\"plugins/greensock/animation.gsap.min.js\"></script>\n");
      out.write("\t<script src=\"plugins/greensock/ScrollToPlugin.min.js\"></script>\n");
      out.write("\t<script src=\"plugins/OwlCarousel2-2.2.1/owl.carousel.js\"></script>\n");
      out.write("\t<script src=\"plugins/scrollTo/jquery.scrollTo.min.js\"></script>\n");
      out.write("\t<script src=\"plugins/easing/easing.js\"></script>\n");
      out.write("\t<script src=\"js/custom.js\"></script>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("<!--        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("<div class=\"slideshow-container\">\n");
      out.write("\n");
      out.write("<div class=\"mySlides\">\n");
      out.write(" \n");
      out.write("  <img src=\"1.jpg\" style=\"width:100%\">\n");
      out.write(" \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"mySlides\">\n");
      out.write("  \n");
      out.write("  <img src=\"2.jpg\" style=\"width:100%\">\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"mySlides \">\n");
      out.write("  \n");
      out.write("  <img src=\"4.jpg\" style=\"width:100%\">\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"mySlides \">\n");
      out.write("  \n");
      out.write("  <img src=\"5.jpg\" style=\"width:100%\">\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"mySlides \">\n");
      out.write("  \n");
      out.write("  <img src=\"6.jpg\" style=\"width:100%\">\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<br>\n");
      out.write("<script>\n");
      out.write("var slideIndex = 0;\n");
      out.write("showSlides();\n");
      out.write("\n");
      out.write("function showSlides() {\n");
      out.write("    var i;\n");
      out.write("    var slides = document.getElementsByClassName(\"mySlides\");\n");
      out.write("    //var dots = document.getElementsByClassName(\"dot\");\n");
      out.write("    for (i = 0; i < slides.length; i++) {\n");
      out.write("       slides[i].style.display = \"none\";  \n");
      out.write("    }\n");
      out.write("    slideIndex++;\n");
      out.write("    if (slideIndex > slides.length) {slideIndex = 1}    \n");
      out.write("    for (i = 0; i < slides.length; i++) {\n");
      out.write("        slides[i].className = slides[i].className.replace(\" active\", \"\");\n");
      out.write("    }\n");
      out.write("    slides[slideIndex-1].style.display = \"block\";  \n");
      out.write("    slides[slideIndex-1].className += \" active\";\n");
      out.write("    setTimeout(showSlides, 2000); // Change image every 2 seconds\n");
      out.write("}\n");
      out.write("</script>-->\n");
      out.write("        <div class=\"modal fade\" id=\"teachermodal\" role=\"dialog\">\n");
      out.write("            <div class=\"modal-dialog\">\n");
      out.write("                <div class=\"modal-content\">\n");
      out.write("                    <div class=\"modal-header\">\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("                        <div class=\"modal-title\">\n");
      out.write("                            <h2><span class=\"glyphicon glyphicon-log-in\"></span>      Login As Teacher</h2>    \n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <form target=\"_self\" name=\"f2\"> \n");
      out.write("                    <div class=\"modal-body\">\n");
      out.write("                           \n");
      out.write("                         <div class=\"form-group\">\n");
      out.write("                                <label for=\"email\"><span class=\"glyphicon glyphicon-user\"></span>Username:</label>\n");
      out.write("                                <input type=\"text\" class=\"form-control\" name=\"t1\" id=\"teacherusername\" required>\n");
      out.write("                               </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"password\">Password:</label>\n");
      out.write("                                <input type=\"password\" class=\"form-control\" name=\"t2\" id=\"teacherpassword\" data-toggle=\"teacherpassword\" required\n");
      out.write("                                       <div class=\"input\"><a onclick=\"showTeacherPassword()\"><span class=\"glyphicon glyphicon-eye-open\"></span></a></div>\n");
      out.write("                        \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"modal-footer\">\n");
      out.write("                            <input type=\"submit\" name = \"b2\" value=\"Login\">\n");
      out.write("                            <!--<button type=\"submit\" class=\"btn btn-success\" onclick=\"\">Submit</button>  -->\n");
      out.write("                            <button type=\"reset\" class=\"btn btn-success\">Reset</button>\n");
      out.write("                            </div>\n");
      out.write("                            </form>\n");
      out.write("                        \n");
      out.write("                    \n");
      out.write("                     ");

                 String u,p;
                    u=request.getParameter("t1");
                    p=request.getParameter("t2");
                
             session.setAttribute("user",u);
             session.setAttribute("pass",p);
             
             try
             {
                 String q = "select * from tbfaculty where username=?";
                 myConnection obj = new myConnection();
                 PreparedStatement pst = obj.db.prepareStatement(q);
                 pst.setString(1,u);
                 ResultSet rs;
                 rs=pst.executeQuery();
                 if(rs.next())
                 {
                     session.setAttribute("mentor",rs.getInt("id"));
                 }
             }
             catch(Exception e)
             {
                 out.println(e.getMessage());
             }
             
            
      out.write("\n");
      out.write("        \n");
      out.write("            ");
      classes.mentors obj1 = null;
      synchronized (session) {
        obj1 = (classes.mentors) _jspx_page_context.getAttribute("obj1", PageContext.SESSION_SCOPE);
        if (obj1 == null){
          obj1 = new classes.mentors();
          _jspx_page_context.setAttribute("obj1", obj1, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspecthelper(_jspx_page_context.findAttribute("obj1"), "username", request.getParameter("t1"), request, "t1", false);
      out.write("\n");
      out.write("                         \n");
      out.write("        \n");
      out.write("            \n");
      out.write("        ");
      if (_jspx_meth_sql_setDataSource_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        \n");
      out.write("        ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("  \n");
      out.write("                         \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("//\tthis.$(\"#teacherpassword\").password.toggle();\n");
      out.write("</script>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"modal fade left\" id=\"studentmodal\" role=\"dialog\">\n");
      out.write("            <div class=\"modal-dialog modal-side modal-top-right\">\n");
      out.write("                <div class=\"modal-content\">\n");
      out.write("                    <div class=\"modal-header\">\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("                        <div class=\"modal-title\">\n");
      out.write("                            <h2><span class=\"glyphicon glyphicon-log-in\"></span>       Login As Student</h2>    \n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    <form target=\"_self\" name=\"f1\">\n");
      out.write("                    <div class=\"modal-body\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"rollno\"><span class=\"glyphicon glyphicon-user\"></span>Username</label>\n");
      out.write("                            <input type=\"text\" class=\"form-control\" name=\"user\" id=\"studentrollno\" required>\n");
      out.write("                        </div>\n");
      out.write("       \n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"password\"><span class=\"glyphicon glyphicon-eye-close\"></span>Password:</label>\n");
      out.write("                                <input type=\"password\" class=\"form-control\" name=\"pass\" id=\"studentpassword\" required>\n");
      out.write("                            <input type=\"checkbox\" onclick=\"showStudentPassword()\">Show Password\n");
      out.write("                            </div>\n");
      out.write("                          </div>\n");
      out.write("                    \n");
      out.write("                    <div class=\"modal-footer\">\n");
      out.write("                        <input type=\"submit\" name = \"b1\" value=\"Login\">\n");
      out.write("                        <button type=\"reset\" class=\"btn btn-success\">Reset</button>\n");
      out.write("                    </div>\n");
      out.write("                        </form>\n");
      out.write("                    \n");
      out.write("                    ");
      if (_jspx_meth_c_set_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("            \n");
      out.write("        ");
      if (_jspx_meth_sql_setDataSource_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        \n");
      out.write("        ");
      if (_jspx_meth_c_if_2(_jspx_page_context))
        return;
      out.write("  \n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div> \n");
      out.write("\n");
      out.write("      \n");
      out.write("         \n");
      out.write("        \n");
      out.write("        <div class=\"modal fade\" id=\"adminmodal\" role=\"dialog\">\n");
      out.write("            <div class=\"modal-dialog\">\n");
      out.write("                <div class=\"modal-content\">\n");
      out.write("                    <div class=\"modal-header\">\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("                        <div class=\"modal-title\">\n");
      out.write("                        <h2><span class=\"glyphicon glyphicon-log-in\"></span>       Admin Login</h2>    \n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    <form name=\"f3\">\n");
      out.write("                    <div class=\"modal-body\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                        <label for=\"emailid\"><span class=\"glyphicon glyphicon-user\"></span>Username:</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"t3\" id=\"adminemail\" required>\n");
      out.write("                    </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"password\"><span class=\"glyphicon glyphicon-eye-close\"></span>Password:</label>\n");
      out.write("                            <input type=\"password\" class=\"form-control\" name=\"t4\" id=\"adminpassword\" required>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                        <div class=\"modal-footer\">\n");
      out.write("                              <input type=\"submit\" name = \"b3\" value=\"Login\">\n");
      out.write("                        <button type=\"reset\" class=\"btn btn-success\">Reset</button>                         \n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                    \n");
      out.write("                    ");

                 String un,ps;
                 un=request.getParameter("t3");
                 ps=request.getParameter("t4");
                
             session.setAttribute("usern",un);
             session.setAttribute("passs",ps);
             
            
      out.write("\n");
      out.write("        \n");
      out.write("        ");
      classes.mentors obj2 = null;
      synchronized (session) {
        obj2 = (classes.mentors) _jspx_page_context.getAttribute("obj2", PageContext.SESSION_SCOPE);
        if (obj2 == null){
          obj2 = new classes.mentors();
          _jspx_page_context.setAttribute("obj2", obj2, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspecthelper(_jspx_page_context.findAttribute("obj2"), "username", request.getParameter("t3"), request, "t3", false);
      out.write("\n");
      out.write("        \n");
      out.write("        ");
      if (_jspx_meth_sql_setDataSource_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        \n");
      out.write("        ");
      if (_jspx_meth_c_if_5(_jspx_page_context))
        return;
      out.write("  \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_sql_setDataSource_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:setDataSource
    org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag _jspx_th_sql_setDataSource_0 = (org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag) _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.get(org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag.class);
    _jspx_th_sql_setDataSource_0.setPageContext(_jspx_page_context);
    _jspx_th_sql_setDataSource_0.setParent(null);
    _jspx_th_sql_setDataSource_0.setVar("db");
    _jspx_th_sql_setDataSource_0.setDriver("com.mysql.jdbc.Driver");
    _jspx_th_sql_setDataSource_0.setUrl("jdbc:mysql://localhost/practice");
    _jspx_th_sql_setDataSource_0.setUser("root");
    _jspx_th_sql_setDataSource_0.setPassword("");
    int _jspx_eval_sql_setDataSource_0 = _jspx_th_sql_setDataSource_0.doStartTag();
    if (_jspx_th_sql_setDataSource_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
      return true;
    }
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
    return false;
  }

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.b2!=null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("            ");
        if (_jspx_meth_sql_query_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("        \n");
        out.write("            \n");
        out.write("            ");
        if (_jspx_meth_c_forEach_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("          ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_sql_query_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_0 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_dataSource.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_sql_query_0.setPageContext(_jspx_page_context);
    _jspx_th_sql_query_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_sql_query_0.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${db}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_sql_query_0.setVar("rs");
    int[] _jspx_push_body_count_sql_query_0 = new int[] { 0 };
    try {
      int _jspx_eval_sql_query_0 = _jspx_th_sql_query_0.doStartTag();
      if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
          out = _jspx_page_context.pushBody();
          _jspx_push_body_count_sql_query_0[0]++;
          _jspx_th_sql_query_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
          _jspx_th_sql_query_0.doInitBody();
        }
        do {
          out.write("\n");
          out.write("                select * from tblogin where category=\"faculty\";\n");
          out.write("                \n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_sql_query_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
        if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
          out = _jspx_page_context.popBody();
          _jspx_push_body_count_sql_query_0[0]--;
      }
      if (_jspx_th_sql_query_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_sql_query_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_sql_query_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_sql_query_0.doFinally();
      _jspx_tagPool_sql_query_var_dataSource.reuse(_jspx_th_sql_query_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_forEach_0.setVar("table");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                ");
          if (_jspx_meth_c_if_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${(param.t1==table.username) && (param.t2==table.password)}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                    ");
        if (_jspx_meth_c_redirect_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_1, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
          return true;
        out.write("\n");
        out.write("                ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_c_redirect_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:redirect
    org.apache.taglibs.standard.tag.rt.core.RedirectTag _jspx_th_c_redirect_0 = (org.apache.taglibs.standard.tag.rt.core.RedirectTag) _jspx_tagPool_c_redirect_url_nobody.get(org.apache.taglibs.standard.tag.rt.core.RedirectTag.class);
    _jspx_th_c_redirect_0.setPageContext(_jspx_page_context);
    _jspx_th_c_redirect_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_1);
    _jspx_th_c_redirect_0.setUrl("facultymain.jsp");
    int _jspx_eval_c_redirect_0 = _jspx_th_c_redirect_0.doStartTag();
    if (_jspx_th_c_redirect_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_redirect_url_nobody.reuse(_jspx_th_c_redirect_0);
      return true;
    }
    _jspx_tagPool_c_redirect_url_nobody.reuse(_jspx_th_c_redirect_0);
    return false;
  }

  private boolean _jspx_meth_c_set_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_scope.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent(null);
    _jspx_th_c_set_0.setVar("get_username");
    _jspx_th_c_set_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.user}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_set_0.setScope("session");
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_eval_c_set_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      if (_jspx_eval_c_set_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
        out = _jspx_page_context.pushBody();
        _jspx_th_c_set_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
        _jspx_th_c_set_0.doInitBody();
      }
      do {
        out.write(' ');
        int evalDoAfterBody = _jspx_th_c_set_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
      if (_jspx_eval_c_set_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
        out = _jspx_page_context.popBody();
    }
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_scope.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_scope.reuse(_jspx_th_c_set_0);
    return false;
  }

  private boolean _jspx_meth_sql_setDataSource_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:setDataSource
    org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag _jspx_th_sql_setDataSource_1 = (org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag) _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.get(org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag.class);
    _jspx_th_sql_setDataSource_1.setPageContext(_jspx_page_context);
    _jspx_th_sql_setDataSource_1.setParent(null);
    _jspx_th_sql_setDataSource_1.setVar("db");
    _jspx_th_sql_setDataSource_1.setDriver("com.mysql.jdbc.Driver");
    _jspx_th_sql_setDataSource_1.setUrl("jdbc:mysql://localhost/practice");
    _jspx_th_sql_setDataSource_1.setUser("root");
    _jspx_th_sql_setDataSource_1.setPassword("");
    int _jspx_eval_sql_setDataSource_1 = _jspx_th_sql_setDataSource_1.doStartTag();
    if (_jspx_th_sql_setDataSource_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_1);
      return true;
    }
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_1);
    return false;
  }

  private boolean _jspx_meth_c_if_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_2.setPageContext(_jspx_page_context);
    _jspx_th_c_if_2.setParent(null);
    _jspx_th_c_if_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.b1!=null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_2 = _jspx_th_c_if_2.doStartTag();
    if (_jspx_eval_c_if_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("            ");
        if (_jspx_meth_sql_query_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_2, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("        \n");
        out.write("            \n");
        out.write("            ");
        if (_jspx_meth_c_forEach_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_2, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("          ");
        int evalDoAfterBody = _jspx_th_c_if_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
    return false;
  }

  private boolean _jspx_meth_sql_query_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_2, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_1 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_dataSource.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_sql_query_1.setPageContext(_jspx_page_context);
    _jspx_th_sql_query_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_2);
    _jspx_th_sql_query_1.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${db}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_sql_query_1.setVar("rs");
    int[] _jspx_push_body_count_sql_query_1 = new int[] { 0 };
    try {
      int _jspx_eval_sql_query_1 = _jspx_th_sql_query_1.doStartTag();
      if (_jspx_eval_sql_query_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        if (_jspx_eval_sql_query_1 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
          out = _jspx_page_context.pushBody();
          _jspx_push_body_count_sql_query_1[0]++;
          _jspx_th_sql_query_1.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
          _jspx_th_sql_query_1.doInitBody();
        }
        do {
          out.write("\n");
          out.write("                select * from tblogin where category=\"student\";\n");
          out.write("                \n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_sql_query_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
        if (_jspx_eval_sql_query_1 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
          out = _jspx_page_context.popBody();
          _jspx_push_body_count_sql_query_1[0]--;
      }
      if (_jspx_th_sql_query_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_sql_query_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_sql_query_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_sql_query_1.doFinally();
      _jspx_tagPool_sql_query_var_dataSource.reuse(_jspx_th_sql_query_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_2, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_2);
    _jspx_th_c_forEach_1.setVar("table");
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                ");
          if (_jspx_meth_c_if_3((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("\n");
          out.write("                ");
          if (_jspx_meth_c_if_4((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("\n");
          out.write("                \n");
          out.write("                \n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_3(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_3 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_3.setPageContext(_jspx_page_context);
    _jspx_th_c_if_3.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_if_3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${(param.user==table.username) && (param.pass==table.password)}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_3 = _jspx_th_c_if_3.doStartTag();
    if (_jspx_eval_c_if_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                    ");
        if (_jspx_meth_c_redirect_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_3, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
          return true;
        out.write("\n");
        out.write("                ");
        int evalDoAfterBody = _jspx_th_c_if_3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
    return false;
  }

  private boolean _jspx_meth_c_redirect_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_3, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:redirect
    org.apache.taglibs.standard.tag.rt.core.RedirectTag _jspx_th_c_redirect_1 = (org.apache.taglibs.standard.tag.rt.core.RedirectTag) _jspx_tagPool_c_redirect_url_nobody.get(org.apache.taglibs.standard.tag.rt.core.RedirectTag.class);
    _jspx_th_c_redirect_1.setPageContext(_jspx_page_context);
    _jspx_th_c_redirect_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_3);
    _jspx_th_c_redirect_1.setUrl("studentmain.jsp");
    int _jspx_eval_c_redirect_1 = _jspx_th_c_redirect_1.doStartTag();
    if (_jspx_th_c_redirect_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_redirect_url_nobody.reuse(_jspx_th_c_redirect_1);
      return true;
    }
    _jspx_tagPool_c_redirect_url_nobody.reuse(_jspx_th_c_redirect_1);
    return false;
  }

  private boolean _jspx_meth_c_if_4(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_4 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_4.setPageContext(_jspx_page_context);
    _jspx_th_c_if_4.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_if_4.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${(param.user!=table.username) && (param.pass!=table.password)}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_4 = _jspx_th_c_if_4.doStartTag();
    if (_jspx_eval_c_if_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("<!--                     <script src=\"https://unpkg.com/sweetalert2@7.8.2/dist/sweetalert2.all.js\"></script>\n");
        out.write("                        <script>swal({\n");
        out.write("                        text:\"User does not exist\"\n");
        out.write("                          });\n");
        out.write("                        </script>-->\n");
        out.write("                ");
        int evalDoAfterBody = _jspx_th_c_if_4.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_4);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_4);
    return false;
  }

  private boolean _jspx_meth_sql_setDataSource_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:setDataSource
    org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag _jspx_th_sql_setDataSource_2 = (org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag) _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.get(org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag.class);
    _jspx_th_sql_setDataSource_2.setPageContext(_jspx_page_context);
    _jspx_th_sql_setDataSource_2.setParent(null);
    _jspx_th_sql_setDataSource_2.setVar("db");
    _jspx_th_sql_setDataSource_2.setDriver("com.mysql.jdbc.Driver");
    _jspx_th_sql_setDataSource_2.setUrl("jdbc:mysql://localhost/practice");
    _jspx_th_sql_setDataSource_2.setUser("root");
    _jspx_th_sql_setDataSource_2.setPassword("");
    int _jspx_eval_sql_setDataSource_2 = _jspx_th_sql_setDataSource_2.doStartTag();
    if (_jspx_th_sql_setDataSource_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_2);
      return true;
    }
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_2);
    return false;
  }

  private boolean _jspx_meth_c_if_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_5 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_5.setPageContext(_jspx_page_context);
    _jspx_th_c_if_5.setParent(null);
    _jspx_th_c_if_5.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.b3!=null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_5 = _jspx_th_c_if_5.doStartTag();
    if (_jspx_eval_c_if_5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("            ");
        if (_jspx_meth_sql_query_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_5, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("        \n");
        out.write("            \n");
        out.write("            ");
        if (_jspx_meth_c_forEach_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_5, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("          ");
        int evalDoAfterBody = _jspx_th_c_if_5.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_5);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_5);
    return false;
  }

  private boolean _jspx_meth_sql_query_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_5, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:query
    org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_2 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_dataSource.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
    _jspx_th_sql_query_2.setPageContext(_jspx_page_context);
    _jspx_th_sql_query_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_5);
    _jspx_th_sql_query_2.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${db}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_sql_query_2.setVar("rs");
    int[] _jspx_push_body_count_sql_query_2 = new int[] { 0 };
    try {
      int _jspx_eval_sql_query_2 = _jspx_th_sql_query_2.doStartTag();
      if (_jspx_eval_sql_query_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        if (_jspx_eval_sql_query_2 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
          out = _jspx_page_context.pushBody();
          _jspx_push_body_count_sql_query_2[0]++;
          _jspx_th_sql_query_2.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
          _jspx_th_sql_query_2.doInitBody();
        }
        do {
          out.write("\n");
          out.write("                select * from tblogin where category=\"Admin\";\n");
          out.write("                \n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_sql_query_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
        if (_jspx_eval_sql_query_2 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
          out = _jspx_page_context.popBody();
          _jspx_push_body_count_sql_query_2[0]--;
      }
      if (_jspx_th_sql_query_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_sql_query_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_sql_query_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_sql_query_2.doFinally();
      _jspx_tagPool_sql_query_var_dataSource.reuse(_jspx_th_sql_query_2);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_5, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_5);
    _jspx_th_c_forEach_2.setVar("table");
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${rs.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                ");
          if (_jspx_meth_c_if_6((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_2, _jspx_page_context, _jspx_push_body_count_c_forEach_2))
            return true;
          out.write("\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_2.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_6(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_2, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_2)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_6 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_6.setPageContext(_jspx_page_context);
    _jspx_th_c_if_6.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_2);
    _jspx_th_c_if_6.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${(param.t3==table.username) && (param.t4==table.password)}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_6 = _jspx_th_c_if_6.doStartTag();
    if (_jspx_eval_c_if_6 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                    ");
        if (_jspx_meth_c_redirect_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_6, _jspx_page_context, _jspx_push_body_count_c_forEach_2))
          return true;
        out.write("\n");
        out.write("                ");
        int evalDoAfterBody = _jspx_th_c_if_6.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_6);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_6);
    return false;
  }

  private boolean _jspx_meth_c_redirect_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_6, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_2)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:redirect
    org.apache.taglibs.standard.tag.rt.core.RedirectTag _jspx_th_c_redirect_2 = (org.apache.taglibs.standard.tag.rt.core.RedirectTag) _jspx_tagPool_c_redirect_url_nobody.get(org.apache.taglibs.standard.tag.rt.core.RedirectTag.class);
    _jspx_th_c_redirect_2.setPageContext(_jspx_page_context);
    _jspx_th_c_redirect_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_6);
    _jspx_th_c_redirect_2.setUrl("adminmain.jsp");
    int _jspx_eval_c_redirect_2 = _jspx_th_c_redirect_2.doStartTag();
    if (_jspx_th_c_redirect_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_redirect_url_nobody.reuse(_jspx_th_c_redirect_2);
      return true;
    }
    _jspx_tagPool_c_redirect_url_nobody.reuse(_jspx_th_c_redirect_2);
    return false;
  }
}
