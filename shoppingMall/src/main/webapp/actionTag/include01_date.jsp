<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id=ctime></div>
</body>

<script type="text/javascript">
	const $ctime = document.querySelector('#ctime');
	let ctime_f = ()=>{
		let ctime = new Date();		
		let hh = (ctime.getHours() < 10)?  '0'+ctime.getHours(): ctime.getHours();
		let mm = (ctime.getMinutes() < 10)?  '0'+ctime.getMinutes(): ctime.getMinutes();
		let ss = (ctime.getSeconds() < 10)?  '0'+ctime.getSeconds(): ctime.getSeconds();		 
		strdate = hh + ':' + mm +':'+ ss;
		return strdate;
	}
	$ctime.textContent = ctime_f();  // 최초 하면로딩시 한번실행
	
	setInterval(() => {				// 그 이후 매 1초마다 실행
		$ctime.textContent = ctime_f();
	}, 1000);
</script>

</html>

