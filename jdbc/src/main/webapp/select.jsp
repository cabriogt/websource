<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="/layout/header.jsp"%>

<div>
<form action="selectProcess.jsp" method="post">
  <div class="form-group">
    <label for="userid">User Id</label>
    <input type="text" class="form-control" id="userid" name="userid" >
  </div>
  <div class="form-group">
    <label for="password">Password</label>
    <input type="password" class="form-control" id="password" name="password">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>

<%@include file="/layout/footer.jsp"%>

