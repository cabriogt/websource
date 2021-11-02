<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>look cart</title>
</head>
<body>
<h3>look cart</h3>
<%
//session

//String product =(String)session.getAttribute("product");

ArrayList<String> cartList = (ArrayList<String>)session.getAttribute("cartList");




%>
<p>
<%=product %>
</p>

<

</body>
</html>