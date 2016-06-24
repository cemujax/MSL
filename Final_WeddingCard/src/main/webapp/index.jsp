<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
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
<link href="css/bootstrap_index.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_index.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
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
<!-- start-smoth-scrolling -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- banner  class="banner" id="home1" -->
	<div class="banner" id="home1">
		<div class="container">
			<div class="banner-phone animated wow slideInLeft" data-wow-delay=".5s">
				<p><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+0000 123 456</p>
			</div>
			
			<div class="banner-phone animated wow slideInRight" data-wow-delay=".5s" style="float: right;">
				<c:choose>
						<c:when test="${sessionScope.mvo==null}">
						<p><a href="login/loginregister.jsp" style="margin-right:15px;"><span class="glyphicon glyphicon-log-in" ></span><font size="2" color="#fff"> Login</font></a><!-- #F15F5F -->
				     	<a href="login/loginregister.jsp" style="margin-left:0px; padding-left:0px;"><span class="glyphicon glyphicon-user"></span><font size="2" color="#fff"> Sign Up</font></a></p><!-- #45CBBF -->
				      	</c:when>
				      <c:otherwise>
				      <p><a href="javascript:logout()"><span class="glyphicon glyphicon-log-in"></span><font size="2" color="#fff"> Logout</font></a></p>
				      </c:otherwise>
				      	</c:choose>
				      	
			</div>
			<%-- 	<nav class="navbar navbar-default" >
				  <ul class="nav navbar-nav navbar-right">
				     <c:choose>
						<c:when test="${sessionScope.mvo==null}">
						<li><a href="login/loginregister.jsp" style="margin-right:0px;"><span class="glyphicon glyphicon-log-in" ></span><font size="3" color="#45CBBF"> Login</font></a></li><!-- #F15F5F -->
				     	<li><a href="login/loginregister.jsp" style="margin-left:0px; padding-left:0px;"><span class="glyphicon glyphicon-user"></span><font size="3" color="#45CBBF"> Sign Up</font></a></li>
				      	</c:when>
				      <c:otherwise>
				      <li><a href="javascript:logout()"><span class="glyphicon glyphicon-log-in"></span><font size="3" color="#45CBBF"> Logout</font></a></li>
				      </c:otherwise>
				      	</c:choose>
				   </ul>
		    </nav> --%>
			
			
		<!-- <div class="banner-social animated wow slideInRight" data-wow-delay=".5s">
			<div class="navigation" >
				
   		</div>
    </div> -->
			
			
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
								<li class="active"><a href="index.jsp"><span>Home</span></a></li>
								<!-- <li><a href="#about" class="scroll"><span>커뮤니티</span></a></li> -->
								  <li class="dropdown">
								  	<a class="dropdown-toggle" data-toggle="dropdown" href="#">커뮤니티<span class="caret"></span></a>
							        <ul class="dropdown-menu">
							          <li><a href="./post.do?command=getAllAnoneQnAs">익명게시판</a></li>
	          							<li><a href="./post.do?command=getAllQnAs">웨딩 QnA</a></li>
	          							<li><a href="./reviewComment.do?command=getAllReviewComments">칭찬해요</a></li>

							        </ul>
							      </li>
							      
							      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">청첩장<span class="caret"></span></a>
							        <ul class="dropdown-menu">
							          <li><a href="weddingCard/weddingCard.jsp">청첩장만들기</a></li>
							          <li><a href="./card.do?command=getAllCards">청첩장보기</a></li>
							        </ul>
							      </li>
							      
							       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">포토북<span class="caret"></span></a>
							        <ul class="dropdown-menu">
							          <li><a href="pbcreate.jsp">포토북만들기</a></li>
							          <li><a href="photoBook.do?command=list">포토북보기</a></li>
							        </ul>
							      </li>
							    <!--   
								<li><a href="#mail" class="scroll"><span>Mail Us</span></a></li> -->
							</ul>
							
						</nav>
					</div>
				
			</div>
		<!-- 	
			<div class="navigation">
				<nav class="navbar navbar-default">
					Brand and toggle get grouped for better mobile display
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
					</div>

					Collect the nav links, forms, and other content for toggling
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-14" id="link-effect-14">
							<ul class="nav navbar-nav">
								<li class="active"><a href="index.jsp"><span>Home</span></a></li>
								<li><a href="#about" class="scroll"><span>커뮤니티</span></a></li>
								  <li class="dropdown">
								  	<a class="dropdown-toggle" data-toggle="dropdown" href="#">커뮤니티<span class="caret"></span></a>
							        <ul class="dropdown-menu">
							          <li><a href="./post.do?command=getAllAnoneQnAs">익명게시판</a></li>
	          							<li><a href="./post.do?command=getAllQnAs">웨딩 QnA</a></li>
	          							<li><a href="./reviewComment.do?command=getAllReviewComments">칭찬해요</a></li>

							        </ul>
							      </li>
							      
							      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">청첩장<span class="caret"></span></a>
							        <ul class="dropdown-menu">
							          <li><a href="weddingCard/weddingCard.jsp">청첩장만들기</a></li>
							          <li><a href="./card.do?command=getAllCards">청첩장보기</a></li>
							        </ul>
							      </li>
							      
							       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">포토북<span class="caret"></span></a>
							        <ul class="dropdown-menu">
							          <li><a href="pbcreate.jsp">포토북만들기</a></li>
							          <li><a href="photoBook.do?command=list">포토북보기</a></li>
							        </ul>
							      </li>
							      
								<li><a href="#mail" class="scroll"><span>Mail Us</span></a></li>
							</ul>
							
						</nav>
					</div> -->
					<!-- /.navbar-collapse -->
				</nav>
			</div>
		</div>
	</div>
<!-- //banner -->

<%-- <section id="login">
<c:import url="loginregister.jsp"></c:import>
</section> --%>


<!-- banner-bottom -->
	<!-- <div class="banner-bottom" id="about">	
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s"><span>Special Invitation</span></h3>
			<p class="about-dummy animated wow slideInUp" data-wow-delay=".5s">
				직접 디자인해서 더 특별한 셀프 청첩장,<br>
				당신의 아름다운 날을 더욱더 빛나게 만드는<br>
				세상에서 하나뿐인 당신만의 초대장을 함께 준비해보세요<br>
			</p>
		</div>
		<div class="banner-bottom-grids animated wow slideInLeft" data-wow-delay=".5s">
			<ul id="flexiselDemo1">			
				<li>
					<div class="banner-bottom-grid">
						<img src="img_index/1.jpg" alt=" " class="img-responsive" />
					</div>
				</li>
				<li>
					<div class="banner-bottom-grid">
						<img src="img_index/2.jpg" alt=" " class="img-responsive" />
					</div>
				</li>
				<li>
					<div class="banner-bottom-grid">
						<img src="img_index/3.jpg" alt=" " class="img-responsive" />
					</div>
				</li>
				<li>
					<div class="banner-bottom-grid">
						<img src="img_index/4.jpg" alt=" " class="img-responsive" />
					</div>
				</li>
				<li>
					<div class="banner-bottom-grid">
						<img src="img_index/5.jpg" alt=" " class="img-responsive" />
					</div>
				</li>
				<li>
					<div class="banner-bottom-grid">
						<img src="img_index/6.jpg" alt=" " class="img-responsive" />
					</div>
				</li>
			</ul>
						<script type="text/javascript">
							$(window).load(function() {
								$("#flexiselDemo1").flexisel({
									visibleItems: 6,
									animationSpeed: 1000,
									autoPlay: true,
									autoPlaySpeed: 3000,    		
									pauseOnHover: true,
									enableResponsiveBreakpoints: true,
									responsiveBreakpoints: { 
										portrait: { 
											changePoint:480,
											visibleItems: 2
										}, 
										landscape: { 
											changePoint:640,
											visibleItems:3
										},
										tablet: { 
											changePoint:768,
											visibleItems: 4
										}
									}
								});
								
							});
					</script>
					<script type="text/javascript" src="js/jquery.flexisel.js"></script>
		</div>
	</div> -->
<!-- //banner-bottom -->
<!-- gallery -->
	<div class="gallery" id="gallery">
		<h3 class="animated wow zoomIn" data-wow-delay=".5s"><span>Photo Gallery</span></h3>
		<div class="gallery-grids">
			<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
				<ul id="myTab" class="nav nav-tabs" role="tablist" style="margin-left:5%;">
					<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">All</a></li>
					<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Wedding</a></li>
					<li role="presentation"><a href="#costumes" role="tab" id="costumes-tab" data-toggle="tab" aria-controls="costumes">Costumes</a></li>
					<li role="presentation"><a href="#honeyMoon" role="tab" id="honeyMoon-tab" data-toggle="tab" aria-controls="honeyMoon">HoneyMoon</a></li>
					<li role="presentation"><a href="#celebrations" role="tab" id="celebrations-tab" data-toggle="tab" aria-controls="celebrations">Celebrations</a></li>
				</ul>
				<div id="myTabContent" class="tab-content">
					<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
						<div class="tab_img">
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/13.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/13.jpg" class="img-responsive" alt=""/>
									<div class="b-wrapper">
										<h5>France adage</h5>
										<p>무릇 진실로 사랑함은 그 형체가 사랑함이 아니라, <br>그 형체를 주재하는 정신이라.</p>
									</div>
								</a>
							</div>
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/15.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/15.jpg" class="img-responsive" alt=""/>
									<div class="b-wrapper">
										<h5>Saint-Exupéry</h5>
										<p>사랑은 서로를 마주보는 게 아니라,<br>서로 같은 방향을 바라보는 것이다.</p>
									</div>
								</a>
							</div>
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/16.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/16.jpg" class="img-responsive" alt=""/>
									<div class="b-wrapper">
										<h5>F-Miller</h5>
										<p>사랑을 가르쳐 주는 사람은 아무도 없다. <BR>사랑이란 우리의 생명과 같이,<BR> 탄생할 때부터 지니고 태어나는 것이다.</p>
									</div>
								</a>
							</div>
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/17.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/17.jpg" class="img-responsive" alt=""/>
									<div class="b-wrapper">
										<h5>Goethe</h5>
										<p>20대의 사랑은 환상이다. 30대의 사랑은 외도이다.<br>사람은 40세에 와서야 처음으로 참된 사랑을 알게 된다.</p>
									</div>
								</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="tab_img">
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/18.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/18.jpg" class="img-responsive" alt=""/>
									<div class="b-wrapper">
										<h5>Mounier</h5>
										<p>말로 하는 사랑은 쉽게 외면할 수 있으나,<br> 행동으로 보여주는 사랑은 저항할 수가 없다.</p>
									</div>
								</a>
							</div>
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/19.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/19.jpg" class="img-responsive" alt=""/>
									<div class="b-wrapper">
										<h5>Russell</h5>
										<p>사랑이란 인생의 종은 될지언정,<br> 주인이 되어서는 안되는 법이다.</p>
									</div>
								</a>
							</div>
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/20.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/20.jpg" class="img-responsive" alt=""/>
									<div class="b-wrapper">
										<h5>Gandhi</h5>
										<p>만약 한 사람의 인간이 최고의 사랑을 성취한다면, <br>그것은 수백만의 사람들의 미움을 해소시키는데 충분하다.</p>
									</div>
								</a>
							</div>
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/21.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/21.jpg" class="img-responsive" alt=""/>
									<div class="b-wrapper">
										<!-- <h5>Byron</h5>
										<p>남자의 사랑은 그 일생의 일부요, 여자의 사랑은 그 일생의 전부다.</p> -->
										<h5>Sophocles</h5>
										<p>낱말 하나가 삶의 모든 무게와 고통에서 <br>우리를 해방시킨다. 그 말은 사랑이다.</p>
									</div>
								</a>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
						<div class="tab_img">
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/16.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/16.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Shakespeare</h5>
										<p>구해서 얻은 사랑은 좋은 것이다. 그러나 구하지 않고 얻은 것은 더욱 좋다.</p>
									</div>
								</a>
							</div>
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/17.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/17.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Shakespeare</h5>
										<p>사랑은 첫 인상과 함께 시작된다.</p>
									</div>
								</a>
							</div>
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/18.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/18.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Stendhal</h5>
										<p>정열적으로 사랑을 해보지 못한 사람은 인생의 절반, <br>그것도 아름다운 쪽의 절반을 읽은 것과 같다.</p>
									</div>
								</a>
							</div>
							<div class="clearfix"> </div>
						</div>	
					</div>
					<div role="tabpanel" class="tab-pane fade" id="costumes" aria-labelledby="costumes-tab">
						<div class="tab_img">
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/20.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/20.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Tennyson</h5>
										<p>사랑하고 나서 잃는 것은 전혀 사랑하지 않았던 것보다 더 낫다.</p>
									</div>
								</a>
							</div>
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/21.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/21.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Benjamin Disraeli</h5>
										<p>첫 사랑이 신비로운 것은 우리가 그것이 끝날 수 있다는 것을 모르기 때문이다.</p>
									</div>
								</a>
							</div>
							<div class="clearfix"> </div>
						</div>	
					</div>
					<div role="tabpanel" class="tab-pane fade" id="honeyMoon" aria-labelledby="honeyMoon-tab">
						<div class="tab_img">
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/13.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/13.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>English Proverb</h5>
										<p>1년 간의 행복을 위해서는 정원을 가꾸고, <br> 평생의 행복을 원한다면 나무를 심어라.</p>
									</div>
								</a>
							</div>
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/16.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/16.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Sophocles</h5>
										<p>낱말 하나가 삶의 모든 무게와 고통에서 <br>우리를 해방시킨다. 그 말은 사랑이다.</p>
									</div>
								</a>
							</div>
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/15.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/15.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Edith Wharton</h5>
										<p>빛을 퍼뜨릴 수 있는 두가지 방법이 있다. <br>촛불이 되거나 또는 그것을 비추는 거울이 되는 것이다.</p>
									</div>
								</a>
							</div>
							<div class="clearfix"> </div>
						</div>	
					</div>
					<div role="tabpanel" class="tab-pane fade" id="celebrations" aria-labelledby="celebrations-tab">
						<div class="tab_img">
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/22.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/22.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Helen Keller</h5>
										<p>세상은 고통으로 가득하지만, <br> 한편 그것을 이겨내는 일로도 가득차있다.</p>
									</div>
								</a>
							</div>
							<div class="col-md-3 portfolio-grids">
								<a href="img_index/23.jpg" rel="title" class="b-link-stripe b-animate-go thickbox">
									<img src="img_index/23.jpg" class="img-responsive zoom-img" alt=""/>
									<div class="b-wrapper">
										<h5>Erica Jong</h5>
										<p>사랑은 모두가 기대하는 것이다. <br> 사랑은 진정 싸우고, 용기를 내고, 모든 것을 걸 만하다.</p>
									</div>
								</a>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- <div class="map animated wow slideInLeft" data-wow-delay=".5s">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387142.84008838347!2d-74.25818880297903!3d40.705831640339994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1459488198428" style="border:0"></iframe>
		</div> -->
	</div>
<!-- //gallery -->

<!-- team -->
	<div class="team" id="team">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s"><span>Meet Our Team</span></h3>
			<div class="team-grids">
				<div class="col-md-3 team-grid animated wow slideInLeft" data-wow-delay=".5s">
					<div class="team-grid1">
						<img src="img_index/8.jpg" alt=" " class="img-responsive" />
					</div>
					<h4>James Win</h4>
					<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis 
						suscipit.</p>
					<ul class="social-icons">
						<li><a href="#" class="icon-button facebook"><i class="icon-facebook"></i><span></span></a></li>
						<li><a href="#" class="icon-button instagram"><i class="icon-instagram"></i><span></span></a></li>
						<li><a href="#" class="icon-button twitter"><i class="icon-twitter"></i><span></span></a></li>
					</ul>
				</div>
				<div class="col-md-3 team-grid animated wow slideInLeft" data-wow-delay=".6s">
					<div class="team-grid1">
						<img src="img_index/9.jpg" alt=" " class="img-responsive" />
					</div>
					<h4>Sunny</h4>
					<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis 
						suscipit.</p>
					<ul class="social-icons">
						<li><a href="#" class="icon-button facebook"><i class="icon-facebook"></i><span></span></a></li>
						<li><a href="#" class="icon-button instagram"><i class="icon-instagram"></i><span></span></a></li>
						<li><a href="#" class="icon-button twitter"><i class="icon-twitter"></i><span></span></a></li>
					</ul>
				</div>
				<div class="col-md-3 team-grid animated wow slideInLeft" data-wow-delay=".7s">
					<div class="team-grid1">
						<img src="img_index/10.jpg" alt=" " class="img-responsive" />
					</div>
					<h4>Laura</h4>
					<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis 
						suscipit.</p>
					<ul class="social-icons">
						<li><a href="#" class="icon-button facebook"><i class="icon-facebook"></i><span></span></a></li>
						<li><a href="#" class="icon-button instagram"><i class="icon-instagram"></i><span></span></a></li>
						<li><a href="#" class="icon-button twitter"><i class="icon-twitter"></i><span></span></a></li>
					</ul>
				</div>
				<div class="col-md-3 team-grid animated wow slideInLeft" data-wow-delay=".8s">
					<div class="team-grid1">
						<img src="img_index/11.jpg" alt=" " class="img-responsive" />
					</div>
					<h4>Andrew Carl</h4>
					<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis 
						suscipit.</p>
					<ul class="social-icons">
						<li><a href="#" class="icon-button facebook"><i class="icon-facebook"></i><span></span></a></li>
						<li><a href="#" class="icon-button instagram"><i class="icon-instagram"></i><span></span></a></li>
						<li><a href="#" class="icon-button twitter"><i class="icon-twitter"></i><span></span></a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		
		<div class="footer-pos" style="margin-top:2%;">
				<a href="#home1" class="scroll"><img src="img_index/7.png" alt=" " class="img-responsive" /></a>
			</div>
		
	</div>
<!-- //team -->


<!-- for bootstrap working -->
	<script src="js/bootstrap_index.js"></script>
<!-- //for bootstrap working -->
</body>
</html>