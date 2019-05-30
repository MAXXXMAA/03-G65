<%-- 
    Document   : delete_user_message
    Created on : 18/05/2019, 10:45:38 PM
    Author     : zack
    Comments: delete selected user detail from database
--%>
<%@page import="uts.isd.model.dao.*"%>
<%@page import="uts.isd.controller.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" import="java.util.*" import="uts.isd.model.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <title>Welcome Page</title>
    </head>

    
    <%
        String id = request.getParameter("id");
    %>
    <body onload="startTime()">
        
        <%    
            DBManager manager = (DBManager)session.getAttribute("manager");
            manager.deleteUser(id);
            response.sendRedirect("user_list.jsp");   
        %>
    </body>
</html>