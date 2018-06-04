package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import classes.myConnection;

public final class hostel2_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write('\n');
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
      out.write("        <link href=\"//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<script src=\"//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\n");
      out.write("<script src=\"js/hostel2.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"hostel2.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("    <h1>Click the filter icon <small>(<i class=\"glyphicon glyphicon-filter\"></i>)</small></h1>\n");
      out.write("    \t<div class=\"row\">\n");
      out.write("\t\t\t<div class=\"col-md-6\">\n");
      out.write("\t\t\t\t<div class=\"panel panel-primary\">\n");
      out.write("\t\t\t\t\t<div class=\"panel-heading\">\n");
      out.write("\t\t\t\t\t\t<h3 class=\"panel-title\">Developers</h3>\n");
      out.write("\t\t\t\t\t\t<div class=\"pull-right\">\n");
      out.write("\t\t\t\t\t\t\t<span class=\"clickable filter\" data-toggle=\"tooltip\" title=\"Toggle table filter\" data-container=\"body\">\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"glyphicon glyphicon-filter\"></i>\n");
      out.write("\t\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" id=\"dev-table-filter\" data-action=\"filter\" data-filters=\"#dev-table\" placeholder=\"Filter Developers\" />\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<table class=\"table table-hover\" id=\"dev-table\">\n");
      out.write("\t\t\t\t\t\t<thead>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<th>#</th>\n");
      out.write("\t\t\t\t\t\t\t\t<th>First Name</th>\n");
      out.write("\t\t\t\t\t\t\t\t<th>Last Name</th>\n");
      out.write("\t\t\t\t\t\t\t\t<th>Username</th>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t</thead>\n");
      out.write("\t\t\t\t\t\t<tbody>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td>1</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Kilgore</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Trout</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>kilgore</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td>2</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Bob</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Loblaw</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>boblahblah</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td>3</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Holden</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Caulfield</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>penceyreject</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t</tbody>\n");
      out.write("\t\t\t\t\t</table>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-6\">\n");
      out.write("\t\t\t\t<div class=\"panel panel-success\">\n");
      out.write("\t\t\t\t\t<div class=\"panel-heading\">\n");
      out.write("\t\t\t\t\t\t<h3 class=\"panel-title\">Tasks</h3>\n");
      out.write("\t\t\t\t\t\t<div class=\"pull-right\">\n");
      out.write("\t\t\t\t\t\t\t<span class=\"clickable filter\" data-toggle=\"tooltip\" title=\"Toggle table filter\" data-container=\"body\">\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"glyphicon glyphicon-filter\"></i>\n");
      out.write("\t\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"panel-body\">\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" id=\"task-table-filter\" data-action=\"filter\" data-filters=\"#task-table\" placeholder=\"Filter Tasks\" />\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<table class=\"table table-hover\" id=\"task-table\">\n");
      out.write("\t\t\t\t\t\t<thead>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<th>#</th>\n");
      out.write("\t\t\t\t\t\t\t\t<th>Task</th>\n");
      out.write("\t\t\t\t\t\t\t\t<th>Assignee</th>\n");
      out.write("\t\t\t\t\t\t\t\t<th>Status</th>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t</thead>\n");
      out.write("\t\t\t\t\t\t<tbody>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td>1</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Site Wireframes</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>John Smith</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>in progress</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td>2</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Mobile Landing Page</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Kilgore Trout</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>completed</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td>3</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Add SEO tags</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Bob Loblaw</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>failed qa</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td>4</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Migrate to Bootstrap 3</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Emily Hoenikker</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>in progress</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td>5</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Update jQuery library</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Holden Caulfield</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>deployed</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td>6</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Issues in IE7</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Jane Doe</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>failed qa</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t\t<td>7</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Bugs from Sprint 14</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>Kilgore Trout</td>\n");
      out.write("\t\t\t\t\t\t\t\t<td>completed</td>\n");
      out.write("\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t</tbody>\n");
      out.write("\t\t\t\t\t</table>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
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
