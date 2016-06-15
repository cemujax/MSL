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
<link rel="stylesheet" href="css/style.css">
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
	var xhr;
	var checkFlag;
	
	/* 
	 있는 url / 없는 url인지   */
	function urlCheck() { //Ajax 기술이 사용됨
		var url = document.getElementById("url").value;
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange = callback;
		xhr.open("post", "./card.do");
		xhr.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded;charset=utf-8");
		xhr.send("command=urlCheck&&url=" + url);
	}//urlcheck
	function callback() {
		if (xhr.readyState == 4) {
			if (xhr.status == 200) {
				var jsonData = JSON.parse(xhr.responseText); //true, false
				var resultSpan = document.getElementById("checkResult");
				var ch = document.frmDalpeng.url.value;
				if (ch.length >= 1) {

					if (jsonData.flag) {
						resultSpan.innerHTML = "<font color ='red'><b>해당 URL 사용불가</b></font>";
						checkFlag = false;
					} else {
						resultSpan.innerHTML = "<font color ='green'><b>해당 URL 사용가능</b></font>";
						checkFlag = true;
					}

				} else {
					resultSpan.innerHTML = "<font color ='orange'><b>1자 이상 입력해주세요</b></font>";
				}

			}
		}
	}//callback
	
	//=========photoBook ====================
	function photoBookAjax() {
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange = pbCallback;
		var url = "photoBook.do?command=ajaxList";
		xhr.open("get", url);
		xhr.send(null);
	} // photobookAjax

	function pbCallback() {
		if (xhr.readyState == 4) {
			if (xhr.status == 200) {
				var jsonData = JSON.parse(xhr.responseText);
				var pb = "";

				for (var i = 0; i < jsonData.pbList.length; i++) {
					pb += "<li class='col-lg-3 col-sm-4 col-xs-6' >"
							+ "<a onclick='chooseBook("
							+ jsonData.pbList[i].bookNo
							+ ")'>"
							+ "<img src='http://www.freeiconspng.com/uploads/vector-book-icon-vector-graphic--creattor-7.jpg' alt='Barca' class='img-responsive' height='130px' />"
							+ jsonData.pbList[i].bookName
							+ "<span class='glyphicon glyphicon-share-alt'></span>"
							+ "<span class='duration'>" + i + "</span>"
							+ "</a></li>";
				}

				document.getElementById("pbList-tab").innerHTML = pb;
			}
		}
	} // pbCallback

	function chooseBook(bookNo) {
		document.getElementById("photoBookNo").value = bookNo;

		xhr = new XMLHttpRequest();
		xhr.onreadystatechange = imgCallback;
		var url = "photoBook.do?command=ajaxDetail&&no=" + bookNo;
		xhr.open("get", url);
		xhr.send(null);

	} // chooseBook

	function imgCallback() {
		if (xhr.readyState == 4) {
			if (xhr.status == 200) {
				var jsonData = JSON.parse(xhr.responseText);

				document.getElementById("photoBookImg").value = jsonData.pbvo.fileName
						+ "";
				var myValue = document.getElementById("photoBookImg").value;

				$('#photoBookImg').val(myValue).trigger('change');
			}
		}
	} // imgCallback
		
		
	// ======================= JQuery =============================	
	$(document).ready(function() {
		$("#tabs").tabs();

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

				<li><a href="#tabs-4" onclick="photoBookAjax()"> <span>
							<i class="fa fa-list" style="font-size: 36px; margin-left: 20%;"></i>
					</span><br> <font size="3">포토북</font>
				</a></li>
			</ul>


			<div id="tabs-1">
				<table>
					<tr align="center">
						<td><img alt="" src="images/p2.jpg"
							style="width: 120px; heigth: 80px; margin: 0px;"> <input
							type="radio" name="template" id="template" value="basicSkin"
							required="required"></td>
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
							예식일:<input type="text" id="datepicker" name="cardDate"
								required="required">
						</div>
						<br>
						<div class="ui-block-c">
							<select name="ampm" id="ampm" class="input_box_type1"
								required="required">
								<option value="AM" selected="selected">오전</option>
								<option value="PM">오후</option>
							</select>
						</div>
						<div class="ui-block-d">
							<select name="hour" id="hour" required="required">
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
							<select name="min" id="min" class="input_box_type1"
								required="required">
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
					<textarea name="cardContext" id="cardContext"
						class="input_box_type2" rel="tooltip"
						title="<span class='tooltip_title'>초대글</span>
					<br>- 초대(모시는)글을 입력 해주십시요"
						placeholder="초대글" required="required"></textarea>
				</div>
				<div class="section">
					예식장명 : <input type="text" id="hallName" name="hallName"
						required="required"><br> 예식장 위치 :<input type="text"
						id="hallLocation" name="hallLocation" required="required"><br>
					지도
					<div id="map" style="width: 100%; height: 350px;">

						<script type="text/javascript"
							src="//apis.daum.net/maps/maps3.js?apikey=3f17108ee4529ef634468783d7ef555a&libraries=services"></script>
						<script>
							var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
							mapOption = {
								center : new daum.maps.LatLng(33.450701,
										126.570667), // 지도의 중심좌표
								level : 3
							// 지도의 확대 레벨
							};

							// 지도를 생성합니다    
							var map = new daum.maps.Map(mapContainer, mapOption);

							// 주소-좌표 변환 객체를 생성합니다
							var geocoder = new daum.maps.services.Geocoder();

							$('#hallLocation').change(function() {
								
								var loc = $(this).val();
								// 주소로 좌표를 검색합니다
								geocoder.addr2coord(loc, function(status, result) {

								    // 정상적으로 검색이 완료됐으면 
								     if (status === daum.maps.services.Status.OK) {

								        var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);

								        // 결과값으로 받은 위치를 마커로 표시합니다
								        var marker = new daum.maps.Marker({
								            map: map,
								            position: coords
								        });

								        // 인포윈도우로 장소에 대한 설명을 표시합니다
								        var infowindow = new daum.maps.InfoWindow({
								            content: '<div style="width:150px;text-align:center;padding:6px 0;">예식장</div>'
								        });
								        infowindow.open(map, marker);

								        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								        map.setCenter(coords);
								    } 
								});

							});//change

							
						</script>
					</div><!-- map  -->
				</div>
			</div>

			<div id="tabs-3">
				신랑이름 : <input type="text" id="groomName" name="groomName"
					required="required"><br> 신랑번호 : <input type="text"
					id="groomTel" name="groomTel" required="required"><br>
				신부이름 : <input type="text" name="brideName" id="brideName"
					required="required"><br> 신부번호 : <input type="text"
					name="brideTel" id="brideTel" required="required"><br>
				url : <input type="text" name="url" id="url" onkeyup="urlCheck()"
					required="required"> <span id="checkResult"></span> <br>
				<input type="button" value="초대장 생성" id="createCardBtn">
			</div>

			<!-- ###################### photobook ####################### -->
			<input type="hidden" id="photoBookImg" name="photoBookImg" value="">
			<input type="hidden" id="photoBookNo" name="photoBookNo" value="">
			<div id="tabs-4">
				<jsp:include page="weddingcard_pbresult.jsp" />
			</div>

		</div>
		<!-- tabs -->

	</form>





</body>
</html>