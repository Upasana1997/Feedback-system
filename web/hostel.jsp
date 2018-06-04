<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : hostel
    Created on : Apr 23, 2018, 12:45:08 AM
    Author     : Dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <script> 
     
       function func()
        {
            var a = document.getElementById("divdiv");
            a.style.display = "none";
        }
        
        function toggle()
        {
            var a = document.getElementById("divdiv");
            a.style.display = "block";
        }
  </script>
  <title>JSP Page</title>
    </head>
    <body onload="func()">
        <form name="f1">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
            <table border="2" width="400" height="100">
                <thead>
                    <tr>
                        <th>student id</th>
                        <th>student name</th>
                        <th>problem</th>
                        <th>check issue</th>
                        
                    </tr>
                </thead>
                <tbody>
                    
                
      <jsp:useBean id="obj2" scope="session" class="classes.arraylist1" />              
                    
                    
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
     url="jdbc:mysql://localhost/practice" user="root" password=""></sql:setDataSource>
        
        <sql:query dataSource="${db}" var="rs">
         select * from tbissues where mid = 11111 and p_category = "hostel";
        </sql:query>
             
         <c:forEach var="table" items="${rs.rows}">
                <tr>
                    <td><c:out value="${table.sid}"></c:out></td>
                     <td><c:out value="${table.sname}"></c:out></td>  
                     <td><c:out value="${table.problem}"></c:out></td>
                        
                         <td>
                     <input type="submit" name="bt" value="${table.sid}" onclick="toggle()"/>
                       </td>
                </tr>
     <div id="divdiv">
                    <form name="ff">
                        
                             <%
        if(request.getParameter("bt")!=null)
        {
            %>
            
            <c:out value="${param.bt}"></c:out>
            <c:set var="x" value="${param.bt}"></c:set>
          <%= request.getParameter("bt") %> 
           
          <sql:query dataSource="${db}" var="rs1">
         select * from tbissues where sid = ${x};
        </sql:query>
          
          <c:forEach var="table1" items="${rs1.rows}">
                <label name="l1">
                    <c:out value="${table1.sid}"></c:out>
                     <c:out value="${table1.sname}"></c:out> 
                     <c:out value="${table1.problem}"></c:out>
                     <c:out value="${table1.status}"></c:out>
                </label>
            
                pending<input type="radio" name="r1" value="pending" <c:if test="${table1.status == 'pending'}">checked</c:if> />
               read<input type="radio" name="r1" value="read" <c:if test="${table1.status == 'read'}">checked</c:if> />
               waiting<input type="radio" name="r1" value="waiting" <c:if test="${table1.status == 'waiting'}">checked</c:if> />
               completed<input type="radio" name="r1" value="completed" <c:if test="${table1.status == 'completed'}">checked</c:if> />
               
          </c:forEach> 
                  
           
           
           
           
           <%  
                
               
//             try
//             {
//                 if(request.getParameter("bupdate") != null)
//                 {
//                        String rd = request.getParameter("r1");
//                        System.out.println(rd);
//                        String q = "update tbissues set status=? where sid=?";
//                        myConnection obj = new myConnection();
//                        PreparedStatement pst = obj.db.prepareStatement(q);
//                        pst.setString(1,rd);
//                        pst.setInt(2,Integer.parseInt(request.getParameter("please")));
//                        pst.executeUpdate();
//                 }
//                 
//             }
//             catch(Exception e)
//             {
//                 out.println(e.getMessage());
//             }
                    
//             try
//             {
//                 if(request.getParameter("bupdate") != null)
//                 {
//                    if(request.getParameter("r1").equals("pending"))
//                    {
//                        String q = "update tbissues set pending=?,read=?,waiting=?,completed=? where sid=?";
//                        myConnection obj = new myConnection();
//                        PreparedStatement pst = obj.db.prepareStatement(q);
//                        pst.setBoolean(1,true);
//                        pst.setBoolean(2,false);
//                        pst.setBoolean(3,false);
//                        pst.setBoolean(4,false);
//                        pst.setInt(5,Integer.parseInt(request.getParameter("please")));
//                        pst.executeUpdate();
//                    }
//                    else if(request.getParameter("r1").equals("read"))
//                    {
//                        String q = "update tbissues set pending=?,read=?,waiting=?,completed=? where sid=?";
//                        myConnection obj = new myConnection();
//                        PreparedStatement pst = obj.db.prepareStatement(q);
//                        pst.setBoolean(1,false);
//                        pst.setBoolean(2,true);
//                        pst.setBoolean(3,false);
//                        pst.setBoolean(4,false);
//                        pst.setInt(5,Integer.parseInt(request.getParameter("please")));
//                        pst.executeUpdate();
//                    }
//                    else if(request.getParameter("r1").equals("waiting"))
//                    {
//                        String q = "update tbissues set pending=?,read=?,waiting=?,completed=? where sid=?";
//                        myConnection obj = new myConnection();
//                        PreparedStatement pst = obj.db.prepareStatement(q);
//                        pst.setBoolean(1,false);
//                        pst.setBoolean(2,false);
//                        pst.setBoolean(3,true);
//                        pst.setBoolean(4,false);
//                        pst.setInt(5,Integer.parseInt(request.getParameter("please")));
//                        pst.executeUpdate();
//                    }
//                    else if(request.getParameter("r1").equals("completed"))
//                    {
//                        String q = "update tbissues set pending=?,read=?,waiting=?,completed=? where sid=?";
//                        myConnection obj = new myConnection();
//                        PreparedStatement pst = obj.db.prepareStatement(q);
//                        pst.setBoolean(1,false);
//                        pst.setBoolean(2,false);
//                        pst.setBoolean(3,false);
//                        pst.setBoolean(4,true);
//                        pst.setInt(5,Integer.parseInt(request.getParameter("please")));
//                        pst.executeUpdate();
//                    }
//                 }
//             }
//             catch(Exception e)
//             {
//                 out.println(e.getMessage());
//             }
//      }
}
     %>
     
     <input type="submit" value="update" name="bupdate" />
     <c:if test="${param.bupdate != null}">
         <c:set var="rr" value="${param.r1}" scope="session"></c:set>
         <c:redirect url="newpage.jsp"></c:redirect>
     </c:if>
    
                    </form>
                </div>
     </c:forEach>
             
   </tbody>
            </table>
                </div>
      </form>
    </body>
</html>

