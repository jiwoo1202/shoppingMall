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
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		// 로그인 로직  admin / 1234  로그인 성공 그렇지 않으면 실패
		if(id.equals("admin") && password.equals("1234")){
			response.sendRedirect("response1_success.jsp");
		}else{
			response.sendRedirect("response1_failed.jsp");
		}
		
	%>
</body>
</html>