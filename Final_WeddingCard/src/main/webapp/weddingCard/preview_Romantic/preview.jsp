<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>
<html>
<head>
<style>
	.header2 {
    min-height: 600px;
	}
	.header2-top {
    padding: 0.5em 0;
	}
	
	.header2 {
     background: url(${initParam.root}img/romantic.jpg)no-repeat 0px 0px; 
	background-size:cover;
	}
	@media (max-width: 320px){
		.header2 {
   		 background: url(${initParam.root}img/romantic.jpg)no-repeat -100px 0px;
   		 background-size: cover;
		}
	}
	@media (max-width: 640px){
		.header2 {
    	min-height: 400px;
		}
	}
	/* 업로드한 이미지 */
	.header_select {
    min-height: 600px;
	}
	.header_select-top {
    padding: 0.5em 0;
	}
	.header_select {
     background: url(${initParam.root}url/temp_${sessionScope.mvo.memberId}/${param.imgSrc})no-repeat 0px 0px; 
	 background-size:cover;
	}
	
	@media ( max-width : 320px ){
		.header_select {
     background: url(${initParam.root}url/temp_${sessionScope.mvo.memberId}/${param.imgSrc})no-repeat 0px 0px; 
	background-size:cover;
	min-height: 250px;
		}
		
	}
</style>
<title>My Wedding a Wedding Category Flat Bootstrap Responsive  Website Template | Home :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_d.css" rel="stylesheet" type="text/css" media="all" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- <link href="css/common.css" rel="stylesheet" type="text/css" media="all" /> -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="My Wedding " />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>


</head>
<body>

<!--header-->

	<c:choose >
		<c:when test="${ param.imgSrc == ''}">
	   		<div class="header2">
	     		 <div class="container">
	                 <script defer src="js/jquery.flexslider.js"></script>
	      		</div>
	   		</div>
	   		
		</c:when>
		<c:otherwise>
			<div class="header_select">
	     		 <div class="container">
	                    <script defer src="js/jquery.flexslider.js"></script>
	      		</div>
   			</div>
   			
		</c:otherwise>
	</c:choose>
	
   <!--  신랑/ 신부 -->
      <div class="content" >
      	<div class="container">
	        <div class="panel panel-default">
			        <div class="panel-body">
			        	<table style="width: 150px;">
			        		<tr>
			        			<td>신부</td>
			        			<td>&nbsp;<b>${param.groomName}</b></td>
			        		</tr>
			        		
			        		<tr>
			        			<td> <i class="glyphicon glyphicon-earphone"></i></td>
			        			<td>&nbsp;${param.groomTel}</td>
			        		</tr>
			        		
			        		<tr>
			        			<td>신랑</td>
			        			<td>&nbsp;<b>${param.brideName}</b></td>
			        		</tr>
			        		
			        		<tr>
			        			<td> <i class="glyphicon glyphicon-earphone"></i></td>
			        			<td>&nbsp;${param.brideTel}</td>
			        		</tr>
			        		
			        	</table>
			        </div>
	    	  </div>
	    	  	
      			<div class="about-head">
                  <h2>Party Invitation!</h2>
                </div>
               
		         <div style=" text-align: center; margin-top: 5%; height:150px;">
		     		<b>${param.cardContext}</b>   
		         </div>
         </div>
      </div>
      
	
	<div class="content">
	<input type="hidden" name="comments" value="">
		<div class="guestBook">
			<div class="container">
                  <div class="about-head">
                  <h2>GuestBook</h2>
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
   
    <!--  // 신랑/ 신부 -->
   
   <!-- ############################ photoBook ######################## -->
   <!--header-->
   <div class="content">
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
            
            <!-- location... -->
               <div class="contents cont_wrap">
            <h2 class="tit_type2"><span>location</span></h2>
            <div class="snb_wrap col-2">
               <div class="lo_tit ui-block-a">
                  <span class="on" id="place_name">웨딩홀</span>
               </div>
               <div class="ui-block-b col-2">
                  <div class="lo_w ui-block-a">
                     <span class="locationtabs on" id="tabs_wedding" style="cursor: pointer;">예식장</span>
                  </div>
               </div>
            </div>
            <div class="lo_cont_box cont_sub col-2 locationdivs" id="div_wedding">
               <input type="hidden" id="wedding_pmap_lat" value="">
               <input type="hidden" id="wedding_pmap_lon" value="">
               <input type="hidden" id="wedding_paddr" value="예식장 주소 (test)">
               <input type="hidden" id="wedding_pname" value="웨딩홀">
               <div class="lo_info ui-block-b">
                  <dl>
                     <dt>DATE</dt>
                     <c:if test="${param.cardDate != null}">
                     	 <dd>${param.cardDate} &nbsp; ${param.hour} : ${param.min} &nbsp; ${param.ampm }</dd>
                     	<dd>D-Day :  ${param.dDay }일</dd>
                     </c:if>
                  </dl>
                  <dl>
                     <dt>ADDRESS</dt>
                     <dd>${param.hallName}</dd>
                     <dd id="widding_paddr" class="map_initialize">예식장 주소 : ${param.hallLocation}</dd> 
                  </dl>
               </div>
               <div id="map">

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
            <!-- ////location -->
            
         </div>
	<!--indicate-->
         
         <!--footer-->
      <div class="footer-section">
         <div class="container">
            <div class="footer-top">
               <!-- <p> &copy; 2016 My Wedding . All Rights Reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p> -->
            	<p>MySweetLove</p>
    <a id="kakao-link-btn" href="javascript:;">
<img style="width:40px; height: 40px;" src="http://dn.api1.kage.kakao.co.kr/14/dn/btqa9B90G1b/GESkkYjKCwJdYOkLvIBKZ0/o.jpg"/>
</a>

<!-- Facebook share -->
<a 
href="http://www.facebook.com/sharer/sharer.php?u=http://mysweetlove.org/Final_WeddingCard/url/${param.url}.jsp">
<img style="width:40px; height: 40px;"  src=${initParam.root}img/facebook-share.png></a>





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
            </div>
         </div>
      </div>
   
</body>
</html>