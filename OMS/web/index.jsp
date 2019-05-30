<%-- 
    Document   : index
    Created on : 13/04/2019, 2:26:30 AM
    Author     : difeima
    Comments: loading page of whole website 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@ include file="navBar.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link href="css/index.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <!--carousel start-->
        <div id="indexpage-carousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#indexpage-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#indexpage-carousel" data-slide-to="1"></li>
                <li data-target="#indexpage-carousel" data-slide-to="2"></li>
                <li data-target="#indexpage-carousel" data-slide-to="3"></li>
                <li data-target="#indexpage-carousel" data-slide-to="4"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active"><!--image size 1920x800-->
                    <img class="d-block w-100" src="https://thenerdy.com/wp-content/uploads/2018/12/Avengers-Endgame-Trailer-1-06.jpg"
                        alt="Avengers: Endgame"> 
                    <div class="carousel-caption d-md-block">
                        <h3>Avengers: Endgame</h3>
                        <p>Available June 26th <br>ORDER NOW</p>
                    </div>   
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="http://kissthemgoodbye.net/movie/albums/Kingsman%20The%20Golden%20Circle/TKTGS_0596.jpg"
                        alt="Kingsman: The Golden Circle">
                    <div class="carousel-caption d-md-block">
                        <h3>Kingsman: The Golden Circle</h3>
                        <p>4K Ultra HD + Blu-ray<br>GET IT NOW</p>
                    </div>
                </div>
                <div class="carousel-item">
                     <img class="d-block w-100" src="https://tomcruisefan.com/gallery/albums/albums/movies/the-last-samurai/br-caps/the-last-samurai-2004.jpg"
                        alt="The Last Samurai">
                    <div class="carousel-caption">
                        <h3>The Last Samurai</h3>
                        <p>4K Ultra HD + Blu-ray<br>GET IT NOW</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="https://mrmoviefilmblog.files.wordpress.com/2016/06/the-conjuring-2-03.jpg"
                        alt="The Conjuring">
                    <div class="carousel-caption">
                        <h3>The Conjuring</h3>
                        <p>4K Ultra HD + Blu-ray<br>GET IT NOW</p>
                    </div>
                </div>    
                <div class="carousel-item">
                    <img class="d-block w-100" src="https://nsa38.casimages.com/img/2015/08/14/150814032637489057.jpg"
                        alt="Mad Max: Fury Road">
                    <div class="carousel-caption">
                        <h3>Mad Max: Fury Road</h3>
                        <p>4K Ultra HD + Blu-ray<br>GET IT NOW</p>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#indexpage-carousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#indexpage-carousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <!--carousel end-->
        <div class="container">
            <div class="row text-center pb-5">
                <div class="col-sm-4 p-5">
                    <img src="https://upload.wikimedia.org/wikipedia/en/6/60/Shazam%21_theatrical_poster.jpg"
                         class="img-circle p-3" alt="New to the Store"
                         width="182" height="268">
                    <h3>New Release</h3>
                </div>
                <div class="col-sm-4 p-5">
                    <img src="https://djqh0pophbxqy.cloudfront.net/wpdata/images/88523-m.jpg"
                         class="img-circle p-3" alt="Popular Ones"
                         width="182" height="268">
                    <h3>Bestsellers</h3>
                </div>
                <div class="col-sm-4 p-5">
                    <img src="https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg"
                         class="img-circle p-3" alt="Release Soon"
                         width="182" height="268">
                    <h3>Pre-orders</h3>
                </div>
            </div>
        </div>
    </body>
</html>

