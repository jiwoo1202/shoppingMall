<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session 활성화 여부</title>
</head>
<body>
	<h4>--------시간 변경전-------------</h4>
	<%
		int time = session.getMaxInactiveInterval()/60;
		
	%>
	<p>유효시간 : <%=time %>분
<h4>--------시간 변경후-------------</h4>
	<%
		session.setMaxInactiveInterval(60*60);
		time = session.getMaxInactiveInterval()/60;
		
	%>
	<p>유효시간 : <%=time %>분
</body>
</html>