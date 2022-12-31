<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<p> 아이디는 : <%=session.getAttribute("id")%>
	<p> 비밀번호 : <%=session.getAttribute("password")%>	
	
</body>
</html>