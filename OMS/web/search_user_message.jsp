<%-- 
    Document   : search_user_message
    Created on : 2019-5-19, 20:05:07
    Author     : zack
    Comments: search user by name and phone number
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
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
    %>
    <body onload="startTime()">
        <%    
            DBManager manager = (DBManager)session.getAttribute("manager");

            User user = manager.adminFindUser(name, phone);

        %>
        <%if(user !=null){%>
        <table class="table table-striped">
            <tr ><h3>Search Details</h3></tr>
            <tr>
                <td><b>Customer ID: </b></td>
                <td><%=user.getuID()%></td>
            </tr>
            <tr>
                <td><b>Customer Name: </b></td>
                <td><%=user.getName()%></td>
            </tr>
            <tr>
                <td><b>Account Password: </b></td>
                <td><%=user.getPassword()%></td>
            </tr>
            <tr>
                <td><b>Customer Email: </b></td>
                <td><%=user.getEmail()%></td>
            </tr>
            <tr>
                <td><b>Customer Phone: </b></td>
                <td><%=user.getPhone()%></td>
            </tr> 
            <tr>
                <td><b>Account Status: </b></td>
                <td><%=user.getActivate()%></td>
            </tr>  
        </table>
        <%}else{%>
            <div class='p-3 mb-2 bg-warning text-white'>No Customer Details Match...</div>
        <%}%>
        <button class="btn btn-success" type="button" onclick="location.href = 'search_user.jsp'" > Search User </button>        
    </body>
</html>