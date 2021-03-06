<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel = "stylesheet" type = "text/css" href = "body_css_info.css">
<title>Travel Diary</title>
<style>

@font-face { font-family: 'NANUMBARUNPENB'; src: url(fonts/NANUMBARUNPENB.TTF) format('truetype'); } 

body { font-family: NANUMBARUNPENB; }

#kCalendar {width: 800px; height: 420px; border: 0; margin-top:60px}

#kCalendar #header {height: 50px; line-height: 50px; text-align: center; font-size: 18px; font-weight: bold}
#kCalendar .button {color: #000; text-decoration: none;}

#kCalendar table {width: 800px; height: 350px; margin-top:5px}
#kCalendar caption {display: none;}

#kCalendar .sun {text-align: center; color: deeppink;}
#kCalendar .mon {text-align: center;}
#kCalendar .tue {text-align: center;}
#kCalendar .wed {text-align: center;}
#kCalendar .thu {text-align: center;}
#kCalendar .fri {text-align: center;}
#kCalendar .sat {text-align: center; color: deepskyblue;}

.button{
	font-family: NANUMBARUNPENB;
}


</style>

<script>

function kCalendar(id, date) {
	var kCalendar = document.getElementById(id);
	
	if( typeof( date ) !== 'undefined' ) {
		date = date.split('-');
		date[1] = date[1] - 1;
		date = new Date(date[0], date[1], date[2]);
	} else {
		var date = new Date();
	}
	var currentYear = date.getFullYear();
	//년도를 구함
	
	var currentMonth = date.getMonth() + 1;
	//연을 구함. 월은 0부터 시작하므로 +1, 12월은 11을 출력
	
	var currentDate = date.getDate();
	//오늘 일자.
	
	date.setDate(1);
	var currentDay = date.getDay();
	//이번달 1일의 요일은 출력. 0은 일요일 6은 토요일
	
	var dateString = new Array('sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat');
	var lastDate = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
	if( (currentYear % 4 === 0 && currentYear % 100 !== 0) || currentYear % 400 === 0 )
		lastDate[1] = 29;
	//각 달의 마지막 일을 계산, 윤년의 경우 년도가 4의 배수이고 100의 배수가 아닐 때 혹은 400의 배수일 때 2월달이 29일 임.
	
	var currentLastDate = lastDate[currentMonth-1];
	var week = Math.ceil( ( currentDay + currentLastDate ) / 7 );
	//총 몇 주인지 구함.
	
	if(currentMonth != 1)
		var prevDate = currentYear + '-' + ( currentMonth - 1 ) + '-' + currentDate;
	else
		var prevDate = ( currentYear - 1 ) + '-' + 12 + '-' + currentDate;
	//만약 이번달이 1월이라면 1년 전 12월로 출력.
	
	if(currentMonth != 12) 
		var nextDate = currentYear + '-' + ( currentMonth + 1 ) + '-' + currentDate;
	else
		var nextDate = ( currentYear + 1 ) + '-' + 1 + '-' + currentDate;
	//만약 이번달이 12월이라면 1년 후 1월로 출력.

	
	if( currentMonth < 10 )
		var currentMonth = '0' + currentMonth;
	//10월 이하라면 앞에 0을 붙여준다.
	
	var calendar = '';
	
	calendar += '<div id="header">';
	calendar += '			<span><a href="#" class="button left" onclick="kCalendar(\'' +  id + '\', \'' + prevDate + '\')"><</a></span>';
	calendar += '			<span id="date">' + currentYear + '년 ' + currentMonth + '월</span>';
	calendar += '			<span><a href="#" class="button right" onclick="kCalendar(\'' + id + '\', \'' + nextDate + '\')">></a></span>';
	calendar += '		</div>';
	calendar += '		<table border="0" cellspacing="0" cellpadding="0" style = "margin-top:2px">';
	calendar += '			<caption>' + currentYear + '년 ' + currentMonth + '월 달력</caption>';
	calendar += '			<thead>';
	calendar += '				<tr>';
	calendar += '				  <th class="sun" scope="row">일</th>';
	calendar += '				  <th class="mon" scope="row">월</th>';
	calendar += '				  <th class="tue" scope="row">화</th>';
	calendar += '				  <th class="wed" scope="row">수</th>';
	calendar += '				  <th class="thu" scope="row">목</th>';
	calendar += '				  <th class="fri" scope="row">금</th>';
	calendar += '				  <th class="sat" scope="row">토</th>';
	calendar += '				</tr>';
	calendar += '			</thead>';
	calendar += '			<tbody>';
	
	var dateNum = 1 - currentDay;
	
	for(var i = 0; i < week; i++) {
		calendar += '			<tr>';
		for(var j = 0; j < 7; j++, dateNum++) {
			if( dateNum < 1 || dateNum > currentLastDate ) {
				calendar += '				<td class="' + dateString[j] + '"> </td>';
				continue;
			}
			calendar += '				<td class="' + dateString[j] + '">' + dateNum + '</td>';
		}
		calendar += '			</tr>';
	}
	
	calendar += '			</tbody>';
	calendar += '		</table>';
	
	kCalendar.innerHTML = calendar;
}

function pop_open(){
	
	 var form = document.sendform;
	 var url = "how_to_travel_save.jsp"
	 
	 var left = Math.ceil((window.screen.width - 250)/2);
     var top = Math.ceil((window.screen.height - 500)/2);

	 window.open("","how_to_travel_save","top=" + top + ", left =" + left + ", width=250px, height=105px");
	 form.action = url //팝업창 URL
	 form.target="how_to_travel_save";
	 form.method = "post"
	
	 
	 form.submit(); // 값을 전송한다.
}

function pop_open_list(){
	var form = document.sendform;
	var url = "how_to_travel_view.jsp"
	 
	var left = Math.ceil((window.screen.width - 600)/2);
    var top = Math.ceil((window.screen.height - 500)/2);

	 window.open("","how_to_travel_view","top=" + top + ", left =" + left + ", width=600px, height=500px");
	 form.action = url //팝업창 URL
	 form.target="how_to_travel_view";
	 form.method = "post"
	
	 
	 form.submit(); // 값을 전송한다.
}


	
</script>
</head>
<body>
<center>
<div id="kCalendar"></div>
	<script>
		window.onload = function () {
			kCalendar('kCalendar');
		};
	</script>
	<form method = "post" action = "how_to_travel_save.jsp" name="sendform">
	<table border = 0 width = "800px" style = "margin-top:20px">
		<tr>
			<td>
			타임테이블 작성하기
			<hr>
			</td>
		</tr>
		<tr>
			<td>
			제목 <input type = "text" name = "title" placeholder = "제목이 같은 경우 파일이 덮어씌어집니다." size = "32">
			</td>
		</tr>
		<tr>
			<td style = "hieght:300px">
			<textarea rows = "10" cols = "120" name = "content"></textarea><br>
			</td>
		</tr>
		<tr>
			<td> 
				<input type = button value = "저장" onclick="pop_open()" class = "button">
				<input type = "reset" value = "다시작성" class = "button">
				<input type = "button" value = "타임테이블보기" onclick="pop_open_list()" class = "button">
				
			</td>
		</tr>
	</table>
	</form>
</center>
</body>
</html>