<%@page import="java.util.Date"%>

<!-- 내장객체 session을 사용하겠다는 설정 기본이 true 그래서 false로도 변경 가능 -->
<%@ page session="true" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<%
new Date();
%>
	<!-- 
		디렉티브 태그
		page : jsp에 대한 정보를 설정
		include : jsp에 특정 문서를 포함
		taglib : 태그라이브러리 지정(태그를 이용해서 프로그램을 할수 있도록 하는 특별한 태크)
	-->
	
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
  	<%
  		for(int i = 1; i < 5 ; i++){
  			
  	
  	%>  	  
    <tr >
      <th scope="row"><%=i %></th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    
    <%
  		}
    %>
    
    
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>	
</body>
</html>