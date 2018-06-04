package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mainfaculty_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        <title>Faculty</title>\n");
      out.write("    </head>\n");
      out.write("    <script>\n");
      out.write("        function toggle()\n");
      out.write("        {\n");
      out.write("            var a = document.getElementById(\"options\");\n");
      out.write("            a.style.display = \"block\";\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        </script>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <p> will be adding things later...</p> \n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("        </div>\n");
      out.write("<!--        <div class=\"container-fluid\">\n");
      out.write("  \n");
      out.write("  <div class=\"row\">\n");
      out.write("       <div class=\"col-sm-4\" style=\"background-color:lavender;\">-->\n");
      out.write("      <form name=\"f1\">\n");
      out.write("            <input type=\"submit\" value=\"Check problems\" name=\"b1\" onclick=\"toggle()\"/>\n");
      out.write("            <input type=\"submit\" value=\"view students details\" name=\"b2\"/>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <div id =\"options\">\n");
      out.write("            <a href=\"hostel.jsp\">Hostel</a><br>\n");
      out.write("            <a href=\"transport.jsp\">Transport</a><br>\n");
      out.write("            <a href=\"infrastructure.jsp\">Infrastructure</a><br>\n");
      out.write("            <a href=\"others.jsp\">Others</a><br>\n");
      out.write("            </div>\n");
      out.write("        ");

//            if(request.getParameter("b1")!=null)
//            {
//                try
//                {
//                    String q="select * from tbcategory";
//                    myConnection obj=new myConnection();
//                    PreparedStatement pst=obj.db.prepareStatement(q);
//                    ResultSet rs;
//                    rs=pst.executeQuery();
//                    while(rs.next())
//                    {
//                        //out.println("<button type='submit' value=" +rs.getString("cname")+ "/>");
//                       out.println(rs.getString("cname")+ "<br>");
//                       
//                    }
//                }
//                catch(Exception e)
//                {
//                    out.println(e.getMessage());
//                }
//            }
            
      out.write("\n");
      out.write("        </form>\n");
      out.write("   \n");
      out.write("<!--    </div>\n");
      out.write("    <div class=\"col-sm-8\" style=\"background-color:lavenderblush;\">\n");
      out.write("    \n");
      out.write("    </div>\n");
      out.write("  </div>-->\n");
      out.write("</div>\n");
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
