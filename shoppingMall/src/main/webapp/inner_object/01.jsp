<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>내장 객체 종류</title>
</head>
<body>
<table class="table">
  <thead>
    <tr>
      <th scope="col">내장객체</th>
      <th scope="col">반환유형</th>
      <th scope="col">설명</th>      
    </tr>
  </thead>
  <tbody>
    <tr>      
      <th>request</th>
      <td>HttpServletRequest</td>
      <td>웹 브라우져의 HTTP 요청 정보를 저장합니다.</td>
    </tr>
    <tr>      
      <th>response</th>
      <td>HttpServletResponse</td>
      <td>웹 브라우져의 HTTP 응답 정보를 저장합니다.</td>
    </tr>
    <tr>      
      <th>out</th>
      <td>jspWriter</td>
      <td>jsp로 출력하는 출력스트림.</td>
    </tr>
  </tbody>
</table>
</body>
</html>