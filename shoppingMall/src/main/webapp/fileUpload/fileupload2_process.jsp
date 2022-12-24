<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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

	String title1 = multi.getParameter("title1");
	String title2 = multi.getParameter("title2");
	String title3 = multi.getParameter("title3");
	
	String subject1 = multi.getParameter("subject1");
	String subject2 = multi.getParameter("subject2");
	String subject3 = multi.getParameter("subject3");
	
	
	Enumeration files =  multi.getFileNames();
	List<String> fileSystemnames = new ArrayList();	
	while(files.hasMoreElements()){
		String name = (String)files.nextElement();
		String filename = multi.getFilesystemName(name);// 저장 파일 이름
		fileSystemnames.add(filename);
		String original = multi.getOriginalFileName(name); // 실제 파일 이름
		String type =  multi.getContentType(name);
		File file =  multi.getFile(name);		
	}
	
%>

<table class="table">
  <thead>
    <tr>
      <th scope="col">이름</th>
      <th scope="col">제목</th>
      <th scope="col">파일</th>      
    </tr>
  </thead>
  <tbody>    
    <tr>
      <th scope="row"><%=title1 %></th>
      <td><%=subject1 %></td>
      <td><%=fileSystemnames.get(0) %></td>      
    </tr>    
    <tr>
      <th scope="row"><%=title2 %></th>
      <td><%=subject2 %></td>
      <td><%=fileSystemnames.get(1) %></td>      
    </tr>
    <tr>
      <th scope="row"><%=title3 %></th>
      <td><%=subject3 %></td>
      <td><%=fileSystemnames.get(2) %></td>      
    </tr>
  </tbody>
</table>

</body>
</html>