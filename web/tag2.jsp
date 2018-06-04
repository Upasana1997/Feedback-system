<%-- 
    Document   : tag2
    Created on : Mar 28, 2018, 7:21:53 PM
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
        <jsp:getProperty name="obj1" property="rollno"></jsp:getProperty><br>
        <jsp:getProperty name="obj1" property="name"></jsp:getProperty><br>
        <jsp:getProperty name="obj1" property="marks"></jsp:getProperty>
    </body>
</html>
