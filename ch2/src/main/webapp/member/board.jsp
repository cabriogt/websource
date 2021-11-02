<%@page import="user.domain.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    
   UserDTO loginDto =  (UserDTO) session.getAttribute("loginDto");
    
    
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Board Page</h1>
<h2><%=loginDto.getName()  %> sr  mucho gusto</h2>

</body>
</html>