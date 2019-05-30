<%-- 
    Document   : update_order_message.jsp
    Created on : 18/05/2019, 10:32:09 PM
    Author     : lam
    Comments: let user update specific order
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
        String OID = request.getParameter("OID");
        String movieName = request.getParameter("movieName");
        String detail = request.getParameter("detail");       
        String newQuantity = request.getParameter("newQuantity");      
        double q = Double.parseDouble(newQuantity);
        String price = request.getParameter("price");
        double p = Double.parseDouble(price);
        double tp = q * p;
        int i = (int) tp;
        String totalPrice = String.valueOf(i);
        String oQuantity = request.getParameter("oQuantity");
        double oQ = Double.parseDouble(oQuantity);
        
    %>
    <body onload="startTime()">
        <br>
        <div class="container-fluid">
            <div class="row justify-content-md-center">
                <div class="form-group">
                    <h2 class="h2 mb-1 font-weight-normal"><b>Successful Update ID: <span style="color:red"></span><%=OID%></b></h2>
                    <h5 class="h5 mb-1 font-weight-normal">Updated quantity is: <span style="color:red"></span><%=newQuantity%></h5>
                    <h5 class="h5 mb-1 font-weight-normal">Updated comments is <span style="color:red"></span><%=detail%></h5>
                </div>
            </div>
        </div>
        <%    
            DBManager manager = (DBManager)session.getAttribute("manager");
            manager.updateOrder(OID,newQuantity,totalPrice,detail);
            
            Movie movie = manager.findMovieByMovieName(movieName);
            String stock = movie.getStock();
                     
            if(oQ>q){
                double ns = oQ - q;
                int newS = (int) ns;
                String newStock = String.valueOf(newS);
                manager.increaseMovie(movieName,newStock,stock);
            }
            else if(q>oQ){
                double ns = q - oQ;
                int newS = (int) ns;
                String newStock = String.valueOf(newS);
                manager.reduceMovie(movieName,newStock,stock);
            }
        %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-8 col-xs-12"></div>
                <div class="col-md-4 col-sm-8 col-xs-12">
                    <button class="btn btn-lg btn-success btn-block" type="button" onclick="location.href = 'order.jsp'" > Order List </button>

                    <button class="btn btn-lg btn-primary btn-block" type="button" onclick="location.href = 'main.jsp'" > Home Page </button>
                </div>               
            </div>
        </div>   
    </body>
</html>