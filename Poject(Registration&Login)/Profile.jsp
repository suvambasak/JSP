<%-- 
    Document   : Profile
    Created on : 6 May, 2017, 12:22:00 AM
    Author     : Codebox
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title
        <link rel="stylesheet" href="style.css" type="text/css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css">
	<link rel="stylesheet" type="text/javascript" href="js/bootstrap.js">
    </head>
    
    <body>
        
        <h2><b>Profile</b></h2>
        
        <p>
            <%
               try{

                    if (session.getAttribute("user") == null){
                        out.println("wrong!");
                        response.sendRedirect("http://localhost:8080/Project/Login.html");

                    }else{
                        out.println("<h3>"+session.getAttribute("user")+"</h3>");
                }

               }catch(Exception e){}
            %>
        </p>
                    
        <a href="Logout.jsp">
            <button type="button" class="btn">Logout</button>
        </a>
        
    </body>
</html>
