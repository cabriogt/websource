<%@page import="user.persistance.MemberDAO"%>
<%@page import="user.persistance.JdbcUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="user.domain.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%


	//update.jsp  
	MemberDTO dto = new MemberDTO();
	request.getParameter("userid");
	dto.setUserid(request.getParameter("userid"));
	dto.setPassword(request.getParameter("currentPassword"));
	dto.setChangePassword(request.getParameter("changePassword"));
	
	//dbwork
	
	Connection con= JdbcUtil.getConnection();
	MemberDAO dao= new MemberDAO(con);
	boolean updateFlag = dao.update(dto);
	
	if (updateFlag){
		JdbcUtil.commit(con);
		response.sendRedirect("allProcess.jsp");
	}else {
		JdbcUtil.rollback(con);
		response.sendRedirect("update.jsp");
	}
	
	
	//page 








%>