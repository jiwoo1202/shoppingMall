<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session 활성화 여부</title>
</head>
<body>
	<%
		String sessionId = session.getId();
		long last_time = session.getLastAccessedTime();
		long start_time = session.getCreationTime();
		long used_time = (last_time-start_time)/1000;
	%>
	총 머무른 시간 : <%=used_time%>초
</body>
</html>