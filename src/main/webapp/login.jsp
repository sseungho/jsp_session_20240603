<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 로그인</title>
</head>
<body>
<!-- 회원가입 상태 id: tiger, pw: 12345 -->
	<h3> 회원 로그인</h3>
	<hr>
	<form action="loginOk.jsp">
		아이디 : <input type="text" name="mId"><br>
		비 번 : <input type="text" name="mPw"><br>
		<input  type="submit" value="로그인">
		
	</form>
</body>
</html>