<%-- 
    Document   : update_order_message.jsp
    Created on : 18/05/2019, 10:32:09 PM
    Author     : zack
    Comments: update user details from the database
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
            String ID = request.getParameter("id");
        %>
        <h1>The User ID is <%=ID%></h1> 
        <br>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12"></div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <form action="update_user_message.jsp" method="post">
                        <div class="form-group">
                            <h1 class="h3 mb-3 font-weight-normal"><b>Update this User</b></h1>
                            <label for="fullname">Change the User Name</label>
                            <input class="form-control" size="23" type="text" name="fullname" required autofocus>
                        </div>        
                        <div class="form-group">
                            <label for="password">Change the Account Password</label>
                            <input class="form-control" size="23" type="password" name="password" required autofocus>
                        </div> 
                        <div class="form-group">
                            <label for="email">Change the Account Email</label>
                            <input class="form-control" size="23" type="text" name="email" required autofocus>
                        </div>
                        <div class="form-group">
                            <label for="phone">Change the Account Phone Number</label>
                            <input class="form-control" size="23" type="text" name="phone" required autofocus>
                        </div>  
                        <div class="form-group">
                            <label for="activate">Change Account Status</label>
                            <select  name="activate">
                                <option value="activate">Activate</option>
                                <option value="deactivate">Deactivate</option>
                            </select>
                        </div>  
                        <input type="hidden" name="id" value="<%=ID%>">
                        <input class="btn btn-lg btn-primary btn-block" type="submit" value="Update">                         
                    </form>               
                </div>
            </div>
        </div>        
    </body>
</html>