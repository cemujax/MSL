<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Nuptials Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<!-- <script src="js/jquery-ddorai.js"></script> -->
<link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/less/navbar.less" rel="stylesheet" type="text/css" media="all" />
<link href="css/style_index.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">

<link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style type="text/css">
/* 	.applyImage{
		background-image: url("http://previews.123rf.com/images/aleksangel/aleksangel1205/aleksangel120500020/13753847-paper-notice-with-pin-on-wooden-plate-isolated-on-white-background-Transparent-objects-and-opacity-m-Stock-Vector.jpg");
		background-repeat: repeat;
	} */
   body table{
   margin: 0px;
   margin-left: auto;
   margin-right: auto; 
   width: 70%
   border-collapse: collapse;
   }
   tr td{
   text-align: center;
      
   }
/*    table tr:HOVER{
   background-color: pink;
   } */
   th{
   	text-align: center;
   }
</style>
</head>
<body>
<!-- 메뉴바 -->
		<div class="navigation" style="margin-left:15%; ">
				<nav class="navbar navbar-default">
				<!-- 	Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
					</div>

				<!-- 	Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-14" id="link-effect-14">
							<ul class="nav navbar-nav">
								<li class="active"><a href="index.jsp"><span>Home</span></a></li>
							<!-- 	<li><a href="#about" class="scroll"><span>커뮤니티</span></a></li> -->
								  <li class="dropdown">
								  	<a class="dropdown-toggle" data-toggle="dropdown" href="#">커뮤니티<span class="caret"></span></a>
							        <ul class="dropdown-menu">
							          <li><a href="#">익명게시판</a></li>
							          <li><a href="#">게시판</a></li>
							          <li><a href="#">칭찬해요</a></li>
							        </ul>
							      </li>
							      
							      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">청첩장<span class="caret"></span></a>
							        <ul class="dropdown-menu">
							          <li><a href="${initParam.root }weddingCard/weddingCard.jsp">청첩장만들기</a></li>
							          <li><a href="${initParam.root }card.do?command=getAllCards">청첩장보기</a></li>
							        </ul>
							      </li>
							      
							       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">포토북<span class="caret"></span></a>
							        <ul class="dropdown-menu">
							          <li><a href="test.jsp">포토북만들기</a></li>
							          <li><a href="photoBook.do?command=list">포토북보기</a></li>
							        </ul>
							      </li>
							      
							<!-- 	<li><a href="#mail" class="scroll"><span>Mail Us</span></a></li> -->
							</ul>
							
						</nav>
					</div>
				</nav>
			</div>
	
<!-- //메뉴바 -->


<!-- 새로운 리뷰 작성 폼 시작 -->
<!-- <div class="applyImage"> -->

<div class="container" style="background-image: url('http://www.asrgo.com/files/attach/images/8131/356/059/w-19.jpg'); width: 100%; height: 300px; ">
<h2 class="margin-top-0 wow fadeIn" align="center" style="margin-top: 150px;">칭찬해요</h2>
</div>
<br><br>
 <!-- <section id="last" style="padding-left: 100px; padding-right: 100px;"> -->
  <section id="last" >
        <div class="container">
        <div class="jumbotron" >
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <hr class="primary">
                    <p> 사용 후기를 남겨주세요</p>
                    <p> 등록된 내용은 수정/삭제가 불가능합니다.</p>
                </div>
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    <form class="contact-form row" action="./reviewComment.do" method="post">
                	    <input type="hidden" name="command" value="writeReviewComment">
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" name="name" value="${mvo.name}" readonly="readonly" class="form-control">
                        </div>
                        <div class="col-md-4 col-md-offset-4">
                            <label></label>
                            <input type="submit" value="submit" data-toggle="modal" data-target="#alertModal" class="btn btn-primary btn-block btn-lg"><i class="ion-android-arrow-forward"></i>
                        </div>
                      
                        <div class="col-md-12">
                            <label></label>
                            <textarea class="form-control" rows="9" placeholder="Your message here.." name="content"></textarea>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </section>
    
    
<!-- 새로운 리뷰 작성 폼 끝 -->

	<c:forEach items="${reviewList}" var="review" >
<div class="container">
<div class="jumbotron" >

	${review.memberVO.memberId} &nbsp;
	${review.writeDate}

<hr>


			${review.content}

</div>
</div>
	</c:forEach>
<!-- </table><p></p> -->
<div align="center">
<a href="${initParam.root }index.jsp" >메인으로</a><p>
</div>

<!-- </div> -->


</body>
</html>