<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("utf-8");

String username=request.getParameter("username"); 
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String fruits[]=request.getParameterValues("fruits");

String page1=request.getParameter("page");
String bno=request.getParameter("bno");


%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> name : <%=username%> : <%=age%>: <%=gender%> :<%=Arrays.toString(fruits)%> </h3>

<h3>page : <%=page1%> :bno <%=bno%></h3>


</body>
</html>