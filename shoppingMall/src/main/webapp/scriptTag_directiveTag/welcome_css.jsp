<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환영합니다.</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="menu.jsp" %>
<%! 
	String greeting = "Welcome to Web Shopping Mall";
	String tagline = "Welcome to Web Market";
%>
<div class = 'jumbotron'>
	<div class = 'container'>
		<h1 class = 'display-3'>
			<%= greeting %>		
		</h1>
	</div>	
</div>

<main role = "main">
	<div class = 'container'>
		<div class = 'text-center'>
			<h3>
				<%= tagline %>
			</h3>
			<div id = timer></div>  <!-- 추가 -->
			<%
				Date day = new Date();
				String ampm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if(hour / 12 == 0)
					ampm = "AM";
				else{
					ampm = "PM";
					hour -= 12;
				}
				String ct = hour+":"+minute+":"+second+":"+" "+ampm;
				//out.print("현재 접속시간 : " + ct);
			%>		
		</div>
		<hr>
	</div>
</main> 

<%@ include file="footer.jsp" %>

<script type="text/javascript">
const $timer = document.querySelector('#timer');
const showtimer = ()=>{
	var today = new Date()
	var date = 
		//today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate()+' ' +
	 today.getHours() + ":"  
     + today.getMinutes() + ":" 
     + today.getSeconds();
	$timer.textContent = '현재 접속시간 : ' + date;
};
showtimer();
setInterval(() => {
	showtimer();	
}, 1000);  /* 1초마다 */
</script>
</body>
</html>