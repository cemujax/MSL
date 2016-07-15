<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Best Day Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link href="css/bootstrap_02.css" rel='stylesheet' type='text/css' />
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:700,700italic,800,300,300italic,400italic,400,600,600italic'
	rel='stylesheet' type='text/css'>
<link href="css/application.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- 방명록 -->
<!--Custom-Theme-files-->
<link href="css/style_02.css" rel='stylesheet' type='text/css' />
<script src="js/jquery.min.js">
	
</script>
<!--/script-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>


<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- 방명록 -->
<script type="text/javascript">
function writeComment() {
	location.href = "${initParam.root}card.do?command=linkGuestBook&&url=${param.url}";
}
	$(document).ready(function() {

		$.ajax({
			type : "get",
			url : "../card.do",
			data : "command=getAllCardComments&&cardNo=" + '${param.cardNo}',
			dataType : "json",

			success : function(jsonData) {

				var commentList = jsonData.commentList;
				//$('.guestBook').innerHTML = "123123213";

				for (i = 0; i < 6; i++) {
	               var cDate = commentList[i].writeDate.split(':');
	               if(commentList[i].guest.indexOf('`MSL User`') != -1){//MSL 회원이 남긴 방명록
	            	   +"&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;"
                       /*  /* 이미지 부분 +"<img alt='' src='${initParam.root}url/img/logo_01.png' >"*/ 
	                  $('.guestBook').append(
	                        "<div class='pricingtable pricing_free' style='margin-left:2%; margin-top:50px;'><ul class='pricing_iconlist iconset_free'>"
	                        +"<li style='background-color:rgba(0, 143, 127, 0.57); font-size:20px; border-radius: 10px;'><font style='color: black;'>"
	                        +"<img alt='' width='40px' style='margin-right: 10%;' src='${initParam.root}url/img/logo_02.png' ><b>"
	                        +commentList[i].guest.substring(10)+"</b></font><br>"
	                        +"<font style='float:right;'>"+cDate[0]+":"+ cDate[1]+"</font></li>"
	                        +"<li style='font-size: 15px; margin-top:20px;'><span class='user'></span><font>"+commentList[i].content+"</font></li>"
	                        + "<p><li>&nbsp;&nbsp;</li>"
	                        + "<li>&nbsp;&nbsp;</li>"+
	                        "</ul></div>");
	               }
	               else{//비로그인 방명록
	                  $('.guestBook').append(
	                        "<div class='pricingtable pricing_free' style='margin-left:2%; margin-top:50px;'><ul class='pricing_iconlist iconset_free'>"
	                        +"<li style='background-color:rgba(0, 143, 127, 0.57); font-size:15px; border-radius: 10px;'><font style='color: black;'>"+
	                        "<img alt='' width='40px' style='margin-right: 10%;' src='${initParam.root}url/img/p3.png' >"
	                        +commentList[i].guest+"</font><br>"
	                        +"<font style='float:right;'>"+cDate[0]+":"+ cDate[1]+"</font></li>"
	                        +"<li style='font-size: 20px; margin-top:20px;'><span class='user'></span><font>"+commentList[i].content+"</font></li>"
	                        + "<p><li>&nbsp;&nbsp;</li>"
	                        + "<li>&nbsp;&nbsp;</li>"+
	                        "</ul></div>");
	               }
               
            	}//for
			
			}//success
		});//ajax
	});//ready
</script>
<!-- //방명록 -->

<style>
.header-top {
	padding: 0.5em 0;
}

.banner {
	background: url(img/banner.jpg) no-repeat 0px 0px;
	background-size: cover;
}

/* 업로드한 이미지 */
.banner_select {
	min-height: 600px;
}

.banner_select-top {
	padding: 0.5em 0;
}

.banner_select {
	background: url(${initParam.root}url/${param.url}/${param.imgSrc})
		no-repeat 0px 0px;
	background-size: cover;
}

@media ( max-width : 320px ) {
	.banner_select {
		background: url(${initParam.root}url/${param.url}/${param.imgSrc})
			no-repeat -170px 0px;
		background-size: cover;
	}
}

.button4 {
	background-color: white;
	color: black;
	border: 2px solid #e7e7e7;
}
</style>

</head>
<body>

	<!--start-home-->
	<div id="home" class="header"></div>

	<c:choose>
		<c:when test="${param.imgSrc == ''}">
			<div class="banner">
				<!-- banner -->
				<script defer src="js/jquery.flexslider.js"></script>
			</div>
		</c:when>
		<c:otherwise>
			<div class="banner_select">
				<!-- banner -->
				<script defer src="js/jquery.flexslider.js"></script>
			</div>
		</c:otherwise>
	</c:choose>


	<div class="ban">
		<!-- banner -->
		<script src="js/responsiveslides.min.js"></script>

		<div class="main-drop">
			<!-- style="margin-top: 50%;" -->
			<img src="img/hands.jpg" alt="" />
			<!-- style="width:25%;" -->
			<div class="hands">
				<!-- style="margin-left:1%;" -->
				<h4>Companion</h4>
			</div>

			<div class="couple">
				<div class="bride">
					<!-- 신부 신랑 -->
					<c:choose>
						<c:when test="${param.imgBride == ''  }">
							<img src="img/bride.jpg" class="img-responsive" alt="">
						</c:when>
						<c:otherwise>
							<img src="${param.url}/${param.imgBride}" class="img-responsive"
								alt="">
						</c:otherwise>
					</c:choose>
					<h5>${param.groomName}</h5>
					<p style="color: #fff;">
						<i class="glyphicon glyphicon-earphone">${param.groomTel}</i>
					</p>
				</div>

				<div class="groom">
					<c:choose>
						<c:when test="${param.imgGroom == '' }">
							<img src="img/groom.jpg" class="img-responsive" alt="">
						</c:when>
						<c:otherwise>
							<img src="${param.url}/${param.imgGroom}" class="img-responsive"
								alt="">
						</c:otherwise>
					</c:choose>
					<h5>${param.brideName}</h5>
					<p style="color: #fff;">
						<i class="glyphicon glyphicon-earphone">${param.brideTel}</i>
					</p>
				</div>
			</div>
			<!-- couple -->
		</div>
	</div>
	<!--//main-drop-->

	<!-- </div> -->
	<!-- //banner -->

	<!--welcome-->
	<div class="welcome">
		<div class="container">
			<div class="welcome-top">
				<img src="img/couple.jpg" class="img-responsive" alt="">
				<h2>초대글</h2>
				<p>${param.cardContext}</p>
			</div>
		</div>
	</div>
	<!--//welcome-->

	<!-- 방명록 -->
	<div class="content">
		<input type="hidden" name="comments" value="">
		<div class="container">
			<div class="guestBook">
				<div class="about-head">
					<h3 class="tittle">GuestBook</h3>
					<input style="float: right; margin-right: 4%;" type="button"
						class="button4" name="writeComment" onclick="writeComment()"
						value="축하글 쓰기" />
				</div>
			</div>
		</div>
	</div>
	<!-- //방명록 -->

	<!--registry-->
	<div class="registry-section">
		<h3 class="tittle">PhotoBook</h3>

		<!-- 포토북 코드 추가 -->
		<c:if test="${param.photoBookNo != null && param.photoBookNo != ''}">
			<!--about-->
			<div class="about">
				<div class="container">
					<div class="about-head">
						<h2>PhotoBook</h2>
					</div>
					<div class="about-grids">

						<c:set var="pbImg" value="${fn:split(param.photoBookImg, '`') }" />
						<c:set var="pbComment"
							value="${fn:split(param.photoBookComment, '`END`') }" />

						<c:forEach begin="0" end="${fn:length(pbImg)-1 }" var="i">
							<div class="col-md-3 about-grid test1">
								<%-- <img src="${initParam.root }img/photobook/${sessionScope.mvo.memberId}/${param.photoBookNo }/${pbImg[i] }" class="img-responsive" alt="/" width="280px"> --%>
								<img
									src="${initParam.root }img/photobook/${param.memberId}/${param.photoBookNo }/${pbImg[i] }"
									class="img-responsive" alt="/" width="280px">
								<div class="textbox">
									<!-- <h4>my wedding</h4> -->
									<p>${pbComment[i]}</p>
								</div>
							</div>
						</c:forEach>

						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<!--about-->
		</c:if>



	</div>
	<!--//registry-->


	<!--/program-->
	<div class="program">
		<div class="container">
			<h3 class="tittle">Wedding Information</h3>
			<div class="col-md-6 program-img">
				<div class="lo_cont_box cont_sub col-2 locationdivs"
					id="div_wedding">
					<input type="hidden" id="wedding_pmap_lat" value=""> <input
						type="hidden" id="wedding_pmap_lon" value=""> <input
						type="hidden" id="wedding_paddr" value="예식장 주소 (test)"> <input
						type="hidden" id="wedding_pname" value="웨딩홀">

				</div>
			</div>

			<div class="col-md-6 program-text">
				<div class="scrollbar" id="style-2">
					<div class="force-overflow">
						<div class="popular-post-grids">
							<div class="popular-post-grid">
								<div class="post-text">
									<dl>
										<dt>ADDRESS</dt>
										<dd>${param.hallName}</dd>
										<dd id="widding_paddr" class="map_initialize">예식장 주소 :
											${param.hallLocation}</dd>
									</dl>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="popular-post-grid">
								<div class="post-text">
									<dl>
										<dt>DATE</dt>
										<c:if test="${param.cardDate != null}">
											<dd>${param.cardDate}&nbsp;${param.hour} : ${param.min}
												&nbsp; ${param.ampm }</dd>
											<dd>D-Day : ${param.dDay }일</dd>
										</c:if>
									</dl>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div id="map" style="position: relative; overflow: hidden;">

				<script type="text/javascript"
					src="//apis.daum.net/maps/maps3.js?apikey=3f17108ee4529ef634468783d7ef555a&libraries=services">
					
				</script>
				<script>
					var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
					var loc = '${param.hallLocation}';

					//alert("loc::"+loc);
					mapOption = {
						center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
						level : 3
					// 지도의 확대 레벨
					};

					// 지도를 생성합니다    
					var map = new daum.maps.Map(mapContainer, mapOption);

					// 주소-좌표 변환 객체를 생성합니다
					var geocoder = new daum.maps.services.Geocoder();

					// 주소로 좌표를 검색합니다
					geocoder
							.addr2coord(
									loc,
									function(status, result) {

										// 정상적으로 검색이 완료됐으면 
										if (status === daum.maps.services.Status.OK) {

											var coords = new daum.maps.LatLng(
													result.addr[0].lat,
													result.addr[0].lng);

											// 결과값으로 받은 위치를 마커로 표시합니다
											var marker = new daum.maps.Marker({
												map : map,
												position : coords
											});

											// 인포윈도우로 장소에 대한 설명을 표시합니다
											var infowindow = new daum.maps.InfoWindow(
													{
														content : '<div style="width:150px;text-align:center;padding:6px 0;">예식장</div>'
													});
											infowindow.open(map, marker);

											// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
											map.setCenter(coords);
										}
									});
				</script>
			</div>
			<!-- map  -->

		</div>

		<div class="clearfix"></div>
	</div>



	<div class="copy">
		<p>MySweetLove</p>
		<a id="kakao-link-btn" href="javascript:;"> <img
			style="width: 40px; height: 40px;"
			src="http://dn.api1.kage.kakao.co.kr/14/dn/btqa9B90G1b/GESkkYjKCwJdYOkLvIBKZ0/o.jpg" />
		</a>

		<!-- Facebook share -->
		<a
			href="http://www.facebook.com/sharer/sharer.php?u=http://mysweetlove.org/Final_WeddingCard/url/${param.url}.jsp">
			<img style="width: 40px; height: 40px;"
			src=${initParam.root}img/facebook-share.png>
		</a> <a href="#home" id="toTop" class="scroll" style="display: block;">
			<span id="toTopHover" style="opacity: 1;"> </span>
		</a>
	</div>

<script type='text/javascript'>
  //<![CDATA[
    // // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('150642152529d54760872b2abd33da63');
    
    // // 카카오톡 링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.
    Kakao.Link.createTalkLinkButton({
      container: '#kakao-link-btn',
      label: '${param.groomName}♥${param.brideName}',
      image: {
        src: 'http://cswiki.net/MSL/img/getting_married.jpg',
        width: '1400',
        height: '362'
      },
      webButton: {
        text: 'D-${param.dDay} ${param.cardDate} ${param.hour}:${param.min} ',
       /*  url: 'https://dev.kakao.com/docs/js' // 앱 설정의 웹 플랫폼에 등록한 도메인의 URL이어야 합니다. */
       url: 'http://mysweetlove.org/url/${param.url}.jsp'
      }
    });
  //]]>
</script>

	<!--start-smooth-scrolling-->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>




</body>
</html>