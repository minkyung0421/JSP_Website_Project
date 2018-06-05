<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Travel Diary</title>
<meta http-equiv="Page-Exit" content="blendTrans(Duration=7);">
<style>
body{
	background: url('image/MAIN_BACK.png');
	background-repeat: no-repeat;
	background-size:100%;
	
	opacity:0;  
    transition: opacity 2s;
    -webkit-transition: opacity 2s; /* Safari */
}

.start_btn{
	width:200px;
	height:100px;
	margin-left:44%;
	margin-top:37%;
}

</style>

</head>
<body onload="document.body.style.opacity='1'">
	<!-- <form method = "post">
	<input type = "image" src = "image/moana.jpg" class = "start_btn">	
	</form> -->
	<a href = "main.jsp"><img src = "image/start_btn.png" class = "start_btn"></a>
</body>
</html>