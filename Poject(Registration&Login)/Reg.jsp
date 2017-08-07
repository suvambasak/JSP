<%-- 
    Document   : Reg
    Created on : 5 May, 2017, 2:19:55 PM
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
//            String date = "null";
            String tech = "null";
            String gender = "null";
            String phone = "null";
            PreparedStatement ps;
            Connection con;
        %>
        <%  
            name = request.getParameter("name");
            email = request.getParameter("email");
            password = request.getParameter("passowrd");
//            date = request.getParameter("date");
            tech = request.getParameter("tech");
            gender = request.getParameter("gender");
            phone = request.getParameter("phone");
            
            try{
                Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
                con = DriverManager.getConnection("jdbc:ucanaccess://D:/User.accdb");
                ps = con.prepareStatement("insert into Login (name,email,pwd,tech,gender,phone) values (?,?,?,?,?,?)");
                
                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, password);
//                ps.setString(4, date);
                ps.setString(4, tech);
                ps.setString(5, gender);
                ps.setString(6, phone);
                
                int i = ps.executeUpdate();
                if (i != 0){
                    out.println("Inserted...");
                    response.sendRedirect("http://localhost:8080/Project/Login.html");
                }else{
                    response.sendRedirect("http://localhost:8080/Project/Register.html");
                }
                
            }catch(Exception e){
                out.println(e);
            }
            
        %>
    </body>
</html>
