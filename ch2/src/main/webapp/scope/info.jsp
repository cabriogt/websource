<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    //scope request
    request.setCharacterEncoding("utf-8");
    
    String username =(String)request.getAttribute("username");
    
    String userid =(String)request.getAttribute("userid");
    
    //form data
     String email =(String)request.getAttribute("emai");
     String address =(String)request.getAttribute("address");
     String tel =(String)request.getAttribute("tel");
     
     //session scope
     
      session.setAttribute("email",email);
      session.setAttribute("address",address);
      session.setAttribute("tel",tel);
    
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> Sr.  <%=username%>  nice too meet you. My id is <%=userid%> </h3>
	
	<p>email : <%=email %></p>
	<p>address : <%=address %></p>
	<p>tel : <%=tel %></p>
	<p><a href="result.jsp">session enter</a></p>

</body>
</html>