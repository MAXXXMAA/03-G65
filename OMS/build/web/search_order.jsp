<%-- 
    Document   : search_order
    Created on : 18/05/2019, 11:05:29 PM
    Author     : lam
    Comments: let user search their order
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
                <form action="search_order_message.jsp" method="post">
                    <div class="form-group">
                        <label for="inputFullname">Please Enter the Order ID You Want to Search...</label>
                        <input type="text" class="form-control" id="OID" name="OID" required autofocus>
                    </div>
                    <div class="form-group">
                        <label for="inputFullname">Please Select the Date You Want to Search...</label>
                        <input type="date" class="form-control" id="date" name="date" required autofocus>
                    </div>
                    <button type="submit" class="btn btn-lg btn-primary btn-block">Search</button>                    
                </form>
                </div>
            </div>
        </div>                    
    </body>
</html>