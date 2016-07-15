<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<link rel="stylesheet" type="text/css"
	href="http://demo.fabthemes.com/zenith/wp-content/cache/minify/000125/M9CPSs3LLMnQLy6pzEnVMYBxk_LzS4pLihILECyEZHJxMUJYNz2nsiAjMzk_rxhVRUlGam4qqlBBUWpJSWVARn5JPgA.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="css/M9CPSs3LLMnQLy6pzEnVMYBxk_LzS4pLihILECyEZHJxMUJYNz2nsiAjMzk_rxhVRUlGam4qqlBBUWpJSWVARn5JPgA.css"
	media="all">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<title>Zenith | Just another demo Sites site</title>

<style>
.header-top {
	padding: 0.5em 0;
}

.backstretch {
	
	background: url(${initParam.root}img/013.jpg) no-repeat 0px 0px;
	background-size: cover;
}

/* 업로드한 이미지 */
.backstretch_select {
	min-height: 600px;
}

.backstretch_select-top {
	padding: 0.5em 0;
}

.backstretch_select {
	background:
		url(${initParam.root}url/temp_${sessionScope.mvo.memberId}/${param.imgSrc})
		no-repeat 0px 0px;
	background-size: cover;
}

@media ( max-width : 992px ) {
	.backstretch_select {
		background:
			url(${initParam.root}url/temp_${sessionScope.mvo.memberId}/${param.imgSrc})
			no-repeat 0px 0px;
		background-size: cover;
		min-height: 250px;
	}
	.img-responsive {
		height: 80px
	}
}
</style>

<!-- 방명록 -->
<script type="text/javascript">
	function writeComment() {

		location.href = "${initParam.root}card.do?command=linkGuestBook&&url=${param.url}";
	}

	$(document).ready(function() {

		/* $.ajax({
			type : "get",
			url : "../card.do",
			data : "command=getAllCardComments&&cardNo=" + '${param.cardNo}',
			dataType : "json",

			
			success : function(jsonData) {

				var commentList = jsonData.commentList;
				
				//$('.guestBook').innerHTML = "123123213";
				
				var table = "<table class='table'><tr>"
					+"<th>내용</th><th>작성자</th><th>작성일</th></tr>";
				 $('.guestBook').append(table);
				 
				 for (i = 0; i < commentList.length; i++) {
					 $('.guestBook').append(
						"<tr><td>"+commentList[i].content+"</td><td>"
						+commentList[i].guest+"</td><td>"
						+commentList[i].writeDate+"</td>"
					 );
				}//for
				
				 $('.guestBook').append("</tr></table>");
			}//success
			
		});
 */
	});//ready
</script>
<!-- //방명록 -->

<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="http://demo.fabthemes.com/zenith/xmlrpc.php">

<link rel="alternate" type="application/rss+xml" title="Zenith ≫ Feed"
	href="http://demo.fabthemes.com/zenith/feed/">
<link rel="alternate" type="application/rss+xml"
	title="Zenith ≫ Comments Feed"
	href="http://demo.fabthemes.com/zenith/comments/feed/">
<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/72x72\/","ext":".png","source":{"concatemoji":"http:\/\/demo.fabthemes.com\/zenith\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.5.3"}};
			!function(a,b,c){function d(a){var c,d,e,f=b.createElement("canvas"),g=f.getContext&&f.getContext("2d"),h=String.fromCharCode;if(!g||!g.fillText)return!1;switch(g.textBaseline="top",g.font="600 32px Arial",a){case"flag":return g.fillText(h(55356,56806,55356,56826),0,0),f.toDataURL().length>3e3;case"diversity":return g.fillText(h(55356,57221),0,0),c=g.getImageData(16,16,1,1).data,d=c[0]+","+c[1]+","+c[2]+","+c[3],g.fillText(h(55356,57221,55356,57343),0,0),c=g.getImageData(16,16,1,1).data,e=c[0]+","+c[1]+","+c[2]+","+c[3],d!==e;case"simple":return g.fillText(h(55357,56835),0,0),0!==g.getImageData(16,16,1,1).data[0];case"unicode8":return g.fillText(h(55356,57135),0,0),0!==g.getImageData(16,16,1,1).data[0]}return!1}function e(a){var c=b.createElement("script");c.src=a,c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g,h,i;for(i=Array("simple","flag","unicode8","diversity"),c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++)c.supports[i[h]]=d(i[h]),c.supports.everything=c.supports.everything&&c.supports[i[h]],"flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
<script
	src="http://demo.fabthemes.com/zenith/wp-includes/js/wp-emoji-release.min.js?ver=4.5.3"
	type="text/javascript"></script>
	
<style type="text/css">
img.wp-smiley, img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}

/*  */
.header-top {
    padding: 0.5em 0;
	}
	.backstretch {
     background: url(${initParam.root}img/013.jpg)no-repeat 0px 0px; 
	background-size:cover;
	}
	
	/* 업로드한 이미지 */
	.backstretch_select {
    min-height: 600px;
	}
	.backstretch_select-top {
    padding: 0.5em 0;
	}
	.backstretch_select {
     background: url(${initParam.root}url/temp_${sessionScope.mvo.memberId}/${param.imgSrc})no-repeat 0px 0px; 
	 background-size:cover;
	}
	
	#kakao-link-btn img
			{
			margin-left: 48%;
			}	
			
	#msl{
		margin-left:48%;
	}
			
	@media ( max-width : 992px ){
		.backstretch_select {
		     background: url(${initParam.root}url/temp_${sessionScope.mvo.memberId}/${param.imgSrc})no-repeat 0px 0px; 
			background-size:cover;
			min-height: 250px;
		}
		
		.img-responsive{
			height: 150px;
		}
		#kakao-link-btn img
			{
			margin-left: 30%;
			}
		#msl{
		margin-left:30%;
		}		
	}


</style>


<link rel="stylesheet" id="custom-css"
	href="http://demo.fabthemes.com/zenith/wp-content/themes/Zenith/css/custom.php?ver=4.5.3"
	type="text/css" media="all">
<script type="text/javascript"
	src="http://demo.fabthemes.com/zenith/wp-content/cache/minify/000125/M9bPKixNLarUMYYydHMz04sSS1L1cjPzAA.js"></script>
<link rel="https://api.w.org/"
	href="http://demo.fabthemes.com/zenith/wp-json/">
<link rel="EditURI" type="application/rsd+xml" title="RSD"
	href="http://demo.fabthemes.com/zenith/xmlrpc.php?rsd">
<link rel="wlwmanifest" type="application/wlwmanifest+xml"
	href="http://cdn.demo.fabthemes.com/zenith/wp-includes/wlwmanifest.xml">
<meta name="generator" content="WordPress 4.5.3">
<link rel="canonical" href="http://demo.fabthemes.com/zenith/">
<link rel="shortlink" href="http://demo.fabthemes.com/zenith/">
<link rel="alternate" type="application/json+oembed"
	href="http://demo.fabthemes.com/zenith/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fdemo.fabthemes.com%2Fzenith%2F">
<link rel="alternate" type="text/xml+oembed"
	href="http://demo.fabthemes.com/zenith/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fdemo.fabthemes.com%2Fzenith%2F&amp;format=xml">
<style type="text/css">
.recentcomments a {
	display: inline !important;
	padding: 0 !important;
	margin: 0 !important;
}
</style>
</head>

<body>

	<div id="page" class="hfeed site">
		<div id="content" class="site-content">
			<div class="subhead"
				style="position: relative; z-index: 0; background: url(${initParam.root}img/013.jpg) no-repeat 0px 0px;" >
				<div class="subinner">
					<div class="container">
						<div class="row">
<%-- 
							<c:choose>
								<c:when test="${ param.imgSrc == ''}">
									<div class="backstretch">
										<div class="container">
											<script defer src="js/jquery.flexslider.js"></script>
										</div>
									</div>

								</c:when>
								<c:otherwise>
									<div class="backstretch_select">
										<div class="container">
											<script defer src="js/jquery.flexslider.js"></script>
										</div>
									</div>
								</c:otherwise>
							</c:choose> --%>

							<div class="col-md-12 wednames">
								<c:if test="${param.cardDate != ''}">
									D-Day : ${param.dDay }
								<span> </span>
								</c:if>
							</div>

							<div class="col-md-6">
								<div class="bridecol">
									<div class="bridepic">
										<c:choose>
											<c:when test="${param.imgBride == '' }">
											<img src="img/01.jpg" alt="bride" height="160px">
											</c:when>
											<c:otherwise>
									 			<img src="${initParam.root}url/temp_${sessionScope.mvo.memberId}/${param.imgBride}" class="img-responsive" height="160px">
									 			
									 		</c:otherwise>
									 	</c:choose>
									</div>
									
									<div class="brideinfo">
										<h5>${param.groomName}</h5>
										${fn:substring(param.groomTel, 0,3) }<br>${fn:substring(param.groomTel, 3,11)}
									</div>
									<div class="cplus glyphicon glyphicon-heart"></div>
								</div>
							</div>

							<div class="col-md-6">
								<div class="groomcol">
									<div class="groompic">
										<c:choose>
									 		<c:when test="${param.imgGroom == '' }">
									 				<img src="img/02.jpg" alt="groom" >
									 		</c:when>
									 		<c:otherwise>
									 			<img height="160px" src="${initParam.root}url/temp_${sessionScope.mvo.memberId}/${param.imgGroom}" class="img-responsive"  height="160px">
									 		</c:otherwise>
									 	</c:choose>
									</div>

									<div class="groominfo">
										<h5>${param.brideName}</h5>
										<%-- ${fn:substring(param.brideTel, 0,3) }<br>${param.brideTel} --%>
										${fn:substring(param.brideTel, 0,3) }<br>${fn:substring(param.brideTel, 3,11)}
									</div>
								</div>
							</div>

						</div>
						<!-- row -->
					</div>
				</div>
				
				<c:choose >
		<c:when test="${ param.imgSrc == ''}">
	   		<div class="backstretch">
	     		 <div class="container">
	                 <script defer src="js/jquery.flexslider.js"></script>
	      		</div>
	   		</div>
	   		
		</c:when>
		<c:otherwise>
			<div class="backstretch_select">
	     		 <div class="container">
	                    <script defer src="js/jquery.flexslider.js"></script>
	      		</div>
   			</div>
   			
		</c:otherwise>
	</c:choose>
				
				<!-- <div class="backstretch">
					<img src="img/013.jpg">
				</div> -->
			</div>


			<div class="timer-box">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h2 class="timehead">We are Getting Married in</h2>

							<div id="ctimer">
								<span>
									<h3>${param.cardDate}</h3>
								</span><span>
									<h3>${param.hour}:${param.min}&nbsp;${param.ampm} </h3>
								<%-- </span><span>
									<h3>${param.ampm}</h3>
								</span> --%>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="story-box">
				<div class="container">
					<div class="row">

						<div class="col-xs-12">
							<h2 class="section-title"  id="section-title3" >Invitation</h2>
						</div>

						<div class="col-sm-6">
							<div class="dstory">
								<img src="img/wedding001.jpg" alt="bride">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="dstory">
								<p>
									${param.cardContext}
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>


<div class="content">
	<input type="hidden" name="comments" value="">
		<div class="guestBook">
			<div class="container">
                  <div class="about-head">
                  <h2 class="section-title" id="section-title2">Guest Book</h2>
               </div>
		<br>
		<input type="button" name="writeComment" onclick="writeComment()"
				value="축하글 쓰기">
		<!-- 
			수연아 요쪽에 방명록 잡아줭
		
		 -->		
			</div>
		</div>
	</div>
			<div class="album-box">
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<h2 class="section-title" id="section-title2">
								Photo Album <span> <!-- <a
									href="http://demo.fabthemes.com/zenith/album/">View Full
										Album</a> --></span>
							</h2>
						</div>

						<div class="albumcover">
						<c:if test="${param.photoBookNo != null && param.photoBookNo != ''}">
							<c:set var="pbImg" value="${fn:split(param.photoBookImg, '`') }" />
							<c:set var="pbComment"
								value="${fn:split(param.photoBookComment, '`END`') }" />

							<c:forEach begin="0" end="${fn:length(pbImg)-1 }" var="i">
								<%-- <img src="${initParam.root }/img/photobook/${sessionScope.mvo.memberId}/${param.photoBookNo }/${pbImg[i] }" class="img-responsive" alt="/" width="280px">              
                     <div class="textbox">
                        <!-- <h4>my wedding</h4> -->
                        <p>${pbComment[i]}</p>
                     </div> --%>

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
						<!-- albumcover -->
					</div>
				</div>
			</div>
		</div>

		<!-- #content -->
		<h2 class="section-title" id="wedding">Wedding Information</h2>
		<div class="footer-widget-section">
			<div class="container">
				<div class="col-md-6 program-img">
					<!--  <a href="single.html" class="mask"><img src="img/menu.jpg" alt="image" class="img-responsive zoom-img"></a>
						<h4>Wedding Menu</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat purus sed tempus ornare. Sed convallis eu orci ut sodales. Nam rhoncus laoreet elit, a condimentum augue tempor vitae in faucib.</p>
					   -->

					<div class="lo_cont_box cont_sub col-2 locationdivs"
						id="div_wedding">
						<input type="hidden" id="wedding_pmap_lat" value=""> <input
							type="hidden" id="wedding_pmap_lon" value=""> <input
							type="hidden" id="wedding_paddr" value="예식장 주소 (test)"> <input
							type="hidden" id="wedding_pname" value="웨딩홀">
						<div id="map" style=" position: relative; overflow: hidden;">

						<script type="text/javascript"
							src="//apis.daum.net/maps/maps3.js?apikey=3f17108ee4529ef634468783d7ef555a&libraries=services">
						</script>
						<script >
						
							var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
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
					</div>
				</div>
				<div class="col-md-6 program-text">
					<div class="scrollbar" id="style-2">
						<div class="force-overflow">

							<div class="popular-post-grids" style="color: #fff;">
								<div class="popular-post-grid">
									<div class="post-time">
										<!-- <a href="single.html">11 : 30 </a> -->
									</div>
									<div class="post-text">
										<!-- <h4><a class="pp-title" href="single.html">Wedding Ceremony</a></h4> -->
										<p>
											날짜
											<c:if test="${param.cardDate != ''}">
												<dd>${param.cardDate}&nbsp;${param.hour} ${param.min}
													&nbsp; ${param.ampm }</dd>
											</c:if>
										</p>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="popular-post-grid">
									<div class="post-time">
										<!-- <a href="single.html">12 : 30 </a> -->
									</div>
									<div class="post-text">
										<!-- <h4><a class="pp-title" href="single.html">Photo Shoot with all</a></h4> -->
										<p>
											장소<br> ${param.hallName}<br> ${param.hallLocation}
										</p>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>

		</div>
		<!--	</div> -->
		<!-- 	</div>
		</div> -->

		<footer id="colophon" class="site-footer" role="contentinfo">
			<div class="container">
				<div class="row">
					<!-- <div class="col-md-8"> -->
					<!-- <div class="site-info">
							MySweetLove
							<a href="#" class="go-top glyphicon glyphicon-circle-arrow-up"></a>
						</div> -->
					<!-- .site-info -->
					<!-- </div> -->
					<p id="msl">MySweetLove
							<a href="#" class="go-top glyphicon glyphicon-circle-arrow-up"></a></p>
					<a id="kakao-link-btn" href="javascript:;">
<img  style="width:40px; height: 40px;"  src="http://dn.api1.kage.kakao.co.kr/14/dn/btqa9B90G1b/GESkkYjKCwJdYOkLvIBKZ0/o.jpg"/>
</a>
<!-- Facebook share -->
<a 
href="http://www.facebook.com/sharer/sharer.php?u=http://mysweetlove.org/Final_WeddingCard/url/${param.url}.jsp">
<img style="width:40px; height: 40px;"  src=${initParam.root}img/facebook-share.png></a>

				</div>
			</div>
		</footer>
		<!-- #colophon -->
	</div>
	<!-- #page -->

<script type='text/javascript'>
  //<![CDATA[
    // // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('150642152529d54760872b2abd33da63');
    
    // // 카카오톡 링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.
    Kakao.Link.createTalkLinkButton({
      container: '#kakao-link-btn',
      label: '카카오링크 샘플에 오신 것을 환영합니다.',
      image: {
        src: 'http://dn.api1.kage.kakao.co.kr/14/dn/btqaWmFftyx/tBbQPH764Maw2R6IBhXd6K/o.jpg',
        width: '60',
        height: '60'
      },
      webButton: {
        text: '카카오 디벨로퍼스',
        url: 'https://dev.kakao.com/docs/js' // 앱 설정의 웹 플랫폼에 등록한 도메인의 URL이어야 합니다.
      }
    });
  //]]>
</script>

	<!-- <script type="text/javascript"
		src="http://demo.fabthemes.com/zenith/wp-content/cache/minify/000125/bYxBDoAgDAQ_ZICnePYG2ARQWoQSw-_FE5J428xsRskN0LOToUij7VE4A1u3qA8PV4XcROqG2-qIadKRjD8hAtaBDRH3lE5jiejxL2upIu9043t4AA.js"></script>
	 -->
	<script type="text/javascript">
/* <![CDATA[ */
var fab_objects = {"timer":"04\/30\/2015 18:00:00"};
/* ]]> */
</script>
	<script type="text/javascript"
		src="http://demo.fabthemes.com/zenith/wp-content/cache/minify/000125/M9CPSs3LLMnQzyrWTy4tLsnP1THRLy_QTc1NSk3Ry83MAwA.js"></script>
	<script type="text/javascript">
	
	/* if('${param.imgSrc}' == ''){
		 $('.subhead').backstretch("img/013.jpg"); */
		jQuery(".subhead").backstretch("img/013.jpg");
/* 	}else{
		$('.subhead').backstretch("${initParam.root}url/temp_${sessionScope.mvo.memberId}/${param.imgSrc}"); 
	}
		
 */	 
</script>


</body>
</html>