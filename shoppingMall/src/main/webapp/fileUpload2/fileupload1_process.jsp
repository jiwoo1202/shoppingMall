<%@page import="java.net.URLDecoder"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
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
		String fileUpload = "c:/upload";
		DiskFileUpload upload = new DiskFileUpload();
		upload.setHeaderEncoding("utf-8");
		List items = upload.parseRequest(request);
		Iterator params = items.iterator();
		while(params.hasNext()){
			FileItem item = (FileItem)params.next();
			if(item.isFormField()){ // 파일정보를 가지고 있지 않은 입력들...
				String name = item.getFieldName();
				String value = item.getString("utf-8");				
				out.print(name+" : " + value + "<br>" );
			}else{
				String fileFieldName = item.getFieldName();
				String fileName = item.getName();
				
				String contentType = item.getContentType();
				
				fileName = fileName.substring(fileName.lastIndexOf("/")+1);
				
				long fileSize = item.getSize();
				
				File file = new File(fileUpload+"/"+fileName);
				item.write(file);
				out.print("요청 파라메터 이름 : " + fileFieldName + "<br>");
				out.print("저장 파일 이름 : " + fileName + "<br>");
				out.print("파일 컨텐츠 : " + contentType + "<br>");
				out.print("파일 크기 : " + fileSize + "<br>");
			}
		}
	%>
</body>
</html>