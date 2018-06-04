package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import classes.myConnection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;

public final class mainstudent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <script>\n");
      out.write("            \n");
      out.write("            var x=false;\n");
      out.write("            if(window.XMLHttpRequest)\n");
      out.write("            {\n");
      out.write("                x=new XMLHttpRequest();\n");
      out.write("            }\n");
      out.write("            else if(window.ActiveXObject)\n");
      out.write("            {\n");
      out.write("                x=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("            }\n");
      out.write("                \n");
      out.write("            function test(f,d)\n");
      out.write("            {\n");
      out.write("                if(x)\n");
      out.write("                {\n");
      out.write("                    var obj=document.getElementById(d);\n");
      out.write("                    x.open(\"GET\",f);\n");
      out.write("                    \n");
      out.write("                    x.onreadystatechange=function()\n");
      out.write("                    {\n");
      out.write("                        if(x.readyState===4 && x.status===200)\n");
      out.write("                        {\n");
      out.write("                            obj.innerHTML=x.responseText;\n");
      out.write("                        }\n");
      out.write("                    };\n");
      out.write("                    x.send(null);\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            </script>\n");
      out.write("       <!-- <h1>Hello Student!</h1> -->\n");
      out.write("       <h5> issue category :</h5>\n");
      out.write("       <form name=\"f1\"> \n");
      out.write("<!--       <select name=\"s1\" id=\"id1\">-->\n");
      out.write("<!--            <option selected> Hostel </option>\n");
      out.write("            <option> Transport </option>\n");
      out.write("            <option> Infrastructure </option>\n");
      out.write("            <option> Others </option>-->\n");
      out.write("<input type=\"button\" value=\"Hostel\" name=\"bH\" onclick=\"test('issueform.jsp','d1')\"/>\n");
      out.write("<input type=\"button\" value=\"Transport\" name=\"bT\" onclick=\"test('issueform.jsp','d1')\"/>\n");
      out.write("<input type=\"button\" value=\"Infrastructure\" name=\"bI\" onclick=\"test('issueform.jsp','d1')\"/>\n");
      out.write("<input type=\"button\" value=\"Others\" name=\"bO\" onclick=\"test('issueform.jsp','d1')\"/>\n");
      out.write("      ");

                    
//                    try
//                {
//                    String q="select * from tbissuecatg";
//                    myConnection obj=new myConnection();
//                    PreparedStatement pst=obj.db.prepareStatement(q);
//                    ResultSet rs;
//                    rs=pst.executeQuery();
//                    while(rs.next())
//                    {
//                        out.println("<option value="+rs.getInt("id")+">"+rs.getInt("id")+"</option>");
//                    }
//                }
//                    catch(Exception e)
//                    {
//                        out.println(e.getMessage());
//                    }
//                    
                    
                    
      out.write("\n");
      out.write("                    \n");
      out.write("<!--       </select>-->\n");
      out.write("                    \n");
      out.write("                    ");

//                        String final_catg="";
//                        int val=0;
//                try
//                {
//                    String q1="select * from tbissuecatg where id=?";
//                    myConnection obj1=new myConnection();
//                    PreparedStatement pst1=obj1.db.prepareStatement(q1);
//                    val= Integer.parseInt(request.getParameter("s1"));
//                    
//                    pst1.setInt(1,val);
//                    ResultSet rs1;
//                    rs1=pst1.executeQuery();
//                    if(rs1.next())
//                    {
//                        final_catg = rs1.getString("ctgname");
//                    }
//                    
//                }
//                    catch(Exception e)
//                    {
//                        out.println(e.getMessage());
//                    }
//                out.println(val);
//            out.println(final_catg);
                
            

                    
      out.write("\n");
      out.write("                    \n");
      out.write("            ");
 // if(request.getParameter("b1")!=null)
        //{
          //  int val = Integer.parseInt(request.getParameter("s1"));
          //  out.println(val);
       // }
        
      out.write("         \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("       \n");
      out.write("<!--        <input type=\"button\" value=\"Enter Issue\" name=\"b1\" onclick=\"test('issueform.jsp','d1')\"/>\n");
      out.write("       -->\n");
      out.write("       </form>\n");
      out.write("           <br><br><br>\n");
      out.write("        <div id='d1'>\n");
      out.write("                \n");
      out.write("            </div>   \n");
      out.write("          \n");
      out.write("       \n");
      out.write("           \n");
      out.write("           \n");
      out.write("      \n");
      out.write("       \n");
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
