<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    request.setCharacterEncoding ("utf-8");
    
    String username = request.getParameter("username");
    String userid = request.getParameter("userid");
    
    //scope request 
    request.setAttribute("username",username);
    request.setAttribute("userid",userid);
    
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> Sr.  <%=username%>  nice too meet you. My id is <%=userid%> </h3>
	
	<form action="info.jsp" method="post"></form>
	
	<div>	
			<label for="emal"l></labe>email</label>
			<input type="text" name="email" id="email"/>	
	</div>
	<div>	
			<label for="addres"l></labe>address</label>
			<input type="text" name="address" id="address"/>	
	</div>
	<div>	
			<label for="tel"l></labe>phone number</label>
			<input type="text" name="tel" id="tel"/>	
	</div>
	<div>
	<button type="submit">submit</button>
	</div>
	

</body>
</html>