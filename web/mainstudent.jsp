<%@page import="classes.myConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<%-- 
    Document   : mainstudent
    Created on : Mar 28, 2018, 2:09:57 AM
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
         <script>
            
//            var x=false;
//            if(window.XMLHttpRequest)
//            {
//                x=new XMLHttpRequest();
//            }
//            else if(window.ActiveXObject)
//            {
//                x=new ActiveXObject("Microsoft.XMLHTTP");
//            }
//                
//            function test(f,d)
//            {
//                if(x)
//                {
//                    var obj=document.getElementById(d);
//                    x.open("GET",f);
//                    
//                    x.onreadystatechange=function()
//                    {
//                        if(x.readyState===4 && x.status===200)
//                        {
//                            obj.innerHTML=x.responseText;
//                        }
//                    };
//                    x.send(null);
//                }
//            }
            </script>
       <!-- <h1>Hello Student!</h1> -->
       <h5> issue category :</h5>
       <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/practice" user="root" password=""></sql:setDataSource>
        
          
       <form name="f1"> 
<!--       <select name="s1" id="id1">-->
<!--            <option selected> Hostel </option>
            <option> Transport </option>
            <option> Infrastructure </option>   
            <option> Others </option>-->
<!--<input type="button" value="Hostel" name="bH" onclick="test('issueform.jsp','d1')"/>
<input type="button" value="Transport" name="bT" onclick="test('issueform1.jsp','d1')"/>
<input type="button" value="Infrastructure" name="bI" onclick="test('issueform2.jsp','d1')"/>
<input type="button" value="Others" name="bO" onclick="test('issueform3.jsp','d1')"/>-->

<input type="submit" value="Hostel" name="bH">
<input type="submit" value="Transport" name="bT">
<input type="submit" value="Infrastructure" name="bI">
<input type="submit" value="Others" name="bO">

<c:if test="${param.bH!=null}">
     <c:set var="get_category" value="Hostel" scope="session"> </c:set>
    <c:redirect url="issueform.jsp"></c:redirect>   
</c:if>   


<c:if test="${param.bT!=null}">
     <c:set var="get_category" value="Transport" scope="session"> </c:set>
    <c:redirect url="issueform.jsp"></c:redirect>   
</c:if>  


<c:if test="${param.bI!=null}">
     <c:set var="get_category" value="Infrastructure" scope="session"> </c:set>
    <c:redirect url="issueform.jsp"></c:redirect>   
</c:if>  


<c:if test="${param.bO!=null}">
     <c:set var="get_category" value="Others" scope="session"> </c:set>
    <c:redirect url="issueform.jsp"></c:redirect>   
</c:if>  

      

  <%
      
      
//                  try
//                {
//                    String q="select * from tbissuecatg";
//                    myConnection obj=new myConnection();
//                    PreparedStatement pst=obj.db.prepareStatement(q);
//                    ResultSet rs;
//                    rs=pst.executeQuery();
//                    while(rs.next())
//                    {
//                        out.println("<option value="+rs.getInt("id")+">"+rs.getInt("id")+"</option>");
//                    }
//                }
//                    catch(Exception e)
//                    {
//                        out.println(e.getMessage());
//                    }
//                    
                    
                    %>
                    
<!--       </select>-->
                    
                    <%
//                        String final_catg="";
//                        int val=0;
//                try
//                {
//                    String q1="select * from tbissuecatg where id=?";
//                    myConnection obj1=new myConnection();
//                    PreparedStatement pst1=obj1.db.prepareStatement(q1);
//                    val= Integer.parseInt(request.getParameter("s1"));
//                    
//                    pst1.setInt(1,val);
//                    ResultSet rs1;
//                    rs1=pst1.executeQuery();
//                    if(rs1.next())
//                    {
//                        final_catg = rs1.getString("ctgname");
//                    }
//                    
//                }
//                    catch(Exception e)
//                    {
//                        out.println(e.getMessage());
//                    }
//                out.println(val);
//            out.println(final_catg);
                
            

                    %>
                    
            <% // if(request.getParameter("b1")!=null)
        //{
          //  int val = Integer.parseInt(request.getParameter("s1"));
          //  out.println(val);
       // }
        %>         
                    
                    
       
<!--       <input type="button" value="Enter Issue" name="b1" onclick="test('issueform.jsp','d1')"/>-->
      
       </form>
           <br><br><br>
           
           
           
        <div id='d1'>
                
            </div>   
          
       
           
           
      
       

    </body>
</html>
