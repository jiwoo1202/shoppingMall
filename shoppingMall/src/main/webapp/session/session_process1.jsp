<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id.equals("admin")&& password.equals("1234")){
		session.setAttribute("id", id);
		session.setAttribute("password", password);
		out.print("세션설정이 성공했습니다. 로그인 성공");
	}
	else{
		out.print("세션 설정이 실패했습니다.");
	}
%>
<%=id %>
<%= password %>
</body>
</html>