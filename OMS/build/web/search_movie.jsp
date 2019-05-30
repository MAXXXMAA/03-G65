<%-- 
    Document   : search_movie
    Created on : 18/05/2019, 11:05:29 PM
    Author     : difeima
    Comments: allow user search movie by name and genre
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
                    <form method="post" onsubmit="return validate()" action="search_message.jsp">
                        <div class="form-group">
                            <label for="inputFullname">Please Enter the Movie Title You Want to Search...</label>
                            <input type="text" class="form-control" id="inputFullname" name="title" required autofocus>
                        </div>
                        <div class="form-group">
                            <label for="genre">Please Select the Genre of that Movie...</label>
                            <select  name="genre" required autofocus>
                                <option value="Action">Action</option>
                                <option value="Drama">Drama</option>
                                <option value="Crime">Crime</option>
                                <option value="Horror">Horror</option>
                                <option value="Sports">Sports</option>
                                <option value="Documentary">Documentary</option>
                            </select>
                        </div>  
                        <button type="submit" class="btn btn-lg btn-primary btn-block">Search</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>