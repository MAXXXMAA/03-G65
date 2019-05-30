<%-- 
    Document   : orderSuccessfully
    Created on : 13/04/2019, 1:36:30 AM
    Author     : lam
    Comments: Let user to order movie and write into database
--%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
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
    <body>     
     <% 
        User user = (User)session.getAttribute("userLogin");  
        String movieName = request.getParameter("movieName");
        String quantity = request.getParameter("quantity");      
        double q = Double.parseDouble(quantity);
        String price = request.getParameter("price");
        double p = Double.parseDouble(price);
        double tp = q * p;
        int i = (int) tp;
        String totalPrice = String.valueOf(i);        
        String status = "confirmed";
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
        String date = sdf1.format(new Date());
        
        String detail = "Remarks";
        int key = (new Random()).nextInt(999999);
        String OID = "" + key;
        String oldStock = request.getParameter("stock");

    %>
    

    <%if (session.getAttribute("userLogin") == null || session.getAttribute("userLogin").equals("")){%>
    <p>Please <a href="login.jsp">login</a > to order the movie.</p>
    <%}else{%>
        <%    
            String UID = user.getuID();
            DBManager manager = (DBManager)session.getAttribute("manager");
            manager.addOrder(OID,quantity,price,totalPrice,detail,status,date,movieName,UID);
            manager.reduceMovie(movieName,quantity,oldStock);
    %>
    <p>Successfully order, click <a href="order.jsp">here</a > to see the order list!</p>
    <%}%>

    </body>    
</html>