<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><fmt:message key="title"  />  </h1>  <!-- 상품등록 -->
		</div>		
	</div>
	<div class="container" align='center'>
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
			<%
				String error = request.getParameter("error");
				if(error != null){
					out.print("<div class='alert alert-danger'> " );
					out.print("아이디와 비밀번호를 확인해 주세요");
					out.print("</div>");
				}
			%>
			<form class="form-signin" action="j_security_check" method="post">
	  			<div class='form-group'>
	  				<label for="inputUserName" class="sr-only">User Name</label>
	  				<input class='form-control' placeholder="ID" 
	  					required autofocus type="text" name="j_username">
	  			</div>
	  			
	  			<div class='form-group'>
	  				<label for="inputPassword" class="sr-only">Password</label>
	  				<input class='form-control' placeholder="PASSWORD" 
	  					required type="password" name="j_password">
	  			</div>	  			
	  			<button class = "btn btn btn-lg btn-success btn-block" 
	  				type="submit">로그인</button>
	  			
			</form>
		</div>
	</div>



	
</body>
</html>