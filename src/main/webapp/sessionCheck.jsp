<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 정보 체크 업</title>
</head>
<body>
	<%
		int time = session.getMaxInactiveInterval(); // session 유효 시간 가져오기
		out.println("세션의 기본 유효 시간 : " + time +"<br>"); //세션 유효 시간 1800초 (30분)
		
		session.setMaxInactiveInterval(600);
		time = session.getMaxInactiveInterval();
		out.println("세션의 변경 유효 시간 : " + time +"<br>"); //세션 유효 시간 1800초 (30분)

	%>
	<hr>
	<%
	long firstTime = session.getCreationTime(); // 세션이 생성된 시간
	long lastTime = session.getLastAccessedTime(); // 세션이 마지막 사용된 시간
	long keepTime = (lastTime - firstTime) / 60;
	out.println("세션 유지 시간(분): " + keepTime + "<br>");
	
	String session_Id = session.getId();
	out.println("세션 고유 아이디: " + session_Id);

	
	
	%>
	<br>
		<a href="loginCheck.jsp">로그인 확인 페이지로 가기</a>
		
</body>
</html>