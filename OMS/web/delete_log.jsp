<%-- 
    Document   : delete_log
    Created on : 18/05/2019, 10:18:51 PM
    Author     : bella
    Comments: delete selected log detail from database
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
            String AID = request.getParameter("AID");
        %>
        <br>
        <div class="container-fluid">
            <div class="row justify-content-md-center">
                <div class="form-group">
                   <h1 class="h1 mb-1 font-weight-normal">The log ID is <%=AID%></h1>   
                    <br>
                    <form action="delete_log_message.jsp" method="post">
                        <table>
                            <tr>
                                <td>
                                    <input type="hidden" name="AID" value="<%=AID%>">
                                    <input class="btn btn-sm btn-danger btn-block" type="submit" value="Delete">  
                                    &emsp;
                                    <button class="btn btn-sm btn-success btn-block" type="button" onclick="location.href = 'profile.jsp'" > Profile </button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>               
            </div>
        </div>                          
    </body>
</html>