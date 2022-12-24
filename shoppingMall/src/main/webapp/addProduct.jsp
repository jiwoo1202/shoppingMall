<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js">

</script>
<fmt:setLocale value='<%=request.getParameter("language") %>'/>
<fmt:setBundle basename="shoppingMall.bundle.message"/>

</head>
<body>
<%@ include file="menu.jsp" %>
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3"><fmt:message key="title"  />  </h1>  <!-- 상품등록 -->
	</div>		
</div>

<div class="container">
	<div class="text-right">
		<a href="?language=ko">Korean</a>|<a href="?language=en">English</a>
		<a href="logout.jsp" class = "btn btn-sm btn-success pull-right">logout</a>
	</div>


	<form action="processAddProduct.jsp" name="productFrom" 
		class = "form-horizontal" method="post" enctype="multipart/form-data">
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="productId"  /></label> <!-- 상품 아이디 -->
			<div class="col-sm-3">
				<input type="text" name="productId" class="from-control">
			</div>
		</div>
		
		
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="productName"/></label>
			<div class="col-sm-3">
				<input type="text" name="pname" class="from-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="unitPrice"/></label>
			<div class="col-sm-3">
				<input type="text" name="unitPrice" class="from-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="description"/></label>
			<div class="col-sm-5">
				<textarea  name="description" cols="50" rows="2"  class="from-control"></textarea>
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="manufictured"/></label>
			<div class="col-sm-3">
				<input type="text" name="maker" class="from-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="category"/></label>
			<div class="col-sm-3">
				<input type="text" name="category" class="from-control">
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="stockUnit"/></label>
			<div class="col-sm-3">
				<input type="text" name="stockCounts" class="from-control" >
			</div>
		</div>
		
		<div class="form-group row">
			<label class="col-sm-2"><fmt:message key="state"/></label>
			<div class="col-sm-5">
				<input type="radio" name="condition" value="New" class="from-control" checked="checked"><fmt:message key="new"/>
				<input type="radio" name="condition" value="Old" class="from-control"><fmt:message key="old"/>
				<input type="radio" name="condition" value="Refubished" class="from-control"><fmt:message key="Refurbished"/>
			</div>
		</div>
		
		<div class="form-group row">			
			<label class="col-sm-2"><fmt:message key="image"/></label>
			<div class="col-sm-5"">
				<input type="file" class="from-control" name="productImage">				
			</div>
		</div>
		
		<div class="form-group row">			
			<div class="col-sm-offset-2 col-sm-10"">
				<input type="button" class="btn btn-primary" value="<fmt:message key='submision'/>" onclick="checkAddProduct()">
				<input type="reset" class="btn btn-danger" value="<fmt:message key='init'/>">
			</div>
		</div>
	
	</form>
</div>


<%@ include file="footer.jsp" %>
</body>
</html>