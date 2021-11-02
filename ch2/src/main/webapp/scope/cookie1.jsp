<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    <%
    	//cookie
        Cookie name = (new  Cookie("name","Jhon"));
    	name.setMaxAge(600);
    	response.addCookie(name);
    	
        response.addCookie(new Cookie("gender", "male"));
        response.addCookie(new Cookie("age", "30"));
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>cookie</h3>
<div>
<a href="getCookie1.jsp">Cookie</a>
</div>

</body>
</html>