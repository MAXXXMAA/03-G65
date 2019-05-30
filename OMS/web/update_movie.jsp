<%-- 
    Document   : update_movie
    Created on : 18/05/2019, 10:03:21 PM
    Author     : difeima
    Comments: let user to enter the update detail to update a movie in the database
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
        <br>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12"></div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <form action="update_movie_message.jsp" method="post">
                        <div class="form-group">
                            <h1 class="h3 mb-3 font-weight-normal"><b>Update this Movie!</b></h1>
                            <label for="title">Change the Title</label>
                            <input class="form-control" size="23" type="text" name="title" required autofocus>
                        </div>        
                        <div class="form-group">
                            <label for="genre">Change the Genre</label>
                            <input class="form-control" size="23" type="text" name="genre" required autofocus>
                        </div> 
                        <div class="form-group">
                            <label for="price">Change the Price</label>
                            <input class="form-control" size="23" type="text" name="price" required autofocus>
                        </div>
                        <div class="form-group">
                            <label for="stock">Change the Stock</label>
                            <input class="form-control" size="23" type="text" name="stock" required autofocus>
                        </div>  
                        <input type="hidden" name="id" value="<%=ID%>">
                        <input class="btn btn-lg btn-primary btn-block" type="submit" value="Update!">                         
                    </form>               
                </div>
            </div>
        </div>
    </body>
</html>