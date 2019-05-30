<%-- 
    Document   : cancel_order_message
    Created on : 18/05/2019, 10:45:38 PM
    Author     : lam
    Comments: cancel selected order from the database
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
        String OID = request.getParameter("OID");
        String quantity = request.getParameter("quantity");
        String movieName = request.getParameter("movieName");
    %>
    <body onload="startTime()">
        <div class="container-fluid">
            <div class="row justify-content-md-center">
                <div class="form-group">        
                    <h1 class="h1 mb-1 font-weight-normal">Cancel Order ID is: <%=OID%></h1> 
                    <%    
                        DBManager manager = (DBManager)session.getAttribute("manager");
                        manager.deleteOrder(OID);
                        Movie movie = manager.findMovieByMovieName(movieName);
                        String stock = movie.getStock();
                        manager.increaseMovie(movieName,quantity,stock);
                    %>

                    <button class="btn btn-sm btn-success btn-block" type="button" onclick="location.href = 'order.jsp'" > Order </button>

                    <button class="btn btn-sm btn-primary btn-block" type="button" onclick="location.href = 'index.jsp'" > Home Page </button>
                </div>               
            </div>
        </div>  
    </body>
</html>