<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkForm() {
		$form = document.frm
		let str = $form.name.value;
		var regExp = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		
		if (!regExp.test(str)){
			alert("이름은 숫자로 시작할수 없습니다.")
			return;
		}
	}
</script>
</head>
<body>
	<form action="" name="frm">
		<p>이름 : <input type="text" name="name">
		<input type="submit" value="전송" onclick="checkForm()">
	</form>
</body>
</html>