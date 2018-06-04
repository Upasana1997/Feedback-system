<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : transport1
    Created on : May 18, 2018, 9:55:56 PM
    Author     : Dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="classes.myConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html class="supernova">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="js/hostel2.js"></script>
<link rel="stylesheet" type="text/css" href="hostel2.css">
<!--<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>-->

<style>
    .red{
    color:red;
    }
.form-area
{
    background-color: #FAFAFA;
	padding: 10px 40px 60px;
	margin: 10px 0px 60px;
	border: 1px solid GREY;
	}
/* #aaaaa
 {
     height: 100px;
 }*/

#dev-table
{
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

#form1
{
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    border-color: lightslategrey;
}


</style>
<script>
    $(document).ready(function(){ 
    $('#characterLeft').text('140 characters left');
    $('#message').keydown(function () {
        var max = 140;
        var len = $(this).val().length;
        if (len >= max) {
            $('#characterLeft').text('You have reached the limit');
            $('#characterLeft').addClass('red');
            $('#btnSubmit').addClass('disabled');            
        } 
        else {
            var ch = max - len;
            $('#characterLeft').text(ch + ' characters left');
            $('#btnSubmit').removeClass('disabled');
            $('#characterLeft').removeClass('red');            
        }
    });    
});

    </script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body style="background-image:url('bgimg.png')">
        <div id="111" style="display:none">
            <jsp:getProperty name="obj1" property="username" /></div>
        <div class="container">
<!--    <h1>Click the filter icon <small>(<i class="glyphicon glyphicon-filter"></i>)</small></h1>-->
    	<div class="row">
			<div>
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Issues</h3>
						<div class="pull-right">
							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<i class="glyphicon glyphicon-filter"></i>
							</span>
						</div>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Filter Issues" />
					</div>
					<table class="table table-hover" id="dev-table">
						<thead>
							<tr>
			<th>Issue ID</th>
                        <th>Student ID</th>
                        <th>Student Name</th>
                        <th>Problem</th>
                        <th>Status</th>
                        <th>Reply Till Now</th>
							</tr>
						</thead>
						<tbody>
<!--							<tr>
								<td>1</td>
								<td>Kilgore</td>
								<td>Trout</td>
								<td>kilgore</td>
                                                                <td>boblahblah</td>
                                                                <td>boblahblah</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Bob</td>
								<td>Loblaw</td>
								<td>boblahblah</td>
                                                                <td>boblahblah</td>
                                                                <td>boblahblah</td>
							</tr>-->

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
     url="jdbc:mysql://localhost/practice" user="root" password=""></sql:setDataSource>
         
       
        <c:set var="un" value="${obj1.getUsername()}"></c:set>
        
        
        <sql:query dataSource="${db}" var="rs0">
         select * from tbfaculty where username = '${un}';
        </sql:query>
         
        <c:forEach var="table0" items="${rs0.rows}">
            <c:set var="md" value="${table0.id}"></c:set> 
            
        </c:forEach>    
        
        <sql:query dataSource="${db}" var="rs">
         select * from tbissues where mid = ${md} and p_category = "transport";
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
	</div>
       
  <div class="container-fluid">
           <form name ="f2" >
               
               <center><b> Select Issue Id for Updation:<b><center>  <select class="btn btn-primary dropdown-toggle center-block"  data-toggle="dropdown" name="s1" value="" >
                <span class="caret"></span>
        <sql:query dataSource="${db}" var="rs1">
         select * from tbissues where mid = ${md} and p_category = "transport";
        </sql:query> 
          <c:forEach var="table1" items="${rs1.rows}">
              <option><c:out value="${table1.pid}"></c:out></option>
         </c:forEach>  
         </select>           
            <br>
            <div class="btn-group" id="buttons">
            <input type="submit" name="openform" class="btn btn-primary center-block" value="Form To Update Details"/>
           <input type="submit" value="Send to Admin" class="btn btn-primary " name="badmin"/>
            </div>
            <br>
            <div class="container" >
                <div class="col-md-12">
    <div class="form-area" id="form1">  
        <form role="form">
        <br style="clear:both">
        <h2 style="margin-bottom: 25px; text-align: center;"><b>Update Status<b></h2>
            <%
               if(request.getParameter("openform")!= null)
               {
                   String sname = request.getParameter("s1");
                  // out.println(sname);
                   
                   String q = "select * from tbissues where pid = ? and p_category=?";
                   myConnection obj = new myConnection();
                   PreparedStatement pst = obj.db.prepareStatement(q);
                   pst.setInt(1,Integer.parseInt(sname));
                   pst.setString(2,"transport");
                   ResultSet rs;
                   rs = pst.executeQuery();
                   if(rs.next())
                   {
                       out.println("<input type='hidden' name='tt2' id='tt2' value='"+rs.getString("reply")+"' />");
                       out.println("<input type='hidden' name='tt1' id='tt1' value='"+Integer.parseInt(sname)+"' />");
                       out.println("<div class='form-group'>"+"<div class='col-md-2'><label>Student Name:</label></div><div class='col-md-10'><input type='text' class='form-control' id='name' name='name' placeholder='Student Name' disabled required value='"+rs.getString("sname")+"'/>" +"</div></div><br><br><br>" );
                       out.println("<div class='form-group'>"+"<div class='col-md-2'><label>Roll No:</label></div><div class='col-md-10'><input type='text' class='form-control' id='name' name='name' placeholder='Student ID' disabled required value='"+rs.getInt("sid")+"'/>" +"</div></div><br><br><br>" );
                       out.println("<div class='form-group'>"+"<div class='col-md-2'><label>Issues:</label></div><div class='col-md-10'><input type='text' class='form-control' id='aaaaa' name='name' placeholder='Issue' disabled required value='"+rs.getString("problem")+"'/>" +"</div></div><br><br><br>" );
                       out.println("<div class='form-group'>"+"<div class='col-md-2'><label>Current Status:</label></div><div class='col-md-10'><input type='text' class='form-control' id='name' name='name' placeholder='Status' disabled required value='"+rs.getString("status") +"'/>" +"</div></div><br><br><br>" );
                       out.println("<div class='form-group'>"+"<div class='col-md-2'><label>Reply:</label></div><div class='col-md-10'><input type='text' class='form-control' id='aaaaa' name='name' placeholder='Reply' disabled required value='"+rs.getString("reply")+"'/>" +"</div></div><br><br><br>" );
                       out.println("<div class='form-check'>"+"<div class='col-md-2'><label>Update Status:</label></div><div class='col-md-2'><input type='radio' name='r1'class='form-check-input' value='pending'/>"+"<label>"+"Pending"+"</label>"+"</div></div>");
                       out.println("<div class='form-check'>"+"<div class='col-md-2'><input type='radio' name='r1'class='form-check-input' value='sent to admin'/>"+"<label>"+"Sent to Admin"+"</label>"+"</div></div>");
                       out.println("<div class='form-check'>"+"<div class='col-md-2'><input type='radio' name='r1' class='form-check-input' value='waiting'/>"+"<label>"+"Waiting"+"</label>"+"</div></div>");
                       out.println("<div class='form-check'>"+"<div class='col-md-2'><input type='radio' name='r1' class='form-check-input' value='completed'/>"+"<label>"+"Completed"+"</label>"+"</div></div>");
                       out.println("<div class='form-check'>"+"<div class='col-md-2'><input type='radio' name='r1'class='form-check-input' value='rejected'/>"+"<label>"+"Rejected"+"</label>"+"</div></div><br><br>");
                       out.println("<input type='submit' value='Update' name='bupdate' class='btn btn-primary pull-right'/>");
                       
                   }
               }
              
                if(request.getParameter("bupdate")!=null)
               {
                   String sname = request.getParameter("tt1");
                   String rv = request.getParameter("r1");
                   //out.println(rv); 
                   String rep = request.getParameter("tt2");
                   //out.println(rep);
                   
                   String s = "update tbissues set status=?,reply=? where pid=? and p_category=?";
                   myConnection obj1 = new myConnection();
                   PreparedStatement pst1 = obj1.db.prepareStatement(s);
                   pst1.setString(1,rv);
                   pst1.setString(2,rep);
                   pst1.setInt(3,Integer.parseInt(sname));
                   pst1.setString(4,"transport");
                   pst1.executeUpdate();
                   %>
             <script>
//                        alert("wrong match");
swal({
  title: "Thank you!",
  text: "Issue Uploaded Successfully!",
  icon: "success"
});
                        </script>
                    <%
               }
              
               if(request.getParameter("badmin")!=null)
               {
                   String sname = request.getParameter("s1");
                  // out.println(sname);
                   int pd=0;
                   int sd=0;
                   int md=0;
                   String sn="",pcat="",prob="";
                   
                   String s = "select * from tbissues where pid = ? and p_category=? ";
                   myConnection obj1 = new myConnection();
                   PreparedStatement pst1 = obj1.db.prepareStatement(s);
                   pst1.setInt(1,Integer.parseInt(sname));
                   pst1.setString(2,"transport");
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
%>
    <script>
 
swal({
  title: "Cool!!",
  text: "Sent To Admin Successfully!",
  icon: "success"
});
                        </script>               
                        <%
                   
               }
               
     

            %>
         
            
        </form>
    </div>
                </div>
            
            </div>   
       
      </form>  
     
      </div> 
        </body>
        </html>
