<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>    <!-- 태그라이브러리를 무시하는 경우 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setAttribute("name", "홍길동");
	%>
	
	<%=	request.getAttribute("name") %>
	
	${requestScope.name}
	
</body>
</html>