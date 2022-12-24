<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스트립트태그</title>
</head>
<body>
	<h3>스크립트 태그를 이용해서 정수형 변수 data를 50으로 선언하고 화면에 출력</h3>
	<%! int data = 50;%>
	<%= data %>
	
	<h3>스크립트 태그를 이용해서 메소드 만들고 호출하기  int sum(int a, int b)</h3>
	<%! int sum(int a, int b)
	{	
		return a+b;
	}
	%>
	
	<%= sum(10,10) %>
	
	<h3>스크립트 태그를 이용해서 메소드 만들고 호출하기  문자열을 받아서 대문자로 출력</h3>
	<%! String makeUpper(String str){return str.toUpperCase();}%>
	<%= makeUpper("hello") %>
	
	<h3>선언문에서 변수선언 VS 스크립틀릿에서 변수선언 declaration01_jsp.java서 확인해보기</h3>
	<%! int global_A = 0;%>
	<% int inner_A = 0;%>	
	
	<h3>스크립틀릿에서 지역변수 사용해 보기</h3>
	<%
		int num1 = 2;
		int num2 = 10;		
	%>
	
	<%= num1 %><br>	
	<%= num2 %>
	
	<h3>스크립틀릿에서 0부터 10까지숫자중에 짝수만 출력 </h3>
	<%
		for(int i=0; i<=10; i++){
			if(i % 2 ==0){
				out.print(i+"<br>");
			}
		}
	%>
</body>
</html>









