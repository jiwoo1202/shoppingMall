<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>param06.jsp를 include해서 출력, 양식은  오늘의 날자 : new Date()</h3>
	<%
		String date =  URLEncoder.encode("오늘의 날자와 시간 : ");
	%>
	<jsp:include page="param06.jsp">		
		<jsp:param value="<%=date %>" name="title"/>
		<jsp:param value="<%=Calendar.getInstance().getTime() %>" name="date"/>
	</jsp:include>
</body>
</html>