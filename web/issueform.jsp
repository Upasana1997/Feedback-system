<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>

<%-- 
    Document   : Hostelform
    Created on : Apr 19, 2018, 12:28:50 AM
    Author     : Dell
--%>

<%--<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="f1">
            <h5> Enter your issue here : </h5>
            <textarea name="ta1" rows="5" cols="25">
            </textarea>
            <br>
            <input type="submit" value="submit issue" name="b1" />
        </form>
        <br>
          <c:out value="${get_username}"></c:out>
          <c:out value="${get_category}"></c:out>
          
          
  
        <%
//         String username,category;
//         username = session.getAttribute("user").toString();
//         category = session.getAttribute("catg").toString();
//         int get_id = 0;
//            
//        out.println(username);
        %>
        
       <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
                           url="jdbc:mysql://localhost/practice" user="root" password=""></sql:setDataSource>
            
        <sql:query dataSource="${db}" var="rs">
         select * from tbstddetails where username = '${get_username}';
        </sql:query>
        
         <c:forEach var="table" items="${rs.rows}">
            <c:set var="val1" value="${table.s_id}"></c:set> 
            <c:out value="${val1}"></c:out>
            <c:set var="val2" value="${table.sname}"></c:set> 
            <c:out value="${val2}"></c:out>
            <c:set var="val3" value="${table.mentor_id}"></c:set> 
            <c:out value="${val3}"></c:out>
        </c:forEach> 
         
        <c:if test="${param.b1!=null}">
            <c:out value="${param.ta1}"></c:out>
              <sql:update dataSource="${db}">
                  insert into tbissues(sid,sname,mid,p_category,problem,status,reply)values('${val1}','${val2}','${val3}','${get_category}','${param.ta1}','pending','NO REPLY TILL NOW');
                       
            </sql:update>
    </c:if>
    </body>
</html>
