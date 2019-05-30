<%-- 
    Document   : update_order_message.jsp
    Created on : 18/05/2019, 10:32:09 PM
    Author     : zack
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
        String ID = request.getParameter("id");
        String name = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String activate = request.getParameter("activate");

    %>
    <body onload="startTime()">
        <br>
        <div class="container-fluid">
            <div class="row justify-content-md-center">
                <div class="form-group">
                    <h1 class="h1 mb-1 font-weight-normal">Successful Update ID: <span style="color:red"></span><%=ID%></h1>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-8 col-xs-12"></div>
                <div class="col-md-4 col-sm-8 col-xs-12">
                    <div class="form-group">
                        <p>Updated Account ID: <%=ID%></p>
                    </div>                    
                    <div class="form-group">
                        <p>Updated Account Name: <%=name%></p>
                    </div>
                    <div class="form-group">
                        <p>Updated Account Password: <%=password%></p>
                    </div>
                    <div class="form-group">
                        <p>Updated Account Email: <%=email%></p>
                    </div>    
                    <div class="form-group">
                        <p>Updated Account Phone: <%=phone%></p>
                    </div>  
                    <div class="form-group">
                        <p>Updated Account Status: <%=activate%></p>
                    </div> 
        
        <%    
            DBManager manager = (DBManager)session.getAttribute("manager");
            manager.updateAdminUser(ID, name, email, password, phone, activate);
        %>

        <button class="btn btn-lg btn-success btn-block" type="button" onclick="location.href = 'user_list.jsp'" > User List </button>
                </div>               
            </div>
        </div>                      
    </body>
</html>
