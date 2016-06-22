<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">



</style>


<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Best Day Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap_02.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:700,700italic,800,300,300italic,400italic,400,600,600italic' rel='stylesheet' type='text/css'>


<!--Custom-Theme-files-->
	<link href="css/style_02.css" rel='stylesheet' type='text/css' />	
	<script src="js/jquery.min.js"> </script>
<!--/script-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
</head>
<body>

<!--start-home-->
	<div id="home" class="header">
	<!-- 	<div class="header-top">
			<div class="container">
				<div class="logo">
					<a href="index.html"><h1>Best<span> Day</span></h1></a>
				</div>
				<span class="menu"> </span>
				    <div class="top-menu">
						<ul class="cl-effect-7">
								<li><a class="active" href="index.html">Home</a></li>
								<li><a href="story.html">Our Story</a></li>
								<li><a href="ceremony.html">Ceremony</a></li>
								<li><a href="albums.html">Our Albums</a></li>
								<li><a href="contact.html">contact</a></li>
							</ul>
				</div>
            script-for-menu
				<script>
				$( "span.menu" ).click(function() {
				  $( ".top-menu" ).slideToggle( "slow", function() {
				    // Animation complete.
				  });
				});
			</script>
			<div class="clearfix"></div> 
	<!--End-top-nav-script
			</div>
		</div>-->
       </div>
	<div class="banner">
	     	<div class="container">
					<div  class="callbacks_container">
					<ul class="rslides" id="slider4">
					<li>
								<div class="banner-info">
									<h3> <span>Wedding</span></h3>
								</div>
							</li>
							<!-- <li>
								<div class="banner-info">
								   <h3>Jack & <span> Julie</span> </h3>
								</div>
							</li>
							<li>
								<div class="banner-info">
								    <h3>Getting <span>Married</span></h3>
								</div>								
							</li> -->
						</ul>
					</div>
					<!--banner-->
	  			<script src="js/responsiveslides.min.js"></script>
			<!--  <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager:true,
			        nav:false,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script> -->
			 <!--main-drop-->
			 <div class="main-drop" ><!-- style="margin-top: 50%;" -->
			   <img src="images/hands.jpg" alt=""  /><!-- style="width:25%;" -->
			    <div class="hands"> <!-- style="margin-left:1%;" -->
				    <h4>Companion</h4>
			        <!--  <div class="section_room">
								<select id="country" onchange="change_country(this.value)" class="frm-field required">
									<option value="null">Select</option>
									<option value="null">Stands out </option>         
									<option value="AX">where lets</option>
									<option value="AX">Vitae lorem</option>
								</select>
							</div> -->	

				</div>
			<div class="couple"  ><!-- style="width:25%;" -->
				 <div class="bride">
				   <img src="images/bride.jpg" class="img-responsive" alt="">
				   <h5>${param.brideName}</h5>
				   <p style="color:#fff;"><i class="glyphicon glyphicon-earphone">${param.brideTel}</i></p>
				 </div>
				 <div class="groom">
				  <img src="images/groom.jpg" class="img-responsive" alt="">
				 <h5>${param.groomName}</h5>
				 <p style="color:#fff;"><i class="glyphicon glyphicon-earphone">${param.groomTel}</i></p>
				 </div>
			 </div>
			 </div>
			 <!--//main-drop-->
			</div>
		 </div>
	<!--welcome-->
	   <div class="welcome">
		    <div class="container">
				<div class="welcome-top">
				    <img src="images/couple.jpg" class="img-responsive" alt="">
					 <h2>초대글</h2>
					 <p>${param.cardContext}</p>
					   <!-- <a class="read" href="single.html">Read More</a> -->
				    </div>
				</div>
			</div>
		 <!--//welcome-->
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
               
                    <c:set var="pbImg" value="${fn:split(param.photoBookImg, '`') }"/>
                    <c:set var="pbComment" value="${fn:split(param.photoBookComment, '`END`') }"/>
                    
                  <c:forEach begin="0" end="${fn:length(pbImg)-1 }" var="i">
                  <div class="col-md-3 about-grid test1">
                  <img src="${initParam.root }/img/photobook/${sessionScope.mvo.memberId}/${param.photoBookNo }/${pbImg[i] }" class="img-responsive" alt="/" width="280px">              
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
		     
		     
		     
			 <!--  <div class="registry">
				   <div class="col-md-6 registry-left">
				   
					<div class="registry-text">
					<h4>Church Of San Paul</h4>
					<h6>11 : 30 am In The Square</h6>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat purus sed tempus ornare. Sed convallis eu orci ut sodales. Nam rhoncus laoreet elit, a condimentum augue tempor vitae in faucibus cura. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat purus sed tempus ornare. Sed convallis eu orci ut sodales. Nam rhoncus laoreet elit, a condimentum augue tempor.</p>
					</div>
					 <a href="single.html" class="mask"><img src="images/r1.jpg" alt="image" class="img-responsive zoom-img"></a>
				   </div>
				    <div class="col-md-6 registry-right">
					 <a href="single.html" class="mask"><img src="images/r2.jpg" alt="image" class="img-responsive zoom-img"></a>
					<div class="registry-text">
					<h4>Restaurant Golf Club</h4>
					<h6>1 : 30 pm In The Garden</h6>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat purus sed tempus ornare. Sed convallis eu orci ut sodales. Nam rhoncus laoreet elit, a condimentum augue tempor vitae in faucibus cura. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat purus sed tempus ornare. Sed convallis eu orci ut sodales. Nam rhoncus laoreet elit, a condimentum augue tempor.</p>
					</div>
					 
					</div>
					<div class="clearfix"> </div>
			  </div> -->
		 </div>
	<!--//registry-->
	
	<!--start-services-->
<!-- <div class="friends-section">
				    <h3 class="tittle">Friends says</h3>
    <div class="friends">
	     	<div class="container">
			<div class="testimonial-content">
			    <p> <img src="images/quote.png" class="img-responsive" alt=""> Congratulations! &nbsp;Christine an Peter I am glad to here that you are starting your new life after the excellent moments together&nbsp;I wish you for all your dreams of tomorrow<img src="images/quote1.png" class="img-responsive" alt=""> </p>
		    </div>
			 
					<div  class="callbacks_container">
					<ul class="rslides" id="slider3">
					          <li>
								 <div  class="test"> <img src="images/t1.jpg" class="img-responsive" alt=""><h5>Sarah Norton</h5></div>
							   </li>
							<li>
								  <div  class="test">  <img src="images/t3.jpg" class="img-responsive" alt=""><h5>Frank Miller</h5></div>							
							</li>
							<li>
								   <div  class="test"> <img src="images/t4.jpg" class="img-responsive" alt=""><h5>Laura Green</h5></div>
	
							</li>
						</ul>
					</div>
					banner
	  			<script src="js/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 3
			      $("#slider3").responsiveSlides({
			        auto: true,
			        pager:false,
			        nav:true,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
	</div>
 </div>
 </div> -->
 <!--//testimonials-->
 <!--/program-->
			 <%--   <div class="program">
		           <div class="container">
				     <h3 class="tittle">Wedding Information</h3>
					   <div class="col-md-6 program-img">
					   <!--  <a href="single.html" class="mask"><img src="images/menu.jpg" alt="image" class="img-responsive zoom-img"></a>
						<h4>Wedding Menu</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat purus sed tempus ornare. Sed convallis eu orci ut sodales. Nam rhoncus laoreet elit, a condimentum augue tempor vitae in faucib.</p>
					   --> 
					   
					   <div class="lo_cont_box cont_sub col-2 locationdivs" id="div_wedding">
               <input type="hidden" id="wedding_pmap_lat" value="">
               <input type="hidden" id="wedding_pmap_lon" value="">
               <input type="hidden" id="wedding_paddr" value="예식장 주소 (test)">
               <input type="hidden" id="wedding_pname" value="웨딩홀">
            </div>
					   
					   </div>
					    <div class="col-md-6 program-text">
						<div class="scrollbar" id="style-2">
								   <div class="force-overflow">

								    <div class="popular-post-grids">
										<div class="popular-post-grid">
											<div class="post-time">
											</div>
											
											<div class="post-text">
											<!-- <h4><a class="pp-title" href="single.html">Wedding Ceremony</a></h4> -->
						                        <p>날짜
						                         <c:if test="${param.cardDate != null}">
                     	 								<dd>${param.cardDate} &nbsp; ${param.hour} : ${param.min} &nbsp; ${param.ampm }</dd>
                     									<dd>D-Day :  ${param.dDay }일</dd>
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
									<p>예식장 주소 : ${param.hallLocation}</p>
								</div>
								<div class="clearfix"></div>
							</div>
							
							
							<!-- Map Code -->
							<div id="map" style="width: 100%; height: 350px;">

						<script type="text/javascript"
							src="//apis.daum.net/maps/maps3.js?apikey=3f17108ee4529ef634468783d7ef555a&libraries=services">
						</script>
						<script >
						if('${param.hallLocation}' != null){
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
						}//if문ㄴ
						</script>
					</div><!-- map  -->
							
								<div class="popular-post-grid">
											<div class="post-time">
												<a href="single.html">01 : 30 </a>
											</div>
											<div class="post-text">
											<h4><a class="pp-title" href="single.html">Lunch Time</a></h4>
						                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat purus sed tempus ornare. Sed convallis eu orci ut sodales. Nam rhoncus laoreet elit, a condimentum augue tempor vitae in faucib.</p>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="popular-post-grid">
											<div class="post-time">
												<a href="single.html">11 : 30 </a>
											</div>
											<div class="post-text">
												<h4><a class="pp-title" href="single.html">Wedding Ceremony</a></h4>
						                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat purus sed tempus ornare. Sed convallis eu orci ut sodales. Nam rhoncus laoreet elit, a condimentum augue tempor vitae in faucib.</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
					   </div>
					   </div>
									</div>
					   <div class="clearfix"> </div>
			       </div>
			    </div>
			    
			    
		<div class="copy">
		   <!--  <p>&copy; 2015 Best Day. All Rights Reserved | Design by <a href="http://w3layouts.com/">W3layouts</a> </p> -->
				<p>MySweetLove</p>
				<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
		</div>
		<!--//footer-->
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
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script> --%>
								
 <!--/program-->
			   <div class="program">
		           <div class="container">
				     <h3 class="tittle">Wedding Information</h3>
				     
				     <div class="col-md-6 program-text">
						<div class="scrollbar" id="style-2">
								   <div class="force-overflow">

								    <div class="popular-post-grids">
										<div class="popular-post-grid">
											<div class="post-time">
												<!-- <a href="single.html">11 : 30 </a> -->
												
											</div>
											<div class="post-text">
											<!-- <h4><a class="pp-title" href="single.html">Wedding Ceremony</a></h4> -->
						                        <p>
											날짜
											<c:if test="${param.cardDate != null}">
												<dd>${param.cardDate}&nbsp; ${param.hour} :
													${param.min} &nbsp; ${param.ampm }</dd>
												<dd>D-Day : ${param.dDay }일</dd>
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
											ADDRESS<br> ${param.hallName}<br>
											${param.hallLocation}
										</p>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>
					   </div>
					   </div>
				</div>
				     
					   <div class="col-md-6 program-img">
					   <div class="lo_cont_box cont_sub col-2 locationdivs" id="div_wedding">
               <input type="hidden" id="wedding_pmap_lat" value="">
               <input type="hidden" id="wedding_pmap_lon" value="">
               <input type="hidden" id="wedding_paddr" value="예식장 주소 (test)">
               <input type="hidden" id="wedding_pname" value="웨딩홀">
               <div id="map" style="width: 100%; height: 350px; position: relative; overflow: hidden; background: url(&quot;http://i1.daumcdn.net/dmaps/apis/loading_n.png&quot;);">
						<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=3f17108ee4529ef634468783d7ef555a&amp;libraries=services">
						</script><script charset="UTF-8" src="http://s1.daumcdn.net/svc/attach/U03/cssjs/mapapi/3.4.7/1461828377452/open.js"></script><script charset="UTF-8" src="http://s1.daumcdn.net/svc/attach/U03/cssjs/mapapi/libs/1441176450396/services.js"></script>
						<script>
						
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

						</script><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; cursor: url(&quot;http://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;http://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;), default;"><div style="position: absolute;"><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L4/107/367.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -223px; top: 125px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L4/107/368.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 33px; top: 125px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L4/107/369.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 289px; top: 125px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L4/107/370.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 545px; top: 125px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L4/107/371.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 801px; top: 125px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L4/107/372.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1057px; top: 125px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L4/107/373.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1313px; top: 125px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L4/107/374.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1569px; top: 125px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L4/108/367.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -223px; top: -131px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L4/108/368.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 33px; top: -131px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L4/108/369.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 289px; top: -131px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L4/108/370.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 545px; top: -131px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L4/108/371.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 801px; top: -131px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L4/108/372.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1057px; top: -131px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L4/108/373.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1313px; top: -131px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L4/108/374.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1569px; top: -131px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L4/109/367.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -223px; top: -387px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L4/109/368.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 33px; top: -387px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L4/109/369.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 289px; top: -387px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L4/109/370.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 545px; top: -387px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L4/109/371.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 801px; top: -387px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L4/109/372.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1057px; top: -387px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L4/109/373.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1313px; top: -387px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L4/109/374.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1569px; top: -387px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 0; left: 0px; top: 0px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L3/215/739.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 416.5px; top: 126px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L3/215/740.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 544.5px; top: 126px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L3/215/741.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 672.5px; top: 126px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L3/215/742.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 800.5px; top: 126px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L3/215/743.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 928.5px; top: 126px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L3/215/744.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1056.5px; top: 126px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L3/215/745.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1184.5px; top: 126px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L3/215/746.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1312.5px; top: 126px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L3/216/739.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 416.5px; top: -2px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L3/216/740.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 544.5px; top: -2px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L3/216/741.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 672.5px; top: -2px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L3/216/742.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 800.5px; top: -2px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L3/216/743.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 928.5px; top: -2px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L3/216/744.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1056.5px; top: -2px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L3/216/745.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1184.5px; top: -2px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L3/216/746.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1312.5px; top: -2px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L3/217/739.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 416.5px; top: -130px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L3/217/740.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 544.5px; top: -130px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L3/217/741.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 672.5px; top: -130px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L3/217/742.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 800.5px; top: -130px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L3/217/743.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 928.5px; top: -130px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L3/217/744.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1056.5px; top: -130px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L3/217/745.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1184.5px; top: -130px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L3/217/746.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1312.5px; top: -130px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"></div><div style="position: absolute; z-index: 1;"></div><div style="width: 1771px; height: 349px; position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; position: absolute; left: -3542px; top: -698px; width: 8855px; height: 1745px;" viewBox="0 0 8855 1745"><defs></defs></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px;"></div></div></div><div style="position: absolute; cursor: default; z-index: 1; white-space: nowrap; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 11px; line-height: normal; font-family: tahoma, sans-serif; color: rgb(85, 85, 85); left: 7px; bottom: 5px;"><a target="_blank" href="http://map.daum.net/" title="Daum 지도로 보시려면 클릭하세요." style="float: left; height: 17px; cursor: pointer; width: 38px;"><img src="http://i1.daumcdn.net/localimg/localimages/07/mapjsapi/m_bi.png" style="width: 37px; height: 18px; border: none;"></a><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; margin: 0px 2px; float: left; width: 52px;"><div style="color: rgb(0, 0, 0);">100m</div><div style="position: relative; overflow: hidden; height: 8px; margin-top: -4px;"><img src="http://i1.daumcdn.net/localimg/localimages/07/mapjsapi/scalebar.png" style="position: absolute; width: 164px; height: 40px; max-width: none; top: 0px; left: -82px;"></div></div><div style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 11px; line-height: normal; font-family: tahoma, sans-serif; float: left; margin: 3px 2px 0px;">© Kakao<span></span></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div>
					</div><!-- map  -->
               
            </div>
					   
					   </div>
					
					   <div class="clearfix"> </div>
			       </div>
			    </div>
		<div class="copy">
		   <!--  <p>&copy; 2015 Best Day. All Rights Reserved | Design by <a href="http://w3layouts.com/">W3layouts</a> </p> -->
				<p>MySweetLove</p>
				<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
		</div>
		<!--//footer-->
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
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		
		


</body>
</html>