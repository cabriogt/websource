<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
</head>
<body>

<%--

get: puede mostar los valores que estas mandando dedsde otra pagina

post: en post no puedes obtener los nos valores de otra pagina 


 --%>


	<p>
		<a href="adminPage.jsp?page=1&password=1234">Admin Page</a>
	</p>
		<form action="adminPage.jsp" method="post">
		<div>
			password:<input type="password" name="password"/>
			<input type="submit" value="send"/>

		</div>
		</form>
</body>
</html>