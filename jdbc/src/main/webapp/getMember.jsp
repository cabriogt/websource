<%@page import="user.domain.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="/layout/header.jsp"%>

<%

MemberDTO dto1 = (MemberDTO)request.getAttribute("dto1");

%>

<div>
<form action="" method="post">
  <div class="form-group">
    <label for="userid">User Id</label>
    <input type="text" class="form-control" id="userid" name="userid" value="<%=dto1.getUserid()%>" readonly>
  </div>
  <div class="form-group" style ="display:none">
    <label for="password">Password</label>
    <input type="password" class="form-control" id="password" placeholder="password" required="required" name="password">
  </div>
     <div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control" id="name" placeholder="name" required="required" name="name" value="<%=dto1.getName()%>" readonly>
  </div>
  <div class="form-group">
    <label for="gender">Gender</label>
    <input type="text" class="form-control" id="gender" placeholder="gender" required="required" name="gender"value="<%=dto1.getGender()%>"readonly>
  </div>
  <div class="form-group">
    <label for="email">Email</label>
    <input type="email" class="form-control" id="email" placeholder="email" required="required" name="email" value="<%=dto1.getEmail()%>"readonly>
  </div>
  
  <button type="submit" class="btn btn-primary">No Member</button>
</form>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" 
integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
crossorigin="anonymous"></script>

<script>
$(function (){
	$("button").click(function(e){
		e.preventDefault();
		
		// password
		let divPwd = $("form div:nth-child(2)");
		
		if(divPwd.css ("display")=="none"){
			divPwd.css ("display","block");
		}else{
			//password 
			let input = divPwd.children("input")
				if (input.val() == ""){
					alert("insert your password");
					input.focus();
					return;
				}
			
			
			//send the form
			$("form").attr("action","removeProcess.jsp");
			$("form").submit();
			
		}
		
	})
})

</script>

<%@include file="/layout/footer.jsp"%>