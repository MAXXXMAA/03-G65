<%-- 
    Document   : update_movie_message.jsp
    Created on : 18/05/2019, 10:32:09 PM
    Author     : difeima
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
        String ID = request.getParameter("id");
        String title = request.getParameter("title");
        String genre = request.getParameter("genre");
        String price = request.getParameter("price");
        String stock = request.getParameter("stock");
    %>
    <body onload="startTime()">
        <br>
        <div class="container-fluid">
            <div class="row justify-content-md-center">
                <div class="form-group">
                    <h1 class="h1 mb-1 font-weight-normal">Successful Update ID: <span style="color:red"></span><%=ID%></h1>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-8 col-xs-12"></div>
                <div class="col-md-4 col-sm-8 col-xs-12">
                    <div class="form-group">
                        <p>Updated Title: <%=title%></p>
                    </div>
                    <div class="form-group">
                        <p>Updated Genre: <%=genre%></p>
                    </div>
                    <div class="form-group">
                        <p>Updated Price: <%=price%></p>
                    </div>    
                    <div class="form-group">
                        <p>Updated Stock <%=stock%></p>
                    </div>                       
        <%    
            DBManager manager = (DBManager)session.getAttribute("manager");
            manager.updateMovie(ID, title, genre, price, stock);
        %>
        <button class="btn btn-lg btn-success btn-block" type="button" onclick="location.href = 'allMovie.jsp'" > Movie List </button>

                </div>               
            </div>
        </div>                   

    </body>
</html>

