<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- forwar형식으로 테스트 해 보기 -->

	<jsp:useBean id="p" class="shoppingMall.dao.Person" scope="request"></jsp:useBean>
	<%
		p.setId(100);
		p.setName("이규영");
	%>
	
	<jsp:include page="javabeans03.jsp"></jsp:include>
	
</body>
</html>