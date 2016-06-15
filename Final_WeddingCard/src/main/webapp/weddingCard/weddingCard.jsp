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

<link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
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
    
	   
	   $('#template').click(function(){
	  		set_preview();
	  	});   
	   
    ///==================== 예식 정보 =========================
    
       $('#datepicker').change(function(){
      	set_preview();
       });
    
       $('#ampm').change(function(){
         	set_preview();
          });
       $('#hour').change(function(){
         	set_preview();
          });
       
       $('#min').change(function(){
         	set_preview();
          });
    	
       $('#min').change(function(){
        	set_preview();
         });
       
      $('#cardContext').change(function(){
      	set_preview();
       });
       
       $('#hallLocation').change(function(){
       	set_preview();
        });
       
     ///==================== 신랑 신부 정보 =========================  
     $('#groomName').change(function(){
         	set_preview();
          });
    	
      $('#groomTel').change(function(){
      	set_preview();
       });
       
       $('#brideName').change(function(){
       	set_preview();
        });
       $('#brideTel').change(function(){
          	set_preview();
           }); 
    	 
     ///==================== =========================   
       function set_preview(md){
   		if(md) 
   			$('#scroll_to_preview').val(md);
   		
   		/* 왼쪽 미리보기 화면을 타겟으로 잡고 폼값을 submit */
   		$('#frmDalpeng').attr('target','left_skin_preview').attr('action','./preview/preview.jsp').submit();
   	}	
     
     
     
     //모바일,PC 확대버튼 클릭
     $('#md-mobile').click(function(){
    	 $('#frmDalpeng').attr('target','left_skin_preview_mobile').attr('action','./preview/preview.jsp').submit();
     });
     
     $('#md-pc').click(function(){
    	 $('#frmDalpeng').attr('target','left_skin_preview_pc').attr('action','./preview/preview.jsp').submit();
     });

     $('#createCardBtn').click(function(){
           alert("전송중");
           
           $('#frmDalpeng').attr('target','weddingCard_form').attr('action','./card.do?command=createCard').submit();
           
        });// 초대장 생성 click   
        
     
     
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
        
        
        
        
       $("#tabs").tabs();

		$("#datepicker").datepicker({
			minDate : '+0',
			dateFormat : 'yy-mm-dd',
			//defaultDate: "+1w",
			changeMonth : true,
			numberOfMonths : 1,

		});
		
		
		function logout() {
			var f = confirm("로그아웃 하시겠습니까?");
			if (f)
				location.href = "member.do?command=logout"; //Controller에서 기능으로 연결..
		}
		
	
		
   });//ready

   
</script>

<link href="css/bootstrap_index.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_index.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">

</head>

<body>
<c:if test="${sessionScope.mvo == NULL }">
	<c:redirect url="loginregister.jsp"/>
</c:if>

<!-- 메뉴바 -->
		<div class="navigation" >
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<ul class="nav navbar-nav">
							<li class="active"><a href="../index.jsp"><span>Home</span></a></li>
						</ul>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1" style="margin-left:80%; font-weight: bold;">
						<nav class="link-effect-14" id="link-effect-14">
							<ul class="nav navbar-nav" style="">
								<!-- <li class="active"><a href="index.jsp"><span>Home</span></a></li> -->
							      
					<li style="border:2px solid #000;margin-right:0px;width:60%;"><a href="./card.do?command=getAllCards"><span style="margin-right:0px;">청첩장보기</span></a></li>
					<li style="margin-left:0px;"><a href="javascript:logout()"><span class="glyphicon glyphicon-log-in"></span> 로그아웃</a></li>
							     <!--  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">청첩장<span class="caret"></span></a>
							        <ul class="dropdown-menu">
							          <li><a href="weddingCard.jsp">청첩장만들기</a></li>
							          <li><a href="./card.do?command=getAllCards">청첩장보기</a></li>
							        </ul>
							      </li> -->
							      
							      <!--  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">포토북<span class="caret"></span></a>
							        <ul class="dropdown-menu">
							          <li><a href="test.jsp">포토북만들기</a></li>
							          <li><a href="photoBook.do?command=list">포토북보기</a></li>
							        </ul>
							      </li> -->
							      
								<!-- <li><a href="#mail" class="scroll"><span>Mail Us</span></a></li> -->
							</ul>
							
						</nav>
					</div>
				</nav>
			</div>
					
<!-- //메뉴바 -->

<form name="frmDalpeng" id="frmDalpeng" target="left_skin_preview" method="post">

<div class="ui-grid-a contents">
		<div class="ui-block-a">
			<div class="cont_look">
				<div class="look_bg"><img src="img/preview_mobile2.png" alt="미리보기화면"><span class="blind">미리보기영역</span></div>
				<div class="look_input">
					<iframe src="preview/preview.jsp" name="left_skin_preview" id="left_skin_preview" width="40%" height="100%" scrolling="auto" > </iframe>
				</div>

		
		<!--  ============== 모바일 ============== -->
		<div class="md-modal md-effect-1" id="modal-1">
			<div class="md-content">
				<div class="cont_preview mobile" id="cont_preview">
		
		<div class="look_bg">
		<img src="img/preview_mobile2.png" alt="미리보기화면" style="width: 370px; height: 740px; margin-left:40%;margin-top:5%;">
		</div>
				<div class="look_input" style="margin-left:40.5%; margin-top:5%;">
					
					<iframe src="preview/preview.jsp" name="left_skin_preview_mobile" id="left_skin_preview_mobile" style="width: 320px; height: 570px;" scrolling="auto" > </iframe>
				</div>
					<button class="md-close" style="margin-top:2%; background-color:#000; ">Close me!</button>
				</div>
			</div>
		</div>
				
	<div class="column">
		<button class="md-trigger mobile" id="md-mobile" data-modal="modal-1" style="margin-left:0px; background-color:#000; font-color:#fff;">PHONE</button>
	</div>			
		
	<!--  ============== PC ============== -->			
	 <div class="md-modal md-effect-2" id="modal-2">
         <div class="md-content">
            <div data-role="page" id="skin_page" data-url="skin_page" tabindex="0" class="ui-page ui-page-theme-a ui-page-active">
               <div class="look_input" style="width:90%; height: 80%; margin-left:4%; ">
                  <iframe src="preview/preview.jsp" name="left_skin_preview_pc" id="left_skin_preview_pc" style="" scrolling="auto" > </iframe>
               </div>
               <button class="md-close" style="margin-top:880px; background-color:#000; ">Close me!</button>
            </div>
            
         </div>
      </div>
            
      <div class="column">
            <button class="md-trigger" id="md-pc" data-modal="modal-2" style="margin-left:0px; background-color:#000;font-color:#fff;">PC</button>
          </div>
      
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


	
</form>



	<!-- Tab 영역 include  -->		
	<%-- 	<jsp:include page="tabs.jsp"></jsp:include> --%>
	<%-- <c:import url=""></c:import>	 --%>
			

<form action="./card.do" method="post" id="weddingCard_form"
		name="weddingCard_form">
		<input type="hidden" name="command" value="createCard">

		<div id="tabs" style="width: 30%; margin-left: 70%;">
			<ul>
				<li><a href="#tabs-1"> <span> <i
							class="fa fa-calendar-check-o"
							style="font-size: 36px; margin-left: 20%;"></i>
					</span><br> <font size="3">스킨선택</font>
				</a></li>

				<li><a href="#tabs-2"> <span> <i class="fa fa-bars"
							style="font-size: 36px; margin-left: 20%;"></i>
					</span><br> <font size="3">예식정보</font>
				</a></li>

				<li><a href="#tabs-3"> <span> <i class="fa fa-list"
							style="font-size: 36px; margin-left: 20%;"></i>
					</span><br> <font size="3">신랑신부정보</font>
				</a></li>

				<li><a href="#tabs-4"> <span> <i class="fa fa-list"
							style="font-size: 36px; margin-left: 20%;"></i>
					</span><br> <font size="3">포토북</font>
				</a></li>
			</ul>


			<div id="tabs-1">
				<table>
					<tr align="center">
						<td><img alt="" src="images/p2.jpg"
							style="width: 120px; heigth: 80px; margin: 0px;"> <input
							type="radio" name="template" id="template" value="basicSkin">
						</td>
						<td><img alt="" src="images/p6.jpg"
							style="width: 100px; heigth: 100px; margin: 0px;"> <input
							type="radio" name="template" id="template" value="basicSkin2"
							disabled="disabled"></td>
						<td><img alt="" src="img/222.jpg"
							style="width: 100px; heigth: 100px; margin: 0px;"> <input
							type="radio" name="template" id="template" value="basicSkin3"
							disabled="disabled"></td>
					</tr>
				</table>
			</div>

			<div id="tabs-2">

				<div class="ui-grid-f section">
					<div class="ui-block-a">
						<div class="ui-block-b">
							예식일:<input type="text" id="datepicker" name="cardDate">
						</div><br>
						<div class="ui-block-c">
							<select name="ampm" id="ampm" class="input_box_type1">
								<option value="AM" selected="selected">오전</option>
								<option value="PM">오후</option>
							</select>
						</div>
						<div class="ui-block-d">
							<select name="hour" id="hour" >
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
								<!--<option value="" selected="selected">분</option>-->
								<option value="0" selected="selected">00</option>
								<option value="5">05</option>
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
					</div>
				</div>
				초대글<br>
				<div class="section">
					<textarea name="cardContext" id="cardContext" class="input_box_type2" rel="tooltip" title="<span class='tooltip_title'>초대글</span><br>- 초대(모시는)글을 입력 해주십시요" placeholder="초대글"></textarea>
				</div>
				예식장명 : <input type="text" id="hallName" name="hallName"><br>
				예식장 위치 	:<input type="text" id="hallLocation" name="hallLocation"><br>
			</div>

			<div id="tabs-3">
				신랑이름 : <input type="text" id="groomName" name="groomName"><br>
				신랑번호 : <input type="text" id="groomTel" name="groomTel"><br>
				신부이름 : <input type="text" name="brideName" id="brideName"><br>
				신부번호 : <input type="text" name="brideTel" id="brideTel"><br>
				url : <input type="text" name="url"><br> 
				<span id="urlCheck"></span>
				<br> 
				<input type="button" value="초대장 생성" id="createCardBtn">
			</div>

			<div id="tabs-4">포토북 할끄</div>
		</div>
		<!-- tabs -->
	</form>









</body>
</html>