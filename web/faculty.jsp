<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myConnection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : faculty
    Created on : Mar 28, 2018, 12:43:58 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="f1">
            <input type="text" name="t1" value="" placeholder="enter username"/>
            <input type="text" name="t2" value="" placeholder="enter password"/>
            <input type="submit" value="Login" name="b1" />
        </form>
        
        <%
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
             
            %>
        
            <jsp:useBean id="obj1" scope="session" class="classes.mentors" />
        <jsp:setProperty name="obj1" property="username" param="t1"/>
                         
        
            
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/practice"
                                   user="root"   password=""></sql:setDataSource>
        
        <c:if test="${param.b1!=null}">
            <sql:query dataSource="${db}" var="rs">
                select * from tblogin where category="faculty";
                
            </sql:query>
        
            
            <c:forEach var="table" items="${rs.rows}">
                <c:if test="${(param.t1==table.username) && (param.t2==table.password)}">
                    <c:redirect url="mainfaculty.jsp"></c:redirect>
                </c:if>
            </c:forEach>
          </c:if>  
                
    </body>
</html>
