<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	session.setMaxInactiveInterval(10);


%>
<h3>session statement</h3>
<p>IsNew:  <%=session.isNew()  %></p>
<p>Creation Time:  <%=session.getCreationTime()  %></p>
<p>Time:  <%=session.getLastAccessedTime()  %></p>
<p>Session Id :  <%=session.getId()  %></p>
<div>
<a href="section1.jsp">Section Page</a>
</div>
<div>
<a href="user.jsp">User Page </a>
</div>
<div>
<a href="main.jsp">Main Page</a>
</div>

<h2>session:  <%=session.getAttribute("name")  %></h2>
<h2>session id <%session.setAttribute("userid","hong123");  %></h2>


</body>
</html>