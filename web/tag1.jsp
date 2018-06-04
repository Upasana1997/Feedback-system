<%-- 
    Document   : tag1
    Created on : Mar 28, 2018, 6:57:57 PM
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
        <jsp:useBean id="obj1" scope="session" class="classes.student" />
        <jsp:setProperty name="obj1" property="rollno" value="10"></jsp:setProperty>
        <jsp:setProperty name="obj1" property="marks" value="100"></jsp:setProperty>
        <jsp:setProperty name="obj1" property="name" value="upasana"></jsp:setProperty>
       
        
    </body>
</html>
