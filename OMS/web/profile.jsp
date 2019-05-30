<%-- 
    Document   : profile
    Created on : 19/05/2019, 7:16:13 PM
    Author     : winne
    Comments: list login user details
--%>
<%@page import="uts.isd.model.dao.*"%>
<%@page import="uts.isd.controller.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.*"%>
<!DOCTYPE html>
<html lang="en">
    <%@ include file="navBar.jsp" %>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <br>
        <%
            User user = (User)session.getAttribute("userLogin"); 
            String ID = user.getuID(); 
            DBManager manager = (DBManager)session.getAttribute("manager");
            User customer = manager.findUser(ID);
        %>
        <center><h4 id="p1" class="bg-danger text-white" ></h4></center>
        <table class="table table-striped">
            <tr><td><h3>Personal Details</h3></td>
            <td>
                <form action="logList.jsp" method="post">
                    <input type="hidden" id="custId" name="custId" value="<%=ID%>">
                    <input class="btn btn-success" type="submit" value="Log List"> 
                </form>                    
            </td>
            </tr>
            <tr>
                <td><b>Your ID: </b></td>
                <td><%=customer.getuID()%></td>
            </tr>
            <tr>
                <td><b>Your Full Name: </b></td>
                <td><%=customer.getName()%></td>
            </tr>
            <tr>
                <td><b>Your Regist E-mail:</b> </td>
                <td><%=customer.getEmail()%></td>
            </tr>
            <tr>
                <td><b>Your Account Password:</b> </td>
                <td><%=customer.getPassword()%></td>
            </tr>       
            <tr>
                <td><b>Your Regist Phone Number: </b></td>
                <td><%=customer.getPhone()%></td>
            </tr> 
            <tr>               
                <td>
                    <form action="update_account.jsp" method="post">
                         <input type="hidden" id="custId" name="custId" value="<%=ID%>">
                         <input class="btn btn-success" type="submit" value="Update"> 
                    </form>                    
                </td>
                <td>            
                    <form action="delete_account.jsp" method="post">
                         <input type="hidden" id="custId" name="custId" value="<%=ID%>">
                         <input class="btn btn-danger" type="submit" value="Delete Account"> 
                    </form> 
                </td>
            </tr>            
        </table>

    </body>
</html>
