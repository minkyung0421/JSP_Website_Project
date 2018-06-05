<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Travel Diary</title>
<style>

@font-face { font-family: 'NANUMBARUNPENB'; src: url(fonts/NANUMBARUNPENB.TTF) format('truetype'); } 

body{
	background: url('image/rec.png');
	background-repeat: no-repeat;
	background-size:100%;
	font-family: NANUMBARUNPENB;
}

 td{
 	margin-right:10px
 }
 
 .lay{
	margin-right:20px;
	margin-bottom:20px
	
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

function call()
{
  
	document.getElementById("total").value =
	parseInt(document.getElementById("p1").value) + parseInt(document.getElementById("p2").value) + 
	parseInt(document.getElementById("p3").value) + parseInt(document.getElementById("p4").value) +
	parseInt(document.getElementById("p5").value) + parseInt(document.getElementById("p6").value) +
	parseInt(document.getElementById("p7").value) + parseInt(document.getElementById("p8").value) +
	parseInt(document.getElementById("p9").value);
	
}
</script>


</head>
<body>
<center>
<form name="sumform">
<table border=0 style = "margin-top:180px; margin-left:50px">
	<tr>
		<td>내용</td>
		<td>가격</td>
	</tr>
	<tr>
		<td>
		<input type = "text" class = "lay" placeholder = "예) 아이스크림">
		</td>
		<td>
		<input type = "text" name = "p1" id = "p1" class = "lay" value = "0" onkeyup="call();"> <!-- 사용자가 키를 실행한 시점 -->
		</td>
	</tr>
	<tr>
		<td>
		<input type = "text" class = "lay">
		</td>
		<td>
		<input type = "text" name = "p2" id = "p2" class = "lay" value = "0" onkeyup=" call();">
		</td>
	</tr>
	<tr>
		<td>
		<input type = "text" class = "lay">
		</td>
		<td>
		<input type = "text" name = "p3" id = "p3" class = "lay" value = "0" onkeyup=" call();">
		</td>
	</tr>
	<tr>
		<td>
		<input type = "text" class = "lay">
		</td>
		<td>
		<input type = "text" name = "p4" id = "p4" class = "lay" value = "0" onkeyup=" call();">
		</td>
	</tr>
	<tr>
		<td>
		<input type = "text" class = "lay">
		</td>
		<td>
		<input type = "text" name = "p5" id = "p5" class = "lay" value = "0" onkeyup="call();">
		</td>
	</tr>
	<tr>
		<td>
		<input type = "text" class = "lay">
		</td>
		<td>
		<input type = "text" name = "p6" id = "p6" class = "lay" value = "0" onkeyup="call();">
		</td>
	</tr>
	<tr>
		<td>
		<input type = "text" class = "lay">
		</td>
		<td>
		<input type = "text" name = "p7" id = "p7" class = "lay" value = "0" onkeyup="call();">
		</td>
	</tr>
	<tr>
		<td>
		<input type = "text" class = "lay">
		</td>
		<td>
		<input type = "text" name = "p8" id = "p8" class = "lay" value = "0" onkeyup="call();">
		</td>
	</tr>
	<tr>
		<td>
		<input type = "text" class = "lay">
		</td>
		<td>
		<input type = "text" name = "p9" id = "p9" class = "lay" value = "0" onkeyup="call();">
		</td>
	</tr>
</table>

<input type = "text" style = "margin-top:5%; margin-left:28%" name = "total" id = "total" readonly>원

</form>
</center>
</body>
</html>