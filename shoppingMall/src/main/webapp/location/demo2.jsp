<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로케일 표현</title>
</head>
<%
	Locale locale =  request.getLocale();
	String date 
	= DateFormat.getDateTimeInstance(DateFormat.FULL,DateFormat.SHORT,locale)
	.format(new Date());	
	NumberFormat numberFormat = NumberFormat.getNumberInstance(locale);
%>

<body>	 
	 <p>국가 <%=locale.getDisplayCountry() %>
	 <p>날짜 <%=date %>
	 <p>숫자(12345.67) <%=numberFormat.format(12345.67) %>
</body>
</html>