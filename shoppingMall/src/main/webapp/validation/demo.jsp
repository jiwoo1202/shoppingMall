<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function checkForm() {
		$frm = document.frm;
		alert($frm.name.value);
	}
</script>

</head>

<body>
	<form action="#" name="frm">
		<p>이름 : <input type="text" name="name">
		<input type="submit" value="전송" onclick="checkForm()">
	</form>
</body>
</html>