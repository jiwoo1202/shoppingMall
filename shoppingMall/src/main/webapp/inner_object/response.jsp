<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>3초후에 구글사이트로 이동합니다.</h3>
	<%
		//response.sendRedirect("https://www.google.co.kr/");	
	%>
</body>
<script type="text/javascript">
setTimeout(() => {	
	location.href = "https://www.google.co.kr/";
}, 3000);
</script>
</html>