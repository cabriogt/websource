<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" 
integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" 
crossorigin="anonymous">
</head>
<body>
<div class="container">

  <div class="col-8">
         
         <div class="col-4">
         <form action="joinProcess.jsp" method="post">
          
           <div class="form-group">
             <label for="userid">Id</label>
             <input type="text" placeholder="id" class="form-control" id="userid" name="userid">
           </div>
           
           <div class="form-group">
             <label for="password">Password</label>
             <input type="password" placeholder="Password" class="form-control" id="password" name="password">
           </div>    
           
            <div class="form-group">
             <label for="password confirmation">Password Confirmation</label>
             <input type="password" placeholder="Password Confirmation" class="form-control" id="password" name="password">
           </div>
           
            <div class="form-group">
             <label for="name">Name</label>
             <input type="text" placeholder="Name" class="form-control" id="name" name="name">
           </div>
           
             <div class="form-group">
             <label for="gender">Gender</label>
             <input type="radio" class="checkbox" id="men"  name="gender" value="men">men
             <input type="radio" class="checkbox" id="female"  name="gender" value="female">female
           </div>
           
             <div class="form-group">
             <label for="email">Email</label>
             <input type="email" placeholder="example@gmail.com" class="form-control" id="email" name="email">
           </div>
           <button type="submit" class="btn btn-primary">Input</button>
           <button type="erase" class="btn btn-primary">Cancel</button>
         </form>
         </div>
  </div>
</div>

</body>
</html>