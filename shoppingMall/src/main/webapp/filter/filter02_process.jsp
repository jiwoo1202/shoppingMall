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
	
		String id = request.getParameter("name");
		String password = request.getParameter("password");
	%>
	입력된 값:	<%=id %>
	입력된 값:	<%=password %>
</body>
</html>