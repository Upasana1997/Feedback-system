<%-- 
    Document   : test
    Created on : Apr 24, 2018, 11:10:08 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
        
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script>
            $('#myForm').on('submit', function(e){
  $('#myModal').modal('show');
  e.preventDefault();
});
        </script>
    </head>
    <body>
        <H1>Using Multiple Forms</H1>
        <% 
            if(request.getParameter("submit") != null) {
        %>
            You clicked 
            <%= request.getParameter("submit") %>
        <%
            }
        %>

        <FORM NAME="form1" METHOD="POST">
            <INPUT TYPE="SUBMIT" NAME="submit" VALUE="Button 1">
        </FORM>

        <FORM NAME="form2" METHOD="POST">
            <INPUT TYPE="SUBMIT" NAME="submit" VALUE="Button 2">
        </FORM>

        <FORM NAME="form3" METHOD="POST">
            <INPUT TYPE="SUBMIT" NAME="submit" VALUE="Button 3">
        </FORM>
        
        
        
        <form class="form-inline" onsubmit="openModal()" id="myForm">
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

<div class="modal fade" tabindex="-1" role="dialog" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <p>One fine body&hellip;</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


    </body>
</html>
