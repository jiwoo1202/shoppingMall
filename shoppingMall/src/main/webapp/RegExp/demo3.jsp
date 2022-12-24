<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<script type="text/javascript">
		function checkMember() {
			$form = document.member;
			let regExpId = /^[a-z]+[a-z0-9]{5,19}$/g;
			let regExpName = /^[가-힣]*$/;
			// 최소 8 자, 최소 하나의 문자, 하나의 숫자 및 하나의 특수 문자 :
			let regExpPasswd = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
			let regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
			let regEmail = /^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
			
			let id = $form.id.value;
			let password = $form.password.value;
			let name = $form.name.value 
			let phone = $form.phone1.value+"-"+$form.phone2.value+"-"+$form.phone3.value;
			let email = $form.email.value;
			
			if(!regExpId.test(id)){
				alert(" 6~20 길이의 숫자나 문자여야 합니다.");
				$form.id.select();
				return;
			}
			if(!regExpPasswd.test(password)){
				alert("8자이상의 숫자 문자 특수 기호가 들어가야 합니다. ");
				$form.password.select();
				return;
			}
			if(!regExpName.test(name)){
				alert("한글이여야 합니다.");
				$form.name.select();
				return;
			}
			if(!regExpPhone.test(phone)){
				alert("연락처 입력을 확인해 주세요");				
				return;
			}
			if(!regEmail.test(email)){
				alert("이메일 입력형식을 확인해 주세요");	
				$form.email.select();
				return;
			}
			$form.submit();
		}
	</script>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form action="demo3_process.jsp" name = "member" method="post">
		<p>아이디:<input type="text" name="id">
		<p>비밀번호:<input type="password" name="password">
		<p>이름:<input type="text" name="name">
		<p>연락처:<select name='phone1'>
					<option value="02">02</option>
					<option value="010">010</option>
				</select>
				-
				<input type="text" maxlength="4" size="4" name="phone2">
				-
				<input type="text" maxlength="4" size="4" name="phone3">
		<p><input type="text" name="email">
		<p><input type="button" value="가입" onclick="checkMember()">		
	</form>
</body>
</html>