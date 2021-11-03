<%@page import="user.persistance.MemberDAO"%>
<%@page import="user.persistance.JdbcUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%

String userid = request.getParameter("userid");
String password = request.getParameter("password");

Connection con =  JdbcUtil.getConnection();
MemberDAO dao= new MemberDAO(con);
boolean deleteFlag = dao.delete(userid, password) ;

if(deleteFlag){
	JdbcUtil.commit(con);
	JdbcUtil.close(con);
	response.sendRedirect("allProcess.jsp");
	
}else{
	JdbcUtil.rollback(con);
	JdbcUtil.close(con);
	response.sendRedirect("selectProcess.jsp");
}

%>