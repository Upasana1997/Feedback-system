<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : mainfaculty
    Created on : Mar 28, 2018, 2:05:32 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Faculty</title>
    </head>
    <script>
        function func()
        {
            var a = document.getElementById("options");
            var b = document.getElementById("options1");
            a.style.display = "none";
            b.style.display = "none";
        }
        
        function toggle()
        {
            var a = document.getElementById("options");
            a.style.display = "block";
        }
        
        function toggle1()
        {
            var a = document.getElementById("options1");
            a.style.display = "block";
        }
        
        </script>
    <body onload="func()">
        <div>
            <br>
            <br>
            <br>
            <br>
            <p> will be adding things later...</p> 
            <br>
            
            <br>
            <br>
            <br>
        </div>
<!--        <div class="container-fluid">
  
  <div class="row">
       <div class="col-sm-4" style="background-color:lavender;">-->
      <form name="f1">
            <input type="button" value="Check problems" name="b1" onclick="toggle()"/>
            <input type="submit" value="view students details" name="b2"/>
            <input type="button" value="check admin replies" name="b3" onclick="toggle1()"/>
            <br>
            <br>
            <br>
            <div id ="options">
            <a href="hostel1.jsp">Hostel</a><br>
            <a href="transport.jsp">Transport</a><br>
            <a href="infrastructure.jsp">Infrastructure</a><br>
            <a href="others.jsp">Others</a><br>
            </div>
            
            <c:if test="${param.b2 != null}">
                <c:redirect url="stddetails.jsp"></c:redirect>
            </c:if>
            
             <div id ="options1">
            <a href="adminreplieshostel.jsp">Hostel</a><br>
            <a href="adminrepliestransport.jsp">Transport</a><br>
            <a href="adminrepliesinfra.jsp">Infrastructure</a><br>
            <a href="adminrepliesothers.jsp">Others</a><br>
            </div>
            
        <%
//            if(request.getParameter("b1")!=null)
//            {
//                try
//                {
//                    String q="select * from tbcategory";
//                    myConnection obj=new myConnection();
//                    PreparedStatement pst=obj.db.prepareStatement(q);
//                    ResultSet rs;
//                    rs=pst.executeQuery();
//                    while(rs.next())
//                    {
//                        //out.println("<button type='submit' value=" +rs.getString("cname")+ "/>");
//                       out.println(rs.getString("cname")+ "<br>");
//                       
//                    }
//                }
//                catch(Exception e)
//                {
//                    out.println(e.getMessage());
//                }
//            }
            %>
        </form>
   
<!--    </div>
    <div class="col-sm-8" style="background-color:lavenderblush;">
    
    </div>
  </div>-->
</div>
    </body>
</html>
