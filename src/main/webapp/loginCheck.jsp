<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여기서 로그인 확인</title>
</head>
<body>
	<%
		String valMem   = (String) session.getAttribute("ValidMem");
	// 로그인 성공 valMem 의 값은 "yes"이고, 비로그인 상태면 null 값
		String sessionId   = (String) session.getAttribute("sessionId");
		String name = "";
		if (valMem !=null) { // 참이면 로그인 상태
			out.println("--- " + sessionId + "님이 로그인 중---"+ "<br>");
		
			Enumeration enuSession = session.getAttributeNames(); // 세션 안에 속성의 이름을 가져옮
			
			while (enuSession.hasMoreElements()) {
				name = enuSession.nextElement().toString();
				out.println(name + "<br>");
				String sessionVal   = (String) session.getAttribute(name);
				out.println(sessionVal + "<br>");
			}
			
	%>		
		<br>
		<a href="sessionCheck.jsp">세션 체크 페이지로 가기</a>
		
		<br>	
		<a href="logout.jsp"> 로그아웃	</a>
		<br>
		
	<%	
		} else { // 비-로그인 상태
			out.println("로그인 페이지로 이동해라!");
	%>
		<br>	
		<a href="login.jsp"> 로그인	</a>
		<br>
	<%
	}
	%>
	<br><br>
	<hr>

</body>
</html>