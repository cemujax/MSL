<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="keywords"
	content="modal, window, overlay, modern, box, css transition, css animation, effect, 3d, perspective" />
<meta name="author" content="MSL" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Wedding Card</title>

<link rel="stylesheet" href="${initParam.root}weddingCard/css/bootstrap.min.css">

<!-- <link href="${initParam.root}weddingCard/css/bootstrap-responsive.css" rel="stylesheet"> -->

<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/ -->
<link rel="stylesheet" href="${initParam.root}weddingCard/css/font-awesome.min.css">
<link rel="stylesheet" href="${initParam.root}weddingCard/css/jquery-ui.css" />
<link rel="stylesheet" href="${initParam.root}weddingCard/css/uploadifive.css" />
<link rel="stylesheet" href="${initParam.root}weddingCard/css/jquery.cropbox.custom.css" />
<link rel="stylesheet" href="${initParam.root}weddingCard/css/builder.css" />
<link rel="stylesheet" href="${initParam.root}weddingCard/css/style.css">
<link rel="stylesheet" href="${initParam.root}weddingCard/css/common.css">
<link rel="stylesheet" type="text/css" href="${initParam.root}weddingCard/css/default.css" />
<link rel="stylesheet" type="text/css" href="${initParam.root}weddingCard/css/component.css" />
<link href="${initParam.root}weddingCard/css/bootstrap_index.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="${initParam.root}weddingCard/css/style_index.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" href="${initParam.root}weddingCard/css/chocolat.css" type="text/css"
	media="screen" charset="utf-8">

<!-- 우리꺼 -->
<link rel="stylesheet" type="text/css" href="${initParam.root}weddingCard/css/weddingCard.css">


<!-- ================================== -->
<script type="text/javascript" src="${initParam.root}weddingCard/js/jquery-1.12.3.js"></script>
<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script> -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script src="${initParam.root}weddingCard/js/modernizr.custom.js"></script>
<!-- <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
 -->
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="${initParam.root}weddingCard/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="${initParam.root}weddingCard/js/hammer.js"></script>
<script type="text/javascript" src="${initParam.root}weddingCard/js/jquery.mousewheel.js"></script>
<script src="${initParam.root}weddingCard/js/jquery.datepicker.regional.kr.js"></script>
<script src="${initParam.root}weddingCard/js/jquery.scrollTo.min.js"></script>

<!-- 이미지 업로드 -->
<!-- <script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>  -->
<script src="${initParam.root}weddingCard/js/jquery.form.js"></script>

<!-- 우리꺼 -->
<script type="text/javascript">
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
							/* + "<img src='http://www.freeiconspng.com/uploads/vector-book-icon-vector-graphic--creattor-7.jpg' alt='Barca' class='img-responsive' height='130px' />" */
							+ "<img src='"
							+ '${initParam.root}'
							+ "img\\photobook\\"
							+ '${mvo.memberId}'
							+ "\\"
							+ jsonData.pbList[i].bookNo
							+ "\\"
							+ jsonData.pbList[i].fileName.split('`')[0]
							+ "' alt='photo' class='img-responsive' height='130px' />"
							+ jsonData.pbList[i].bookName
							/* + "<span class='glyphicon glyphicon-share-alt' ></span>" */
							+ "<span class='duration'>" + i + "</span>"
							+ "</a></li>";
				}

				document.getElementById("pbList-tab").innerHTML = pb;
			}
		}
	} // pbCallback
	$(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
<script src="${initParam.root}weddingCard/js/weddingCard.js"></script>


<script
	src='//apis.daum.net/maps/maps3.js?apikey=3f17108ee4529ef634468783d7ef555a&libraries=services'></script>

</head>
<body>
	<c:if test="${sessionScope.mvo == NULL }">
		<c:redirect url="../authentication/login.jsp" />
	</c:if>

	<!-- 메뉴바 -->
	<nav class="navbar navbar-inverse"
		style="background-color: #f8f8f8; border-color: #e7e7e7;">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="../index.jsp" style="color: #777;">Home</a>
			</div>
			<ul class="nav navbar-nav">
				<!-- style="margin-left: 82%;" -->
				<li><a href="../card.do?command=getAllCards">청첩장보기</a></li>
				<li class="lnb_icon5"><a href="javascript:logout()"> <span
						class="glyphicon glyphicon-log-in"></span> 로그아웃
				</a></li>
			</ul>
		</div>
	</nav>

	<!-- //메뉴바 -->

	<form name="frmWeddingCard" id="frmWeddingCard" method="post">
		<div class="ui-grid-a contents">
			<div class="ui-block-a">
				<div class="cont_look">
					<div class="look_bg">
						<img src="${initParam.root}img/preview_mobile2.png" alt="미리보기화면"><span
							class="blind">미리보기영역</span>
					</div>
					<div class="look_input">

						<!-- 왼쪽 미리보기 부분 -->
						<iframe
							src="${initParam.root}/weddingCard/preview_Fall In Love/preview.jsp"
							name="left_skin_preview" id="left_skin_preview" scrolling="auto">
						</iframe>
					</div>

					<!--  ============== 모바일 ============== -->
					<div class="md-modal md-effect-1" id="modal-1">
						<div class="md-content">
							<div class="cont_preview mobile" id="cont_preview">

								<div class="look_bg">
									<img src="${initParam.root}img/preview_mobile2.png" alt="미리보기화면"
										style="width: 250px; height: 500px; margin-left: 40%; margin-top: 15%;">


								</div>
								<div class="look_input"
									style="margin-left: 40.5%; margin-top: 9%;">
									<iframe src="preview_Fall In Love/preview.jsp"
										name="left_skin_preview_mobile" id="left_skin_preview_mobile"
										scrolling="auto"> </iframe>
								</div>
								<button class="md-close"
									style="margin-top: 2%; background-color: #ff752f;">Close
									me!</button>
							</div>
						</div>
					</div>

					<div class="column">
						<button class="md-trigger mobile" id="md-mobile"
							style="background-color: #ff752f; border-radius: 10px;"
							data-modal="modal-1">PHONE</button>
					</div>

					<!--  ============== PC ============== -->
					<div class="md-modal md-effect-2" id="modal-2">
						<div class="md-content">
							<div data-role="page" id="skin_page" data-url="skin_page"
								tabindex="0" class="ui-page ui-page-theme-a ui-page-active">
								<div class="look_input"
									style="width: 90%; height: 60%; margin-left: 4%; margin-top: 3%;">
									<iframe src="preview_Fall In Love/preview.jsp"
										name="left_skin_preview_pc" id="left_skin_preview_pc"
										scrolling="auto"> </iframe>
								</div>
								<button class="md-close"
									style="margin-top: 770px; background-color: #ff752f;">Close
									me!</button>
							</div>

						</div>
					</div>

					<div class="column">
						<button class="md-trigger" id="md-pc" data-modal="modal-2"
							style="background-color: #ff752f; border-radius: 10px;">PC</button>
					</div>

				</div>
			</div>
		</div>
		
		<div class="md-overlay">
		</div>
		the overlay element
		classie.js by @desandro: https://github.com/desandro/classie
		<script src="js/classie.js"></script>
		<script src="js/modalEffects.js"></script>

		for the blur effect
		by @derSchepp https://github.com/Schepp/CSS-Filters-Polyfill
		<script>
			// this is important for IEs
			var polyfilter_scriptpath = '/js/';
		</script>
		<!-- <script src="js/cssParser.js"></script>
		<script src="js/css-filters-polyfill.js"></script> -->


		<!-- Tab 영역 include  -->

		<div id="tabs">
			<!-- style="width: 30%; margin-left: 70%; height: 800px;" -->
			<ul>
				<!-- style="width: 80%; margin-left: 10%; padding-left: 2%;" -->

				<li><a href="#tabs-1"> <span> <i
							class="fa fa-calendar-check-o"></i>
						<!-- style="font-size: 36px; margin-left: 20%;" -->
					</span><br>
					<font size="1">스킨선택</font>
				</a></li>

				<li><a href="#tabs-2"> <span> <i class="fa fa-list"></i>
					</span><br> <font size="1">신랑신부</font>
				</a></li>

				<li><a href="#tabs-3" onclick="photoBookAjax()"> <span>
							<i class="fa fa-list"></i>
					</span><br> <font size="1">&nbsp;포토북&nbsp;</font>
				</a></li>

				<li><a href="#tabs-4"> <span> <i class="fa fa-bars"></i>
					</span><br> <font size="1">&nbsp;예식장&nbsp;</font>
				</a></li>

			</ul>

			<div id="tabs-1">
				<input type="hidden" name="templateType" value="" id="templateType">
				<table>
					<tr align="center">
						<td><img src="${initParam.root}weddingCard/preview_Fall In Love/img/Fall In Love.jpg"
							class="img-rounded" style="height: 70px;"> <input
							type="radio" name="template" id="template" value="Fall In Love">
						</td>
						<td><img
							src="${initParam.root}weddingCard/preview_Innocent Bride/img/Innocent Bride.jpg"
							class="img-rounded"> <input type="radio" name="template"
							id="template2" value="Innocent Bride"></td>

						<td><img src="${initParam.root}weddingCard/preview_Garden Wedding/img/ze.PNG"
							class="img-rounded"> <input type="radio" name="template"
							id="template3" value="Garden Wedding"></td>

					</tr>
					<!--  -->
					<!-- <tr>
					     <td><img src="img/222.jpg" class="img-rounded"
					     alt="Cinque Terre"> <input type="radio" name="template"
					     id="template" value="basicSkin"></td>

					     <td><img src="img/15.jpg" class="img-rounded"
					     alt="Cinque Terre"> <input type="radio" name="template"
					     id="template" value="basicSkin"></td>
					     <td><img src="img/17.jpg" class="img-rounded"
					     alt="Cinque Terre"> <input type="radio" name="template"
					     id="template" value="basicSkin"></td>
					     </tr> -->
					<!--  -->
					<!-- <tr>
					     <td><img src="img/bouquet02.png" class="img-rounded"
					     alt="Cinque Terre"> <input type="radio" name="template"
					     id="template" value="basicSkin"></td>
					     <td><img src="img/wedding00.jpg" class="img-rounded"
					     alt="Cinque Terre"> <input type="radio" name="template"
					     id="template" value="basicSkin"></td>
					     <td><img src="img/bbb.jpg" class="img-rounded"
					     alt="Cinque Terre"> <input type="radio" name="template"
					     id="template" value="basicSkin"></td>
					     </tr> -->
					<!--  -->
					<!-- <tr>
						<td><img src="img/222.jpg" class="img-rounded"
							alt="Cinque Terre" > <input
							type="radio" name="template" id="template" value="basicSkin"
							></td>
						<td><img src="img/222.jpg" class="img-rounded"
							alt="Cinque Terre"> <input
							type="radio" name="template" id="template" value="basicSkin"
							></td>
						<td><img src="img/222.jpg" class="img-rounded"
							alt="Cinque Terre"> <input
							type="radio" name="template" id="template" value="basicSkin"
							></td>
					</tr> -->
				</table>
			</div>
			<!-- tabs-1 -->

			<div id="tabs-2" style="font-size: 13px; text-align: left;">
				<table style="width: 330px;">
				  <!-- <tr>
				       <td colspan="3"><input type="hidden" name="imgSrc" value="">
				       <img alt="" src="../img/222.jpg"
				       style="margin-top: 10%; margin-bottom: 5%; margin-left: 30px;">
				       </td>
				       </tr> -->

					<tr>
						<td>메인사진:</td>
						<td><input type="file" name="imgFile" id="imgFile"
							style="font-size: 10px; width: 150px; padding-left: 5px;">
						<!-- style="font-size:10px; width:150px;padding-left: 5px;" --></td>
						<td><input type="submit" value="업로드 " id="sendImage">
						</td>
					</tr>

					<tr id="BrideDiv">
						<td>신부사진:</td>
						<td><input type="file" name="imgBride" id="imgBride"
							style="font-size: 10px; width: 150px; padding-left: 5px;">
						<!-- style="font-size:10px; width:150px;padding-left: 5px;" --></td>
						<td><input type="submit" value="업로드 " id="sendBride">
						</td>
					</tr>

					<tr>
						<td>신부이름:</td>
						<td colspan="2"><input type="text" id="groomName" name="groomName"
						 value="${groomName}"> <!-- style="margin: 2%;" --></td>
					</tr>


					<tr>
						<td>신부번호:</td>
						<td colspan="2"><input type="text" id="groomTel"
							name="groomTel" value="${groomTel}" onkeydown='return onlyNumber(event)'
							onkeyup='removeChar(event)' style='ime-mode: disabled;'>
						</td>
					</tr>

					<!--  신랑 영역 -->
					<tr id="GroomDiv">
						<td>신랑사진:</td>
						<td><input type="file" name="imgGroom" id="imgGroom"
							style="font-size: 10px; width: 150px; padding-left: 5px;">
						<!-- style="font-size:10px; width:150px;padding-left: 5px;" --></td>
						<td><input type="submit" value="업로드 " id="sendGroom">
						</td>
					</tr>

					<tr>
						<td>신랑이름:</td>
						<td><input type="text" name="brideName" id="brideName" value="${brideName}">
						</td>
					</tr>

					<tr>
						<td>신랑번호:</td>
						<td><input type="text" name="brideTel" id="brideTel" value="${brideTel}"
							onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)'
							style='ime-mode: disabled;'></td>
					</tr>

					<tr>
						<td>&nbsp;&nbsp;&nbsp;url&nbsp;&nbsp;:</td>
						<c:choose>
							<c:when test="${cardVo.url == null }">
								<td><input type="text" name="url" id="url"
							onkeyup="urlCheck()"><br>
						<span id="checkResult"></span></td></c:when>
							<c:otherwise>
								<td><input type="text" name="url" id="url"
								value="${cardVo.url}" readonly="readonly"><br>
								<!-- <span id="checkResult"></span> --></td>
							</c:otherwise>
						</c:choose>
						
					</tr>

				</table>
			</div>
			<!-- tab2 End  -->

			<!-- ###################### photobook ####################### -->
			<input type="hidden" id="photoBookImg" name="photoBookImg" value="">
			<input type="hidden" id="photoBookNo" name="photoBookNo" value="">
			<input type="hidden" id="photoBookComment" name="photoBookComment"
				value="">

			<div id="tabs-3">
				<jsp:include page="weddingCard_pbList.jsp" />
			</div>

			<div id="tabs-4">
				<div class="ui-grid-f section">
					<table style="width: 330px; font-size: 15px;">
						<tr>
							<td colspan="2">예식일</td>
						</tr>

						<tr>
							<td colspan="2">
								<div class="ui-block-b">
									<input type="text" id="datepicker" class="input_box_type1"
										name="cardDate">
								</div>
								<div class="ui-block-c">
									<input type="hidden" id="dDay" name="dDay" value=""> <select
										name="ampm" id="ampm" class="input_box_type1">
										<option value="AM" selected="selected">오전</option>
										<option value="PM">오후</option>
									</select>
								</div>
								<div class="ui-block-d">
									<select name="hour" id="hour" class="input_box_type1">
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
										<option value="" selected="selected">분</option>
										<option value="00" selected="selected">00</option>
										<option value="05">05</option>
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
							</td>
						</tr>

						<tr>
							<td colspan="2">초대글</td>
						</tr>

						<tr>
							<td colspan="2">
								<div class="section">
									<textarea name="cardContext" id="cardContext"
										class="input_box_type2" value="${cardVO.cardContext}" rel="tooltip"
										title="<span class='tooltip_title'>초대글</span>
									<br>- 초대(모시는)글을 입력 해주십시요"
										placeholder="초대글" ></textarea>
								</div>
							</td>
						</tr>

						<tr>
							<td colspan="2">예식장 : &nbsp;&nbsp; <input type="text"
								id="hallName" name="hallName" value="${cardVO.hallName}">
							</td>
						</tr>

						<tr>
							<td colspan="2">예식장소 : &nbsp; <input type="text"
								id="hallLocation" name="hallLocation" value="${cardVO.hallLocation}">
							</td>
						</tr>

						<tr>
							<td colspan="2">지도</td>
						</tr>

						<tr>
							<td colspan="2">
								<div id="map" style="width: 100%; height: 200px;">
									<script
										src="//apis.daum.net/maps/maps3.js?apikey=3f17108ee4529ef634468783d7ef555a&libraries=services"></script>
									<script src="${initParam.root}weddingCard/js/map.js"></script>
								</div>
							</td>
						</tr>
						<!-- map  -->
					</table>
				</div>
			</div>
			<!-- tabs-4 -->

			<div>
				<input style="background: #f96; width: 100%; height: 50px;"
					type="button" value="초대장 생성" id="createCardBtn">
			</div>

		</div>
		<!-- tabs -->
	</form>

</body>
</html>
