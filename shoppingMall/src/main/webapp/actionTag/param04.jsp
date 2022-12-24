<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디 : <%=request.getParameter("id") %><br>
	<% String name =  request.getParameter("name");
		name = URLDecoder.decode(name);
	%>
	이름 : <%=name %>
</body>
</html>