<%-- 
    Document   : delete_log_message
    Created on : 18/05/2019, 10:45:38 PM
    Author     : bella
    Comments: delete selected log detail from database
--%>

<%@page import="uts.isd.model.dao.*"%>
<%@page import="uts.isd.controller.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" import="java.util.*" import="uts.isd.model.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ include file="navBar.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <title>Welcome Page</title>
    </head>

    
    <%
        String AID = request.getParameter("AID");
    %>
    <body onload="startTime()">
        <div class="container-fluid">
            <div class="row justify-content-md-center">
                <div class="form-group">
                   <h1 class="h1 mb-1 font-weight-normal">Delete log ID is <%=AID%></h1> 
                    <%    
                        DBManager manager = (DBManager)session.getAttribute("manager");
                        manager.deleteLog(AID);
                    %>

                    <button class="btn btn-sm btn-success btn-block" type="button" onclick="location.href = 'profile.jsp'" > Profile </button>

                    <button class="btn btn-sm btn-success btn-block" type="button" onclick="location.href = 'index.jsp'" > Home Page </button>
                </div>               
            </div>
        </div>  
    </body>
</html>


