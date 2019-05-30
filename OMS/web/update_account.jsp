<%-- 
    Document   : update_account
    Created on : 19/05/2019, 8:06:04 PM
    Author     : zack
    Comments: update registered user account
--%>
<%@page import="uts.isd.model.dao.*"%>
<%@page import="uts.isd.controller.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" import="java.util.*" import="uts.isd.model.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@ include file="navBar.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/script.js"></script>
        <title>Login Page</title>
    </head>
    <body onload="startTime()">
        <%
            String ID = request.getParameter("custId");
        %>
        <br>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12"></div>
                <div class="col-md-4 col-sm-4 col-xs-12">
        <form action="update_account_result.jsp" method="post">
            <div class="form-group">
                <h1 class="h3 mb-3 font-weight-normal"><b>Update Your Detail!</b></h1>
                <label for="fullname">Change Your Full Name</label>
                <input class="form-control" size="23" type="text" name="fullname" required autofocus>
            </div>
            <div class="form-group">
                <label for="email">Change Your Email Address</label>
                <input class="form-control" size="23" type="text" name="email" required autofocus>      
            </div>
            <div class="form-group">
                <label for="password">Change Your Password</label>
                <input class="form-control" size="23" type="password" name="password" required autofocus>      
            </div>
            <div class="form-group">
                <label for="phone">Change Your Phone Number</label>
                <input class="form-control" size="23" type="text" name="phone" required autofocus>      
            </div>
            <input type="hidden" name="id" value="<%=ID%>">
            <input  class="btn btn-lg btn-primary btn-block" type="submit" value="Update!"> 
        </form>
                </div>
            </div>
        </div>
    </body>
</html>
