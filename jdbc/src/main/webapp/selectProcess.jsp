<%@page import="user.persistance.MemberDAO"%>
<%@page import="user.persistance.JdbcUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="user.domain.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
//select.jsp
MemberDTO dto = new MemberDTO();
dto.setUserid(request.getParameter("userid"));
dto.setPassword(request.getParameter("password"));

//db
Connection con = JdbcUtil.getConnection();
MemberDAO dao= new MemberDAO(con);
MemberDTO dto1 = dao.getRow(dto);

JdbcUtil.close(con);


//page transfer
if (dto1!= null){
	request.setAttribute("dto1", dto1);
	pageContext.forward("getMember.jsp");
	
}else{
	response.sendRedirect("select.jsp");	
}






%>