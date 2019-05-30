<%-- 
    Document   : allMovie
    Created on : 19/05/2019, 11:17:56 PM
    Author     : difeima
    Comments: List all the movie by genre
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
         <%    
            DBManager manager = (DBManager)session.getAttribute("manager");
            List<Movie> movie = manager.listAllMovies();
        %>
        <table class="table">
            <tr>
                <td>
                    <button class="btn btn-sm btn-primary btn-block" type="button" onclick="location.href = 'search_movie.jsp'" > <b>Search Movie</b> </button>                    
                </td>
            </tr>
        </table>
        <table class="table table-striped">
            <tr>
                <th>Item ID</th>
                <th>Title</th>
                <th>Genre</th>
                <th>Price</th>
                <th>Stock</th>
                <th>Actions</th>
            </tr>
            <%for(int i = 0; i < movie.size(); i++) {
            %>
                <tr>
                    <td><%=movie.get(i).getmID()%></td>
                    <td><%=movie.get(i).getTitle()%></td>
                    <td><%=movie.get(i).getGenre()%></td>
                    <td><%=movie.get(i).getPrice()%></td>
                    <td><%=movie.get(i).getStock()%></td>
                    <td>
                        <a href="update_movie.jsp?id=<%=movie.get(i).getmID()%>"><button class="btn btn-sm btn-primary btn-block" type="button">Update</button></a>
                        &emsp;
                        <a href="delete_movie.jsp?id=<%=movie.get(i).getmID()%>"><button class="btn btn-sm btn-danger btn-block" type="button">Delete</button></a>
                    </td>
                </tr>
            <%}%>
        </table>
    </body>
</html>
