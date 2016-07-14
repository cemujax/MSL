<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" class="ui-mobile">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=768">

<link rel="stylesheet" type="text/css" 	href="${initParam.root }service/css/common.css">
<link rel="stylesheet" type="text/css" 	href="${initParam.root }service/css/service.css">
<link href="${initParam.root }service/css/animate.min.css" 	rel="stylesheet">
<script type="text/javascript" 	src="${initParam.root }js/jquery.placeholder.js"></script>
<link rel="stylesheet" type="text/css"	href="http://fonts.googleapis.com/earlyaccess/nanumpenscript.css">
<!-- modal -->
<link rel="stylesheet" type="text/css" href="${initParam.root }css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script 	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!-- modal -->

<link href="css/animate.min.css" rel="stylesheet"> 
<!-- 
<script src="js/wow.min.js"></script> -->
<script type="text/javascript" src="${initParam.root }js/cycle2.js"></script>

<style type="text/css">
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}

.modal-dialog.modal-fullsize {
	width: 100%;
	height: 400px;
	margin: 80px 80px 180px 180px;
	padding: 0;
}

.modal-content.modal-fullsize {
	height: auto;
	min-height: 100%;
	border-radius: 0;
}

.btn-info {
	color: #fff;
	background-color: #a68160;
	border-color: #a68160;
}

.btn-info:hover {
	color: #fff;
	background-color: #8c6751;
	border-color: #8c6751;
}

.btn-info.focus, .btn-info:focus {
	color: #fff;
	background-color: #8c6751;
	border-color: #8c6751;
}
	.container-fluid {
    padding-top: 20px;
} 
.nav{
   margin-left: 70%;
    width: 400px;
    font-size: 15px;

}
.nav>li>a {
    /* width: 140px; */
   /*  float: right; */
    color: #fff;
}
</style>
</head>

<body id="" class="" style="">

	<div class="contents_wrap">
	<%-- <jsp:include page="menualNav.jsp"></jsp:include> --%>
<nav class="navbar navbar-inverse" style="background-color: rgba(0, 0, 0, 0.18); border-color: transparent; margin-bottom: 0px;">      
  
  <div class="container-fluid">      
    <div class="navbar-header" >      
     <!--  <a class="navbar-brand" href="#">Home</a> -->      
     <a href="${initParam.root }index.jsp" class="navbar-brand" ><!-- Home</a>    -->
     <img alt="" src="${initParam.root}img/logo_02.png"  style="width: 60px; margin-left: 50px; margin-top: -30px;"> </a>
    </div>      
       <ul class="nav" style="    margin-left: 880px;">      <!--  navbar-nav -->
      	 <li><a href="${initParam.root }service/menual.jsp"><span>메뉴얼</span></a></li>
      	 	
      	 	<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">청첩장<span class="caret"></span></a>      
                             <ul class="dropdown-menu">      
                               <li><a href= "${initParam.root}card.do?command=getAllCardTemplates" >청첩장만들기</a></li>      
                               <li><a href="${initParam.root }./card.do?command=getAllCards">청첩장보기</a></li>      
                             </ul>      
                           </li>
                           
      	 	 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">포토북<span class="caret"></span></a>      
                 <ul class="dropdown-menu">      
                    <li><a href="${initParam.root }photobook/photoBookCreate.jsp">포토북만들기</a></li>      
                    <li><a href="${initParam.root }photoBook.do?command=list">포토북보기</a></li>      
                 </ul>      
             </li>  
      	 
      	    
      	 	
                <li class="dropdown">      
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">커뮤니티<span class="caret"></span></a>      
                     <ul class="dropdown-menu">      
                        <li><a href="${initParam.root}post.do?command=getAllAnoneQnAs">익명게시판</a></li>      
                        <li><a href="${initParam.root}post.do?command=getAllQnAs">웨딩QnaA</a></li>      
                        <li><a href="${initParam.root}reviewComment.do?command=getAllReviewComments">칭찬해요</a></li>      
                     </ul>      
                </li>      
                                 
                     </ul>      
           </div>  
</nav>
		<div class="about-grid-a img01 " >
		
			<div class="text_L01" style="margin-left: 155px" >
				<h3>
					<img alt="" src="img/about_num01.png" style="padding-bottom: 10px;"><br>
					<font class="title" style="">누구나 쉽게 만들 수 있는<br> 셀프 모바일
						초대장
					</font>
				</h3>
				<p class="info_small">
					디자인 고민 없이 내용과 사진만 입력하면<br> 쉽고 간단하게 초대장 생성이 즉시 생성!<br> 맘에
					드는 디자인 스킨 변경에 걸리는 시간은 1초!!<br>
				</p>
				<button type="button" class="btn btn-info btn-lg"
					style="margin-left: 130px;" data-toggle="modal"
					data-target="#myModal01">메뉴얼</button>
			</div>
			<div class="img_box01  animated wow slideInDown" data-wow-delay=".5s"
				style="background: url('img/monitor.png') no-repeat right 20px; margin-right: 155px; margin-left: 500px;">
			</div>
		</div>

		<!-- Modal_1 -->
		<div class="modal fade" id="myModal01" role="dialog">
			<div class="modal-dialog modal-fullsize" style="width: 1000px">

				<!-- Modal content-->
				<div class="modal-content modal-fullsize" style="width: 1000px;"
					align="center">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<font class="modal-title" style="color: #1b1c26">※셀프 모바일
							청첩장 생성 방법</font>
					</div>

					<div class="modal-body">
						<div id="myCarousel01" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel01" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel01" data-slide-to="1"></li>
								<li data-target="#myCarousel01" data-slide-to="2"></li>
								<li data-target="#myCarousel01" data-slide-to="3"></li>
								<li data-target="#myCarousel01" data-slide-to="4"></li>
								<li data-target="#myCarousel01" data-slide-to="5"></li>
								<li data-target="#myCarousel01" data-slide-to="6"></li>
							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox"
								style="width: 700px; height: 400px">
								<div class="item active">
									<img src="img/mobile0.jpg" alt=""
										style="width: 700px; height: 400px">
								</div>

								<div class="item">
									<img src="img/mobile1.jpg" alt=""
										style="width: 1000px; height: 400px">
								</div>

								<div class="item">
									<img src="img/mobile2.jpg" alt=""
										style="width: 1000px; height: 400px">
								</div>

								<div class="item">
									<img src="img/mobile3.jpg" alt=""
										style="width: 1000px; height: 400px">
								</div>

								<div class="item">
									<img src="img/mobile4.jpg" alt=""
										style="width: 1000px; height: 400px">
								</div>
								
								<div class="item">
									<img src="img/mobile5.jpg" alt=""
										style="width: 1000px; height: 400px">
								</div>
								
								<div class="item">
									<img src="img/mobile6.jpg" alt=""
										style="width: 1000px; height: 400px">
								</div>
							</div>

						
							<!-- Left and right controls -->
							<a class="left carousel-control" href="#myCarousel01" role="button"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#myCarousel01"
								role="button" data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</div>
					<div class="modal-footer" style="text-align: center;">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>

<style type="text/css">
.img06{
background: url('${initParam.root}service/img/photo2.png') no-repeat;
width: 100%;
}
</style>


		<div class="about-grid-a img06" >
			<%-- <div class="cycle-slideshow">
				<img alt="" src="${initParam.root }service/img/photo1.jpg" style="width: 100%;height: 400px; ">
				<img alt="" src="${initParam.root }service/img/photo2.jpg" style="width: 100%;height: 400px; ">
			</div> --%>
			<!-- <ul id="cbp-bislideshow" class="cbp-bislideshow" style="width: 100%">
					<li style="opacity: 0; background-image: url(&quot;img/photo1.jpg&quot;);"><img src="img/photo1.jpg" alt=""></li>
					<li style="opacity: 0; background-image: url(&quot;img/photo2.jpg&quot;);"><img src="img/photo2.jpg" alt=""></li>
			</ul> -->
			<div class="img_box01 "
				style="max-width:100%; background-color: rgba(0, 0, 0, 0.5); ">
				<div class="text_R " style="float: left;  margin-left: 13%;" >
					<h3 style="text-align: center; width: 1000px;">
						<img alt="" src="img/about_num02.png"
							style="padding-bottom: 10px;"><br>
						<p class="title">
							연인은 물론 친구들과의<br> 포토북 연동<br>
						</p>
					</h3>
					<p class="info_small" style="text-align: center;">
						그동안의 추억들을<br> 혼자만의 기억이 아닌 포토북으로 공유하세요.
					</p>
					<div style="text-align: center;">
						<button type="button" class="btn btn-info btn-lg"
							style="text-align: center;" data-toggle="modal"
							data-target="#myModal02">메뉴얼</button>
					</div>
				</div>
			</div>
		</div>
		<!-- Modal_2 -->
		<div class="modal fade" id="myModal02" role="dialog">
			<div class="modal-dialog modal-fullsize" style="width: 1000px">

				<!-- Modal content-->
				<div class="modal-content modal-fullsize" style="width: 1000px;"
					align="center">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<font class="modal-title">※포토북 생성 방법</font>
					</div>

					<div class="modal-body">
						<div id="myCarousel02" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel02" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel02" data-slide-to="1"></li>
								<li data-target="#myCarousel02" data-slide-to="2"></li>
								<li data-target="#myCarousel02" data-slide-to="3"></li>
								<li data-target="#myCarousel02" data-slide-to="4"></li>
							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox"
								style="width: 700px; height: 400px">
								<div class="item active">
									<img src="img/photobook0.jpg" alt=""
										style="width: 700px; height: 400px">
								</div>

								<div class="item">
									<img src="img/photobook1.jpg" alt=""
										style="width: 1000px; height: 400px">
								</div>

								<div class="item">
									<img src="img/photobook2.jpg" alt=""
										style="width: 1000px; height: 400px">
								</div>

								<div class="item">
									<img src="img/photobook3.jpg" alt=""
										style="width: 1000px; height: 400px">
								</div>

								<div class="item">
									<img src="img/photobook4.jpg" alt=""
										style="width: 1000px; height: 400px">
								</div>
							</div>

						
							<!-- Left and right controls -->
							<a class="left carousel-control" href="#myCarousel02" role="button"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#myCarousel02"
								role="button" data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</div>
					<div class="modal-footer" style="text-align: center;">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>


		<div class="about-grid-a img07">
			<div class="text_L01 " style="margin-left: 155px">
				<h3>
					<img alt="" src="img/about_num03.png" style="padding-bottom: 10px;"><br>
					<font class="title" style="">셀프 웨딩에 관한<br>자유로운 소통 및 정보
						공유
					</font>
				</h3>
				<p class="info_small">
					From A to Z<br> 웨딩 준비부터 정보 공유까지<br> 익명으로 커뮤니케이션 할 수 있습니다.
				</p>
				<button type="button" class="btn btn-info btn-lg"
					style="margin-left: 130px;" data-toggle="modal"
					data-target="#myModal03">메뉴얼</button>
			</div>
			<img alt="" src="${initParam.root}img/secret22.png" class="animated wow slideInDown" data-wow-delay=".5s"
				style="margin-top: 35px; margin-left: 20px" height="330px"
				width="480px">
		</div>


		<!-- Modal_3 -->
		<div class="modal fade" id="myModal03" role="dialog">
			<div class="modal-dialog modal-fullsize" style="width: 1000px">

				<!-- Modal content-->
				<div class="modal-content modal-fullsize" style="width: 1000px;"
					align="center">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<font class="modal-title"
							style="font-family: font-family : 'Nanum Pen Script', serif;">※게시판
							이용 방법</font>
					</div>

					<div class="modal-body">
						<div id="myCarousel03" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel03" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel03" data-slide-to="1"></li>
								<li data-target="#myCarousel03" data-slide-to="2"></li>
								<li data-target="#myCarousel03" data-slide-to="3"></li>
								<li data-target="#myCarousel03" data-slide-to="4"></li>
								<li data-target="#myCarousel03" data-slide-to="5"></li>
								<li data-target="#myCarousel03" data-slide-to="6"></li>
								<li data-target="#myCarousel03" data-slide-to="7"></li>
								<li data-target="#myCarousel03" data-slide-to="8"></li>
								<li data-target="#myCarousel03" data-slide-to="9"></li>

							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox"
								style="width: 700px; height: 400px">
								<div class="item active">
									<img src="${initParam.root }img/secret0.jpg" alt=""
										style="width: 700px; height: 400px">
								</div>

								<div class="item">
									<img src="${initParam.root }img/secret1.jpg" alt=""
										style="width: 1000px; height: 400px">
								</div>

								<div class="item">
									<img src="${initParam.root }img/secret2.jpg" alt=""
										style="width: 1000px; height: 400px">
								</div>

								<div class="item">
									<img src="${initParam.root }img/secret3.jpg" alt=""
										style="width: 1000px; height: 400px">
								</div>

								<div class="item">
									<img src="${initParam.root }img/comment0.jpg" alt=""
										style="width: 700px; height: 400px">
								</div>

								<div class="item">
									<img src="${initParam.root }img/comment1.jpg" alt=""
										style="width: 1000px; height: 400px">
								</div>

								<div class="item">
									<img src="${initParam.root }img/comment2.jpg" alt=""
										style="width: 1000px; height: 400px">
								</div>

								<div class="item">
									<img src="${initParam.root }img/review0.jpg" alt=""
										style="width: 700px; height: 400px">
								</div>

								<div class="item">
									<img src="${initParam.root }img/review1.jpg" alt=""
										style="width: 1000px; height: 400px">
								</div>

								<div class="item">
									<img src="${initParam.root }img/review2.jpg" alt=""
										style="width: 1000px; height: 400px">
								</div>
							</div>

							<!-- Left and right controls -->
							<a class="left carousel-control" href="#myCarousel03"
								role="button" data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#myCarousel03"
								role="button" data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</div>
					<div class="modal-footer" style="text-align: center;">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>



		<%-- <div class="about-grid-a img08">
				<div class="img_box01" style="background:url('img/photobook01.png') no-repeat left 20px;">
					<div class="text_R">
						<h3>
							<p class="about_num num08" style="background:url('img/about_num04.png') no-repeat 0px 0px;">04</p>
							<p class="title">
							연인은 물론 친구들과의<br> 포토북 연동<br>
							</p>
						</h3>
						<p class="info_small">
							그동안의 추억들을<br>
							혼자만의 기억이 아닌 포토북으로 공유하세요.
						</p>
					</div>
				</div>
			</div>
			
			
<!-- Modal_4 -->
<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog modal-fullsize">
	
<!-- Modal content-->
	<div class="modal-content modal-fullsize" style="width: 1000px;" align="center">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<font class="modal-title">셀프 모바일 청첩장 생성하자</font>
		</div>

		<div class="modal-body" >
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
					<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>

				<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox" style="width: 400px; height: 400px">
						<div class="item active">
							<img src="${initParam.root}img/secret0.jpg" alt="" >
						</div>

						<div class="item">
							<img src="img/wedding3.jpg" alt="" >
						</div>

						<div class="item">
							<img src="img/wedding5.jpg" alt="" >
						</div>
					</div>

								<!-- Left and right controls -->
								<a class="left carousel-control" href="#myCarousel"
									role="button" data-slide="prev"> <span
									class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
									<span class="sr-only">Previous</span>
								</a> <a class="right carousel-control" href="#myCarousel"
									role="button" data-slide="next"> <span
									class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
									<span class="sr-only">Next</span>
								</a>
							</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div> --%>

	</div>
</body>
</html>