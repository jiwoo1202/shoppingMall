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
		alert("아이디 : " + $form.id.value + '\n' + "비밀번호 : " + $form.password.value);
	}
</script>

</head>
<body>
	<form action="#" name="loginForm">
		<p>아 이 디 : <input type="text" name='id'>
		<p>패스 워드 : <input type="password" name='password'>
		<p><input type="submit" value="로그인" onclick="checkForm()">
	</form>
</body>
</html>