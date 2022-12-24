<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function checkForm() {
		$form = document.loginForm;
		if($form.id.value == ""){
			alert("아이디를 입력해 주세요")
			$form.id.focus();
			return false;
		}
		
		if($form.password.value == ""){
			alert("비밀번호를 입력해 주세요")
			$form.password.focus();
			return false;
		}
		
		$form.submit();
		//alert("아이디 : " + $form.id.value + '\n' + "비밀번호 : " + $form.password.value);
	}
</script>

</head>
<body>
	<form action="validation2_process.jsp" name="loginForm">
		<p>아 이 디 : <input type="text" name='id'>
		<p>패스 워드 : <input type="password" name='password'>
		<p><input type="button" value="로그인" onclick="checkForm()">
	</form>
</body>
</html>