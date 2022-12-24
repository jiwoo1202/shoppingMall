<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="p" class="shoppingMall.dao.Person" scope="request"></jsp:useBean>
	<p>아이디 : <%=p.getId() %></p>
	<p>이름 : <%=p.getName() %></p>
	
</body>
</html>