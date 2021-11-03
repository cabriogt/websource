<%@page import="java.util.List"%>
<%@page import="user.domain.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="/layout/header.jsp"%>

<%

List<MemberDTO> list = (List<MemberDTO>)request.getAttribute("list");


%>

<table class="table" style="margin-top: 30px">
  <thead class="thead-light">
    <tr>
      <th scope="col">User Id</th>
      <th scope="col">Name</th>
      <th scope="col">Gender</th>
      <th scope="col">Email</th>
    </tr>
  </thead>
  <tbody>
  <%
  if(!list.isEmpty()){
     for (MemberDTO dto:list){ 
  %>
    <tr>
      <th scope="row"><%=dto.getUserid() %></th>
      <td><%=dto.getName() %></td>
      <td><%=dto.getGender() %></td>
      <td><%=dto.getEmail() %></td>
    </tr>
    <%
  	}
  }
  else{
	  out.print("<tr>");
	  out.print("<td colspan='4'>");
	  out.print("No content");
	  out.print("</td></tr>");
  }
  %>
   </tbody>
</table>
<%@include file="/layout/footer.jsp"%>