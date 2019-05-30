<%-- 
    Document   : logoutSuccessfully
    Created on : 13/04/2019, 12:23:38 AM
    Author     : bella
    Comments: let user log out from the system
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="uts.isd.model.Log"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@page import="uts.isd.model.dao.*"%>
<%@page import="uts.isd.controller.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <title>Logout</title>
    </head>
     
    <body onload="startTime()">
        
        <%           
            SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat sdf2 = new SimpleDateFormat("HH:mm:ss");
            String outDate = sdf1.format(new Date());
            String outTime = sdf2.format(new Date());
            
            Log log = (Log)session.getAttribute("log");
            String AID = log.getAID();
           
            String logoutDate = "" + outDate;
            String logoutTime = "" + outTime;
            
            DBManager manager = (DBManager)session.getAttribute("manager");
            manager.updateLog(AID,logoutDate, logoutTime);
            session.invalidate();
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>