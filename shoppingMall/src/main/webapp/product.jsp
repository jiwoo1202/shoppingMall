<%@page import="shoppingMall.dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="exceptonNoPruductId.jsp" %>    
<jsp:useBean id="productDto" class="shoppingMall.dto.ProductDto"></jsp:useBean>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>상세정보</title>
</head>
<body>
<%@ include file="menu.jsp" %>

<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">상품 정보</h1>
	</div>		
</div>
<%
	String id = request.getParameter("id");
	ProductDao product =  productDto.getProductbyId(id);	
%>
<div class="container">
	<div class = 'row'>
		<div class="col-md-5">
			<img style="width:100%" src="/filepath/<%=product.getFileName()%>">
		</div>
		<div class="col-md-6">
			<h3><%=product.getPname() %></h3>
			<p><%=product.getDescription() %>
			<p><b>상품 코드:</b>
			<span class="badge badge-danger"><%=product.getProductId() %> </span>
			<p><b>제조사:</b><%=product.getMaker() %>
			<p><b>분류</b><%=product.getCategory() %>
			<p><b>재고 수</b><%=product.getStockCounts() %>
			<p><a href="#" class="btn btn-info">상품 주문</a>
			<a href="products.jsp" class="btn btn-info">상품 목록</a>
		</div>
	</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>