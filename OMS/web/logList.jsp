<%-- 
    Document   : logList
    Created on : 18/05/2019, 10:45:38 PM
    Author     : bella
    Comments: List all log details from the database
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
            String ID = request.getParameter("custId");
            DBManager manager = (DBManager)session.getAttribute("manager");
            manager.listAllLogs(ID);     
            List<Log> log = manager.listAllLogs(ID);
        %>
        <h1 class="h3 mb-3 font-weight-normal">Log List</h1>
        <table class="table">
            <tr>
                <td>
                    <form action="search_log.jsp" method="post">
                        <input type="hidden" id="custId" name="custId" value="<%=ID%>">
                        <input class="btn btn-sm btn-primary btn-block" type="submit" value="Search"> 
                    </form>    
                </td>
            </tr>
        </table>     
    <table class="table table-striped">
        <tr>
            <th>Log ID</th>
            <th>User ID</th>
            <th>login Date</th>
            <th>login Time</th>
            <th>logout Date</th>
            <th>logout Time</th>     
            <th>Action</th> 
        </tr>
                
        <%for(int i = 0; i < log.size(); i++) {%>
        <tr>
            <td><%=log.get(i).getAID()%></td>
            <td><%=log.get(i).getUID()%></td>
            <td><%=log.get(i).getLoginDate()%></td>
            <td><%=log.get(i).getLoginTime()%></td>
            <td><%=log.get(i).getLogoutDate()%></td>
            <td><%=log.get(i).getLogoutTime()%></td>
            <td>
                <a href="delete_log.jsp?AID=<%=log.get(i).getAID()%>"><button class="btn btn-sm btn-danger btn-block">Delete</button></a>
            </td>
        </tr>
        <%}%>
    </table>          
    </body>
</html>




