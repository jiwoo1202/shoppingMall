<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="shoppingMall.dao.ProductDao"%>
<%@page import="shoppingMall.dto.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id="productDTO" class="shoppingMall.dto.ProductDto" scope="session"></jsp:useBean>
<title>Insert title here</title>
</head>
<body>
<%
	// 파일 업로드 관련 변수 설정
	String fileName = "";
	String realFolder = "c:/upload";
	int maxSize = 1024*1024*5; // 5MB
	String encType = "utf-8";
	// 1. 화면의 데이터를 가져온다 - 파일 업로드
	MultipartRequest multi = new MultipartRequest(request,realFolder,maxSize,encType,
			new DefaultFileRenamePolicy());
	
	// 2. 데이터를 추가한다.
	request.setCharacterEncoding("utf-8");  // jsp -> java 한글은 encoding 필요
	
	String productId = multi.getParameter("productId");
	String pname = multi.getParameter("pname");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String maker = multi.getParameter("maker");
	String category = multi.getParameter("category");
	String stockCounts = multi.getParameter("stockCounts");
	String condition = multi.getParameter("condition");
	
	//파일명을 가져온다.
	Enumeration file =  multi.getFileNames();
	String name =  (String)file.nextElement();
	fileName = multi.getFilesystemName(name);
	
	ProductDao dao = new ProductDao(productId,pname,Integer.valueOf(unitPrice)
			,description,maker,category,Long.valueOf(stockCounts),condition,fileName);
	
	
	//ProductDto productDTO = new ProductDto();
	productDTO.addProduct(dao);
	
	response.sendRedirect("products.jsp");
	
%>
</body>
</html>