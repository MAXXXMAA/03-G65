<%-- 
    Document   : update_account_reuslt
    Created on : 19/05/2019, 8:08:37 PM
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
        <link rel="stylesheet" href="css/demo.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <title>Welcome Page</title>
    </head>

    
    <%
        String ID = request.getParameter("id");
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
    %>
    <body onload="startTime()">
        <br>
        <%    
            DBManager manager = (DBManager)session.getAttribute("manager");
            manager.updateUser(ID, fullname, email, password, phone);
        %>
        <h5>   You have update your registration details successfully!</h5>
        <p>   Click <a href="index.jsp">here </a>to back to home page..</p>

    </body>
</html>

