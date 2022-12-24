<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function calc() {
		$form = document.frm;
		num1 = parseInt($form.num1.value);
		num2 = parseInt($form.num2.value);
		alert( num1/num2);
	}
</script>

<body>
	<form action="exception_process.jsp", method="post" name="frm">
		<p>num1 : <input type="text" name="num1">
		<p>num2 : <input type="text" name="num2">
		<!-- <button onclick="calc()">계산</button> -->
		<input type="submit">
	</form>
</body>
</html>