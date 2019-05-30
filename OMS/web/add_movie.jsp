<%-- 
    Document   : add_movie
    Created on : 19/05/2019, 11:17:56 PM
    Author     : difeima
    Comments: add a new movie, get info entered by user
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
                var title =  document.getElementById('title').value;
                var genre =  document.getElementById('genre').value;
                var price =  document.getElementById('price').value;
                var stock =  document.getElementById('stock').value;               
                //check fields
                if (!title) {
                    document.getElementById("p1").innerHTML = "Movie title is invalid";
                    return false;
                }
                
                if (!genre) {
                    document.getElementById("p1").innerHTML = "Movie genre is invalid";
                    return false;
                }
                
                if (!price || price == "0" || isNaN(price)) {
                    document.getElementById("p1").innerHTML = "Movie price is invalid";
                    return false;
                }

                if (!stock || isNaN(stock)) {
                    document.getElementById("p1").innerHTML = "Movie stock is invalid";
                    return false;
                }
                // check length
                if (title.length > 30) {
                    document.getElementById("p1").innerHTML = "Movie title length is invalid";
                    return false;
                }
                
                if (genre.length > 30) {
                    document.getElementById("p1").innerHTML = "Movie Genre length is invalid";  
                    return false;
                }
                
                if (price.length > 30) {
                    document.getElementById("p1").innerHTML = "Movie price length is invalid";  
                    return false;
                }
                
                if (stock.length > 30) {
                    document.getElementById("p1").innerHTML = "Movie stock length is invalid";                    
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
        <form action="add_movie_result.jsp" method="post" onsubmit="return validate()">
            <div class="form-group">
                <h4 id="p1" class="bg-danger text-white" ></h4>
                <h1 class="h3 mb-3 font-weight-normal"><b>Add a Movie!</b></h1>
                <label for="title">Movie Title</label>
                <input class="form-control" size="23" type="text" name="title" id="title" required autofocus>
            </div>
            <div class="form-group">
                <label for="genre">Genre</label><br>
                    <select  name="genre" id="genre" required autofocus>
                        <option value="Action">Action</option>
                        <option value="Drama">Drama</option>
                        <option value="Crime">Crime</option>
                        <option value="Horror">Horror</option>
                        <option value="Sports">Sports</option>
                        <option value="Documentary">Documentary</option>
                    </select>
            </div>  
            <div class="form-group">
                <label for="price">Price</label>
                <input class="form-control" size="23" type="text" name="price" id="price" required autofocus>      
            </div>
            <div class="form-group">
                <label for="stock">Stock</label>
                <input class="form-control" size="23" type="text" name="stock" id="stock" required autofocus>      
            </div>
            <input  class="btn btn-lg btn-primary btn-block" type="submit" value="Add!"> 
        </form>
            &emsp;
            <button class="btn btn-lg btn-success btn-block" type="button" onclick="location.href = 'allMovie.jsp'" > View Movie List </button>     
                </div>
            </div>
        </div>
    </body>
</html>

             