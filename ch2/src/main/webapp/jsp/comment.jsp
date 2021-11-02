<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- jsp explanation -->
<!-- html explanation -->

<%
	//1~10
	for(int i=1;i<11;i++){
		out.print(i+"<br>");
	}
%>
<div>
<a href="sendRedirect.jsp">move</a>
<a href="main.jsp">main</a>
</div>
</body>
</html>