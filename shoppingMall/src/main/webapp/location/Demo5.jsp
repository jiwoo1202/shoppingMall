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
	<fmt:requestEncoding value="UTF-8" />
	요청파라메터 : <%=request.getParameter("id") %>
	<form action="" method="post">
		<p>아이디 : <input type="text" name="id">
		<input type="submit" value="전송">
	</form>
</body>
</html>