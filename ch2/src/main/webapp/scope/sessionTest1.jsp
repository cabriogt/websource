<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    String name;
    if (session.getAttribute("name")!=null){
    	name= (String)session.getAttribute("name");
    }else {
    	name ="No Session Value";
    }
    
    
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Session  Value: <%=name %></h1>
<button type="button" onclick="location.href='sessionSet.jsp' ">Save Session</button>
<button type="button" onclick="location.href='sessionRemove.jsp' ">Delete Session</button>
<button type="button" onclick="location.href='sessionInvalidate.jsp' ">Invalidate Session </button>


</body>
</html>