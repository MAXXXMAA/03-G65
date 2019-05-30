<%-- 
    Document   : loginAction
    Created on : 13/04/2019, 12:23:38 AM
    Author     : bella
    Comments: let user log into the system
--%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="uts.isd.model.dao.*"%>
<%@page import="uts.isd.controller.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.*" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Action Page</title>
    </head>
    <body>

        <%
            DBManager manager = (DBManager)session.getAttribute("manager");
            String ID = request.getParameter("email");
            String password = request.getParameter("password");            
            User user = manager.checkUser(ID, password);
            String error = "            Wrong Email Address or Password!          ";
            if (user != null) {
                session.setAttribute("userLogin", user);
                response.sendRedirect("index.jsp");     
                SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
                SimpleDateFormat sdf2 = new SimpleDateFormat("HH:mm:ss");
                String date = sdf1.format(new Date());
                String time = sdf2.format(new Date());

                int key = (new Random()).nextInt(999999);
                String AID = "" + key;
                String UID = "" + user.getuID();
                String loginDate = "" + date;
                String loginTime = "" + time;
                String logoutDate = "";
                String logoutTime = "";

                DBManager manager1 = (DBManager)session.getAttribute("manager");
                Log log = new Log(AID,UID,loginDate,loginTime,logoutDate,logoutTime);
                manager1.addLog(AID,UID,loginDate,loginTime,logoutDate,logoutTime);
                session.setAttribute("log",log);                
            }else{
                session.setAttribute("existErr", error);
                response.sendRedirect("login.jsp");                               
            }

        %>
    
    </body>
</html>
