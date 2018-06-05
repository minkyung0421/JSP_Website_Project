<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META http-equiv="page-enter" content="BlendTrans(Duration=0.5)" />
<link rel = "stylesheet" type = "text/css" href = "body_css_info.css">
<title>Travel Diary</title>

<!-- 입력하지 않았을 경우.. -->
<style>

@font-face { font-family: 'NANUMBARUNPENB'; src: url(fonts/NANUMBARUNPENB.TTF) format('truetype'); } 

body { font-family: NANUMBARUNPENB; }

.desti{
	width: 750px;
	height: 50px;
}

.month{
	width: 40px;
}

.day{
	width: 50px;
}
.money{
	width :300px;
}

.move{
	margin-right:20px;
}

.button{
	margin-right:40px;
	font-family: NANUMBARUNPENB;
	font-size:13pt;
}

td{
	padding-bottom:40px;
}

.name_c{
	color: #A9E2F3;
	font-size: 30pt;
	margin-top:10px;
}


</style>
<script>

var rgx1 = /\D/g;  // /[^0-9]/g 와 같은 표현
var rgx2 = /(\d+)(\d{3})/; 

function getNumber(obj){
	
     var num01;
     var num02;
     num01 = obj.value;
     num02 = num01.replace(rgx1,"");
     num01 = setComma(num02);
     obj.value =  num01;

}
//천단위 콤마 찍기
function setComma(inNum){
     
     var outNum;
     outNum = inNum; 
     while (rgx2.test(outNum)) {
          outNum = outNum.replace(rgx2, '$1' + ',' + '$2');
      }
     return outNum;

}
	
function pop_open(){
	
	 var form = document.sendform;
	 var url = "result_wtog.jsp"
	 
	 var left = Math.ceil((window.screen.width - 530)/2);
     var top = Math.ceil((window.screen.height - 350)/2);
	 
	 window.open("","result_wtog","top=" + top + ", left =" + left + ", width=530px, height=350px");
	 form.action = url //팝업창 URL
	 form.target="result_wtog";
	 form.method = "post"
	
	 
	 form.submit(); // 값을 전송한다.
	}

</script>

</head>
<body>

<h1 class = "name_c">여행 다이어리</h1>	
<form method = "post" action = "result_wtog.jsp" name="sendform">
	<table border = 0 width = "800px" style = "margin-top:5px">
	<tr>
		<td>
		<label>어디로 갈까?</label><br><br>
		<input type = "text" placeholder = "예) 일본, 도쿄" name = "desti" class = "desti" id = "desti">
		
	</tr>
	
	<tr>
		<td>
			<label>얼마나 갈까?</label><br><br>
			<input type = "number" min = 2018 max = 2030 name = "year1" id = "year1"> 년
			<input type = "number" min = 1 max = 12 class = "month" name = "month1" id = "month1"> 월
			<input type = "number" min = 1 max = 31 class = "day" name = "day1" id = "day1"> 일
			 ~
			<input type = "number" min = 2018 max = 2030 name = "year2" id = "year2"> 년
			<input type = "number" min = 1 max = 12 class = "month" name = "month2" id = "month2"> 월
			<input type = "number" min = 1 max = 31 class = "day" name = "day2" id = "day2"> 일
		</td>
	</tr>
	<tr>
		<td>
			<label>얼마 가지고 갈까?</label><br><br>
			<input type = "text" name = "money" class = "money" id = "money" onchange="getNumber(this);" onkeyup="getNumber(this);">원
		</td>
	</tr>
	<tr>
		<td>
			<label>어떻게 갈까?</label><br><br>
			<input type = "checkbox" name = "move" value = "비행기"><label class ="move">비행기</label>
			<input type = "checkbox" name = "move" value = "배"><label class ="move">배</label>
			<input type = "checkbox" name = "move" value = "차"><label class ="move">자동차</label>
			<input type = "checkbox" name = "move" value = "걸어서"><label class ="move">걸어서</label>
		</td>
	</tr>
	<tr>
		<td>
			<label>누구랑 갈까?</label><br><br>
			<input type = "radio" name = "who" value = "together"><label class ="move">같이가자</label>
			<input type = "radio" name = "who" value = "solo"><label class ="move">혼자가자</label>
			
		</td>
	</tr>
	<tr>
		<td>
			<center>
			<div style = "margin-left:50px">
			<input type = button value = "쓰기완료" onclick="pop_open()" class = "button">
			<input type = "reset" name = "reset" value = "다시쓰기" style = "font-family: NANUMBARUNPENB; font-size: 13pt">
			</div>
			</center>
		</td>		
	</tr>
	</table>
</form>
</body>
</html>