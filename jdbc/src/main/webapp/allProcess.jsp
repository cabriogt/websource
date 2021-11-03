<%@page import="user.domain.MemberDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Connection"%>
<%@page import="user.persistance.MemberDAO"%>
<%@page import="user.persistance.JdbcUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		//search all and seacrh for the page
		
		Connection con = JdbcUtil.getConnection();
	    MemberDAO dao = new MemberDAO(con);
				
		List <MemberDTO> list = dao.getRows();
		JdbcUtil.close(con);

		request.setAttribute("list", list);
		pageContext.forward("all.jsp");





%>