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

<script src="js/jquery-ddorai.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!-- 
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/less/navbar.less" rel="stylesheet" type="text/css" media="all" />
 -->
<link href="css/style_index.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">

<link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

  

<style type="text/css">

	 .navigation{
		background-color: #ccdacd;
	} 
	.dropdown-toggle{
	}

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

   th{
   	text-align: center;
   }
   

</style>
</head>
<body>

<!-- 메뉴바 -->
		<div class="navigation"  style="margin-top: 0px;">
				<nav class="navbar" >
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
								<li class="active"><a href="index.jsp"><span><img src="img_index/logo.png" style="height: 70px; height: 20px;"></span></a></li>
								
								
								<li class="dropdown">
								  	<a class="dropdown-toggle" data-toggle="dropdown" href="#">서비스 소개<span class="caret"></span></a>
							        <ul class="dropdown-menu">
							          <li><a href="#"></a></li>
							          <li><a href="#"></a></li>
							          <li><a href="#"></a></li>
							        </ul>
							      </li>
							      
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
							      
							</ul>
							
						</nav>
					</div>
				</nav>
			</div>
	
<!-- //메뉴바 -->
				
</body>
</html>