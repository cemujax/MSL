<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<title>jQuery UI Tabs - Default functionality</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="resources/demos/style.css">
<script src="js/jquery.datepicker.regional.kr.js"></script>

<style type="text/css">

/* 	#tabs{
  		margin-left: 60%;
  	} */
#tabs {
	margin-left: 60%;
	font-style: oblique;
}
</style>

<script type="text/javascript">
	$(document).ready(function() {
		$("#tabs").tabs();

		$("#datepicker").datepicker({
			minDate : '+0',
			dateFormat : 'yy-mm-dd',
			//defaultDate: "+1w",
			changeMonth : true,
			numberOfMonths : 1,

		});

	});//ready
</script>


</head>
<body>

	<form action="./card.do" method="post" id="weddingCard_form"
		name="weddingCard_form">
		<input type="hidden" name="command" value="createCard">

		<div id="tabs" style="width: 35%; margin-left: 70%;">
			<ul>
				<li><a href="#tabs-1"> <span> <i
							class="fa fa-calendar-check-o"
							style="font-size: 36px; margin-left: 20%;"></i>
					</span><br> <font size="3">스킨선택</font>
				</a></li>

				<li><a href="#tabs-2"> <span> <i class="fa fa-bars"
							style="font-size: 36px; margin-left: 20%;"></i>
					</span><br> <font size="3">예식정보</font>
				</a></li>

				<li><a href="#tabs-3"> <span> <i class="fa fa-list"
							style="font-size: 36px; margin-left: 20%;"></i>
					</span><br> <font size="3">신랑신부정보</font>
				</a></li>

				<li><a href="#tabs-4"> <span> <i class="fa fa-list"
							style="font-size: 36px; margin-left: 20%;"></i>
					</span><br> <font size="3">포토북</font>
				</a></li>
			</ul>


			<div id="tabs-1">
				<table>
					<tr align="center">
						<td><img alt="" src="images/p2.jpg"
							style="width: 120px; heigth: 80px; margin: 0px;"> <input
							type="radio" name="template" id="template" value="basicSkin">
						</td>
						<td><img alt="" src="images/p6.jpg"
							style="width: 100px; heigth: 100px; margin: 0px;"> <input
							type="radio" name="template" id="template" value="basicSkin2"
							disabled="disabled"></td>
						<td><img alt="" src="img/222.jpg"
							style="width: 100px; heigth: 100px; margin: 0px;"> <input
							type="radio" name="template" id="template" value="basicSkin3"
							disabled="disabled"></td>
					</tr>
				</table>
			</div>

			<div id="tabs-2">

				<div class="ui-grid-f section">
					<div class="ui-block-a">
						<div class="ui-block-b">
							예식일:<input type="text" id="datepicker" name="cardDate">
						</div><br>
						<div class="ui-block-c">
							<select name="ampm" id="ampm" class="input_box_type1">
								<option value="AM" selected="selected">오전</option>
								<option value="PM">오후</option>
							</select>
						</div>
						<div class="ui-block-d">
							<select name="hour" id="hour" >
								<option value="1">01</option>
								<option value="2">02</option>
								<option value="3">03</option>
								<option value="4">04</option>
								<option value="5">05</option>
								<option value="6">06</option>
								<option value="7">07</option>
								<option value="8">08</option>
								<option value="9">09</option>
								<option value="10" selected="selected">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
						</div>
						<div class="ui-block-e">
							<select name="min" id="min" class="input_box_type1">
								<!--<option value="" selected="selected">분</option>-->
								<option value="0" selected="selected">00</option>
								<option value="5">05</option>
								<option value="10">10</option>
								<option value="15">15</option>
								<option value="20">20</option>
								<option value="25">25</option>
								<option value="30">30</option>
								<option value="35">35</option>
								<option value="40">40</option>
								<option value="45">45</option>
								<option value="50">50</option>
								<option value="55">55</option>
							</select>
						</div>
					</div>
				</div>
				초대글<br>
				<div class="section">
					<textarea name="cardContext" id="cardContext" class="input_box_type2" rel="tooltip" title="<span class='tooltip_title'>초대글</span><br>- 초대(모시는)글을 입력 해주십시요" placeholder="초대글"></textarea>
				</div>
				예식장명 : <input type="text" id="hallName" name="hallName"><br>
				예식장 위치 	:<input type="text" id="hallLocation" name="hallLocation"><br>
			</div>

			<div id="tabs-3">
				신랑이름 : <input type="text" id="groomName" name="groomName"><br>
				신랑번호 : <input type="text" id="groomTel" name="groomTel"><br>
				신부이름 : <input type="text" name="brideName" id="brideName"><br>
				신부번호 : <input type="text" name="brideTel" id="brideTel"><br>
				url : <input type="text" name="url"><br> 
				<span id="urlCheck"></span>
				<br> 
				<input type="button" value="초대장 생성" id="createCardBtn">
			</div>

			<div id="tabs-4">포토북 할끄</div>
		</div>
		<!-- tabs -->
	</form>





</body>
</html>