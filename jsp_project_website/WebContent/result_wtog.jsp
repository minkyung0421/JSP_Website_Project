<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>POPUP</title>
<style>

@font-face { font-family: 'NANUMBARUNPENB'; src: url(fonts/NANUMBARUNPENB.TTF) format('truetype'); } 

body { font-family: NANUMBARUNPENB; }
table {
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
  .button{
  font-family: NANUMBARUNPENB;
  }
</style>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");

	String desti = request.getParameter("desti");
	
	String year1 = request.getParameter("year1");
	String month1 = request.getParameter("month1");
	String day1 = request.getParameter("day1");
	
	String year2 = request.getParameter("year2");
	String month2 = request.getParameter("month2");
	String day2 = request.getParameter("day2");
	
	String money = request.getParameter("money");
	
	String[] move = request.getParameterValues("move");
	
	String who = request.getParameter("who");
	if(who.equals("together")) who = "같이가자";
	else who = "혼자가자";
	
	
%>

<center>
<h1 style = "color:#A9E2F3">계획은 이렇게 세울까?</h1>


<table border = 0 width = "450px" cellpadding = 10px>
	<tr>
		<td width = "100px">
			목적지
		</td>
		<td>
			<%= desti %> 
		</td>
	</tr>
	<tr>
		<td>
			날짜
		</td>
		<td>
			 <%= year1 %>년 <%= month1 %>월 <%= day1 %>일  ~ <%= year2 %>년 <%= month2 %>월 <%= day2 %>일
		</td>
	</tr>
	<tr>
		<td>
			예산
		</td>
		<td>
			<%= money %>원 
		</td>
	</tr>
	<tr>
		<td>
			이동수단 
		</td>
		<td>
			<%= Arrays.toString(move)%>
		</td>
	</tr>
	<tr>
		<td>
			 동행자
		</td>
		<td>
			<%= who %>
		</td>
	</tr>
</table>
<form>
	<input type = "button" value = "확인" onClick='window.close()' style = "margin-top:20px" class = "button">
</form>
</center>
</body>
</html>