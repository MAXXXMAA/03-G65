<%-- 
    Document   : delete_account
    Created on : 19/05/2019, 7:52:30 PM
    Author     : winne
    Comments: cancel user account from database
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
            DBManager manager = (DBManager)session.getAttribute("manager");
            manager.deleteUser(ID);
            manager.deleteUserOrder(ID);
            
        %>
        <h5>   You have canceled your registration successfully!</h5>
        <p>   Click <a href="logoutSuccessfully.jsp">here </a >to back to home page..</p >
    </body>
</html>