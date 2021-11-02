<%@page import="user.domain.MemberDTO"%>
<%@page import="java.sql.Connection"%>
<%@page import="user.persistance.MemberDAO"%>
<%@page import="user.persistance.JdbcUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	//insert.jsp  bring values 
	
	/*String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");*/
	
	request.setCharacterEncoding("utf-8");
	
	MemberDTO dto = new MemberDTO();
	dto.setUserid (request.getParameter("userid"));
	dto.setPassword(request.getParameter("password"));
	dto.setName(request.getParameter("name"));
	dto.setGender(request.getParameter("gender"));
	dto.setEmail(request.getParameter("email"));
	
	
	//db
	
	//conecction
	Connection con = JdbcUtil.getConnection();
	
	MemberDAO dao = new  MemberDAO(con);
	boolean insertFlag = dao.insert(dto);
	
	if(insertFlag){
		response.sendRedirect("index.jsp");
		JdbcUtil.commit(con);
	}else{
		JdbcUtil.rollback(con);
		response.sendRedirect("insert.jsp");
	}
	

	//db

%>