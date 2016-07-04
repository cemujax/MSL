<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Please be open-source" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/jquery.countdown.css" />
<script type="text/javascript" src="js/cycle2.js"></script>
<!-- carousel -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet">

<style type="text/css">
body table {
	margin: 0px;
	margin-left: auto;
	margin-right: auto;
	width: 70% border-collapse: collapse;
}

tr td {
	text-align: center;
}

th {
	text-align: center;
}

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

footer .social a {
	margin: 0 8px;
	padding: 15px;
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

ul {
	list-style: none;
}
</style>
</head>
<body style="background-color: white;">

	<!-- 새로운 리뷰 작성 폼 시작 -->
	<div class="container" style="background-image: url(${initParam.root }img/post_review_board.png); width: 100%; height: 250px" align="center">
		<p style="font-weight: bold; font-size:25px; margin-top: 7%;">칭찬해요</p>
	</div>
	
	<div class="container" style="width: 100%; padding-right: 8%; padding-left:8%; padding-top: 2%;">
		<div class="jumbotron">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<p>사용 후기를 남겨주세요</p>
					<p>등록된 내용은 수정/삭제가 불가능합니다.</p>
				</div>
				<div class="col-lg-10 col-lg-offset-1 text-center">
					<form class="contact-form row" action="./reviewComment.do"
						method="post">
						<input type="hidden" name="command" value="writeReviewComment">
						<div class="col-md-4" style="">
							<label></label><span><input type="text" name="name"
								value="${mvo.memberId}" readonly="readonly" class="form-control"></span>
						</div>
						<div class="col-md-4 col-md-offset-4" style="width: 160px;">
							<label></label> <input type="submit" value="글 등록"
								data-toggle="modal" data-target="#alertModal"
								class="btn btn-primary btn-block btn-lg"
								style="width: 100px; margin-left: 160px;"><i
								class="ion-android-arrow-forward"></i>
						</div>

						<div class="col-md-12">
							<label></label>
							<textarea class="form-control" rows="9"
								placeholder="Your message here.." name="content"></textarea>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>


	<!-- 새로운 리뷰 작성 폼 끝 -->
	<c:forEach items="${reviewList}" var="review">
		<div class="container">
			<div class="jumbotron">

				${review.memberVO.memberId} &nbsp; ${review.writeDate}

				<hr>
				${review.content}

			</div>
		</div>
	</c:forEach>


	<!-- footer begin -->
	<section id="step6"> <footer
		style="background-color: #142740;">
	<div class="footer-pos" style="margin-top: 2%;"></div>
	<div class="container">
		<a href="#" class="scrollpoint sp-effect3"> <!-- <img src="../img_index/logo.png" alt=""  style="text-align: center;"> -->
		</a>
		<div class="social">
			<a href="#" class="scrollpoint sp-effect3"><i
				class="fa fa-twitter fa-lg"></i></a> <a href="#"
				class="scrollpoint sp-effect3"><i
				class="fa fa-google-plus fa-lg"></i></a> <a href="#"
				class="scrollpoint sp-effect3"><i
				class="fa fa-facebook-square fa-lg"></i></a>
		</div>
		<div class="rights">
			<br>
			<ul class="" style="text-align: right;">
				<li><span>(주)MSL</span><span>대표이사 : 홍길동</span>
				<li><span>대표전화 : 031-111-1004 </span><span>팩스 :
						02-559-1001~3</span><span>고객센터 : abc@naver.com</span></li>
				<li><span>경기도 성남시 분당구 삼평동 대왕판교로 670길 유스페이스2 B동 8층</span></li>
				<li class="copy"><span>Copyright ©MSL Co.,Ltd. All
						rights reserved.</span></li>
			</ul>
		</div>
	</div>
	</footer> </section>
	<!-- footer end -->

</body>
</html>