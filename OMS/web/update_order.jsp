<%-- 
    Document   : update_order
    Created on : 18/05/2019, 10:03:21 PM
    Author     : lam
    Comments: let user upate specific order
--%>
<%@page import="uts.isd.model.Order"%>
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
            String OID = request.getParameter("OID");
            String price = request.getParameter("price");
            String totalPrice = request.getParameter("totalPrice");
            String oQuantity = request.getParameter("quantity");
            String movieName = request.getParameter("movieName");
        %>
        <br>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12"></div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <form action="update_order_message.jsp" method="post">
                        <div class="form-group">
                            <h1 class="h3 mb-3 font-weight-normal"><b>The Order ID is <%=OID%></b></h1>
                            <label for="newQuantity">Change Quantity To</label>
                            <input class="form-control" size="23" type="text" name="newQuantity" required autofocus>
                        </div>
                        <div class="form-group">
                            <label for="detail">Comments</label>
                            <input class="form-control" size="23" type="text" name="detail" required autofocus>
                        </div>  
                        <div class="form-group">
                            <input type="hidden" name="OID" value="<%=OID%>">
                            <input type="hidden" name="price" value="<%=price%>">
                            <input type="hidden" name="totalPrice" value="<%=totalPrice%>">
                            <input type="hidden" name="movieName" value="<%=movieName%>">
                            <input type="hidden" name="oQuantity" value="<%=oQuantity%>">
                            <input class="btn btn-lg btn-success btn-block" type="submit" value="Update">
                            <button class="btn btn-lg btn-primary btn-block" type="button" onclick="location.href = 'order.jsp'" > Order List </button>
                        </div>                              
                    </form>
                </div>
            </div>
        </div>                            
    </body>
</html>