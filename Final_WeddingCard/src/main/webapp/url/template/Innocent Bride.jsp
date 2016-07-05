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
<link href="css/application.css" rel="stylesheet" type="text/css" media="all" /><!-- 방명록 -->
<!--Custom-Theme-files-->
	<link href="css/style_02.css" rel='stylesheet' type='text/css' />	
	<script src="js/jquery.min.js"> </script>
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

				for (i = 0; i < commentList.length; i++) {
					 $('.guestBook').append(
						"<div class='pricingtable pricing_free'><ul class='pricing_iconlist iconset_free'>"
						+"<li style='background-color:#f69aca; font-size:15px; border-radius: 10px;'><font style='color: black;'>"+"작성자"+"&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;"+commentList[i].guest+"</font><br>"
						+"<font style='float:right;'>"+commentList[i].writeDate+"</font></li>"
						+"<li style='font-size: 15px; margin-top:20px;'><span class='user'></span><font>"+commentList[i].content+"</font></li>"
						+ "<p><li>&nbsp;&nbsp;</li>"
						+ "<li>&nbsp;&nbsp;</li>"+
						/* +"<li style='border-style: ridge;'>"+commentList[i].guest+":: &nbsp;"+commentList[i].writeDate+"</li>"+ */
						"</ul></div>"
					 );
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
     background: url(img/banner.jpg)no-repeat 0px 0px; 
	 background-size:cover;
	}
	
	/* 업로드한 이미지 */
	.banner_select {
    min-height: 600px;
	}
	.banner_select-top {
    padding: 0.5em 0;
	}
	.banner_select {
     background: url(${initParam.root}url/${param.url}/${param.imgSrc})no-repeat 0px 0px;
	 background-size:cover;
	}
	
	@media ( max-width : 320px ){
	.banner_select {
     background: url(${initParam.root}url/${param.url}/${param.imgSrc})no-repeat -170px 0px; 
	background-size:cover;
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
	<div id="home" class="header">
       </div>
		 
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
				 			<img src="${param.url}/${param.imgBride}" class="img-responsive" alt="">
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
				 			<img src="${param.url}/${param.imgGroom}" class="img-responsive" alt="">
				 		</c:otherwise>
				 	</c:choose>
				  <h5>${param.brideName}</h5>
				  <p style="color:#fff;"><i class="glyphicon glyphicon-earphone">${param.brideTel}</i></p>
				 </div>
				 </div><!-- couple -->
			 </div>
			 </div><!--//main-drop-->
			 
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
                  <div class="about-head">
                  <h2>PhotoBook</h2>
               </div>
               <div class="about-grids">
               
                    <c:set var="pbImg" value="${fn:split(param.photoBookImg, '`') }"/>
                    <c:set var="pbComment" value="${fn:split(param.photoBookComment, '`END`') }"/>
                    
                  <c:forEach begin="0" end="${fn:length(pbImg)-1 }" var="i">
                  <div class="col-md-3 about-grid test1">
                  <%-- <img src="${initParam.root }img/photobook/${sessionScope.mvo.memberId}/${param.photoBookNo }/${pbImg[i] }" class="img-responsive" alt="/" width="280px"> --%> 
                  <img src="${initParam.root }img/photobook/${param.memberId}/${param.photoBookNo }/${pbImg[i] }" class="img-responsive" alt="/" width="280px">  
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
						                        <p>날짜
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
											<div class="post-text">
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
				
               <div id="map" style=" position: relative; overflow: hidden; background: url(&quot;http://i1.daumcdn.net/dmaps/apis/loading_n.png&quot;);">
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

						</script><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; cursor: url(&quot;http://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;http://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;), default;"><div style="position: absolute;"><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L4/107/367.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -223px; top: 125px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L4/107/368.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 33px; top: 125px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L4/107/369.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 289px; top: 125px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L4/107/370.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 545px; top: 125px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L4/107/371.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 801px; top: 125px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L4/107/372.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1057px; top: 125px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L4/107/373.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1313px; top: 125px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L4/107/374.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1569px; top: 125px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L4/108/367.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -223px; top: -131px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L4/108/368.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 33px; top: -131px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L4/108/369.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 289px; top: -131px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L4/108/370.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 545px; top: -131px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L4/108/371.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 801px; top: -131px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L4/108/372.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1057px; top: -131px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L4/108/373.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1313px; top: -131px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L4/108/374.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1569px; top: -131px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L4/109/367.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -223px; top: -387px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L4/109/368.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 33px; top: -387px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L4/109/369.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 289px; top: -387px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L4/109/370.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 545px; top: -387px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L4/109/371.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 801px; top: -387px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L4/109/372.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1057px; top: -387px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L4/109/373.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1313px; top: -387px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L4/109/374.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1569px; top: -387px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 0; left: 0px; top: 0px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L3/215/739.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 416.5px; top: 126px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L3/215/740.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 544.5px; top: 126px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L3/215/741.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 672.5px; top: 126px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L3/215/742.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 800.5px; top: 126px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L3/215/743.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 928.5px; top: 126px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L3/215/744.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1056.5px; top: 126px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L3/215/745.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1184.5px; top: 126px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L3/215/746.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1312.5px; top: 126px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L3/216/739.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 416.5px; top: -2px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L3/216/740.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 544.5px; top: -2px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L3/216/741.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 672.5px; top: -2px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L3/216/742.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 800.5px; top: -2px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L3/216/743.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 928.5px; top: -2px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L3/216/744.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1056.5px; top: -2px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L3/216/745.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1184.5px; top: -2px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L3/216/746.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1312.5px; top: -2px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L3/217/739.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 416.5px; top: -130px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L3/217/740.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 544.5px; top: -130px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L3/217/741.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 672.5px; top: -130px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L3/217/742.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 800.5px; top: -130px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map3.daumcdn.net/map_2d/165fbd/L3/217/743.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 928.5px; top: -130px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map0.daumcdn.net/map_2d/165fbd/L3/217/744.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1056.5px; top: -130px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map1.daumcdn.net/map_2d/165fbd/L3/217/745.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1184.5px; top: -130px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="http://map2.daumcdn.net/map_2d/165fbd/L3/217/746.png" alt="" draggable="false" style="position: absolute; -webkit-user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1312.5px; top: -130px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"></div><div style="position: absolute; z-index: 1;"></div><div style="width: 1771px; height: 349px; position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; position: absolute; left: -3542px; top: -698px; width: 8855px; height: 1745px;" viewBox="0 0 8855 1745"><defs></defs></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px;"></div></div></div><div style="position: absolute; cursor: default; z-index: 1; white-space: nowrap; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 11px; line-height: normal; font-family: tahoma, sans-serif; color: rgb(85, 85, 85); left: 7px; bottom: 5px;"><a target="_blank" href="http://map.daum.net/" title="Daum 지도로 보시려면 클릭하세요." style="float: left; height: 17px; cursor: pointer; width: 38px;"><img src="http://i1.daumcdn.net/localimg/localimg/07/mapjsapi/m_bi.png" style="width: 37px; height: 18px; border: none;"></a><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; margin: 0px 2px; float: left; width: 52px;"><div style="color: rgb(0, 0, 0);">100m</div><div style="position: relative; overflow: hidden; height: 8px; margin-top: -4px;"><img src="http://i1.daumcdn.net/localimg/localimg/07/mapjsapi/scalebar.png" style="position: absolute; width: 164px; height: 40px; max-width: none; top: 0px; left: -82px;"></div></div><div style="font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 11px; line-height: normal; font-family: tahoma, sans-serif; float: left; margin: 3px 2px 0px;">© Kakao<span></span></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div>
					</div><!-- map  -->
			
					   </div>
					
					   <div class="clearfix"> </div>
			       </div>
			    </div>
			    
			    
			    
<div class="copy">
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