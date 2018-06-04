<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : admin_checksugg1
    Created on : May 18, 2018, 8:58:22 PM
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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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

    </head>
    <body style="background-image:url('bgimg.png')">
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
			 <th>Suggestion id</th>
                        <th>Username</th>
                        <th>Subject</th>
                        <th>Suggestion</th>
                        <th>Status till now</th>
                        <th>Any reply to the suggestion</th> 
							</tr>
						</thead>
						<tbody>
                                                    <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
     url="jdbc:mysql://localhost/practice" user="root" password=""></sql:setDataSource>
         
        <sql:query dataSource="${db}" var="rs3">
         select * from tbsuggestions;
        </sql:query>
             
         <c:forEach var="table3" items="${rs3.rows}">
                <tr>
                    <td><c:out value="${table3.suggestion_id}"></c:out></td>
                     <td><c:out value="${table3.username}"></c:out></td> 
                     <td><c:out value="${table3.subject}"></c:out></td>
                     <td><c:out value="${table3.suggestion}"></c:out></td>
                     <td><c:out value="${table3.status}"></c:out></td>   
                     <td><c:out value="${table3.reply}"></c:out></td>
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
               
               <center><b> Select Issue Id for Updation:<b><center>  <select class="btn btn-primary dropdown-toggle center-block"  data-toggle="dropdown" name="s2" value="" >
                <span class="caret"></span>
                <sql:query dataSource="${db}" var="rs4">
         select * from tbsuggestions;
        </sql:query> 
          <c:forEach var="table4" items="${rs4.rows}">
              <option><c:out value="${table4.suggestion_id}"></c:out></option>
         </c:forEach>  
         </select>    
                                <br>
            <div class="btn-group" id="buttons">
            <input type="submit" name="openform1" class="btn btn-primary center-block" value="Form To Update Details"/>
            </div>
            <br>
            <div class="container" >
                <div class="col-md-12">
    <div class="form-area" id="form1">  
        <form role="form">
        <br style="clear:both">
        <h2 style="margin-bottom: 25px; text-align: center;"><b>Update Status<b></h2>
                    <%
               if(request.getParameter("openform1")!= null)
               {
                   String sname1 = request.getParameter("s2");
                  // out.println(sname1);
                   
                   String q1 = "select * from tbsuggestions where suggestion_id = ?";
                   myConnection obj1 = new myConnection();
                   PreparedStatement pst1 = obj1.db.prepareStatement(q1);
                   pst1.setInt(1,Integer.parseInt(sname1));
                   ResultSet rs1;
                   rs1 = pst1.executeQuery();
                   if(rs1.next())
                   {
                       out.println("<input type='hidden' name='tt2' id='tt2' value='"+Integer.parseInt(sname1)+"' />");
                       out.println("<div class='form-group'>"+"<div class='col-md-2'><label>Suggestion ID:</label></div><div class='col-md-10'><input type='text' class='form-control' id='name' name='name' placeholder='Student Name' disabled required value='"+rs1.getString("suggestion_id")+"'/>" +"</div></div><br><br><br>" );
                       out.println("<div class='form-group'>"+"<div class='col-md-2'><label>Username:</label></div><div class='col-md-10'><input type='text' class='form-control' id='name' name='name' placeholder='Student ID' disabled required value='"+rs1.getString("username")+"'/>" +"</div></div><br><br><br>" );
                       out.println("<div class='form-group'>"+"<div class='col-md-2'><label>Subject:</label></div><div class='col-md-10'><input type='text' class='form-control' id='aaaaa' name='name' placeholder='Issue' disabled required value='"+rs1.getString("subject")+"'/>" +"</div></div><br><br><br>" );
                       out.println("<div class='form-group'>"+"<div class='col-md-2'><label>Suggestion:</label></div><div class='col-md-10'><input type='text' class='form-control' id='name' name='name' placeholder='Status' disabled required value='"+rs1.getString("suggestion") +"'/>" +"</div></div><br><br><br>" );
                       out.println("<div class='form-group'>"+"<div class='col-md-2'><label>Current Status:</label></div><div class='col-md-10'><input type='text' class='form-control' id='aaaaa' name='name' placeholder='Reply' disabled required value='"+rs1.getString("status")+"'/>" +"</div></div><br><br><br>" );
                       out.println("<div class='form-check'>"+"<div class='col-md-2'><label>Update Status:</label></div><div class='col-md-2'><input type='radio' name='r2'class='form-check-input' value='Accepted'/>"+"<label>"+"Accepted"+"</label>"+"</div></div>");
                       out.println("<div class='form-check'>"+"<div class='col-md-2'><input type='radio' name='r2' class='form-check-input' value='Rejected'/>"+"<label>"+"Rejected"+"</label>"+"</div></div><br><br>");
                       out.println("<div class='form-group'>"+"<div class='col-md-2'><label>Reply or Solution:</label></div><div class='col-md-10'><input type='text' class='form-control'name='ta2' id='name' name='name' placeholder='Student Name' required value='"+rs1.getString("reply")+"'/>" +"</div></div><br><br><br>" );
                       
                       out.println("<input type='submit' value='Update' name='bupdate1' class='btn btn-primary pull-right'/>");
                       
                   }
               }
              
                if(request.getParameter("bupdate1")!=null)
               {
                   String sname1 = request.getParameter("tt2");
                   String rv1 = request.getParameter("r2");
                   //out.println(rv1);
                   String rp1 = request.getParameter("ta2");
                   //out.println(rp1);
                   String s1 = "update tbsuggestions set status=?,reply=? where suggestion_id=?";
                   myConnection obj2 = new myConnection();
                   PreparedStatement pst1 = obj2.db.prepareStatement(s1);
                   pst1.setString(1,rv1);
                   pst1.setString(2,rp1);
                   pst1.setInt(3,Integer.parseInt(sname1));
                   pst1.executeUpdate();
                   
                   %>
                    
                   <script>
//                        alert("wrong match");
swal({
  title: "Cool!!",
  text: "Suggestion Updated Successfully!",
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
