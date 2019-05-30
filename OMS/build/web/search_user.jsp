<%-- 
    Document   : search_user
    Created on : 2019-5-19, 20:04:44
    Author     : zack
    Comments: search user by name and phone number
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
        <br>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12"></div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <form action="search_user_message.jsp" method="post">
                        <div class="form-group">
                            <h4 class="h3 mb-3 font-weight-normal">Search Customer</h4>
                            <label for="name">The name want to search</label>
                            <input type="text" class="form-control" id="inputFullname" name="name" required autofocus>
                        </div>
                        <div class="form-group">
                            <label for="phone">The phone number of the customer</label>
                            <input type="text" class="form-control" id="inputFullname" name="phone" required autofocus>
                        </div>    
                        <button type="submit" class="btn btn-lg btn-primary btn-block">Search</button>
                    </form>      
                </div>
            </div>
        </div>                    
    </body>
</html>