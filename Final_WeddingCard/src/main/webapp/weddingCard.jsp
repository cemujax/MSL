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
      $( "#tabs" ).tabs();
      
      $( "#datepicker" ).datepicker({
          minDate: '+0',
            dateFormat: 'yy-mm-dd',
            //defaultDate: "+1w",
            changeMonth: true,
            numberOfMonths: 1,
           
          });
      
      $('#weddingCard_form').submit(function(){
    	  alert("생성중");
      });//submit
      
   });//ready

</script>
</head>

<body>

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
					<button class="md-close" style="margin-top:2%; background-color:#000;">Close me!</button>
				</div>
			</div>
		</div>
				
				<div class="column">
					<button class="md-trigger" data-modal="modal-1" style="margin-right:0px; background-color:#000;">
						PHONE
					</button>
				</div>
			
				
				<!-- 2 -->
				
	<div class="md-modal md-effect-2" id="modal-2">
			<div class="md-content">
					<div data-role="page" id="skin_page" data-url="skin_page" tabindex="0" class="ui-page ui-page-theme-a ui-page-active">
		<div class="look_input" style="width:90%; height: 90%;">
					<iframe src="url/basicSkin.jsp" name="left_skin_preview" id="left_skin_preview" style="" scrolling="auto" > </iframe>
				</div>
					<button class="md-close" style="margin-top:2%; background-color:#000;">Close me!</button>
				</div>
				
			</div>
		</div>
				
				<div class="column">
						<button class="md-trigger" data-modal="modal-2" style="margin-left:0px; background-color:#000;">PC</button>
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
		
		
	<%-- 			<c:import url="tabs.jsp"></c:import>
</form>	
			 --%>


<!--======================================= Tab======================================= -->
<form action="./card.do" method="post" id="weddingCard_form" >
<input type="hidden" name="command" value="createCard">
		<div id="tabs"  style=" width:30%; margin-left:70%;">
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
      <input type="radio" name="template" id="template" value="basicSkin2">
      </td>
      <td >
      <img alt="" src="img/222.jpg" style="width: 100px; heigth: 100px; margin: 0px;">
      <input type="radio" name="template" id="template" value="basicSkin3">
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
</form>	




</body>
</html>