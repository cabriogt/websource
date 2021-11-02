<%@page import="user.domain.UserDTO"%>
<%@page import="user.persistence.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

  	//user
  	//index.jsp
  	String  userid =request.getParameter("userid");

	String password = request.getParameter("password");
	
  	//data base
  	UserDAO dao =  new UserDAO();
  	//login identification
	UserDTO loginDto = dao.isLogin(userid, password);
	
	if(loginDto !=null){
		
		session.setAttribute("loginDto",loginDto);
		
		response.sendRedirect("board.jsp");
		
	}else{
		response.sendRedirect("/index.jsp");
		
	}
	
    
    
%>