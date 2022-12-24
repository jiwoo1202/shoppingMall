<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
/* 아이디 : 4 ~ 12
비밀번호 : 4 ~ */

	function checkForm() {
		$form = document.loginForm;
		if($form.id.value.length < 4 || $form.id.value.length > 12){
			alert("아이디는 4 ~ 12자 이내로 입력 가능합니다.")
			$form.id.select();
			return;
		}
		
		if($form.password.value.length < 4){
			alert("비밀번호는 4자리 이상으로 입력 가능합니다.")
			$form.password.select();
			return;
		}		
		$form.submit();		
	}
</script>

</head>
<body>
	<form action="validation3_process.jsp" name="loginForm">
		<p>아 이 디 : <input type="text" name='id'>
		<p>패스 워드 : <input type="password" name='password'>
		<p><input type="button" value="로그인" onclick="checkForm()">
	</form>
</body>
</html>