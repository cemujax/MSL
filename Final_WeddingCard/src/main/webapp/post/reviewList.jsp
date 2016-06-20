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
   table tr:HOVER{
   background-color: pink;
   }
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

<h2 align="center">칭찬해요</h2><p>


<!-- 새로운 리뷰 작성 폼 시작 -->
<div align="center">
<c:if test="${sessionScope.mvo!=null}">
<form action="./reviewComment.do" method="post">
<input type="hidden" name="command" value="writeReviewComment">
작성자 :: <input type="text" name="name" value="${mvo.name}" readonly="readonly">
content :: <input type="text" name="content">
<input type="submit" value="작성하기">
</form>
</c:if>
</div>

<!-- 새로운 리뷰 작성 폼 끝 -->

<table class="table">
<thead>
	<tr>
		<th>내용</th>
		<th>작성자</th>
		<th>작성일</th>
	</tr>
</thead>	
	<c:forEach items="${reviewList}" var="review" >
		<tr>
			<%-- <td><a href="${initParam.root}reviewComment.do?command=getQnA&&postNo=${post.postNo}">${post.content}</a></td> --%>
			<td>${review.content}</td>
			<td>${review.memberVO.memberId}</td>
			<td>${review.writeDate}</td>
		</tr>
	</c:forEach>
</table><p>
<div align="center">
<a href="${initParam.root }index.jsp" >메인으로</a><p>
</div>



</body>
</html>