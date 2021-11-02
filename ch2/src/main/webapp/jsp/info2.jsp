<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	//httpServletRequest request  => request.getParameter(name of element)
	
	request.setCharacterEncoding("utf-8");
	
	pageContext.forward("forward1.jsp");
	
	/* String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	String username = request.getParameter("username"); */
%>

<%-- <p><%=userid%></p>
<p><%=password%></p>
<p><%=username%></p>
<p>client addr : <%=request.getRemoteAddr()%></p>
<p>client host : <%=request.getRemoteHost()%></p>
<p>client port : <%=request.getRemotePort()%></p>
<p>request URI : <%=request.getRequestURI()%></p>
<p>request protocol : <%=request.getProtocol()%></p>--%>