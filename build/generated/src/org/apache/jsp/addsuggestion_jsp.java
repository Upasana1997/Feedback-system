package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addsuggestion_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <form name=\"f1\">\n");
      out.write("             <h5> Enter the subject : </h5>\n");
      out.write("            <input type=\"text\" name=\"t1\" value=\"\" placeholder=\"Enter subject\"/>\n");
      out.write("            <h5> Enter your suggestion here : </h5>\n");
      out.write("            <textarea name=\"ta1\" rows=\"5\" cols=\"25\" placeholder=\"Enter suggestion\">\n");
      out.write("            </textarea>\n");
      out.write("            <br>\n");
      out.write("            <input type=\"submit\" value=\"submit suggestion\" name=\"b1\" />\n");
      out.write("        </form>\n");
      out.write("        <br>\n");
      out.write("          <c:out value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${get_username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></c:out>\n");
      out.write("  \n");
      out.write("       <sql:setDataSource var=\"db\" driver=\"com.mysql.jdbc.Driver\" \n");
      out.write("        url=\"jdbc:mysql://localhost/practice\" user=\"root\" password=\"\"></sql:setDataSource>\n");
      out.write("            \n");
      out.write("        \n");
      out.write("        <c:if test=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.b1!=null}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("            <c:out value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.t1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></c:out>\n");
      out.write("            <c:out value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.ta1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"></c:out>\n");
      out.write("              <sql:update dataSource=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${db}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                  insert into tbsuggestions(username,subject,suggestion)values('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${get_username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("','");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.t1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("','");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.ta1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("');\n");
      out.write("                       \n");
      out.write("            </sql:update>\n");
      out.write("    </c:if>\n");
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
