<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel = "stylesheet" type = "text/css" href = "body_css_info.css">
<title>Travel Diary</title>

<script>

var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}

</script>

<style>
@font-face { font-family: 'NANUMBARUNPENB'; src: url(fonts/NANUMBARUNPENB.TTF) format('truetype'); }

* {box-sizing: border-box}
body {font-family: NANUMBARUNPENB; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  color: black;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
  margin-left:300px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: black;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #a2b1ff;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #A9E2F3;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}

</style>


</head>
<body>
	<center>
	<table border = 0 width  = "500px" height = "500px" class="slideshow-container" style = "margin-top:30px; " bgcolor="white";>
		<tr class="mySlides fade">
			<td colspan  = "3">
  			<img src="image/donki.jpg"  width  = "500px" height = "400px">
  			<div style="overflow-y:scroll; height:300px">
  			<%
  				BufferedReader reader1 = null;
  			
  				try{
  					String filePath = application.getRealPath("/WEB-INF/where_txt/donki_txt.txt");
  					reader1 = new BufferedReader(new FileReader(filePath));
  					
  					while(true){
  						String str = reader1.readLine();
  						if(str == null) break;
  						out.println(str + "<br>");
  					}
  				}catch(Exception e){
  					out.println("지정된 파일을 찾을 수 없습니다.");
  				}
  			%>
  			</div>
  			</td>
		</tr>
		
		<tr class="mySlides fade">
			<td colspan  = "3">
  			<img src="image/uni.jpg"  width  = "500px" height = "400px">
  			<div style="overflow-y:scroll; height:300px">
  			<%
  				BufferedReader reader2 = null;
  			
  				try{
  					String filePath = application.getRealPath("/WEB-INF/where_txt/uni_txt.txt");
  					reader2 = new BufferedReader(new FileReader(filePath));
  					
  					while(true){
  						String str = reader2.readLine();
  						if(str == null) break;
  						out.println(str + "<br>");
  					}
  				}catch(Exception e){
  					out.println("지정된 파일을 찾을 수 없습니다.");
  				}
  			%>
  			</div>
  			</td>
		</tr>
		
		<tr class="mySlides fade">
			<td colspan  = "3" valign="top" height = "300px">
  			<img src="image/osaka.jpg"  width  = "500px" height = "400px">
  			<div style="overflow-y:scroll; height:300px">
  			<%
  				BufferedReader reader3 = null;
  			
  				try{
  					String filePath = application.getRealPath("/WEB-INF/where_txt/text1.txt");
  					reader3 = new BufferedReader(new FileReader(filePath));
  					
  					while(true){
  						String str = reader3.readLine();
  						if(str == null) break;
  						out.println(str + "<br>");
  					}
  				}catch(Exception e){
  					out.println("지정된 파일을 찾을 수 없습니다.");
  				}
  			%>
  			</div>
  			</td>
		</tr>
		
			<tr class="mySlides fade">
			<td colspan  = "3">
  			<img src="image/Pisa.jpg"  width  = "500px" height = "400px">
  			<div style="overflow-y:scroll; height:300px">
  			<%
  				BufferedReader reader4 = null;
  			
  				try{
  					String filePath = application.getRealPath("/WEB-INF/where_txt/pisa_txt.txt");
  					reader4 = new BufferedReader(new FileReader(filePath));
  					
  					while(true){
  						String str = reader4.readLine();
  						if(str == null) break;
  						out.println(str + "<br>");
  					}
  				}catch(Exception e){
  					out.println("지정된 파일을 찾을 수 없습니다.");
  				}
  			%>
  			</div>
  			</td>
		</tr>
		
		<tr class="mySlides fade">
			<td colspan  = "3">
  			<img src="image/santo.jpg"  width  = "500px" height = "400px">
  			<div style="overflow-y:scroll; height:300px">
  			<%
  				BufferedReader reader5 = null;
  			
  				try{
  					String filePath = application.getRealPath("/WEB-INF/where_txt/santo.txt");
  					reader5 = new BufferedReader(new FileReader(filePath));
  					
  					while(true){
  						String str = reader5.readLine();
  						if(str == null) break;
  						out.println(str + "<br>");
  					}
  				}catch(Exception e){
  					out.println("지정된 파일을 찾을 수 없습니다.");
  				}
  			%>
  			</div>
  			</td>
		</tr>
		
	</table>
	
	<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
  <span class="dot" onclick="currentSlide(4)"></span> 
  <span class="dot" onclick="currentSlide(5)"></span> 
</div>
	
	</center>
	
	

</body>
</html>