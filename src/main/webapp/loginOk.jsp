<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("mId");
		String pw = request.getParameter("mPw");
		
		if((id.equals("tiger")) && (pw.equals("12345"))) { // true 일 경우 로그인 시켜야 함 
			session.setAttribute("sessionId", id); // session 에 아이디 올리기
			session.setAttribute("sessionPW", pw);
			out.println("ok login");
		} else {
			out.println("NOT login");
		}
	%>
</body>
</html>