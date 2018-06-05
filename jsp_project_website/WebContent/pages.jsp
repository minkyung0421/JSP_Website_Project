<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Travel Diary</title>
<style>


table{
	margin-top:6.5%;
}


</style>
</head>
<body>

<%
	String contentpage = request.getParameter("CONTENTPAGE");
%>

<center>
<table width = 810 border = 0 height = 850>
	<tr>
		<td colspan = "10">
		<jsp:include page = "menu.jsp" flush = "false"/>
		</td>
	</tr>
	<tr>
		<td height = "800px" valign = "top">
		<jsp:include page = "<%= contentpage %>"></jsp:include>
		</td>
	</tr>
	<tr>
		<td>
			<jsp:include page = "copyright.jsp" flush = "false"/>
		</td>
	</tr>
	


</table>
</center>
</body>
</html>