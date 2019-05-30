<%-- 
    Document   : login
    Created on : 13/04/2019, 12:23:38 AM
    Author     : bella
    Comments: let user log into the system
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
    <%@ include file="navBar.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <title>JSP Page</title>
        <script>
            function validate() {
                var uEmail =  document.getElementById('email').value;
                var password =  document.getElementById('password').value;
                
                if (!uEmail) {
                    document.getElementById("p1").innerHTML = "Username is required";
                    return false;
                }
                
                if (!password) {
                    document.getElementById("p1").innerHTML = "Password is required";
                    return false;
                }
            }
        </script>
    </head>
    <body onload="startTime()">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12"></div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <span><c:if test="${existErr!=null}">
                            <div class="p-3 mb-2 bg-danger text-white">
                                <span><c:out value="${existErr}"/></span>
                            </div>
                    </c:if></span>
                    <br><br><br>
                    <form action="loginAction.jsp" method="post" onsubmit="return validate()">
                        <div class="form-group">      
                            <h4 id="p1" class="bg-danger text-white" ></h4>
                            <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
                            <label for="inputUserName">Email</label>
                            <input type="text" class="form-control" name="email" id="email" required autofocus>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword">Password</label>
                            <input type="password" class="form-control" name="password" id="password" required autofocus>  
                        </div>
                        <div class="form-group">
                            <p class="text-warning">If you do not have an account, please click<a href="register.jsp"> here!</a></p>
                        </div>

                        <input class="btn btn-lg btn-primary btn-block" type="submit" value="Sign in"> 

                    </form>
                    ${existErr = null}
                </div>
            </div>
        </div>
    </body>
</html>
