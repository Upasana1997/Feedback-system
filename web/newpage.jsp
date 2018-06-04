<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myConnection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 


<%-- 
    Document   : newpage
    Created on : Apr 25, 2018, 11:51:50 PM
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
         <input type="submit" value="save" name="bupdate" />
     <c:if test="${param.bupdate != null}">
         <sql:update dataSource="${db}">
             insert into tbissues values(123,'thu',11111,'hostel','opooooik','waiting');
            </sql:update>
     </c:if>
    </body>
</html>
