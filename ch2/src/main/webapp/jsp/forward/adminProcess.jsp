<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminProcess</title>
</head>
<body>
<h1>AdminProcess</h1>
<%

	String page1= request.getParameter("page");
	String password = request.getParameter("password");
	out.print("page1 : "+ page1+"<br>");
	out.print("password :" +password+ "<br>"); 

%>

</body>
</html>