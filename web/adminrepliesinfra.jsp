<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : adminrepliesinfra
    Created on : Apr 29, 2018, 9:25:05 AM
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
        <title>JSP Page</title>
    </head>
     <body>
        
        <form name="f1">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
            <table border="2" width="400" height="100">
                <thead>
                    <tr>
                        <th>Issue id</th>
                        <th>student id</th>
                        <th>student name</th>
                        <th>Issue</th>
                        <th>status</th>
                        <th>Reply from admin till now</th>
                    </tr>
                </thead>
                <tbody>
                
                <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
     url="jdbc:mysql://localhost/practice" user="root" password=""></sql:setDataSource>
         
        <jsp:getProperty name="obj1" property="username" />
        <c:set var="un" value="${obj1.getUsername()}"></c:set>
        <c:out value="${un}"></c:out>
        
        <sql:query dataSource="${db}" var="rs0">
         select * from tbfaculty where username = '${un}';
        </sql:query>
         
        <c:forEach var="table0" items="${rs0.rows}">
            <c:set var="md" value="${table0.id}"></c:set> 
            <c:out value="${md}"></c:out>
        </c:forEach>    
        
        <sql:query dataSource="${db}" var="rs">
         select * from tbissuerecord where mid = ${md} and p_category = "infrastructure";
        </sql:query>
             
         <c:forEach var="table" items="${rs.rows}">
                <tr>
                     <td><c:out value="${table.pid}"></c:out></td>
                    <td><c:out value="${table.sid}"></c:out></td>
                     <td><c:out value="${table.sname}"></c:out></td>
                     <td><c:out value="${table.problem}"></c:out></td>
                     <td><c:out value="${table.status}"></c:out></td>
                     <td><c:out value="${table.reply}"></c:out></td> 
                </tr>
         </c:forEach>          
             </tbody>
            </table>
                    </div>
                </div>
            </div>
         </form>
        </div>
           <br>
           <br>
           <div>
           <form name ="f2">
         <select name="s1">
        <sql:query dataSource="${db}" var="rs1">
         select * from tbissuerecord where mid = ${md} and p_category = "infrastructure";
        </sql:query> 
          <c:forEach var="table1" items="${rs1.rows}">
              <option><c:out value="${table1.pid}"></c:out></option>
         </c:forEach>  
         </select>           
            <br>
            <input type="submit" name="openform" value="form to update details"/>
            <%
               
               if(request.getParameter("openform")!= null)
               {
                   String sname = request.getParameter("s1");
                   out.println(sname);
                   
                   String q = "select * from tbissuerecord where pid = ? and p_category=?";
                   myConnection obj = new myConnection();
                   PreparedStatement pst = obj.db.prepareStatement(q);
                   pst.setInt(1,Integer.parseInt(sname));
                   pst.setString(2,"infrastructure");
                   ResultSet rs;
                   rs = pst.executeQuery();
                   if(rs.next())
                   {
                       out.println("<input type='hidden' name='tt2' id='tt2' value='"+rs.getString("reply")+"' />");
                       out.println("<input type='hidden' name='tt1' id='tt1' value='"+Integer.parseInt(sname)+"' />");
                       out.println("<label>"+ rs.getString("sname") +"</label>" );
                       out.println("<label>"+ rs.getInt("sid") +"</label>");
                       out.println("<label>"+ rs.getString("problem") +"</label>" );
                       out.println("<label>"+ rs.getString("status") +"</label>" );
                       out.println("<label>"+ rs.getString("reply") +"</label>" );
                       out.println("waiting"+"<input type='radio' name='r1' value='waiting'/>");
                       out.println("completed"+"<input type='radio' name='r1' value='completed'/>");
                       out.println("rejected"+"<input type='radio' name='r1' value='rejected'/>");
                       out.println("<input type='submit' value='update' name='bupdate' />");
                       
                   }
               }
              
                if(request.getParameter("bupdate")!=null)
               {
                   String sname = request.getParameter("tt1");
                   String rv = request.getParameter("r1");
                   out.println(rv);
                   String rep = request.getParameter("tt2");
                   out.println(rep);
                   
                   String s = "update tbissues set status=?,reply=? where pid=? and p_category=?" ;
                   myConnection obj1 = new myConnection();
                   PreparedStatement pst1 = obj1.db.prepareStatement(s);
                   pst1.setString(1,rv);
                   pst1.setString(2,rep);
                   pst1.setInt(3,Integer.parseInt(sname));
                   pst1.setString(4,"infrastructure");
                   pst1.executeUpdate();
               }
              
            %>
         
     </div>           
       
      </form>  
     
        
    </body>
</html>
