<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div{
margin-bottom:10px;
}

label{
font-family:arial;
display: inline-block;
width:150px
}
input{
padding:5px;
}

</style>
</head>
<body>
	<form action="/infoServlet" method="post">
      <div>
        <label for="userid">Id</label>
        <input type="text" name="userid" id="userid" />
      </div>
      <div>
        <label for="password">password</label>
        <input type="password" name="password" id="password" />
      </div>
      <div>
        <label for="username">username</label>
        <input type="text" name="username" id="username" />
      </div>
      <button type="submit" onclick="process()">submit</button>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
    
    $(function () {
        $("button").click(function (e) {
          //태그가 가지고 있는 기능 막기
          //submit
          e.preventDefault();
          //input 요소 가져오기
          let userid = $("#userid");
          //비밀번호 가져오기
          let password = $("#password");
          //이름 가져오기
          let username = $("#username");
          //input 요소가 가지고 있는 값 가져오기

          //폼 유효성 검증
          if (userid.val() == "") {
            alert("아이디를 확인해 주세요.");
            userid.focus();
            return;
          }
          if (password.val() == "") {
            alert("비밀번호를 확인해 주세요.");
            password.focus();
            return;
          }
          if (username.val() == "") {
            alert("이름을 확인해 주세요.");
            password.focus();
            return;
          }
          //폼 전송
          $("form").submit();
        });
      });
      
    </script>

</body>
</html>