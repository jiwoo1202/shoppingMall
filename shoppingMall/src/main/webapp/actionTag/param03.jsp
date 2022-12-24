<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이 문장이 화면에 나오면 안됩니다. </h3>
	<jsp:forward page="param04.jsp">
		<jsp:param value="admin" name="id"/>
		<jsp:param value='<%=URLEncoder.encode("관리자") %>' name="name"/>
	</jsp:forward>
</body>
</html>