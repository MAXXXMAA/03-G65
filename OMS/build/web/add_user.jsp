<%-- 
    Document   : add_user
    Created on : 19/05/2019, 11:17:56 PM
    Author     : winne
    Comments: add new user, get user entered registeration info
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@ include file="navBar.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="js/script.js"></script>
        <title>Login Page</title>
        <script>
            function validate() {
                var fullname =  document.getElementById('fullname').value;
                var password =  document.getElementById('password').value;
                var phone =  document.getElementById('phone').value;
                var email =  document.getElementById('email').value;  
                var emailExp = /^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
                //check fields
                if (!fullname) {
                    document.getElementById("p1").innerHTML = "Fullname is required";
                    return false;
                }
                
                if (!password) {
                    document.getElementById("p1").innerHTML = "Password is required";
                    return false;
                }
                
                if (!phone || isNaN(phone)) {
                    document.getElementById("p1").innerHTML = "Phone number is invalid";
                    return false;
                }

                if (!email || !(email.match(emailExp))) {
                    document.getElementById("p1").innerHTML = "Email is invalid";
                    return false;
                }
                // check length
                if (fullname.length > 30) {
                    document.getElementById("p1").innerHTML = "Fullname length is invalid";
                    return false;
                }
                
                if (password.length > 30) {
                    document.getElementById("p1").innerHTML = "Password length is invalid";
                    return false;
                }
                
                if (phone.length > 30) {
                    document.getElementById("p1").innerHTML = "Phone nuber length is invalid";
                    return false;
                }
                
                if (email.length > 30) {
                    document.getElementById("p1").innerHTML = "Email length is invalid";
                    return false;
                }                    
            }
        </script>        
    </head>
    <body onload="startTime()">
        <br>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12"></div>
                <div class="col-md-4 col-sm-4 col-xs-12">
        <form action="add_user_message.jsp" method="post" onsubmit="return validate()">
            <div class="form-group">
                <h4 id="p1" class="bg-danger text-white" ></h4>
                <h1 class="h3 mb-3 font-weight-normal"><b>Enter user details to add..</b></h1>
                <label for="fullname">Account Name</label>
                <input class="form-control" size="23" type="text" name="fullname" id="fullname" required autofocus>
            </div>
            <div class="form-group">
                <label for="password">Account Password</label>
                <input class="form-control" size="23" type="password" name="password" id="password" required autofocus>      
            </div>
            <div class="form-group">
                <label for="phone">Account Phone Number</label>
                <input class="form-control" size="23" type="text" name="phone" id="phone" required autofocus>      
            </div>
             <div class="form-group">
                <label for="email">Account Email</label>
                <input class="form-control" size="23" type="text" name="email" id="email" required autofocus>      
            </div> 
            <div class="form-group">
                <label for="activate">Account Status</label>
                <select  name="activate">
                    <option value="activate">Activate</option>
                    <option value="deactivate">Deactivate</option>
                </select> 
            </div>
            <input  class="btn btn-lg btn-primary btn-block" type="submit" value="Register"> 
        </form>
            &emsp;
            <button class="btn btn-lg btn-success btn-block" type="button" onclick="location.href = 'user_list.jsp'" > View User List </button>     
                </div>
            </div>
        </div>
    </body>
</html>

