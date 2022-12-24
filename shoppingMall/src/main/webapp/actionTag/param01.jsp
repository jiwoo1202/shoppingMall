<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- param  액션태그는  페이지에서 다른페이지로 정보를 전달하는데 사용
단독으로 사용 못하고 foward, include 액션태그의 내부에서 사용 -->
<body>
	<h3>이 파일은 param01.jsp입니다.</h3>
	<jsp:include page="param02.jsp">
		<jsp:param value="<%= new Date() %>" name="cdate"/>
	</jsp:include>
</body>
</html>