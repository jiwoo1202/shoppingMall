<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="javabean_date" class="java.util.Date"></jsp:useBean>
	<%
	java.util.Date date = new java.util.Date();
	%>
	<h3>오늘의 날자 및 시간</h3>
	<%=date %><br>
	<%=javabean_date %>
</body>
</html>