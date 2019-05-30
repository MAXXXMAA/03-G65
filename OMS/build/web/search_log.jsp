<%-- 
    Document   : search_log
    Created on : 18/05/2019, 11:05:29 PM
    Author     : bella
    Comments: search specific log detail by date and id
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="navBar.jsp"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/script.js"></script>
        <title>Login Page</title>
    </head>
    <body onload="startTime()">
        <%
            String ID = request.getParameter("custId");
        %>
    <center><h5>Customer: <%=ID%> </h5></center>
        <br>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12"></div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                <form action="search_log_message.jsp" method="post">    
                    <div class="form-group">
                        <input type="hidden" id="custId" name="custId" value="<%=ID%>">
                        <label for="inputFullname">Please Select the Date You Want to Search...</label>
                        <input type="date" class="form-control" id="loginDate" name="loginDate" required autofocus>  
                    </div>
                    <input class="btn btn-lg btn-primary btn-block" type="submit" value="Search"> 
                </form>
                </div>
            </div>
        </div>           
    </body>
</html>