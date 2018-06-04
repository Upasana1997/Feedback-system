<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 
    Document   : jstl1
    Created on : Mar 27, 2018, 5:30:50 PM
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
        <h1>Hello World!</h1>
         <c:out value="welcome"></c:out>
        <%
            int a=5;
            int b=6;
            int c=a+b;
            
            %>
            
                 <c:out value="<%=c%>"></c:out>
            <c:set var="x" value="${1000}"/>
            <c:out value="${x}"/>
    </body>
</html>
