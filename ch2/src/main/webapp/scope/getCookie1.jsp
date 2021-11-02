<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%!
    
    private String  getCookieValue(Cookie[] cookies,String name) {
    	if (cookies==null){
    		return null;
    	}
    	for (Cookie cookie : cookies){
    		if (cookie.getName().equals(name)){
    			return cookie.getValue();
    		}
    	}
    	return null;
    	
    	
    }
        
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

Cookie[] cookies = request.getCookies();

%>

<p>name: <%=getCookieValue(cookies, "name") %></p>
<p>age: <%=getCookieValue(cookies, "age") %></p>
<p>gender: <%=getCookieValue(cookies, "gender") %></p>

</body>
</html>