<%-- 
    Document   : add_user_message
    Created on : 19/05/2019, 11:17:56 PM
    Author     : difeima
    Comments: create a new user into database 
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
        <link rel="stylesheet" href="css/demo.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <title>Welcome Page</title>
    </head>

    
    <%
        String name = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String activate = request.getParameter("activate");
        int key = (new Random()).nextInt(999999);
        String ID = "" + key;

    %>
    <body onload="startTime()">
        <div class="container-fluid">
            <div class="row justify-content-md-center">
                <div class="form-group">
                   <h1 class="h1 mb-1 font-weight-normal">You have added new customer to our database.</h1>
                </div>
            </div>
        </div>
        
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-8 col-xs-12"></div>
                <div class="col-md-4 col-sm-8 col-xs-12">
                    <div class="form-group">
                        <p>User ID: <%=ID%></p>
                    </div>
                    <div class="form-group">
                        <p>User Name: <%=name%></p>
                    </div>
                    <div class="form-group">
                        <p>User Password: <%=password%></p>
                    </div>
                    <div class="form-group">
                        <p>User Email: <%=email%></p>
                    </div>
                    <div class="form-group">
                        <p>User Phone Number: <%=phone%></p>
                    </div>
        <%    
            DBManager manager = (DBManager)session.getAttribute("manager");
            User user = new User(ID,name,phone,password,email,activate);
            manager.addNewUser(ID, name, email, password, phone, activate);
            session.setAttribute("user",user);
        %>
        <button class="btn btn-lg btn-primary btn-block" type="button" onclick="location.href = 'user_list.jsp'" > User list </button>
    </body>
</html>
