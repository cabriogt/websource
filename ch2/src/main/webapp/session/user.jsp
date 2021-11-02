<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>User Page</h2>
<div>
<a href="section1.jsp">Section Page</a>
</div>
<div>
<a href="main.jsp">Main Page </a>
</div>
<div>
<a href="session1.jsp">Session Page</a>
</div>
<h2>session:  <%=session.getAttribute("name")  %></h2>
<h2>session id <%session.setAttribute("userid","hong123");  %></h2>
</body>
</html>