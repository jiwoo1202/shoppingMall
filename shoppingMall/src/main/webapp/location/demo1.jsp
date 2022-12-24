<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로케일 감지</title>
</head>
<body>
<%
	Locale locale = request.getLocale();
	String displayLanguage =  locale.getDisplayLanguage();
	String language =  locale.getLanguage();
	String displayCountry = locale.getDisplayCountry();
	String country =  locale.getCountry();
%>
<p>locale : <%=locale %>
<p>displayLanguage : <%=displayLanguage %>
<p>language : <%=language %>
<p>displayCountry : <%=displayCountry %>
<p>country : <%=country %>

</body>
</html>