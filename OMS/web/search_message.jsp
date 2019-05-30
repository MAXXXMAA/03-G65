<%-- 
    Document   : search_message
    Created on : 18/05/2019, 11:07:19 PM
    Author     : difeima
    Comments: get result of searching movie by name and genre
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
    %>
    <body onload="startTime()">
        <%    
            DBManager manager = (DBManager)session.getAttribute("manager");
            Movie movie = manager.findMovie(title, genre);
        %>
        <%if(movie !=null){%>
        <table class="table table-striped">
            <tr ><h3>Search Details</h3></tr>
            <tr>
                <td><b>Movie Title: </b></td>
                <td><%=movie.getTitle()%></td>
            </tr>
            <tr>
                <td><b>Movie Genre: </b></td>
                <td><%=movie.getGenre()%></td>
            </tr>
            <tr>
                <td><b>Movie Price: </b></td>
                <td>$ <%=movie.getPrice()%></td>
            </tr>
            <tr>
                <td><b>Movie Stock: </b></td>
                <td><%=movie.getStock()%></td>
            </tr>
        </table>
        <%}else{%>
            <div class='p-3 mb-2 bg-warning text-white'>No Item Match...</div>
        <%}%>
        <button class="btn btn-success" type="button" onclick="location.href = 'search_movie.jsp'" > Search Movie </button>
    </body>
</html>