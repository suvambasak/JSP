<%-- 
    Document   : Logout
    Created on : 6 May, 2017, 12:56:24 AM
    Author     : Codebox
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logging out</title>
    </head>
    <body>
        Logging out...
        
        <%
            session.invalidate();
            response.sendRedirect("http://localhost:8080/Project/Login.html");
        %>
    </body>
</html>
