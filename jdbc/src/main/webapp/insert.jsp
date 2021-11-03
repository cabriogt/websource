<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="/layout/header.jsp"%>

<div>
<form action="insertProcess.jsp" method="post">
  <div class="form-group">
    <label for="userid">User Id</label>
    <input type="text" class="form-control" id="userid" name="userid">
  </div>
  <div class="form-group" >
    <label for="password">Password</label>
    <input type="password" class="form-control" id="password" placeholder="password" required="required" name="password">
  </div>
   <div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control" id="name" placeholder="name" required="required" name="name">
  </div>
  <div class="form-group">
    <label for="gender">Gender</label>
    <input type="text" class="form-control" id="gender" placeholder="gender" required="required" name="gender">
  </div>
  <div class="form-group">
    <label for="email">Email</label>
    <input type="email" class="form-control" id="email" placeholder="email" required="required" name="email">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>

<%@include file="/layout/footer.jsp"%>