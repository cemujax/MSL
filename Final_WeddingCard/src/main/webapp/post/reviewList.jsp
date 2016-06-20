<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>칭찬해요</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
   content="Nuptials Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<!-- <script src="js/jquery-ddorai.js"></script> -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet"
   href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">


<!-- <link
   href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/less/navbar.less"
   rel="stylesheet" type="text/css" media="all" /> -->
<link href="css/style_index.css" rel="stylesheet" type="text/css"
   media="all" />

<!-- <link rel="stylesheet" href="css/chocolat.css" type="text/css"
   media="screen" charset="utf-8"> -->

<link href='//fonts.googleapis.com/css?family=Poiret+One'
   rel='stylesheet' type='text/css'>
<link
   href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
   rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="css/bootstrap.min.css">

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
   src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


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
<script type="text/javascript" charset="utf-8">
		function logout() {
			var f = confirm("로그아웃 하시겠습니까?");
			if (f)
				location.href = "${initParam.root }member.do?command=logout"; //Controller에서 기능으로 연결..
		}
		
	</script>
</head>
<body>

 <c:if test="${sessionScope.mvo == NULL }">
	<c:redirect url="${initParam.root }login/loginregister.jsp"/>
</c:if>
 
   <!-- 메뉴바 -->
<nav class="navbar navbar-inverse" style="background-color: #f8f8f8; border-color: #e7e7e7;">
  <div class="container-fluid">
    <div class="navbar-header" style="margin-top: 10px;font-size: 20px;">
     <!--  <a class="navbar-brand" href="#">Home</a> -->
     <a href="${initParam.root }index.jsp" ><span style="color:#777;">Home</span></a>
    </div>
    
    	<ul class="nav navbar-nav" style=" margin-left:72%;">
				<%-- <li class="active"><a href="${initParam.root }index.jsp"><span>Home</span></a></li> --%>
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
							          <li><a href="${initParam.root }weddingCard.jsp">청첩장만들기</a></li>
							          <li><a href="${initParam.root }./card.do?command=getAllCards">청첩장보기</a></li>
							        </ul>
							      </li>
							      
							       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">포토북<span class="caret"></span></a>
							        <ul class="dropdown-menu">
							          <li><a href="${initParam.root }test.jsp">포토북만들기</a></li>
							          <li><a href="${initParam.root }photoBook.do?command=list">포토북보기</a></li>
							        </ul>
							      </li>
							<li class="lnb_icon5">
								<a href="javascript:logout()" style="width:100%; padding:14px 15px 15px 0px; ">
								<span class="glyphicon glyphicon-log-in"></span> 로그아웃</a>
							</li>
					
						</ul>
  </div>
</nav>
	
	
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