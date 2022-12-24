<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>------------- 기본 로케일 ------------------------
	<fmt:setLocale value="ko"/>
	<fmt:setBundle basename="shoppingMall.bundle.myBundle" var="resourceBundle"/>
	<p>제목 : <fmt:message key="title" bundle="${resourceBundle}"></fmt:message>
	<p>유저네임 : <fmt:message key="username" bundle="${resourceBundle}"></fmt:message>
	<p>페스워드 : <fmt:message key="password" bundle="${resourceBundle}"></fmt:message>
	
	<p>------------- 영문 로케일 ------------------------
	<fmt:setLocale value="en"/>
	<fmt:setBundle basename="shoppingMall.bundle.myBundle" var="resourceBundle"/>
	<p>제목 : <fmt:message key="title" bundle="${resourceBundle}"></fmt:message>
	<p>유저네임 : <fmt:message key="username" bundle="${resourceBundle}"></fmt:message>
	<p>페스워드 : <fmt:message key="password" bundle="${resourceBundle}"></fmt:message>
	
</body>
</html>