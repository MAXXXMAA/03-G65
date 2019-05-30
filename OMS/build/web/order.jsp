<%-- 
    Document   : order
    Created on : 13/04/2019, 1:36:30 AM
    Author     : lam
    Comments: List all the orders from the database
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            User user = (User)session.getAttribute("userLogin"); 
            String UID = user.getuID();
            DBManager manager = (DBManager)session.getAttribute("manager");
            manager.listAllOrders(UID);
            List<Order> order = manager.listAllOrders(UID);
          %>
        <table class="table">
            <tr>
                <td>
                    <form action="search_order.jsp" method="post">
                        <input type="hidden" name="UID" value="<%=UID%>">
                        <input class="btn btn-sm btn-primary btn-block" type="submit" value="Search">
                    </form>        
                </td>
            </tr>
        </table>          
    <table class="table table-striped">
             <tr><h2>Order</h2></tr>
                <tr>

                </tr>
                <tr>
                    <th>Order ID</th>
                    <th>Movie Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total Price</th>
                    <th>Detail</th>
                    <th>Date</th> 
                    <th>Status</th>
                    <th>Action</th>
                                       
                </tr>
                
            <%for(int i = 0; i < order.size(); i++) {
                
            %>
                <tr>
                    <td><%=order.get(i).getOID()%></td>
                    <td name="movieName"><%=order.get(i).getMovieName()%></td>
                    <td><%=order.get(i).getQuantity()%></td>
                    <td><%=order.get(i).getPrice()%></td>
                    <td><%=order.get(i).getTotalPrice()%></td>
                    <td><%=order.get(i).getDetail()%></td>
                    <td><%=order.get(i).getStatus()%></td>
                    <td><%=order.get(i).getDate()%></td>
                    <%
                        boolean status = true;
                        status = manager.checkOrderStatus(order.get(i).getOID());
                        if (status) {
                    %>
                    <td>
                        <form action="update_order.jsp?OID=<%=order.get(i).getOID()%>" method="post">
                        <input type="hidden" name="price" value="<%=order.get(i).getPrice()%>">
                        <input type="hidden" name="quantity" value="<%=order.get(i).getQuantity()%>">
                        <input type="hidden" name="totalPrice" value="<%=order.get(i).getTotalPrice()%>">
                        <input type="hidden" name="movieName" value="<%=order.get(i).getMovieName()%>">
                        <input type="hidden" name="UID" value="<%=UID%>">
                       <input class="btn btn-sm btn-success btn-block" type="submit" value="Update">
                       <br>
                       </form>
                       <form action="cancel_order.jsp?OID=<%=order.get(i).getOID()%>" method="post">
                        <input type="hidden" name="price" value="<%=order.get(i).getPrice()%>">
                        <input type="hidden" name="quantity" value="<%=order.get(i).getQuantity()%>">
                        <input type="hidden" name="totalPrice" value="<%=order.get(i).getTotalPrice()%>">
                        <input type="hidden" name="movieName" value="<%=order.get(i).getMovieName()%>">
                        <input type="hidden" name="UID" value="<%=UID%>">
                       <input class="btn btn-sm btn-danger btn-block" type="submit" value="Delete">
                       </form>                      
                    </td>
                    <%} else {%>
                    <td>
                        <div style="color:red;"><b>Cancelled Order</b></div>
                    </td>
                    <%}%>
                </tr>
            <%}%>
        </table>          
    </body>
</html>