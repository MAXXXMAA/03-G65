<%-- 
    Document   : search_message
    Created on : 18/05/2019, 11:07:19 PM
    Author     : bella
    Comments: search specific log detail by date and id
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

    <body onload="startTime()">
        <%  
            String ID = request.getParameter("custId");
            String loginDate = request.getParameter("loginDate");
            DBManager manager = (DBManager)session.getAttribute("manager");    
            manager.listAllLogsByLoginDate(loginDate,ID);     
            List<Log> log1 = manager.listAllLogsByLoginDate(loginDate,ID);
            Log log = manager.findLog(loginDate);
        %>
        <%if(log != null) {%>
        <h5>Customer: <%=ID%>. </h5> 
            <table class="table table-striped">
             <tr><h2>Log List</h2></tr>
                <tr>
                    <th>Log ID</th>
                    <th>User ID</th>
                    <th>login Date</th>
                    <th>login Time</th>
                    <th>logout Date</th>
                    <th>logout Time</th>
                    <th>Action</th>            
                </tr>
                
            <%for(int i = 0; i < log1.size(); i++) {
                
            %>
                <tr>
                    <td><%=log1.get(i).getAID()%></td>
                    <td><%=log1.get(i).getUID()%></td>
                    <td><%=log1.get(i).getLoginDate()%></td>
                    <td><%=log1.get(i).getLoginTime()%></td>
                    <td><%=log1.get(i).getLogoutDate()%></td>
                    <td><%=log1.get(i).getLogoutTime()%></td>
                    <td>
                        <a href="delete_log.jsp?AID=<%=log1.get(i).getAID()%>"><button class="btn btn-sm btn-danger btn-block">Delete</button></a>
                    </td>
                </tr>
            <%}%>
        </table>
        
        <p><a class="nav-link" href="profile.jsp">profile</a></p>
        <%}else{%>
            <div class='p-3 mb-2 bg-warning text-white'>No Log Detail Match...</div>
            <a href="profile.jsp"><button class="btn btn-sm btn-danger btn-block">Back to Profile</button></a>
        <%}%>
    </body>
</html>
