<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

   <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Poiret+One" rel='stylesheet' type='text/css'><link href='https://fonts.googleapis.com/css?family=Dosis' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Orbitron' rel='stylesheet' type='text/css'>

    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">

  <script src="js/jquery.js"></script> 
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.isotope.min.js"></script>
  <script src="js/jquery.prettyPhoto.js"></script>
  <script src="js/main.js"></script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<script type="text/javascript">
	function logout() {
		var f = confirm("로그아웃 하시겠습니까?");
		if (f)
			location.href = "member.do?command=logout"; //Controller에서 기능으로 연결..
	}
</script>
</head>
<body>


<nav class="navbar navbar-inverse" >
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">커뮤니티<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">익명게시판</a></li>
          <li><a href="#">게시판</a></li>
          <li><a href="#">칭찬해요</a></li>
        </ul>
      </li>
      
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">청첩장<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="weddingCard.jsp">청첩장만들기</a></li>
          <li><a href="./card.do?command=getAllCards">청첩장보기</a></li>
        </ul>
      </li>
      
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">포토북<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="test.jsp">포토북만들기</a></li>
          <li><a href="photoBook.do?command=list">포토북보기</a></li>
        </ul>
      </li>
    </ul>
    
     <ul class="nav navbar-nav navbar-right">
     <c:choose>
		<c:when test="${sessionScope.mvo==null}">
		<li><a href="loginregister.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
     	<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      	</c:when>
      <c:otherwise>
      <li><a href="javascript:logout()"><span class="glyphicon glyphicon-log-in"></span>로그아웃</a></li>
      
      </c:otherwise>
      	</c:choose>
    </ul>
    
  </div>
</nav>

 <div class="container" >
    <img alt="" src="img/222.jpg" style="margin-top: 0px; padding-top: 0px; margin-left: 220px;">
  </div>

<%-- <c:choose>
 <c:when test="${sessionScope.mvo==null}"> 
 <section id="login"> 
<c:import url="login.jsp"/>

</section>
</c:when>
<c:otherwise>
		${sessionScope.mvo.name} 님은 로그인 상태입니다..<br><br>
		<a href="javascript:logout()">로그아웃</a><p><hr>
		</c:otherwise>
</c:choose>
 --%>

<%-- 
<section id="login">
	<c:choose>
		<c:when test="${sessionScope.mvo==null}"> 
			<!-- <form method="post" action="member.do">
				<input type="hidden" name="command" value="login">
				ID :<input type="text" name="memberId"><p>
				PASS :<input type="password" name="password"><p>
				<input type="submit" value="로그인">
			</form><p> -->
			<c:import url="login.jsp"/>
		 </c:when>
		<c:otherwise>
		${sessionScope.mvo.name} 님은 로그인 상태입니다..<br><br>
		<a href="javascript:logout()">로그아웃</a><p><hr>
		<a href="board/write.jsp"><img alt="게시판 글쓰기" src="img/write_btn.jpg" border="0"></a>
		</c:otherwise>
	</c:choose>
</section> --%>

<!-- <a href="board.do?command=list"><img alt="게시판 목록" src="img/list_btn.jpg" border="0"></a>
 -->
</body>
</html>




























