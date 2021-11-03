<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="/layout/header.jsp"%>

<div>
<form action="updateProcess.jsp" method="post">
  <div class="form-group">
    <label for="userid">User Id</label>
    <input type="text" class="form-control" id="userid" name="userid" >
 
  </div>
  <div class="form-group">
    <label for="currentPassword">Password</label>
    <input type="password" class="form-control" id="currentPassword" placeholder="password" name="currentPassword">
  </div>
   <div class="form-group">
    <label for="changePassword">Change password</label>
    <input type="password" class="form-control" id="changePassword" placeholder="Change Password" name="changePassword">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>

<%@include file="/layout/footer.jsp"%>