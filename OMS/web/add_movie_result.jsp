<%-- 
    Document   : add_movie_result
    Created on : 19/05/2019, 11:17:56 PM
    Author     : difeima
    Comments: cerate a new movie into database
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
        <link rel="stylesheet" href="css/demo.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <title>Welcome Page</title>
    </head>

    
    <%
        String title = request.getParameter("title");
        String genre = request.getParameter("genre");
        String price = request.getParameter("price");
        String stock = request.getParameter("stock");
        int key = (new Random()).nextInt(999999);
        String ID = "" + key;

    %>

    <body onload="startTime()">
        <div class="container-fluid">
            <div class="row justify-content-md-center">
                <div class="form-group">
                   <h1 class="h1 mb-1 font-weight-normal">You have added ONE movie to the list!!</h1>
                </div>
            </div>
        </div>
            
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-8 col-xs-12"></div>
                <div class="col-md-4 col-sm-8 col-xs-12">
                    <div class="form-group">
                        <p>Movie Title: <%=title%></p>
                    </div>
                    <div class="form-group">
                        <p>Item ID: <%=ID%></p>
                    </div>
                    <div class="form-group">
                        <p>Movie Genre: <%=genre%></p>
                    </div>
                    <div class="form-group">
                        <p>Stock: <%=stock%></p>
                    </div>
        <%    
            DBManager manager = (DBManager)session.getAttribute("manager");
            manager.addMovie(ID, title, genre, price, stock);
        %>
        <button class="btn btn-lg btn-primary btn-block" type="button" onclick="location.href = 'index.jsp'" > Main Page </button>
        <button class="btn btn-lg btn-warning btn-block" type="button" onclick="location.href = 'add_movie.jsp'" > Add a New Movie ! </button>
                </div>
            </div>
        </div>
    </body>
</html>
