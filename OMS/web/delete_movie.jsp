<%-- 
    Document   : delete_movie
    Created on : 18/05/2019, 10:18:51 PM
    Author     : difeima
    Comments: delete selected movie detail from database
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
            <div class="row justify-content-md-center">
                <div class="form-group">
                   <h1 class="h1 mb-1 font-weight-normal">The Movie ID is <%=ID%></h1>     
                    <form action="delete_movie_result.jsp" method="post">
                        <table>
                            <tr>
                                <td>
                                    <input type="hidden" name="id" value="<%=ID%>">
                                    <input class="btn btn-sm btn-danger btn-block" type="submit" value="Delete">  
                                    &emsp;
                                    <button class="btn btn-sm btn-success btn-block" type="button" onclick="location.href = 'index.jsp'" > Cancel </button>
                                    &emsp;
                                    <button class="btn btn-sm btn-warning btn-block" type="button" onclick="location.href = 'allMovie.jsp'" > Movie List </button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>               
            </div>
        </div>  
    </body>
</html>