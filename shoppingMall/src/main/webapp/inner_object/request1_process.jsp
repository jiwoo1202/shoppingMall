<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String psw = request.getParameter("password");	
	%>
	<p>아이디 : <%=id %></p>
	<p>패스워드 : <%=psw %></p>
</body>
</html>