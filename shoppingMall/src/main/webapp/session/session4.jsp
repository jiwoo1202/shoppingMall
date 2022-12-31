<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session 활성화 여부</title>
</head>
<body>
	<%
		if(request.isRequestedSessionIdValid()){
			out.print("세션이 유효합니다.");
		}else{
			out.print("세션이 유효 하지 않습니다");
		}
	%>
	
</body>
</html>