<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
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
</style>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	String filename = title + ".txt";
	
	String result;
	
	PrintWriter writer = null;
	
	try{
		if(!title.equals("")){
			String filePath = application.getRealPath("/WEB-INF/how_to_txt/" + filename);
			writer = new PrintWriter(filePath);
			writer.printf("제목 <br> %s %n <br>", title);
			writer.printf("내용 <br>");
			writer.println(content);
		
			writer.flush();
			result = "ok";
		}else{
			out.println("오류 발생");
			result = "fail1";
		}
	}catch(Exception e){
		out.println("오류 발생");
		result = "fail2";
	}
	
	response.sendRedirect("how_to_result.jsp?send=" + result);
	

%>

</body>
</html>