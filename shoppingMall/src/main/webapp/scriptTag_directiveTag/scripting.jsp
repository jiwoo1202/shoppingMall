<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 태그</title>
</head>
<body>
	<h2>Scripting Tag</h2>
	<!-- 선언문(declaration) 자바변수나 메소드를 정의할때 사용-->	
	<%! int count = 3;  // 전역변수
		String makeItLow(String data){
			return data.toLowerCase();
		}
	%>
	
	<!-- 스크립틀릿(scriptlet) -->
	<%
		for(int i = 1; i <= count; i++){
			out.println("java server page" + i +"<br>");
		}
		//out.print(makeItLow("Hello World"));
	%>
	
	<!-- 표현문 변수, 계산식, 메소드 호출결과를 문자열 형태로 화면에출력 -->
	<%= makeItLow("Hello World") %>
</body>
</html>