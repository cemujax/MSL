<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>글쓰기 . Q&A</title>
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


<link href='//fonts.googleapis.com/css?family=Poiret+One'
   rel='stylesheet' type='text/css'>
<link
   href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
   rel='stylesheet' type='text/css'>



<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
   src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script type="text/javascript">

	function deleteQnA() {

		if(confirm("정말 삭제하시겠습니까?")){
			location.href="${initParam.root }post.do?command=deleteQnA&&postNo="+${pvo.postNo};
		}
	}
	
	function modifyQnA() {

		if(confirm("정말 수정하시겠습니까?")){
			location.href="${initParam.root }post.do?command=modifyViewQnA&&postNo="+${pvo.postNo};
			/* location.href="postQnaUpdate.jsp?postNo="+${pvo.postNo}; */
		}
	}
	
	function logout() {
		var f = confirm("로그아웃 하시겠습니까?");
		if (f)
			location.href = "../member.do?command=logout"; //Controller에서 기능으로 연결..
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
    
    	<ul class="nav navbar-nav" style=" margin-left:70%;">
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
							<!-- <li class="lnb_icon5">
								<a href="javascript:logout()" style="width:100%; padding:14px 15px 15px 0px; ">
								<span class="glyphicon glyphicon-log-in"></span> 로그아웃</a>
							</li> -->
							<li class="lnb_icon5">
								<a href="javascript:logout()" style="width:100%; padding:14px 15px 15px 0px; ">
								<span class="glyphicon glyphicon-log-in"></span> 로그아웃</a>
							</li>
					
						</ul>
  </div>
</nav>
	
	
<!-- //메뉴바 -->

<table cellpadding="5">
		<tr>
		   <td>
		   	    <table width="550">
					<tr>
						<td>글번호 : ${requestScope.pvo.postNo} |
							   타이틀 : ${requestScope.pvo.title}
						<hr style="color: #6691BC; border-style: dotted; margin: 0">
						</td>
					</tr>
					<tr>
						<td>작성자 :  ${requestScope.pvo.memberVO.memberId} |
							작성일시 : ${requestScope.pvo.writeDate}
						</td>
					</tr>
					<tr>
						<td>
						<hr style="color: #6691BC; margin: 0">
						<pre>${requestScope.pvo.content}</pre>					
						</td>
					</tr>
					<tr>
						<td valign="middle">
						<a href="${initParam.root }post.do?command=getAllQnAs">전체글목록</a>
						<!-- 
							현재 로그인한 사람이 자신이 쓴 게시글을 볼때만 버튼이 보여지도록 한다
							로그인한 사람의 id가 글쓴 사람의 id와 일치할때만 보여지도록...
							c:if을 사용하다록 한다.
						 -->
											
						<c:if test="${sessionScope.mvo.memberId == pvo.memberVO.memberId}">
							<input type="button" value="삭제" onclick="deleteQnA()">
							<input type="button" value="수정" onclick="modifyQnA()">
						</c:if>
						
						</td>
					</tr>
				</table> 	
			</td>
		</tr>
	</table>	
</body>
</html>