<%@page import="java.util.Date"%>

<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트태그</title>
</head>
<body>
<h3>오늘은 : </h3>
<%= new Date() %>
</body>
</html>