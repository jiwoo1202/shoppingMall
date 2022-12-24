<%@page import="shoppingMall.Calculator"%>
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
	Calculator cal = null;
	cal.getClass();
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	int num1_int = Integer.parseInt(num1);
	int num2_int = Integer.parseInt(num2);
	int result = num1_int / num2_int;	
%>
<h1> 결과 : <%=result %></h1>
</body>
</html>