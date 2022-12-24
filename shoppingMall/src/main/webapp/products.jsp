<%@page import="shoppingMall.dao.ProductDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productDTO" class="shoppingMall.dto.ProductDto" scope="session"></jsp:useBean>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
<body>
<%@ include file="menu.jsp" %>

<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">상품 목록</h1>
	</div>		
</div>
<%
	List<ProductDao> listOfProducts = productDTO.getAllProduct();
%>
<div class="container">
	<div class="row" align="center">		
		<c:forEach items="<%=listOfProducts %>" var="dao" >
			<div class="col-md-4">
				<img style="width:100%" src="/filepath/${dao.getFileName()}">
				<h3>${dao.getPname()} </h3>
				<p>${dao.getDescription()} </p>
				<p>${dao.getUnitPrice()}원 </p>
				<p><a class="btn btn-secondary" role="button" href="product.jsp?id=${dao.getProductId()}">상세정보</a>
			</div>
		</c:forEach>
	</div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>