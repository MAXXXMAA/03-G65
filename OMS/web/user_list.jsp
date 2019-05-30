<%-- 
    Document   : update_order_message.jsp
    Created on : 18/05/2019, 10:32:09 PM
    Author     : zack
    Comments: list all the user details from the database
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
            DBManager manager = (DBManager)session.getAttribute("manager");
            manager.listAllUsers();
            List<User> user = manager.listAllUsers();
        %>
        <table class="table">
            <tr>
                <td>
                    <button class="btn btn-sm btn-primary btn-block" type="button" onclick="location.href = 'add_user.jsp'" > <b>Add user</b> </button>                    
                </td>
                <td>
                    <button class="btn btn-sm btn-primary btn-block" type="button" onclick="location.href = 'search_user.jsp'" > <b> Search user </b></button>
                </td>
            </tr>
        </table>
        
        <table class="table table-striped">
            <tr>
                <th>Customer ID</th>
                <th>Customer Full Name</th>
                <th>Account Password</th>
                <th>Account Email</th>
                <th>Customer Phone number</th>
                <th>Account State </th>
                <th>Action </th>

            </tr>
            <%for(int i = 0; i < user.size(); i++) {
                
            %>
                <tr>
                    <td><%=user.get(i).getuID()%></td>
                    <td><%=user.get(i).getName()%></td>
                    <td><%=user.get(i).getPassword()%></td>
                    <td><%=user.get(i).getEmail()%></td>
                    <td><%=user.get(i).getPhone()%></td>
                    <td><%=user.get(i).getActivate()%></td>
                    

                    <td>
                       <a href="update_user.jsp?id=<%=user.get(i).getuID()%>"><button class="btn btn-sm btn-primary btn-block" type="button">Update</button></a>
                       &emsp;
                        <a href="delete_user.jsp?id=<%=user.get(i).getuID()%>"><button class="btn btn-sm btn-danger btn-block" type="button">Delete</button></a>
                    </td>
                </tr>
            <%}%>
        </table>

    </body>
</html>
