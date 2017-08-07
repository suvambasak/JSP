<%-- 
    Document   : Login
    Created on : 5 May, 2017, 3:53:57 PM
    Author     : Codebox
--%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%! 
            String name = "null";
            String email = "null";
            String password = "null";
            PreparedStatement ps;
            Connection con;
        %>
        <%
            email = request.getParameter("email");
            password = request.getParameter("password");
            
           try{
               Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
               con = DriverManager.getConnection("jdbc:ucanaccess://D:/User.accdb");
               ps = con.prepareStatement("SELECT * FROM Login where email=? and pwd=?");
               
               ps.setString(1, email);
               ps.setString(2, password);
               
               ResultSet rs = ps.executeQuery();
               
               if (rs.next()){
                   name = rs.getString(2);
                   out.print(name);
                   
                   session.setAttribute("user",name);
                   response.sendRedirect("http://localhost:8080/Project/Profile.jsp");
                   
               }else{
                   out.println("Invalid email and password.");
               }
               
           }catch(Exception e){
               out.println(e);
           }
        %>
    </body>
</html>
