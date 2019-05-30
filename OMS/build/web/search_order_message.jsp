<%-- 
    Document   : search_order_message
    Created on : 18/05/2019, 11:07:19 PM
    Author     : lam
    Comments: search order by id and date and get result from the database
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
    <%@ include file="navBar.jsp" %>
    <%
        String OID = request.getParameter("OID");
    %>
    <body onload="startTime()">
        <%    
            DBManager manager = (DBManager)session.getAttribute("manager");
            Order order = manager.findOrder(OID);
        %>
       <%if(order !=null) {%>

        <table class="table">
            <tr>
                <td>
                    <form action="search_order.jsp" method="post">
                        <input class="btn btn-sm btn-primary btn-block" type="submit" value="Search">
                    </form>      
                </td>
            </tr>
        </table>        
        <table class="table table-striped">
                <tr><h2>Order</h2></tr>
                <tr>
                    <th>Order ID</th>
                    <th>Movie Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total Price</th>
                    <th>Detail</th>
                    <th>Date</th> 
                    <th>Status</th>
                                       
                </tr>

                <tr>
                    <td><%=order.getOID()%></td>
                    <td name="movieName"><%=order.getMovieName()%></td>
                    <td><%=order.getQuantity()%></td>
                    <td><%=order.getPrice()%></td>
                    <td><%=order.getTotalPrice()%></td>
                    <td><%=order.getDetail()%></td>
                    <td><%=order.getStatus()%></td>
                    <td><%=order.getDate()%></td>
        </table>
        <%}else {%>
            <div class='p-3 mb-2 bg-warning text-white'>No Order Details Match...</div>
        <%}%>
        <p class="text-warning">click <a href="order.jsp">here</a > back to order page.</p>
        
    </body>
</html>