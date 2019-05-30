<%-- 
    Document   : cancel_order
    Created on : 18/05/2019, 10:18:51 PM
    Author     : lam
    Comments: cancel selected order from the database
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            String quantity = request.getParameter("quantity");
            String movieName = request.getParameter("movieName");
        %>
        <br>
        <div class="container-fluid">
            <div class="row justify-content-md-center">
                <div class="form-group">
                   <h1 class="h1 mb-1 font-weight-normal">The Order ID is <%=OID%></h1>     
                    <form action="cancel_order_message.jsp" method="post">
                        <table>
                            <tr>
                                <td>
                                    <input type="hidden" name="OID" value="<%=OID%>">
                                    <input type="hidden" name="quantity" value="<%=quantity%>">
                                    <input type="hidden" name="movieName" value="<%=movieName%>">
                                    <input class="btn btn-sm btn-danger btn-block" type="submit" value="Delete">  
                                    &emsp;
                                    <button class="btn btn-sm btn-success btn-block" type="button" onclick="location.href = 'order.jsp'" > Back to Order List </button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>               
            </div>
        </div>                          
    </body>
</html>