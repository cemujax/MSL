<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<link href="css/lightbox.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Poppins:400,600,700,500,300' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,900,700italic,700,400italic,500,500italic,300,100italic,100,300italic' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<style type="text/css">
    
.header-top {
    padding: 0.5em 0;
	}
	.backg {
     background: url("img/wedding_01.png") center top / cover no-repeat;
	background-size:cover;
	min-height: 380px;
	}
	
	/* 업로드한 이미지 */
	.backstretch_select {
    min-height: 600px;
	}
	.backstretch_select-top {
    padding: 0.5em 0;
	}
	.backg_select {
     background: url(${initParam.root}url/${param.url}/${param.imgSrc}) center top / cover no-repeat;
	 background-size:cover;
	 min-height: 380px;
	}
#kakao-link-btn img
			{
			/* margin-left: 48%; */
			}	
			
	#msl{
		/* margin-left: 30%; */
		color: #fff;
	}
			
			pre{
	    display: block;
    /* padding: 9.5px; */
    margin: 0 0 10px;
    font-size: 13px;
    line-height: 1.42857143;
    color: #fff;
    word-break: break-all;
    word-wrap: break-word;
    border: none;
    background-color: transparent;
	}
	
	
			/* 992 */
	@media ( max-width : 992px ){
	.backg {
     background: url("img/wedding_01.png") no-repeat -420px 0px;
	background-size:cover;
	}
	
		.backg_select {
		     background: url(${initParam.root}url/${param.url}/${param.imgSrc}) no-repeat -420px 0px;
			background-size:cover;
			min-height: 380px;
		}
		
		.img-responsive{
			height: 150px;
		}
		#kakao-link-btn img
			{
			/* margin-left: 30%; */
			}
		#msl{
		margin-left: 5%;
		color: #fff;
		}		
	}
		.g{
		 float: left; 
		 width: 500px;
	}
	.g img{
		float: left; 
		width: 60px;
		height: 60px;
	}
	.g label{
		margin-top: 1%;
		float: left; 
		width: 200px;
		height: 10px;
		margin-left: 5%;
	}
	
	.b{
		float: right; 
		width: 300px;
	}
	
	.b img{
		float: right; 
		width: 60px;
		height: 60px;
	}
	.b label{
		margin-top: 1%;
		float: left; 
		width: 150px;
		height: 10px;
	}
	
	/* 320 */
	@media ( max-width: 320px ){
	.portfolio-text
{
	font-family: 'Roboto', sans-serif;
	font-weight: 700;
	letter-spacing: 5px;
	margin-bottom:30px;
	margin-top:40px;
}

	pre{
	    display: block;
    /* padding: 9.5px; */
    margin: 0 0 10px;
    font-size: 13px;
    line-height: 1.42857143;
    color: #fff;
    word-break: break-all;
    word-wrap: break-word;
    border: none;
    background-color: transparent;
	}
	
	.backg {
        background: url("img/wedding_01.png") no-repeat -370px 0px;
    background-size: cover;
    padding: 50px 0 100px;
    height: 350px;
	}
	
	.backg_select {
	    background: url(/Final_WeddingCard/url/${param.url}/${param.imgSrc}) no-repeat -100px 0px;
	    background-size: cover;
	    min-height: 340px;
	}
	.col-xs-offset-1, .col-sm-6, .col-sm-offset-3 {
		margin-top: 0px;
	}
	
	.backg, .col-xs-offset-1, .col-sm-6, .col-sm-offset-3 {
    margin-top: 0px;
}
.backg_select, .col-xs-offset-1, .col-sm-6, .col-sm-offset-3 {
	margin-top: 40px;
}

		.g label{
		margin-top: 2%;
		float: left; 
		width: 100px;
		height: 10px;
		margin-left: 5%;
		}
		
		.b label{
		margin-top: 2%;
		float: right; 
		width: 100px;
		height: 10px;
	}
		.h2, h2 {
    font-size: 20px;
}
.inner{
padding: 20px 20px;
}
 
 .g {
    float: left;
    width: 100%;
    height: 80px;
}
.b {
    float: right;
    width: 100%;
    height: 80px;
}
		
		.notes-bg {
    background: rgba(33, 42, 63, 0.9);
    padding: 20px 0px;
}
.text-box h2 {
    font-size: 17px;
}
		
		
		.contact-form, .address-space
{
	margin-top: 20px;
	margin-left: 0%;
}
		
	}
	
	
	
	/* pc 1215 */
	
	@media (min-width: 380px) and (max-width: 1300px) {
		.backg_select {
    background: url(/Final_WeddingCard/url/${param.url}/${param.imgSrc}) center top / cover no-repeat;
    background-size: cover;
    min-height: 440px;
	}
	
	.backg {
    background: url("img/wedding_01.png") center top / cover no-repeat;
    background-size: cover;
    min-height: 380px;
        max-height: 455px;
}
}
	
</style>
</head>


<body>
<header class="header">
	<div class="container">
		<div class="row">
			<div class="col-md-4 ">
				<div class="navbar-header">
					    <button type="button" class="navbar-toggle menu-button" data-toggle="collapse" data-target="#myNavbar">
					        <span class="glyphicon glyphicon-align-justify"></span>
					    </button>
      					<a class="navbar-brand logo" href="#">MSLove</a>
    			</div>
			</div>
			<div class="col-md-8">
				<nav class="collapse navbar-collapse" id="myNavbar" role="navigation">
					<ul class="nav navbar-nav navbar-right menu">
							<li><a href="#page-top" class="page-scroll active">Home</a></li>
							<li><a href="#section2" class="page-scroll">GuestBook</a></li>
							<li><a href="#work" class="page-scroll">PhotoBook</a></li>
							<li><a href="#section4" class="page-scroll">Location</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</header>

<div class="container-fluid main" id="page-top">
	<div class="row">
	
			<c:choose >
				<c:when test="${ param.imgSrc == ''}">
			<div class="col-md-12 backg">
			     		 <div class="container">
			                 <script defer src="js/jquery.flexslider.js"></script>
			      		</div>
			      		
			      		<div class="col-md-4 col-md-offset-4 inner col-xs-10 col-xs-offset-1 col-sm-6 col-sm-offset-3">
				<div class="text-box">
                	<p class="intro">
                		<c:if test="${param.cardDate != ''}">
									D-Day<BR> ${param.dDay }
								<span> </span>
								</c:if>
                	</p>
                    <h2>초대합니다.</h2>
                    <pre>${param.cardContext}</pre>
				</div>
  			</div>
	</div>
			   		
				</c:when>
				<c:otherwise>
				<div class="col-md-12 backg_select">
			     		 <div class="container">
			                    <script defer src="js/jquery.flexslider.js"></script>
			      		</div>
			      		
			      		<div class="col-md-4 col-md-offset-4 inner col-xs-10 col-xs-offset-1 col-sm-6 col-sm-offset-3">
				<div class="text-box">
                	<p class="intro">
                		<c:if test="${param.cardDate != ''}">
									D-Day<BR> ${param.dDay }
								<span> </span>
								</c:if>
                	</p>
                    <h2>초대합니다.</h2>
                      <pre>${param.cardContext}</pre>
				</div>
  			</div>
			      		
		   			</div>
		   			
				</c:otherwise>
		</c:choose>
		
	</div>
</div>

<div class="container-fluid features" >
	<div class="container">
		<div class="row">
			<div class="b"><!-- 신부 -->
				<img alt="" src="${initParam.root}weddingCard/preview_${param.templateName}/img/b1.png">
				<label>${param.brideName}</label>
				<label>Tel. <br>${fn:substring(param.brideTel, 0,3) }-${fn:substring(param.brideTel, 3,7)}-${fn:substring(param.brideTel, 7,11)} </label>
			</div>
			<div class="g"><!-- 신랑 -->
				<img alt="" src="${initParam.root}weddingCard/preview_${param.templateName}/img/b2.png">
				<label>${param.groomName}</label>
				<label>Tel. <br>${fn:substring(param.groomTel, 0,3) }-${fn:substring(param.groomTel, 3,7)}-${fn:substring(param.groomTel, 7,11)} </label>
			</div>
		</div>
	</div>
</div>

<!-- guestbook -->
<div class="container-fluid" id="section2">
	<div class="container">
<div class="content">
	<input type="hidden" name="comments" value="">
		<div class="guestBook">
                  <div class="about-head">
                  <h2 class="text-center portfolio-text">GuestBook</h2>
               </div>
		<br>
		<input type="button" name="writeComment" onclick="writeComment()"
				value="축하글 쓰기">
		</div>
	</div>
</div>
</div>
	
<!-- photobook -->
<div class="container-fluid work" id="work">
	<div class="container">
		<div class="row" id="starts">
			<div class="col-md-12 col-sm-12 col-xs-12 work-list">
				<h2 class="text-center portfolio-text">PhotoBook</h2>
				<div class="albumcover">
						<c:if test="${param.photoBookNo != null && param.photoBookNo != ''}">
							<c:set var="pbImg" value="${fn:split(param.photoBookImg, '`') }" />
							<c:set var="pbComment"
								value="${fn:split(param.photoBookComment, '`END`') }" />

							<c:forEach begin="0" end="${fn:length(pbImg)-1 }" var="i">
								<div class="col-md-4 album-post">
									<img
										src="${initParam.root }/img/photobook/${sessionScope.mvo.memberId}/${param.photoBookNo }/${pbImg[i] }"
										class="img-responsive" alt="/" width="280px">
									<div class="textbox">
										<!-- <h4>my wedding</h4> -->
										<p>${pbComment[i]}</p>
									</div>
								</div>
							</c:forEach>
							</c:if>
						</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid contact" id="section4">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2 class="text-center portfolio-text">Location</h2>
				<div class="col-md-6 col-sm-12 col-xs-12 address-space">
					<div id="map-canvas">

						<script type="text/javascript"
							src="//apis.daum.net/maps/maps3.js?apikey=3f17108ee4529ef634468783d7ef555a&libraries=services">
						</script>
						<script >
						
							var mapContainer = document.getElementById('map-canvas'); // 지도를 표시할 div 
							var loc = '${param.hallLocation}';
							
							//alert("loc::"+loc);
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

						</script>
					</div><!-- map  -->
					<div class="address">
						<h3>Date</h3>
						 <dl>
                     	<c:if test="${param.cardDate != null}">
                     	 <dd><i class="fa fa-calendar" aria-hidden="true" style="color:#00B700 "></i></dd>
                     	<dd>${param.cardDate} ${param.hour}:${param.min} ${param.ampm }</dd>
                     	<dd>D-Day :  ${param.dDay }일</dd>
                    	 </c:if>
                  	</dl>
					</div>
					
					<!-- <div id="map-canvas"></div> -->
					<div class="address">
						<h3>Wedding Hall</h3>
						<p><i class="glyphicon glyphicon-map-marker"></i>${param.hallName} <br> ${param.hallLocation}</p>
<!-- 찬영오빠 여기요 --><p><i class="glyphicon glyphicon-earphone"></i>
						<c:if test="${param.hallTel != ''}">
					${fn:substring(param.hallTel, 0,3) }-${fn:substring(param.hallTel, 3,6)}-${fn:substring(param.hallTel, 6,10)}
					</c:if>
				</p>
						<!-- <p><i class="glyphicon glyphicon-envelope"></i>Info@example.com</p> -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="container-fluid footer">
<div class="row" >
   	<div class="col-md-12 col-sm-12 col-xs-12 notes-bg"> 
        
					<p id="msl">MySweetLove</p>
					<a id="kakao-link-btn" href="javascript:;">
<img  style="width:40px; height: 40px;"  src="http://dn.api1.kage.kakao.co.kr/14/dn/btqa9B90G1b/GESkkYjKCwJdYOkLvIBKZ0/o.jpg"/>
</a>
<!-- Facebook share -->
<a 
href="http://www.facebook.com/sharer/sharer.php?u=http://mysweetlove.org/Final_WeddingCard/url/${param.url}.jsp">
<img style="width:40px; height: 40px;"  src=${initParam.root}img/facebook-share.png></a>

				</div>
   		 </div>
</div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.countTo.js"></script>
    <script type="text/javascript" src="js/jquery.waypoints.min.js"></script>
   <!--  <script src="https://maps.googleapis.com/maps/api/js"></script> -->
    <script src="js/lightbox.min.js"></script>
  <!--   <script>
      function initialize() {
        var mapCanvas = document.getElementById('map-canvas');
        var mapOptions = {
          center: new google.maps.LatLng(26.802100, 75.822739),
          zoom: 8,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(mapCanvas, mapOptions)
      }
      google.maps.event.addDomListener(window, 'load', initialize);
    </script> -->
    <script>
	$(document).ready(function () {
		$(document).on("scroll", onScroll);
 
		$('a[href^="#"]').on('click', function (e) {
			e.preventDefault();
			$(document).off("scroll");
 
			$('a').each(function () {
				$(this).removeClass('active');
			})
			$(this).addClass('active');
 
			var target = this.hash;
			$target = $(target);
			$('html, body').stop().animate({
				'scrollTop': $target.offset().top
			}, 500, 'swing', function () {
				window.location.hash = target;
				$(document).on("scroll", onScroll);
			});
		});
	});
 
	function onScroll(event){
		var scrollPosition = $(document).scrollTop();
		$('nav a').each(function () {
			var currentLink = $(this);
			var refElement = $(currentLink.attr("href"));
			if (refElement.position().top <= scrollPosition && refElement.position().top + refElement.height() > scrollPosition) {
				$('nav ul li a').removeClass("active");
				currentLink.addClass("active");
			}
			else{
				currentLink.removeClass("active");
			}
		});
	}
	</script>
	<script type="text/javascript">
    jQuery(function ($) {
      // custom formatting example
      $('.timer').data('countToOptions', {
        formatter: function (value, options) {
          return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
        }
      });
 
      // start all the timers
      $('#starts').waypoint(function() {
    $('.timer').each(count);
	});
 
      function count(options) {
        var $this = $(this);
        options = $.extend({}, options || {}, $this.data('countToOptions') || {});
        $this.countTo(options);
      }
    });
  	</script>
</body>
</html>