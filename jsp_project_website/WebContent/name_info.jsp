<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Travel Diary</title>
<meta http-equiv="Page-Exit" content="blendTrans(Duration=7);">
<style>

@font-face { font-family: 'NANUMBARUNPENB'; src: url(fonts/NANUMBARUNPENB.TTF) format('truetype'); } 

body{
	background: url('image/MAIN_BACK.png');
	background-repeat: no-repeat;
	background-size:100%;
	font-family: NANUMBARUNPENB;
	
	opacity:0;  
    transition: opacity 2s;
    -webkit-transition: opacity 2s; /* Safari */
}

.info{
	width:200px;
	height:40px;
	margin-left:44%;
	margin-top:37%;
	text-align:center;
}

.button{
	margin-left:47.5%;
	font-family: NANUMBARUNPENB;
	font-size:13pt;
}

</style>
</head>
<body onload="document.body.style.opacity='1'">
	<form method = "post" action = "where_to_go.jsp" name = "form1">
	<input type = "text" name = "name" placeholder = "이름을 입력해주세요" class = info>
	<br>
	<br>
	<a href = "main.jsp">
		<input type = "submit" value = "시작하기" class = "button">
	</a>
	</form>
</body>
</html>