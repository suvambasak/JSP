<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%@ page errorPage="error.jsp" %>
	
	<% 
		int a = Integer.parseInt(request.getParameter("num1")); 
		int b = Integer.parseInt(request.getParameter("num2"));
		
		int c = a/b;
		
		out.print("Answer : " + c);
	%>
</body>
</html>