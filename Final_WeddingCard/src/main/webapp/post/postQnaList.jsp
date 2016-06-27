<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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

		<!--light-box-files-->
	<script type="text/javascript" charset="utf-8">
	/* 	$(function() {
			$('.portfolio-grids a').Chocolat();
		});
		 */
		function logout() {
			var f = confirm("로그아웃 하시겠습니까?");
			if (f)
				location.href = "${initParam.root }member.do?command=logout"; //Controller에서 기능으로 연결..
		}
		
	</script>

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
<c:if test="${sessionScope.mvo == NULL }">
	<c:redirect url="login/loginregister.jsp"/>
</c:if>

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
<h2 align="center">웨딩 QnA</h2><p>
<table class="table">
<thead>
	<tr>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
	</tr>
</thead>	
	<c:forEach items="${listVO.list}" var="post">
		<tr>
			<td><a href="${initParam.root }post.do?command=getQnA&&postNo=${post.postNo}">${post.title}</a></td>
			<td>${post.memberVO.memberId }</td>
			<td>${post.writeDate }</td>
		</tr>
	</c:forEach>
</table><p>

<c:set value="${listVO.pagingBean}" var="pb"></c:set>

<div align="center">
<a href="${initParam.root }index.jsp" >메인으로</a>
<c:if test="${sessionScope.mvo!=null}">
	<a href="post/postQnaWrite.jsp">글쓰기</a><p>
</c:if>

<!-- ===================== 페이징 Start ================== -->
<c:if test="${pb.previousPageGroup}">
	<a href="${initParam.root }post.do?command=getAllQnAs&&postNo=${pb.startPageOfPageGroup-1}">
	이전페이지</a>
</c:if>

<c:forEach  var="i" 
	begin="${pb.startPageOfPageGroup}" end="${pb.endPageOfPageGroup}">
	<c:choose>
		<c:when test="${pb.nowPage != i}">
			<a href="${initParam.root }post.do?command=getAllQnAs&&page=${i}">${i}</a>
		</c:when>
		<c:otherwise>
			${i}
		</c:otherwise>
	</c:choose>
	&nbsp;
</c:forEach>

<c:if test="${pb.nextPageGroup}">
	<a href="${initParam.root }post.do?command=getAllQnAs&&page=${pb.endPageOfPageGroup +1}">
	다음 페이지</a><br>
</c:if>
<!-- ========================= 페이징 End ================== -->

</div>

</body>
</html>