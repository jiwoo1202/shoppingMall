<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	/*
		파일을 업로드 할때는 multipartRequest 객체를 만든다
		
		일반 데이터는 getParameter
		파일데이터는 getFileNames
	*/
	MultipartRequest multi = new MultipartRequest(request
			,"c:/upload",1024*1024*5,"utf-8"
			,new DefaultFileRenamePolicy());
	String title = multi.getParameter("title");
	String subject = multi.getParameter("subject");
	
	
	Enumeration files =  multi.getFileNames();
	String name = (String)files.nextElement();
	String filename = multi.getFilesystemName(name);// 저장 파일 이름
	String original = multi.getOriginalFileName(name); // 실제 파일 이름
	String type =  multi.getContentType(name);
	File file =  multi.getFile(name);
	
%>
<p>저장 파일 이름 : <%=filename %>
<p>실제 파일 이름 : <%=original %>
<p>파일 컨텐츠 유형 : <%=type %>
<p>파일 크기 : <%=file.length() %> byte

</body>
</html>