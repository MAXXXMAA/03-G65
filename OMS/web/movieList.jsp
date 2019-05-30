<%-- 
    Document   : movieList
    Created on : 19/05/2019, 8:48:48 PM
    Author     : difeima
    Comments: list all movie from the database
--%>

<%@page import="uts.isd.model.dao.*"%>
<%@page import="uts.isd.controller.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" import="java.util.*" import="uts.isd.model.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@ include file="navBar.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
            <%  
                String genre = request.getParameter("genre");
                DBManager manager = (DBManager)session.getAttribute("manager");
                List<Movie> movie = manager.listMoviesByGenre(genre);
                
            %>
                <%for(int i = 0; i < movie.size(); i++) { %>
                    <div class='col-md-4'>
                        <div class='card h-100'>
                            <div class="card-body">
                                <p class="card-text text-muted"><b>Item ID: <%=movie.get(i).getmID()%></b></p>
                                    <h4 class="card-title" name="movieName" id="movieName"><%=movie.get(i).getTitle()%></h4>
                                    <p class="small text-muted"><%=movie.get(i).getGenre()%></p>
                                    <span style="font-size: 25px; color:#9E2A2B">$ </span> <p class="small text-muted" id="price" name="price"><span style="color:#9E2A2B"><%=movie.get(i).getPrice()%></span></p>
                                    <p class="small text-success">Available Amount: <%=movie.get(i).getStock()%></p>
                                    <form action="orderSuccessfully.jsp" method="post">
                                        <input type="number" id="quantity" name="quantity" min="1" placeholder="enter quantity" required autofocus>
                                        <input type="hidden" id="movieName" name="movieName" value="<%=movie.get(i).getTitle()%>">                     
                                        <input type="hidden" id="price" name="price" value="<%=movie.get(i).getPrice()%>">
                                        <input type="hidden" id="stock" name="stock" value="<%=movie.get(i).getStock()%>">
                                        <%
                                            boolean stock = true;
                                            stock = manager.checkMovieStock(movie.get(i).getTitle());
                                            if (stock) {
                                        %>
                                        <button class="btn btn-sm btn-warning btn-block" type="submit" onclick="return validate()">Order</button>
                                            <%}else {%>
                                                <button class="btn btn-sm btn-danger btn-block" type="button" disabled>Sorry, item currently unavailable</button>
                                            <%}%>
                                </form>
                            </div>
                        </div>
                    </div>
                <%}%>
            </div>
        </div>
    </body>

</html>