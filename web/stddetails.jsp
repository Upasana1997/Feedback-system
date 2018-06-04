<%@page import="classes.myConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<jsp:include page="bootstrap.jsp"/>

<%-- 
    Document   : stddetails
    Created on : Apr 27, 2018, 1:12:42 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/checkissuestatus.css">
    </head>
    <body>
        
                   <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
     url="jdbc:mysql://localhost/practice" user="root" password=""></sql:setDataSource>
         
        <div id="111" style="display:none">
        <jsp:getProperty name="obj1" property="username" />
        </div>
        <c:set var="un" value="${obj1.getUsername()}"></c:set>
        
        
        <sql:query dataSource="${db}" var="rs0">
         select * from tbfaculty where username = '${un}';
        </sql:query>
         
        <c:forEach var="table0" items="${rs0.rows}">
            <c:set var="md" value="${table0.id}"></c:set> 
            
        </c:forEach>  
         <form name="f1"> 
         <div class="table-users">
                <div class="header">Student Details</div>
                <table cellspacing="0" table-responsive>

                    <tr>
                        <th>Student ID</th>
                        <th>Student Name</th>
                        <th>Contact</th>
                        <th>Email Address</th>
                        <th>Day Scholar</th>
                        <th>Transport Facility</th>
                        <th>Bus Route Number</th>
                        <th>Hosteller</th>
                        <th>Hostel Room Number</th>
                    </tr>
                
                <tbody>
                    
                <sql:query dataSource="${db}" var="rs">
         select * from tbstddetails where mentor_id = ${md};
        </sql:query>
             
         <c:forEach var="table" items="${rs.rows}">
                <tr>
                    <td><c:out value="${table.s_id}"></c:out></td>
                     <td><c:out value="${table.sname}"></c:out></td>  
                     <td><c:out value="${table.contact}"></c:out></td>
                     <td><c:out value="${table.email}"></c:out></td> 
                     <td><c:if test="${table.dayscholar == true}">
                     <c:out value="YES"></c:out>       
                     </c:if>
                     <c:if test="${table.dayscholar == false}">
                     <c:out value="NO"></c:out>       
                     </c:if>
                     </td>
                     <td><c:if test="${table.Transport == true}">
                     <c:out value="YES"></c:out>       
                     </c:if>
                     <c:if test="${table.Transport == false}">
                     <c:out value="NO"></c:out>       
                     </c:if>
                     </td>
                     <td><c:out value="${table.routenum}"></c:out></td>
                     <td><c:if test="${table.hosteller == true}">
                     <c:out value="YES"></c:out>       
                     </c:if>
                     <c:if test="${table.hosteller == false}">
                     <c:out value="NO"></c:out>       
                     </c:if>
                     </td>
                     <td><c:out value="${table.roomnum}"></c:out></td>
                </tr>
         </c:forEach>               
                    
                </tbody>
            </table>
                    </div>             
                
         
         </form>
    </body>
</html>
