<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View List</title>
<style>
@font-face { font-family: 'NANUMBARUNPENB'; src: url(fonts/NANUMBARUNPENB.TTF) format('truetype'); } 

body { font-family: NANUMBARUNPENB; }

a:visited{color:#a2b1ff}
a:hover{color:#A9E2F3}

.button{
	font-family: NANUMBARUNPENB;
	font-size:10pt;
}

</style>
</head>
<body>
<%
	String dirPath = application.getRealPath("/WEB-INF/how_to_txt");
	/* out.println(dirPath); */
	
	File dir = new File(dirPath);
	String filenames[] = dir.list();
	
	//파일 이름 확인
 	/*  for(int i = 0; i<filenames.length; i++){
		out.println(filenames[i]);
		out.println("<br>");
	}   */
%>
<center>
<h3>저장된 타임테이블 리스트</h3>
<br>
<br>
<%
	for(String filename : filenames){ 
	
%>
		<a href = "how_to_travel_view_pro.jsp?FILE_NAME=<%=filename%>"><%=filename %></a>
		<br>
		<br>
<%	}
%>
<input type = "button" value = "닫기" onClick='window.close()' style = "margin-top:20px" class = "button">
</center>
</body>
</html>