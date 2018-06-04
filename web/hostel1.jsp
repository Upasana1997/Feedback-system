<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : hostel1
    Created on : Apr 26, 2018, 8:48:47 AM
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
                        <th>Issue id</th>
                        <th>student id</th>
                        <th>student name</th>
                        <th>problem</th>
                        <th>status</th>
                        <th>reply till now</th>
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
         select * from tbissues where mid = ${md} and p_category = "hostel";
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
         select * from tbissues where mid = ${md} and p_category = "hostel";
        </sql:query> 
          <c:forEach var="table1" items="${rs1.rows}">
              <option><c:out value="${table1.pid}"></c:out></option>
         </c:forEach>  
         </select>           
            <br>
            <input type="submit" name="openform" value="form to update details"/>
            <input type="submit" value="send to admin" name="badmin"/>
            <%
               if(request.getParameter("openform")!= null)
               {
                   String sname = request.getParameter("s1");
                   out.println(sname);
                   
                   String q = "select * from tbissues where pid = ? and p_category=?";
                   myConnection obj = new myConnection();
                   PreparedStatement pst = obj.db.prepareStatement(q);
                   pst.setInt(1,Integer.parseInt(sname));
                   pst.setString(2,"hostel");
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
                       out.println("pending"+"<input type='radio' name='r1' value='pending'/>");
                       out.println("sent to admin"+"<input type='radio' name='r1' value='sent to admin'/>");
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
                   
                   String s = "update tbissues set status=?,reply=? where pid=? and p_category=?";
                   myConnection obj1 = new myConnection();
                   PreparedStatement pst1 = obj1.db.prepareStatement(s);
                   pst1.setString(1,rv);
                   pst1.setString(2,rep);
                   pst1.setInt(3,Integer.parseInt(sname));
                   pst1.setString(4,"hostel");
                   pst1.executeUpdate();
               }
              
               if(request.getParameter("badmin")!=null)
               {
                   String sname = request.getParameter("s1");
                   out.println(sname);
                   int pd=0;
                   int sd=0;
                   int md=0;
                   String sn="",pcat="",prob="";
                   
                   String s = "select * from tbissues where pid = ? and p_category=? ";
                   myConnection obj1 = new myConnection();
                   PreparedStatement pst1 = obj1.db.prepareStatement(s);
                   pst1.setInt(1,Integer.parseInt(sname));
                   pst1.setString(2,"hostel");
                   ResultSet rs;
                   rs = pst1.executeQuery();
                   if(rs.next())
                   {
                       pd = rs.getInt("pid");
                       sd = rs.getInt("sid");
                       md = rs.getInt("mid");
                       sn = rs.getString("sname");
                       pcat = rs.getString("p_category");
                       prob = rs.getString("problem");
                   }
                   
                   String s1 = "insert into tbissuerecord(pid,sid,mid,sname,p_category,problem,status,reply) values(?,?,?,?,?,?,?,?)";
                    myConnection obj2 = new myConnection();
                   PreparedStatement pst2 = obj2.db.prepareStatement(s1);
                   pst2.setInt(1,pd);
                   pst2.setInt(2,sd);
                   pst2.setInt(3,md);
                   pst2.setString(4,sn);
                   pst2.setString(5,pcat);
                   pst2.setString(6,prob);
                   pst2.setString(7,"pending");
                   pst2.setString(8,"NO REPLY");
                   pst2.executeUpdate();
                   
               }
               
     

            %>
         
     </div>           
       
      </form>  
     
        
    </body>
</html>
