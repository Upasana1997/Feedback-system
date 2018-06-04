package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class test_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("body {font-family: Arial, Helvetica, sans-serif;}\n");
      out.write("\n");
      out.write("/* The Modal (background) */\n");
      out.write(".modal {\n");
      out.write("    display: none; /* Hidden by default */\n");
      out.write("    position: fixed; /* Stay in place */\n");
      out.write("    z-index: 1; /* Sit on top */\n");
      out.write("    padding-top: 100px; /* Location of the box */\n");
      out.write("    left: 0;\n");
      out.write("    top: 0;\n");
      out.write("    width: 100%; /* Full width */\n");
      out.write("    height: 100%; /* Full height */\n");
      out.write("    overflow: auto; /* Enable scroll if needed */\n");
      out.write("    background-color: rgb(0,0,0); /* Fallback color */\n");
      out.write("    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Modal Content */\n");
      out.write(".modal-content {\n");
      out.write("    background-color: #fefefe;\n");
      out.write("    margin: auto;\n");
      out.write("    padding: 20px;\n");
      out.write("    border: 1px solid #888;\n");
      out.write("    width: 80%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* The Close Button */\n");
      out.write(".close {\n");
      out.write("    color: #aaaaaa;\n");
      out.write("    float: right;\n");
      out.write("    font-size: 28px;\n");
      out.write("    font-weight: bold;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".close:hover,\n");
      out.write(".close:focus {\n");
      out.write("    color: #000;\n");
      out.write("    text-decoration: none;\n");
      out.write("    cursor: pointer;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("        \n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            $('#myForm').on('submit', function(e){\n");
      out.write("  $('#myModal').modal('show');\n");
      out.write("  e.preventDefault();\n");
      out.write("});\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <H1>Using Multiple Forms</H1>\n");
      out.write("        ");
 
            if(request.getParameter("submit") != null) {
        
      out.write("\n");
      out.write("            You clicked \n");
      out.write("            ");
      out.print( request.getParameter("submit") );
      out.write("\n");
      out.write("        ");

            }
        
      out.write("\n");
      out.write("\n");
      out.write("        <FORM NAME=\"form1\" METHOD=\"POST\">\n");
      out.write("            <INPUT TYPE=\"SUBMIT\" NAME=\"submit\" VALUE=\"Button 1\">\n");
      out.write("        </FORM>\n");
      out.write("\n");
      out.write("        <FORM NAME=\"form2\" METHOD=\"POST\">\n");
      out.write("            <INPUT TYPE=\"SUBMIT\" NAME=\"submit\" VALUE=\"Button 2\">\n");
      out.write("        </FORM>\n");
      out.write("\n");
      out.write("        <FORM NAME=\"form3\" METHOD=\"POST\">\n");
      out.write("            <INPUT TYPE=\"SUBMIT\" NAME=\"submit\" VALUE=\"Button 3\">\n");
      out.write("        </FORM>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <form class=\"form-inline\" onsubmit=\"openModal()\" id=\"myForm\">\n");
      out.write("  <button type=\"submit\" class=\"btn btn-primary\">Submit</button>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("<div class=\"modal fade\" tabindex=\"-1\" role=\"dialog\" id=\"myModal\">\n");
      out.write("  <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("    <div class=\"modal-content\">\n");
      out.write("      <div class=\"modal-header\">\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n");
      out.write("        <h4 class=\"modal-title\">Modal title</h4>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-body\">\n");
      out.write("        <p>One fine body&hellip;</p>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-footer\">\n");
      out.write("        <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\n");
      out.write("        <button type=\"button\" class=\"btn btn-primary\">Save changes</button>\n");
      out.write("      </div>\n");
      out.write("    </div><!-- /.modal-content -->\n");
      out.write("  </div><!-- /.modal-dialog -->\n");
      out.write("</div><!-- /.modal -->\n");
      out.write("\n");
      out.write("\n");
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
}
