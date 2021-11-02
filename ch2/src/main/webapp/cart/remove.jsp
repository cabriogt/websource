<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>remove</h3>
<%
//session.removeAttribute("product");
session.removeAttribute("cartList");
%>
<p>
<a href="cart.jsp">selection</a>a

</p>

</body>
</html>