<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check() {
		/*
			/정규 표현식/[flag]
			flag 
				i : 대소문자 구분안함
				g : Global 문자열내의 모든 패턴을 검출
				m : Multi Line : 줄바꿈 행이 있는지 검출
		*/
		let regExp = /java/i;    /* let regExp = new RegExp('java','i') */
		let result =  regExp.test("jaVa server page")
		let result2 =  regExp.exec("jaVa server page")
		alert(result + " " + result2);		
	}
</script>
</head>
<img alt="" src="../resources/images/001.PNG">
<img alt="" src="../resources/images/002.PNG">
<p>
<body>
 <input type="button" onclick="check()" value="정규식테스트">
</body>

</html>