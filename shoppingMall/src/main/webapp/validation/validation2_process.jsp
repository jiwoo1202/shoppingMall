<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>입력성공</h3>
	<%
		request.setCharacterEncoding("utf8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
	%>
	<p>아이디 : <%= id %>
	<p>패스워드 : <%= password %>
</body>
</html>