<%-- 
    Document   : navBar
    Created on : 13/04/2019, 1:36:30 AM
    Author     : difeima
    Comments: navigation bar of whole program
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="uts.isd.controller.*"%>
<!DOCTYPE html>
<html lang="en">
    <%@ include file="bootstrap.html" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Movie Store</title>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top">
            <button class="navbar-toggler" data-toggle="collapse" data-target="#collapse_target">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapse_target">
                <a class="navbar-brand" href="index.jsp">
                    <span class="navbar-text">Online Movie Store</span>
                </a>

                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="movieList.jsp?genre=Action">Action</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="movieList.jsp?genre=Drama">Drama</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="movieList.jsp?genre=Crime">Crime</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="movieList.jsp?genre=Horror">Horror</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="movieList.jsp?genre=Sports">Sports</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="movieList.jsp?genre=Documentary">Documentary</a>
                    </li>
                </ul>
                <div class="collapse navbar-collapse justify-content-end">
                    <ul class="navbar-nav">
                        <li class="nav-item"></li>
                        <c:if test="${not empty sessionScope.userLogin}">
                            <li class="nav-item">
                                <a class="nav-link" href="add_movie.jsp"><button class="btn btn-outline-success my-2 my-sm-0" type="submit">List a Movie</button></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="order.jsp"><button class="btn btn-outline-success my-2 my-sm-0" type="submit">My Order</button></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="profile.jsp"><button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Profile</button></a>
                            </li>
                            <li class="nav-item">
                                <form action="logoutSuccessfully.jsp" method="post">
                                <a class="nav-link" href="logoutSuccessfully.jsp"><button class="btn btn-outline-danger my-2 my-sm-0" type="submit">LOGOUT</button></a>
                                </form>
                            </li>
                        </c:if>
                        <c:if test="${empty sessionScope.userLogin}">
                            <li class="nav-item">
                                <a class="nav-link" href="login.jsp"><button class="btn btn-outline-light my-2 my-sm-0" type="submit">LOGIN</button></a>
                            </li>
                            <li>
                                <a class="nav-link" href="register.jsp"><button class="btn btn-outline-light my-2 my-sm-0" type="submit">JOIN</button></a>
                            </li>
<!--                            <li class="nav-item">
                                <a class="nav-link" href="order.jsp"><button class="btn btn-outline-success my-2 my-sm-0" type="submit">My Order</button></a>
                            </li>-->
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>
        <jsp:include page="/ConnServlet" flush="true" />
</body>
</html>
