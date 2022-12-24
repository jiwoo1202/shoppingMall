<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로케일 감지</title>
</head>
<%
	response.setContentType("text/html");
	response.setHeader("Content-Language","es");
	String title = "Espan&ntilde;ol";
%>
<title>
	<%=title %>
</title>
<body>
	<p>Idioma : Espan&ntilde;ol	 
</body>
</html>