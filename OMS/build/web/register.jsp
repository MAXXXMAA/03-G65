<%-- 
    Document   : register
    Created on : 13/04/2019, 12:59:22 AM
    Author     : winne
    Comments: let user register account of OMS
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@ include file="navBar.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
            <script type="text/javascript">
                function validate() {
                    var inputFullname = document.getElementById('inputFullname').value;
                    var inputEmail = document.getElementById('inputEmail').value;
                    var inputPassword = document.getElementById('inputPassword').value;
                    var emailExp = /^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
                    var confirmPassword = document.getElementById('confirmPassword').value;
                    var phone = document.getElementById('phone').value;

                    if (!inputFullname) {
                        document.getElementById("p1").innerHTML = "Fullname is invalid";
                        return false;
                    } 
                    
                    else if (!inputEmail || !(inputEmail.match(emailExp))) {
                        document.getElementById("p1").innerHTML = "Email is invalid";
                        return false;
                    } 
                    
                    else if (!inputPassword) {
                        document.getElementById("p1").innerHTML = "Password is invalid";
                        return false;
                    } 
                    else if (!confirmPassword) {
                        document.getElementById("p1").innerHTML = "Confirm password is invalid";
                        return false;
                    } 
                    else if (!phone || isNaN(phone)) {
                        document.getElementById("p1").innerHTML = "Phone number is invalid";
                        return false;
                    }                     
                }
            </script>
    </head>
    <body>
        <br>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12"></div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <form method="post" onsubmit="return validate()" action="welcome.jsp">
                        <div class="form-group">
                            <h4 id="p1" class="bg-danger text-white" ></h4>
                            <h1 class="h3 mb-3 font-weight-normal">Welcome to join us!</h1>
                          <label for="inputFullname">Full Name</label>
                          <input type="text" class="form-control" id="inputFullname" name="inputFullname" required autofocus>
                        </div>
                        <div class="form-group">
                          <label for="inputEmail">Email Address</label>
                          <input type="text" class="form-control" id="inputEmail" name="inputEmail" required autofocus>
                        </div>
                        <div class="form-group">
                          <label for="inputPassword">Password</label>
                          <input type="password" class="form-control" id="inputPassword" name="inputPassword" required autofocus>
                        </div>
                        <div class="form-group">
                          <label for="confirmPassword">Confirm Password</label>
                          <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required autofocus>
                        </div>
                        <div class="form-group">
                          <label for="inputPhone">Phone Number</label>
                          <input type="text" class="form-control" id="phone" name="phone" required autofocus>
                        </div>
                        <div class="form-group">
                            <p class="text-warning">If you already have an account, please click<a href="login.jsp"> here!</a></p>
                        </div>
                        <button type="submit" class="btn btn-lg btn-primary btn-block">Join</button>
                    </form>
                </div>
            </div>     
        </div>
        
    </body>
</html>