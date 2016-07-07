<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>My Sweet Love . Wedding Card</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Please be open-source" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->

<link href="css/main.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/bootstrap_index.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_index.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">

  <!-- <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   -->
  
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- 
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
 -->
<!-- carousel -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> -->
<!-- <script src="js/bootstrap.min.js"></script> -->
<!-- carousel -->
<script type="text/javascript" src="js/cycle2.js"></script>

<!--Custom-Theme-files-->
   <!-- <script src="js/jquery.min.js"> </script> -->
   
<!-- script -->
	<script src="js/jquery.chocolat.js"></script>
		<!--light-box-files-->
	<script type="text/javascript" charset="utf-8">
		$(function() {
			$('.portfolio-grids a').Chocolat();
			
		});
		
		function logout() {
			var f = confirm("로그아웃 하시겠습니까?");
			if (f)
				location.href = "member.do?command=logout"; //Controller에서 기능으로 연결..
		}
		
	</script>
<!-- script -->
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<!-- //animation-effect -->
<!-- timer -->
<link rel="stylesheet" href="css/jquery.countdown.css" />
<!-- //timer -->
<link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/earlyaccess/notosanskr.css' rel='stylesheet' type='text/css'>

<!-- start-smoth-scrolling -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
/* 	$(function() {
	setTimeout(function() {
		  $('#font1').fadeIn('slow');
		}, 3000);
	}); */
</script>
<!-- start-smoth-scrolling -->

<style type="text/css">
	div {
    display: block;
}
footer {
    padding: 80px 0;
    text-align: center;
}
footer .social a {
    border: 2px solid #ffffff;
}
.fa-facebook-square:before{
	color: #fff;
}
.fa-google-plus:before{
	color: #fff;
}
.fa-twitter:before{
	color: #fff;
}
footer .social a {
	width: 40px;
	height: 40px;
    margin: 0 8px;
    padding: 6px;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    -ms-border-radius: 50%;
    -o-border-radius: 50%;
    border-radius: 50%;
    display: inline-block;
    -webkit-transition: all 0.25s ease-in-out;
    -moz-transition: all 0.25s ease-in-out;
    -ms-transition: all 0.25s ease-in-out;
    -o-transition: all 0.25s ease-in-out;
    transition: all 0.25s ease-in-out;
}

ul{
   list-style:none;
   }
.banner {
    height:100%;
}
html,body{height:100%;}



.imghover:hover 
{
	
}


.tooltip {
    position: relative;
    display: inline-block;
    border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
    visibility: hidden;
    width: 120px;
    background-color: black;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 5px 0;
    position: absolute;
    z-index: 1;
    bottom: 150%;
    left: 50%;
    margin-left: -60px;
}

.tooltip .tooltiptext::after {
    content: "";
    position: absolute;
    top: 100%;
    left: 50%;
    margin-left: -5px;
    border-width: 5px;
    border-style: solid;
    border-color: black transparent transparent transparent;
}

.tooltip:hover .tooltiptext {
    visibility: visible;
}





</style>
</head>
	
<body>
<!-- banner  class="banner" id="home1" -->
<section id="step1">
<div class="banner" id="home1">
      <div class="container">
         <div class="banner-phone animated wow slideInLeft" data-wow-delay=".5s">
            <p><a href="http://skype.daesung.com" style="color: white" >
            <span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>010 7777 8282</a>
            </p>
         </div>
         
         <div class="banner-phone animated wow slideInRight" data-wow-delay=".5s" style="float: right;width: 150px;">
            <c:choose>
                <c:when test="${sessionScope.mvo==null}">
                  <p><a href="authentication/login.jsp"  style="color:#fff; margin-right:20px;" >
                  <span class="glyphicon glyphicon-log-in" ></span>Login</a><!-- #F15F5F -->
                    <a href="authentication/signup.jsp" style="margin-left:0px; padding-left:0px; color:#fff;">
                    <span class="glyphicon glyphicon-user"></span>Sign Up</a></p><!-- #45CBBF -->
                </c:when>
                  <c:otherwise>
                  <p><a href="javascript:logout()" style="color:#fff; margin-right:15px;"><span class="glyphicon glyphicon-log-in"></span>Logout</a></p>
                  </c:otherwise>
                     </c:choose>
                     
         </div>
         
         <div class="logo animated wow zoomIn" data-wow-delay=".5s">
            <h2><a href="index.jsp"><span></span>MySweetLove</a></h2>
         </div>
   
         
      <div class="clearfix"> </div>
         <div class="banner-info animated wow zoomIn" data-wow-delay=".5s">
            <p>Special Invitation</p>
            
               
         <div class="navigation">
            <nav class="navbar navbar-default">
               <!-- Brand and toggle get grouped for better mobile display -->
               <div class="navbar-header">
                 <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                 </button>
               </div>

               <!-- Collect the nav links, forms, and other content for toggling -->
               <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                  <nav class="link-effect-14" id="link-effect-14">
                     <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp"><span>HOME</span></a></li>
                           <li><a href="#"><span>메뉴얼</span></a></li>
                           
                           <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">청첩장<span class="caret"></span></a>
                             <ul class="dropdown-menu">
                               <li><a href="weddingCard/weddingCard.jsp">청첩장만들기</a></li>
                               <li><a href="./card.do?command=getAllCards">청첩장보기</a></li>
                             </ul>
                           </li>
                           
                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">포토북<span class="caret"></span></a>
                             <ul class="dropdown-menu">
                               <li><a href="photobook/photoBookCreate.jsp">포토북만들기</a></li>
                               <li><a href="photoBook.do?command=list">포토북보기</a></li>
                             </ul>
                           </li>
                           
                            <li class="dropdown">
                             <a class="dropdown-toggle" data-toggle="dropdown" href="#">커뮤니티<span class="caret"></span></a>
                             <ul class="dropdown-menu">
                               <li><a href="./post.do?command=getAllAnoneQnAs">익명게시판</a></li>
                                  <li><a href="./post.do?command=getAllQnAs">웨딩 QnA</a></li>
                                  <li><a href="./reviewComment.do?command=getAllReviewComments">칭찬해요</a></li>

                             </ul>
                           </li>
                     </ul>	
                     
                  </nav>
               </div>
            </nav>
         </div>
	</div>
	</div>
	</div><!-- 배너 -->
	
</section>

<div class="scroll_nav" >
		<ul>
			<li><a href="#step1" class="scroll">step1</a></li>
			<li><a href="#step2" class="scroll">step2</a></li>
			<li><a href="#step3" class="scroll">step3</a></li>
			<li><a href="#step4" class="scroll">step4</a></li>
			<li><a href="#step5" class="scroll">step5</a></li>
			<li><a href="#step6" class="scroll">step6</a></li>
		</ul>
	</div>



<!-- gallery -->
<section id="step2">
	<div class="gallery" id="gallery" style="font-family: 'Noto Sans KR', sans-serif; background-color: #ffffd9;  height:100%; padding-bottom: 24px; padding-top: 24px;">
		<h3 class="animated wow zoomIn" data-wow-delay=".5s" style="padding-top: 6px;"><span>Responsive Web Design</span></h3>
		<div class="gallery-grids" style="font-family: 'Noto Sans KR', sans-serif;" >
						<font size="6" style="font-family: 'Noto Sans KR', sans-serif;color: #0e6973; padding-left: 10%" >어떤 기기든 반응하는</font><br>
				<div class="team-grid animated wow slideInDown" data-wow-delay=".5s" align="center">
						<img src="img_service/all.png" alt=" " class="img-responsive" style="width: 800px; height: 400px; margin-top: 50px;"   />
				</div>	
		</div>
</div>	
</section>	
		


<!-- 사이트 소개 -->

<section id="step3">
<div class="gallery" id="gallery" style="background-color:#f1fdd7;  width:100%; height:100%; padding-bottom: 24px;">
	<h3 class="animated wow zoomIn" data-wow-delay=".5s" style="padding-top: 6px;"><span>Mobile Invitations</span></h3>
		<div class="gallery-grids" align="left" style="margin-top: 30px;">
			<div style="text-align: right; padding-right: 10%">
				<font id="font1" size="6" style="color: #0e6973; font-family: 'Noto Sans KR', sans-serif; " >기존 종이 청첩장과는 다른<br>모바일 청첩장의 매력을 만나보세요</font>
			</div>
			
			<table style="margin: auto; padding-top: 30px; margin-top: 50px;">
				<tr>
					<td><img alt="" src="${initParam.root}img/monitor1.png"  style="width: 600px; height: 400px;" /></td>
					<td><img alt="" src="${initParam.root}img/point2.png" class="team-grid animated wow slideInRight" data-wow-delay=".5s"  style="padding-left: 10px;  width: 20px; height: 20px;"/></td>
					<td><img alt="" src="${initParam.root}img/sub1.png" class="team-grid animated wow slideInRight " data-wow-delay=".5s"  style="padding-left: 10px; " ></td>
					<td><img alt="" src="${initParam.root}img/point2.png" class="team-grid animated wow slideInRight" data-wow-delay=".5s" style="padding-left: 10px; width: 20px; height: 20px;"/></td>
					<td><img alt="" src="${initParam.root}img/sub2.png"class="team-grid animated wow slideInRight" data-wow-delay=".5s" style="padding-left: 10px; " ></td>
					<td><img alt="" src="${initParam.root}img/point2.png" class="team-grid animated wow slideInRight" data-wow-delay=".5s" style="padding-left: 10px; width: 20px; height: 20px;"/></td>
					<td><img alt="" src="${initParam.root}img/sub3.png" class="team-grid animated wow slideInRight" data-wow-delay=".5s" style="padding-left: 10px; " ></td>
				</tr>
			</table>

		</div>
</div>
</section>

<section id="step4">
<div class="gallery" id="gallery" style="background-color: #fff1d4;  height:100%;">
		<h3 class="animated wow zoomIn" data-wow-delay=".5s" style="padding-top: 24px; padding-bottom: 30px;"><span>Photo Books</span></h3>
			<div class="gallery-grids">
			<!-- <div class="gallery-grids" style="background-color: #fff; width: 100%; height: 90%;"> -->
				<div class="cycle-slideshow" >
					<img alt="" src="img_service/pic1.jpg" style="width: 100%;height: auto; padding-top: 10px;  padding-bottom: 10px; padding-left: 10px; padding-right: 10px">
					<img alt="" src="img_service/wedding5.jpg" style="width: 100%;height: auto; padding-top: 10px;  padding-bottom: 10px; padding-left: 10px; padding-right: 10px">
					<img alt="" src="img_service/wedding2.jpg" style="width: 100%;height: auto; padding-top: 10px;  padding-bottom: 10px; padding-left: 10px; padding-right: 10px">
					<img alt="" src="img_service/11.jpg" style="width: 100%;height: auto; padding-top: 10px;  padding-bottom: 10px; padding-left: 10px; padding-right: 10px">
				</div>
			<!-- </div> -->
		</div>
</div>
</section>		


<section id="step5">
<div class="gallery" id="gallery" style="background-color:#fed8ab;   height:100%;">
		<h3 class="animated wow zoomIn" data-wow-delay=".5s" style="padding-top: 6px;"><span>Bulletin Board System</span></h3>
			<div class="gallery-grids">
				<div style="text-align: right; padding-right: 10%">
					<font id="font1" size="6" style="color: #8c6751;font-family: 'Noto Sans KR', sans-serif; " >웨딩 Tip, QnA는 물론<br>익명게시판으로 고민까지 나눠보세요</font>
				</div>
				<img alt="" src="img_service/comunication.jpg" style="height: 450px; width: 100%">
		</div>
</div>	
</section>	


<!-- footer begin -->
<section id="step6">
        <footer style="background-color: #142740; height: 100%; padding-bottom: 60px; padding-top: 12px;">
            <div class="container" style="height: 160px;">
				<!-- style="padding-top: 6%" -->
                
                <a href="#" class="scrollpoint sp-effect3">
                    <img src="${initParam.root}img/logo.png" alt=""  style="text-align: center; width: 350px;"><!-- width: 100% -->
                </a>
                
                <a href="#home1" class="scroll">
                <img src="${initParam.root}img/7.png" alt=" " style="float: right;margin-top: 50px;" >
				</a>
                <div class=" social">
                    <a href="#" class="scrollpoint sp-effect3"><i class="fa fa-twitter fa-lg"></i></a>
                    <a href="#" class="scrollpoint sp-effect3"><i class="fa fa-google-plus fa-lg"></i></a>
                    <a href="#" class="scrollpoint sp-effect3"><i class="fa fa-facebook-square fa-lg"></i></a>
                </div>
                    	<ul class="" style="text-align: right; font-size:14px;color: #fff;">
							<li><span>(주)MSL</span><span>설립자: 황희, 박찬영, 이승현, 김진선, 조수연, 송지현</span>
							<li><span>대표전화 : 010-6535-6597 </span><span>팩스 : 02-559-1001~3</span><span>고객센터 : heehkosta@gmail.com</span></li>
							<li><span>경기도 성남시 분당구 삼평동 대왕판교로 670길 유스페이스2 B동 8층</span></li>
			 					<li class="copy"><span>Copyright ©MSL  Co.,Ltd. All rights reserved.</span></li>
						</ul>
            </div>
            
        </footer>
     </section>
<!-- footer end -->

<!-- for bootstrap working -->
	<!-- <script src="js/bootstrap_index.js"></script> -->
<!-- //for bootstrap working -->
</body>
</html>