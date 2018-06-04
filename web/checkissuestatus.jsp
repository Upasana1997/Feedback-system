<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<jsp:include page="bootstrap.jsp"/>
<%-- 
    Document   : checkissuestatus
    Created on : Apr 27, 2018, 12:43:53 PM
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
        <form name="f1">
            <div class="table-users">
                <div class="header">Status</div>
                <table cellspacing="0" table-responsive>
                    
   
                
                    <tr>
                        <th id="heading"><b>Issue Category</b></th>
                        <th id="heading"><b>Issue</b></th>
                        <th id="heading"><b>Status</b></th>
                        <th><b>Any reply or solution</b></th>
                    </tr>
                
                <tbody>
                
                <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
     url="jdbc:mysql://localhost/practice" user="root" password=""></sql:setDataSource>
         
        <sql:query dataSource="${db}" var="rs1">
         select * from tbstddetails where username = '${get_username}';
        </sql:query>
                
         <c:forEach var="table1" items="${rs1.rows}">
             <c:set var="student_id" value="${table1.s_id}"></c:set>
         </c:forEach>
        
         <sql:query dataSource="${db}" var="rs0">
         select * from tbissues where sid = '${student_id}';
        </sql:query>
         
         <c:forEach var="table" items="${rs0.rows}">
                <tr>
                     <td><c:out value="${table.p_category}"></c:out></td>
                     <td><c:out value="${table.problem}"></c:out></td>  
                     <td><c:out value="${table.status}"></c:out></td> 
                     <td><c:out value="${table.reply}"></c:out></td>
                </tr>
         </c:forEach>          
             </tbody>
            </table>
                    </div>
                
           
         </form>
    </body>
</html>
