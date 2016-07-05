<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>


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
<!-- <script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script> -->

<style>
	
	.banner {
     background: url(img/banner.jpg)no-repeat 0px 0px; 
	 background-size:cover;
	}
	
	.banner_select {
    min-height: 600px;
	}
	.banner_select-top {
    padding: 0.5em 0;
	}
	.banner_select {
     background: url(${initParam.root}url/temp_${sessionScope.mvo.memberId}/${param.imgSrc})no-repeat 0px 0px; 
	 background-size:cover;
	}
	
	@media ( max-width : 320px ){
		.banner_select {
    		 background: url(${initParam.root}url/temp_${sessionScope.mvo.memberId}/${param.imgSrc})no-repeat 0px 0px; 
			 background-size:cover;
			 min-height: 170px;
		}
	
	@media ( max-width : 320px ){
		.banner{
			 max-height: 170px;
		}
		
	}  

</style>

</head>
<body>


<c:choose>
   	<c:when test="${param.imgSrc == ''}">
			<div class="banner"><!-- banner -->
		 		<script defer src="js/jquery.flexslider.js"></script>
		 	</div>
		 </c:when>
		 <c:otherwise>
		 <div class="banner_select"><!-- banner -->
		 <script defer src="js/jquery.flexslider.js"></script>
		 </div>
		 </c:otherwise> 
</c:choose>
		 
		 
	<div class="ban"><!-- banner -->
	  			<script src="js/responsiveslides.min.js"></script>

			 <div class="main-drop" ><!-- style="margin-top: 50%;" -->
			   <img src="img/hands.jpg" alt=""  /><!-- style="width:25%;" -->
			    <div class="hands"> <!-- style="margin-left:1%;" -->
				    <h4>Companion</h4>
				</div>
				
				
			<div class="couple">
				 <div class="bride"><!-- 신부 신랑 -->
				 	<c:choose>
				 		<c:when test="${param.imgBride == ''  }">
				 			<img src="img/bride.jpg" class="img-responsive" alt="">
				 		</c:when>
				 		<c:otherwise>
				 			<img src="${initParam.root}url/temp_${sessionScope.mvo.memberId}/${param.imgBride}" class="img-responsive" alt="">
				 		</c:otherwise>
				 	</c:choose>
				 	<h5>${param.groomName}</h5>
				 	<p style="color:#fff;"><i class="glyphicon glyphicon-earphone">${param.groomTel}</i></p>
				 </div>
				 
				 <div class="groom">
				 	<c:choose>
				 		<c:when test="${param.imgGroom == '' }">
				 			<img src="img/groom.jpg" class="img-responsive" alt="">
				 		</c:when>
				 		<c:otherwise>
				 			<img src="${initParam.root}url/temp_${sessionScope.mvo.memberId}/${param.imgGroom}" class="img-responsive" alt="">
				 		</c:otherwise>
				 	</c:choose>
				  <h5>${param.brideName}</h5>
				  <p style="color:#fff;"><i class="glyphicon glyphicon-earphone">${param.brideTel}</i></p>
				 </div>
				 </div>
			 </div>
			 </div><!--//main-drop-->
			 
			<!-- </div> -->
	</div><!-- //banner -->
	
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
	               <input style="float: right;margin-right: 4%;" type="button" class="button4" name="writeComment" onclick="writeComment()" value="축하글 쓰기" />
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
                <!--   <div class="about-head">
                  <h2>PhotoBook</h2>
               </div> -->
               <div class="about-grids">
               
                    <c:set var="pbImg" value="${fn:split(param.photoBookImg, '`') }"/>
                    <c:set var="pbComment" value="${fn:split(param.photoBookComment, '`END`') }"/>
                    
                  <c:forEach begin="0" end="${fn:length(pbImg)-1 }" var="i">
                  <div class="col-md-3 about-grid test1">
                  <img src="${initParam.root }img/photobook/${sessionScope.mvo.memberId}/${param.photoBookNo }/${pbImg[i] }" class="img-responsive" alt="/" width="280px">              
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
								<div class="post-text">
									<p>예식장 주소 : ${param.hallLocation}</p>
								</div>
								
							</div>
									</div>
					   </div>
					   </div>
									</div>
											<!-- Map Code -->
							<div id="map" style="width: 100%;">

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
									
					   <div class="clearfix"> </div>
			       </div>
			    </div>
			    
			    
		<!--//footer-->
		<div class="copy">
		   <!--  <p>&copy; 2015 Best Day. All Rights Reserved | Design by <a href="http://w3layouts.com/">W3layouts</a> </p> -->
				<p>MySweetLove</p>
				<a id="kakao-link-btn" href="javascript:;">
<img style="width:40px; height: 40px;" src="http://dn.api1.kage.kakao.co.kr/14/dn/btqa9B90G1b/GESkkYjKCwJdYOkLvIBKZ0/o.jpg"/>
</a>
				<a href="#home" id="toTop" class="scroll" style="display: block;"> 
				<span id="toTopHover" style="opacity: 1;"> </span></a>
		</div>
		
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