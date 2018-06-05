<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Travel Diary</title>
</head>
<style>
@font-face { font-family: 'NANUMBARUNPENB'; src: url(fonts/NANUMBARUNPENB.TTF) format('truetype'); } 

body { font-family: NANUMBARUNPENB; }
.button{
	font-family: NANUMBARUNPENB;
}
</style>
<body>

<center>	
<%
	String str = request.getParameter("send");

	if(str.equals("ok")){
		out.println("타임테이블이 저장되었습니다!");
	}else if(str.equals("fail1")){
		out.println("저장을 실패했습니다 ㅠㅠ <br> 제목을 입력해주세요!");
	}else{
		out.println("저장을 실패했습니다 ㅠㅠ");
	}
%>
<br>
<input type = "button" value = "확인" onClick='window.close()' style = "margin-top:20px" class = "button">
</center>
</body>
</html>