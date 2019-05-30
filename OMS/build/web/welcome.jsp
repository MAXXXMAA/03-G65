<%-- 
    Document   : welcome
    Created on : 19/05/2019, 3:39:13 PM
    Author     : winne
    Comments: after register, provide successfull info to user and write it to database
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
        <title>Welcome Page</title>
    </head>

    
    <%
        String name = request.getParameter("inputFullname");
        String email = request.getParameter("inputEmail");
        String password = request.getParameter("confirmPassword");
        String phone = request.getParameter("phone");
        String activate = "activate";
        int key = (new Random()).nextInt(999999);
        String ID = "" + key;
        DBManager manager = (DBManager)session.getAttribute("manager");
        manager.addNewUser(ID, name, email, password, phone, activate);
    %>
    <body onload="startTime()">
        <br>
        <div class="container-fluid">
            <div class="row justify-content-md-center">
                <div class="form-group">
                   <h1 class="h1 mb-1 font-weight-normal">Welcome to be one of us!</h1>
                </div>
            </div>
        </div>
        
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-8 col-xs-12"></div>
                <div class="col-md-4 col-sm-8 col-xs-12">
                    <div class="form-group">
                        <p></p>
                    </div>
                    <div class="form-group">
                        <p>Hello, <%=name%> !</p>
                    </div>
                    <div class="form-group">
                        <p>Please login next time with your email address! <%=email%></p>
                    </div>
                    <div class="form-group">
                        <p>Description......</p>
                    </div>

        <button class="btn btn-lg btn-warning btn-block" type="button" onclick="location.href = 'login.jsp'" > Login Your Account </button>     
                </div>               
            </div>
        </div>                   

    </body>
</html>

