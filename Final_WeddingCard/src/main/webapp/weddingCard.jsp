<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Nifty Modal Window Effects with CSS Transitions and Animations" />
<meta name="keywords" content="modal, window, overlay, modern, box, css transition, css animation, effect, 3d, perspective" />
<meta name="author" content="Codrops" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Wedding Card</title>

	
<link href="css/bootstrap-responsive.css" rel="stylesheet">

<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/jquery-ui.css" />
<link rel="stylesheet" href="css/uploadifive.css" />
<link rel="stylesheet" href="css/jquery.cropbox.custom.css" />
<link rel="stylesheet" href="css/builder.css" />
<!-- <link rel="stylesheet" href="css/bootstrap-ko.css"/>  -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/common.css">
		<link rel="stylesheet" type="text/css" href="css/default.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>


<style type="text/css">

.spinner {
    position: fixed;
    top: 50%;
    left: 50%;
    margin-left: -50px; /* half width of the spinner gif */
    margin-top: -50px; /* half height of the spinner gif */
    text-align:center;
    z-index:100001;
    overflow: auto;
    width: 100px; /* width of the spinner gif */
    height: 102px; /*hight of the spinner gif +2px to fix IE8 issue */
}
.spinner_overlay{
	position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: #000;
    filter:alpha(opacity=50);
    -moz-opacity:0.5;
    -khtml-opacity: 0.5;
    opacity: 0.5;
    z-index: 100000;
}

.switch_outerline{
	border:1px solid #DDDDDD;
	border-radius: 5px;
	min-height:30px;
	padding-left:10px;
}

.btswitchs{
	float:right;
}


/* scrollbar by echos(2014-09-04) */
::-webkit-scrollbar {
    width: 10px;
}
::-webkit-scrollbar-track {
    background-color: #fff;
    /*border-left: 1px solid #ccc;*/
}
::-webkit-scrollbar-thumb {
    background-color: #ccc;
	border-radius:5px;
}
::-webkit-scrollbar-thumb:hover {
    background-color: #aaa;
}

.chelp {cursor: help};

#tabs{
        margin-left: 40%;
        font-style: oblique;
     }




</style>

  
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript" src="./js/jquery-1.12.3.js"></script>
<!-- Google Map API -->
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&region=KR"></script>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript" src="js/hammer.js"></script>
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<script src="js/jquery.placeholder.js"></script>
<script src="js/jquery.uploadifive.js"></script>
<script src="js/jquery.cropbox.custom.js"></script>
<script src="http://connect.facebook.net/ko_KR/all.js"></script>
<script src="js/jquery.datepicker.regional.kr.js"></script>
<script src="js/jquery.scrollTo.min.js"></script>

<script type="text/javascript">
   $(document).ready(function(){
      
      $( "#datepicker" ).datepicker({
          minDate: '+0',
            dateFormat: 'yy-mm-dd',
            //defaultDate: "+1w",
            changeMonth: true,
            numberOfMonths: 1,
           
          });
      
     $('#hallName').change(function(){
    	set_preview();
     });
     
     $('#hallLocation').change(function(){
     	set_preview();
      });
     
     $('#template').click(function(){
   	  alert($(this).val());
		set_preview();
	});
     
      function set_preview(md){
    	  alert("set preview");
  		if(md) 
  			$('#scroll_to_preview').val(md);
  		
  		
  		$('#frmDalpeng').attr('target','left_skin_preview').attr('action','./preview/preview.jsp').submit();
  	}
      
     
   
      function move_pop_preview(id){
  		try{
  			if(id){
  				if(id=='skin') id = 'topinfo';
  				var $obj = $('#left_skin_preview').contents().find('#sk_'+id);
  				try{
  					$('#left_skin_preview').scrollTo($obj,100);
  				}catch(e){

  				}
  			}else{
  				// console.log('empty scroll target');
  			}
  		}catch(e){}
  	}
      
      
   });//ready

</script>
</head>

<body>
<c:if test="${sessionScope.mvo == NULL }">
	<c:redirect url="login.jsp"/>
</c:if>

<form name="frmDalpeng" id="frmDalpeng" target="left_skin_preview" method="post">

<div class="ui-grid-a contents">
		<div class="ui-block-a">
			<div class="cont_look">
				<div class="look_bg"><img src="img/preview_mobile2.png" alt="미리보기화면"><span class="blind">미리보기영역</span></div>
				<div class="look_input">
					<iframe src="basicSkin.jsp" name="left_skin_preview" id="left_skin_preview" width="40%" height="100%" scrolling="auto" > </iframe>
				</div>

	






<!-- 수연이가 한거 모달 -->
		<!-- 		
		<div id="pop_preview" style="">
		<div class="pop_header">
			<ul>
				<li class="view_icon1 btn_ppreview on" id="btn_ppreview_mobile" style="cursor: pointer;"><span class="blind">Mobile</span></li>
				<li class="view_icon2 btn_ppreview" id="btn_ppreview_tablet" style="cursor: pointer;"><span class="blind">Tablet</span></li>
				<li class="view_icon3 btn_ppreview" id="btn_ppreview_pc" style="cursor: pointer;"><span class="blind">PC</span></li>
			</ul>
			<p class="pop_close" id="btn_close_preview" style="cursor: pointer;"><img src="/img/builder/btn_close_pop.png" alt="닫기버튼" title="미리보기 닫기(Esc)"></p>
		</div>
		<div class="contents">
			<div class="pop_bg"></div>반투명배경
			<div class="cont_preview mobile" id="cont_preview">
				<div class="view_bg">
				<img src="img/preview_mobile2.png" class="bg_preview hide" id="bg_mobile" style="width: 370px; height: 740px; display: inline;">
				<img src="img/preview_mobile2.png" class="bg_preview hide" id="bg_tablet" style="display: none;"></div>
				<div class="view_input" style="top: 75px; left: 23px;">
					<iframe src="basicSkin.jsp" name="div_preview" id="div_preview" scrolling="auto" style="width: 320px; height: 570px;"> </iframe>
				</div>
			</div>
		</div>
	</div>
		 -->
		<div class="md-modal md-effect-1" id="modal-1">
			<div class="md-content">
				<div class="cont_preview mobile" id="cont_preview">
		
		<div class="look_bg">
		<img src="img/preview_mobile2.png" alt="미리보기화면" style="width: 370px; height: 740px; margin-left:40%;margin-top:5%;">
		</div>
				<div class="look_input" style="margin-left:40.5%; margin-top:5%;">
					<iframe src="basicSkin.jsp" name="left_skin_preview" id="left_skin_preview" style="width: 320px; height: 570px;" scrolling="auto" > </iframe>
				</div>
					<button class="md-close">Close me!</button>
				</div>
			</div>
		</div>
				
	
				
				<div class="column">
					<button class="md-trigger" data-modal="modal-1">모바일</button>
				
				</div>
				
				
				
				
				
				<!-- 2 -->
				
				
				
				
				
				
				
	<div class="md-modal md-effect-2" id="modal-2">
			<div class="md-content">
				<div>
					<div data-role="page" id="skin_page" data-url="skin_page" tabindex="0" class="ui-page ui-page-theme-a ui-page-active">
	<!-- panel-menu -->
<!-- 	<div data-role="panel" id="left-panel" data-position="left" data-display="push" class="ui-panel ui-panel-position-left ui-panel-display-push ui-panel-closed ui-body-inherit ui-panel-animate">
		<div class="menu-wrap ui-panel-inner">
			<ul data-role="listview" data-icon="false" class="ui-listview">
				<li data-icon="delete" class="ui-first-child"><a href="#" data-rel="close" class="ui-btn ui-btn-icon-right ui-icon-delete">Close</a></li>
<li data-role="list-divider" role="heading" class="ui-li-divider ui-bar-inherit">결혼한다</li>				
<li class="menu_scrolls ui-li-static ui-body-inherit" data-rel="close" id="p_topinfo" style="cursor: pointer;"><span>WEDDING VOWS</span></li>
<li class="menu_scrolls ui-li-static ui-body-inherit" data-rel="close" id="p_gallery" style="cursor: pointer;"><span>WEDDING GALLERY</span></li>
<li class="menu_scrolls ui-li-static ui-body-inherit" data-rel="close" id="p_snsbbs" style="cursor: pointer;"><span>GUESTBOOK</span></li>
<li class="menu_scrolls ui-li-static ui-body-inherit ui-last-child" data-rel="close" id="p_map" style="cursor: pointer;"><span>LOCATION</span></li>			</ul>
		</div>
	</div> -->
	<!--// panel-menu -->

	<div class="ui-panel-wrapper"><div role="main" class="ui-content" style="padding:0">
		<!-- main -->
		<div class="visual_wrap" style="background:url('/dalpeng/skin/luxury_black/img/img_main.jpg') center center no-repeat;background-size:cover;" id="sk_topinfo">
		<!--<div class="visual_wrap" id ="sk_topinfo">-->
			<div class="contents visual">
				<div class="main">
					<!-- <div class="lnb_wrap"><a href="#left-panel" class="ui-link"><img src="/dalpeng/skin/luxury_black/img/btn_skip_lnb.png" alt="메뉴버튼"><span class="blind">상단메뉴</span></a></div> -->
				</div>
				<div class="main_info tit_type1" id="sk_basicinfo">
						<!-- 타이틀 등  -->
					<div style="border: 1px solid #000; width: 100%; height: 80%; margin-top:30%;">
						${cvo.hallname}<p>
						${cvo.hallLocation}<p>
						${cvo.url}<p>
						ㅁㄴ<p>
						ㅇ<p>
						ㅁㄴㅇ<p>
						ㅁㄴ<p>
						ㅇ<p>
						ㅁㄴㅇ<p>
						ㅁㄴ<p>
						ㅇ<p>
						ㅁㄴ<p>
						ㅇㅁㄴ<p>
						ㅇㅁ<p>
					</div>
						
					<div class="w_info">

						<div class="greeting">
							<div class="header">
		<div class="container">
						  <script defer src="js/jquery.flexslider.js"></script>
				
		
			
			<!-- 상세 정보 등 -->
			<div style="border: 1px solid #000; width: 100%; height: 20%;">
				\여기ㅇ<p>
				ㅇㄴ<p>
				ㅁㅇ<p>
				ㅁㄴ<p>
				ㅇ<p>
				ㅁㄴㅇ<p>
				ㅁㄴ<p>
			</div>
				
		</div>
		
		
	</div>						
						</div>
					</div>
				</div>
				<!-- <div class="btn_scroll"><img src="/dalpeng/skin/luxury_black/img/btn_anchor.png" alt="스크롤버튼"><span class="blind">아래로스크롤</span></div> -->
				<!-- <div class="img_wrap"><img src="/dalpeng/skin/luxury_black/img/bg_img_main1.png" alt=""><span class="blind">메인이미지</span></div>-->
			</div>
		</div>
		<!--// main -->

	<!-- 	<!-- sub_contents -->
	<!-- 	<div class="contact_wrap">
			<ul>
<li><a href="tel:11111" class="ui-link"><span class="btn_spr ph fl">전화하기</span></a><span>신랑에게 연락하기</span><a href="sms:11111" class="ui-link"><span class="btn_spr ms fr">문자하기</span></a></li><li class="btn_send_kakao" id="bar_kakao_talk"><span class="btn_spr kat fl">카카오톡</span><span style="padding-right:60px">카카오톡 보내기</span><span class="btn_spr kas fr">카카오스토리</span></li>			</ul>
		</div>

		<div class="txt_wrap">
			<div class="contents">
				<div class="txt_cont_box">
					<div class="txt_cont ta-c">
						<p>For better or worse, till death do us part <span>I'll love you with every beat of my heart.</span></p>
					</div>
				</div>
			</div>
		</div>
 --> 


		<!-- gallery -->
	 	<div class="gallery_wrap col" id="sk_gallery">
					<div class="gal_list contents cont_wrap">
					<%-- 	<div>
							<a href="/user/jsy1426/img/3710ed0aaeb939c1735f97fb5684bcf3.jpg" class="swipebox ui-link" data-ajax="false" alt="<div class='swipebox-comment' id='gcomment_1409039' title='사진 보기'></div><div class='swipebox-write' id='gwrite_1409039'></div>"><div class="ui-block-a" style="background:url('/user/jsy1426/img/3710ed0aaeb939c1735f97fb5684bcf3.jpg') center center no-repeat; background-size:cover;"></div></a>
							<div class="gal-txt ui-block-b" style="border:0">
								<ul>
									<li class="txt_bg">Save the date</li>
									<li class="txt_bg"><span>2016.06.03 7:00 am  </span></li>
<li class="txt_bg"><span>웨딩홀</span></li>								</ul>
							</div>
							<a href="/user/jsy1426/img/c4480e066b8680f299ad472c84ad8bb9.JPG" class="swipebox ui-link" data-ajax="false" alt="<div class='swipebox-comment' id='gcomment_1409040' title='사진 보기'></div><div class='swipebox-write' id='gwrite_1409040'></div>"><div class="ui-block-c" style="background:url('/user/jsy1426/img/c4480e066b8680f299ad472c84ad8bb9.JPG') center center no-repeat; background-size:cover;"></div></a>
							<a href="/user/jsy1426/img/c4480e066b8680f299ad472c84ad8bb9.JPG" class="swipebox ui-link" data-ajax="false" alt="<div class='swipebox-comment' id='gcomment_1' title='사진 보기'></div><div class='swipebox-write' id='gwrite_1'></div>"><div class="ui-block-a" style="background:url('/user/jsy1426/img/c4480e066b8680f299ad472c84ad8bb9.JPG') center center no-repeat; background-size:cover;"></div></a>
						</div> --%>
						<div class="content">
				<!--about-->
					<div class="about">
					<div class="container">
						<div class="about-head">
						<h2>about</h2>
							<p>Autem vel eum iriure dolor in hendrerit in volestie consequat vel illum</p>
					</div>
					<div class="about-grids">
						<div class="col-md-3 about-grid test1">
						<img src="images/p1.jpg" class="img-responsive" alt="/">
							<div class="textbox">
								<h4>my wedding</h4>
								<p>Arenean nonummy hendrerit mau phaselntes nascetur ridic ulusm dui fusce feu.</p>
							</div>
						</div>
						<div class="col-md-3 about-grid test1">
						<img src="images/p2.jpg" class="img-responsive" alt="/">
						<div class="textbox">
								<h4>my wedding</h4>
								<p>Arenean nonummy hendrerit mau phaselntes nascetur ridic ulusm dui fusce feu.</p>
							</div>
						</div>
						<div class="col-md-3 about-grid test1">
						<img src="images/p3.jpg" class="img-responsive" alt="/">
						<div class="textbox">
								<h4>my wedding</h4>
								<p>Arenean nonummy hendrerit mau phaselntes nascetur ridic ulusm dui fusce feu.</p>
							</div>
						</div>
						<div class="col-md-3 about-grid test1">
						<img src="images/p4.jpg" class="img-responsive" alt="/">
						<div class="textbox">
								<h4>my wedding</h4>
								<p>Arenean nonummy hendrerit mau phaselntes nascetur ridic ulusm dui fusce feu.</p>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>	
		<!--about-->
		<!--hot-offer-->
			<div class="hot-offer">
				<div class="container">
					<h3>hot offer</h3>
					<h4>for your best day!</h4>
					<img src="images/p5.jpg" class="img-responsive" alt="/">
					<div class="offer"></div>
				</div>
			</div>
			<!--hot-offer-->
				<div class="features">
					<div class="container">
						<h3>features</h3>
							<div class="features-grids">
								<div class="col-md-3 feature-grid">
								<div class="feature">
									<div class="feature1">
										<span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
										<h4>scelerisque eget</h4>
									</div>
									<div class="feature2">
										<p>Quisque nulla. Vestibulum libero nisl, porta vel, scelerisque eget, lesuada at, neque. Viv eget nibh. Etam cus. Nulla facilisi. </p>
									</div>
								</div>
								</div>
								<div class="col-md-3 feature-grid">
								<div class="feature">
									<div class="feature1">
										<span class="glyphicon glyphicon-gift" aria-hidden="true"></span>
										<h4>scelerisque eget</h4>
									</div>
									<div class="feature2">
										<p>Quisque nulla. Vestibulum libero nisl, porta vel, scelerisque eget, lesuada at, neque. Viv eget nibh. Etam cus. Nulla facilisi. </p>
									</div>
								</div>
								</div>
								<div class="col-md-3 feature-grid">
								<div class="feature">
									<div class="feature1">
										<span class="glyphicon glyphicon-camera" aria-hidden="true"></span>
										<h4>scelerisque eget</h4>
									</div>
									<div class="feature2">
										<p>Quisque nulla. Vestibulum libero nisl, porta vel, scelerisque eget, lesuada at, neque. Viv eget nibh. Etam cus. Nulla facilisi. </p>
									</div>
								</div>
								</div>
								<div class="col-md-3 feature-grid">
								<div class="feature">
									<div class="feature1">
										<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
										<h4>scelerisque eget</h4>
									</div>
									<div class="feature2">
										<p>Quisque nulla. Vestibulum libero nisl, porta vel, scelerisque eget, lesuada at, neque. Viv eget nibh. Etam cus. Nulla facilisi. </p>
									</div>
								</div>
								</div>
									<div class="clearfix"></div>
							</div>
					</div>
				</div>
						
						
					</div>
		</div> 
		<!--// gallery -->

	<!-- 	<div class="guestbook_wrap" id="sk_snsbbs">
			<div class="contents">
				<div class="gb_default_box">
					<div class="comm-cont">
						<div class="btn_write btn_go_snsbbs" style="cursor: pointer;"><span>신랑 신부에게 축하 메시지를 남겨주세요.<em>click~</em></span></div>
					</div>
				</div>
			</div>
			<div class="btn-snsbbs">
				<div class="btn_go_snsbbs" style="cursor: pointer;"><span>축하글 남기기</span></div>
			</div>
		</div> -->

		<div class="location_wrap" id="sk_map">
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
							<dd>2016년 6월 3일 금요일 오전 7시</dd>
						</dl>
						<dl>
							<dt>ADDRESS</dt>
		<dd id="widding_paddr" class="map_initialize">예식장 주소 (test)</dd><dd>010-0000-0000</dd>						</dl>
					</div>
				</div>
			</div>
		</div>
		<!--// sub_contents  -->
	</div></div>

<!-- footer -->
	<!-- <div class="footer" style="background-color:#666666" id="sk_snslink">
		<div class="contents">
			<h4><a href="http://dalpeng.com" target="_blank" class="ui-link"><img src="/dalpeng/skin/luxury_black/img/footer_logo.png" alt="로고" title="달팽 초대장 :: dalpeng.com"></a><span></span></h4>
			<ul>
				<li>
					<a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=http://dalpeng.com/jsy1426" class="ui-link">
						<div class="ft_sns_wrap1 fasebook"><span>facebook logo</span></div>
					</a>
					<em>facebook</em>
				</li>
				네이버 밴드 추가용 by echos(2014-12-08)
				<li>
					<a target="_blank" href="http://www.band.us/plugin/share?body=http://dalpeng.com/jsy1426" class="ui-link"><div class="ft_sns_wrap1 band"><span>band logo</span></div></a>
					<em>naver band</em>
				</li>
				
				<li>
					<a target="_blank" href="http://twitter.com/share?text=달팽초대장::ㅇㅀㅀ♥&url=http://dalpeng.com/jsy1426"><div class="ft_sns_wrap1 twitter"><span>twitter logo</span></div></a>
					<em>twitter</em>
				</li>
				<li id="sk_kakao">
					<div class="ft_sns_wrap1 kakao btn_send_kakao" id="btn_kakao_talk"><span>KAKAOTALK</span></div>
					<em>KAKAOTALK</em>
				</li>
				https://story.kakao.com/share?url=http%3A%2F%2Fdalpeng.com%2Fjsy1426
				<li>
					<a target="_blank" href="https://story.kakao.com/share?url=http://dalpeng.com/jsy1426" class="ui-link"><div class="ft_sns_wrap1 story" id="btn_kakao_story"><span>KAKAOSTORY</span></div></a>
					<em>KAKAOSTORY</em>
				</li>
				<li>
					<div class="ft_sns_wrap1 band" id="btn_line"><span>LINE</span></div>
					<em>LINE</em>
				</li>
			</ul>
		</div>
		<div style="position:relative;top:0px;left:0px;width:0px;height:0px;z-index:-999;">
			<iframe id="ifmChkApp" width="0" height="0" border="0" style="border:0px;"></iframe>
		</div>
	</div> -->
	<!--// footer -->
</div>
					
				 
				 
				 
				 <!-- basic -->
				 
				 
				 <!--header-->
	<div class="header">
		<div class="container">
						  <script defer src="js/jquery.flexslider.js"></script>
			<!-- 타이틀 등  -->
			<div style="border: 1px solid #000; width: 100%; height: 80%; margin-top:30%;">
				${cvo.hallname}<p>
				${cvo.hallLocation}<p>
				${cvo.url}<p>
				ㅁㄴ<p>
				ㅇ<p>
				ㅁㄴㅇ<p>
				ㅁㄴ<p>
				ㅇ<p>
				ㅁㄴㅇ<p>
				ㅁㄴ<p>
				ㅇ<p>
				ㅁㄴ<p>
				ㅇㅁㄴ<p>
				ㅇㅁ<p>
			</div>
			
			<!-- 상세 정보 등 -->
			<div style="border: 1px solid #000; width: 100%; height: 20%;">
				\여기ㅇ<p>
				ㅇㄴ<p>
				ㅁㅇ<p>
				ㅁㄴ<p>
				ㅇ<p>
				ㅁㄴㅇ<p>
				ㅁㄴ<p>
			</div>
		</div>
	</div>
	
	<!--header-->
		<div data-role="panel" id="left-panel" data-position="left" data-display="push" class="ui-panel ui-panel-position-left ui-panel-display-push ui-panel-closed ui-body-inherit ui-panel-animate">
				<!--about-->
					<div class="about">
					<div class="container">
						<div class="about-head">
						<h2>about</h2>
							<p>Autem vel eum iriure dolor in hendrerit in volestie consequat vel illum</p>
					</div>
					<div class="about-grids">
						<div class="col-md-3 about-grid test1">
						<img src="images/p1.jpg" class="img-responsive" alt="/">
							<div class="textbox">
								<h4>my wedding</h4>
								<p>Arenean nonummy hendrerit mau phaselntes nascetur ridic ulusm dui fusce feu.</p>
							</div>
						</div>
						<div class="col-md-3 about-grid test1">
						<img src="images/p2.jpg" class="img-responsive" alt="/">
						<div class="textbox">
								<h4>my wedding</h4>
								<p>Arenean nonummy hendrerit mau phaselntes nascetur ridic ulusm dui fusce feu.</p>
							</div>
						</div>
						<div class="col-md-3 about-grid test1">
						<img src="images/p3.jpg" class="img-responsive" alt="/">
						<div class="textbox">
								<h4>my wedding</h4>
								<p>Arenean nonummy hendrerit mau phaselntes nascetur ridic ulusm dui fusce feu.</p>
							</div>
						</div>
						<div class="col-md-3 about-grid test1">
						<img src="images/p4.jpg" class="img-responsive" alt="/">
						<div class="textbox">
								<h4>my wedding</h4>
								<p>Arenean nonummy hendrerit mau phaselntes nascetur ridic ulusm dui fusce feu.</p>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>	
		<!--about-->
		<!--hot-offer-->
			<div class="hot-offer">
				<div class="container">
					<h3>hot offer</h3>
					<h4>for your best day!</h4>
					<img src="images/p5.jpg" class="img-responsive" alt="/">
					<div class="offer"></div>
				</div>
			</div>
			<!--hot-offer-->
				<div class="features">
					<div class="container">
						<h3>features</h3>
							<div class="features-grids">
								<div class="col-md-3 feature-grid">
								<div class="feature">
									<div class="feature1">
										<span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
										<h4>scelerisque eget</h4>
									</div>
									<div class="feature2">
										<p>Quisque nulla. Vestibulum libero nisl, porta vel, scelerisque eget, lesuada at, neque. Viv eget nibh. Etam cus. Nulla facilisi. </p>
									</div>
								</div>
								</div>
								<div class="col-md-3 feature-grid">
								<div class="feature">
									<div class="feature1">
										<span class="glyphicon glyphicon-gift" aria-hidden="true"></span>
										<h4>scelerisque eget</h4>
									</div>
									<div class="feature2">
										<p>Quisque nulla. Vestibulum libero nisl, porta vel, scelerisque eget, lesuada at, neque. Viv eget nibh. Etam cus. Nulla facilisi. </p>
									</div>
								</div>
								</div>
								<div class="col-md-3 feature-grid">
								<div class="feature">
									<div class="feature1">
										<span class="glyphicon glyphicon-camera" aria-hidden="true"></span>
										<h4>scelerisque eget</h4>
									</div>
									<div class="feature2">
										<p>Quisque nulla. Vestibulum libero nisl, porta vel, scelerisque eget, lesuada at, neque. Viv eget nibh. Etam cus. Nulla facilisi. </p>
									</div>
								</div>
								</div>
								<div class="col-md-3 feature-grid">
								<div class="feature">
									<div class="feature1">
										<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
										<h4>scelerisque eget</h4>
									</div>
									<div class="feature2">
										<p>Quisque nulla. Vestibulum libero nisl, porta vel, scelerisque eget, lesuada at, neque. Viv eget nibh. Etam cus. Nulla facilisi. </p>
									</div>
								</div>
								</div>
									<div class="clearfix"></div>
							</div>
					</div>
				</div>
					<!--news-->
					<div class="wedding-news">
						<div class="container">
							<h3>wedding news</h3>
								<div class="wedding-grid">
									<div class="col-md-4 weeding-new">
											<div class="wedding-inner">
												<h4><a href="#">VESTIBULUM IACULIS</a></h4>
												<h5>10 / 08 / 2015</h5>
												<p>Cum sociis natoque penatibus et magnis. dis parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat malesuada odio.</p>
											</div>
									<a href="#" class="mask">
									<img src="images/p6.jpg" class="img-responsive zoom-img" alt=""></a>	
										</div>
										<div class="col-md-4 weeding-new">
											<div class="wedding-inner">
												<h4><a href="#">VESTIBULUM IACULIS</a></h4>
												<h5>10 / 08 / 2015</h5>
												<p>Cum sociis natoque penatibus et magnis. dis parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat malesuada odio.</p>
											</div>
											<a href="#" class="mask">
									<img src="images/p7.jpg" class="img-responsive zoom-img" alt=""></a>	
										</div>
									<div class="col-md-4 weeding-new">
											<div class="wedding-inner">
												<h4><a href="#">VESTIBULUM IACULIS</a></h4>
												<h5>10 / 08 / 2015</h5>
												<p>Cum sociis natoque penatibus et magnis. dis parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat malesuada odio.</p>
											</div>
											<a href="#" class="mask">
									<img src="images/p8.jpg" class="img-responsive zoom-img" alt=""></a>	
										</div>
									<div class="clearfix"></div>
								</div>
						</div>
					</div>
							<!--news-->
					<!--indicate-->
				<div class="indicate">
					<div class="container">
						<div class="indicate-grids">
							<div class="col-md-3 indicate-grid">
								<p><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>Newyork 9870 St Vincent</p>
							</div>
							<div class="col-md-3 indicate-grid">
								<p><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>Telephone :  +1 800 603 6035</p>
							</div>
							<div class="col-md-3 indicate-grid">
								<p><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>Email : <a href="mailto:example@mail.com"> example@mail.com</a></p>
							</div>
							<div class="col-md-3 indicate-grid">
								<p><span class="glyphicon glyphicon-send" aria-hidden="true"></span>FAX :  +1 555 999 444</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			<!--indicate-->
			</div>
			<!--footer-->
		<div class="footer-section">
			<div class="container">
				<div class="footer-top">
					<p> &copy; 2015 My Wedding . All Rights Reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
				</div>
			</div>
		</div>
	
		</div>		 
				 
				 
					<button class="md-close">Close me!</button>
					
				</div>
			</div>
		</div>
		
		
					<div class="column">
						<button class="md-trigger" data-modal="modal-2">데스크탑</button>
					</div>
				<!-- 2 -->
				
				
				
				
				
				
				
				<!--  -->
			</div>
		</div>
</div>


	<div class="md-overlay"></div><!-- the overlay element -->

		<!-- classie.js by @desandro: https://github.com/desandro/classie -->
		<script src="js/classie.js"></script>
		<script src="js/modalEffects.js"></script>

		<!-- for the blur effect -->
		<!-- by @derSchepp https://github.com/Schepp/CSS-Filters-Polyfill -->
		<script>
			// this is important for IEs
			var polyfilter_scriptpath = '/js/';
		</script>
		<script src="js/cssParser.js"></script>
		<script src="js/css-filters-polyfill.js"></script>
		
		
				<c:import url="tabs.jsp"></c:import>
			
</form>

<!--======================================= Tab======================================= -->
<!-- <form action="./card.do" method="post" id="weddingCard_form" >
<input type="hidden" name="command" value="createCard">
		<div id="tabs"  style=" width:35%; margin-left:70%;">
  <ul>
    <li><a href="#tabs-1">
    <span>
    <i class="fa fa-calendar-check-o" style="font-size:36px; margin-left:20%;"></i>
    </span><br>
    <font size="3">스킨선택</font>
    </a></li>
    
    <li><a href="#tabs-2">
    <span>
    <i class="fa fa-bars" style="font-size:36px; margin-left:20%;"></i>
    </span><br>
    <font size="3">예식정보</font>
    </a></li>
    
    <li><a href="#tabs-3"> 
    <span>
    <i class="fa fa-list" style="font-size:36px; margin-left:20%;"></i>
    </span><br>
    <font size="3">신랑신부정보</font>
    </a></li>
  </ul>
 
  
  <div id="tabs-1">
     <table >
   <tr align="center">
      <td >
      <img alt="" src="images/p2.jpg" style="width: 120px; heigth: 80px; margin: 0px;">
      <input type="radio" name="template" id="template" value="basicSkin">
      </td>
      <td >
      <img alt="" src="images/p6.jpg" style="width: 100px; heigth:100px; margin: 0px;">
      <input type="radio" name="template" id="template" value="basicSkin2" disabled="disabled">
      </td>
      <td >
      <img alt="" src="img/222.jpg" style="width: 100px; heigth: 100px; margin: 0px;">
      <input type="radio" name="template" id="template" value="basicSkin3" disabled="disabled">
      </td>
   </tr>
   </table>
  </div>
  
  <div id="tabs-2">
     날짜 : <input type="text" id="datepicker" name="cardDate"><br>
     시간 : <input type="text" id="hour" name="hour"><br>
     분 : <input type="text" id="min" name="min"><br>
     예식장명 : <input type="text" id="hallName" name="hallName"><br>
   예식장 위치 :<input type="text" name="hallLocation"><br> 
  </div>
  
  <div id="tabs-3">
   신랑번호 : <input type="text" id="groomTel" name="groomTel"><br>
   신부번호 :<input type="text" name="brideTel"><br> 
   url : <input type="text" name="url"><br>
      <br>
   <input type="submit" value="초대장 생성">   
  </div>
</div>
</form>	 -->




</body>
</html>