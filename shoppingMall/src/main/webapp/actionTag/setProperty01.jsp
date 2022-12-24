<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- param과는 다르게 property는 bean태그로 감싸지 않아도 된다. why? 어느 빈의 파라메터를 셋팅하는지에대한
정보가 있으므로 -->
	<jsp:useBean id="person" class="shoppingMall.dao.Person" scope="request"/>
	
	<jsp:setProperty property="id" name="person" value="123"/>
	<jsp:setProperty property="name" name="person" value="백엔드"/>	
	<p>아이디 : <%=person.getId() %></p>
	<p>이름 : <%=person.getName() %></p>
	
	<p>아이디 :  <jsp:getProperty property="id" name="person"/> </p>
	<p>이름 :  <jsp:getProperty property="name" name="person"/> </p>
	
</body>
</html>