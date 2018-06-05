<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
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
	
	.button{
		font-family: NANUMBARUNPENB;
	}
</style>
</head>
<body>

<%
	String filename = request.getParameter("FILE_NAME");
%>

<center><h4>타임테이블 이름 : <%= filename %></h4></center>

<%
	BufferedReader reader = null;

	try{
		String filePath = application.getRealPath("/WEB-INF/how_to_txt/" + filename);
		
		reader = new BufferedReader(new FileReader(filePath));
		
		while(true){
			String str = reader.readLine();
			if(str == null) break;
			out.println(str + "<br>");
		}
	}catch(Exception e){
		out.println("파일을 읽을 수 없습니다.");
	}

%>

<br>
<br>
<center><a href = "how_to_travel_view.jsp"><input type = "button" value = "타임테이블 목록" class = "button"></a></center>

</body>
</html>