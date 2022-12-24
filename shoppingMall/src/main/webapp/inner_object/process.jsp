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
	request.setCharacterEncoding("utf-8"); // 폼에서 전달받은 데이터가 한글일경우 반드시 필요함
	String name = request.getParameter("name");
%>
<h3><%=name %></h3>
</body>
</html>