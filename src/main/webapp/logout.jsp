<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그 아웃</title>
</head>
<body>
	<%
		session.invalidate(); // 세션의 모든 내용 삭제 >> 로그 아웃
	%>
	<a href="loginCheck.jsp">로그인 확인 페이지로 이동</a>
</body>
</html>