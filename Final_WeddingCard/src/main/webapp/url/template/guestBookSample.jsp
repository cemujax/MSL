<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="url/css/guestBook.css">

<!-- bootStrap  -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!-- bootStrap End -->
<script type="text/javascript" src="./js/jquery-1.12.3.js"></script>
<script src="./js/jquery.form.js"></script>

<script type="text/javascript">
var xhr;

function removeText() {
	document.getElementById("content").value = "";
	document.getElementById("removeText").style.display = 'none';
}

function writeCardComment() {
	
	var content = document.getElementById("content").value;
	var url = '${param.url}';
	
	if(content == ""){
		alert("방명록 내용을 입력해주세요");
		return false;
	}
	if( '${mvo}' == ""){// 로그인 안한경우
		var guest = document.getElementById("guest").value;
		var password = document.getElementById("passwordNoLogin").value;
		
		if(guest == ""){
			alert("작성자를 입력해주세요");
			return false;
		}
		if(password == ""){
			alert("password를 입력해주세요");
			return false;
		}
		
	}else{//회원 글쓰기
		$('input[name=guest]').val('${mvo.name}');
		$('input[name=password]').val('${mvo.password}');
	}
	
	document.guestBookFrm.submit();
	
}//writeComment	


$(document).ready(function() {

	$('#removeText').hide();
	//$('#logout').hide();
	if( '${mvo}' != "")
		 $("#content").attr("placeholder", "회원 방명록쓰기");
	
	$('#content').change(function() {
		if ($(this).val() != "")
			$('#removeText').show();
		if ($(this).val() == "")
			$('#removeText').hide();
	});
	
	$('#login').click(function(){
		 
   		var formData = new FormData(document.guestBookFrm);
		
		$.ajax({
			type:	'post',
			url	:	'member.do?command=login',
			data: formData,
			dataType: 'json',
			contentType: false,
			processData: false,

			 success: function (response) {
				 if(response.result){
					 alert("로그인 성공");
					 location.reload();
				 }
				 else{
					 alert("Id, Password를 확인해주세요!");
					 $('#memberId').val(""); $('#password').val("");
				 }
				
              },
              error: function (jqXHR) {
                console.log('error');
              }
		}); 
		
	});//login
	
	
	$('#logout').click(function(){
		var f = confirm("로그아웃 하시겠습니까?");
		if (f){
			$('input[name=isGuest]').val("true");
			location.href = "member.do?command=logout&&url=${param.url}"; //Controller에서 기능으로 연결..
		}
		
	});//logout
	
});//ready

</script>

</head>
<body>
<form action="./card.do?command=writeCardComment" method="post" name="guestBookFrm">
	<div class="header" >
		<div class="row">
			<div class="col-sm-1"></div>
  			<div class="col-sm-2">
  			<h2><a href="http://localhost:8888/Final_WeddingCard/url/${param.url}.jsp">
          <span class="glyphicon glyphicon-circle-arrow-left" id="back"></span>
        </a></h2></div>
 			 <div class="col-sm-4"><h2 align="center" style="color: white; margin-left: 40%;">GuestBook</h2></div>
		</div>
      	
   </div>
	


	
			<!-- <input type="hidden" name="command" value="writeCardComment"> -->
			<input type="hidden" name="url" value="${param.url}">
			<input type="hidden" name="cardNo" value="${param.cardNo }">
	<!-- 새로운 리뷰 작성 폼 시작 -->
	<div align="center">
		

			<div class="container-fluid text-center">
				<div class="row content">
					<div class="col-sm-2 sidenav">
						<img alt="" src="url/images/user.png" style="width: 40%; height: 40%;"><br>
						<c:choose>
							<c:when test="${sessionScope.mvo == NULL }">
								<input type="text" name="memberId" id="memberId" placeholder="MSL Id" 
								style="width: 80%;"><br>
								<input type="password" name="password" id="password" placeholder="password" 
								style="width: 80%;"><br>
								<button type="button" class="btn btn-info" id="login">MSL login</button>
							</c:when>
							<c:otherwise>
								<button type="button" class="btn btn-info" id="logout">logout</button>
								<input type="hidden" name="guest" value="">
								<input type="hidden" name="password" value="">
							</c:otherwise>
						</c:choose>
					</div>

					<div class="col-sm-6 text-left" style="margin-left: 3%;">
						<div class="write_box">
							<div class="text-box">
								<textarea class="ui-state-disabled" name="content" id="content" rows="5"
									cols="20" placeholder="로그인 없이 방명록 사용이 가능합니다."></textarea>
									<c:if test="${sessionScope.mvo == NULL }">
										<input type="text" name="guest" id="guest" placeholder="작성자" 
										style="WIDTH: 40%; MARGIN-LEFT: 5%;">
										 <input type="password" name="passwordNoLogin" id="passwordNoLogin" 
										 placeholder="password" style="WIDTH: 40%;">
									</c:if>
							</div><!-- text-box -->
							<div class="text-button" >
								<br> <a href="javascript:removeText()"> <span
									class="glyphicon glyphicon-remove" id="removeText"></span>
								</a> <a href="javascript:writeCardComment()" class="btn btn-info btn-lg"> <span
									class="glyphicon glyphicon-pencil" id="writeCardComment"></span>등록
								</a> 
							</div>
						</div><!-- write_box  -->
						
						
						<div class="commentsList" style="margin-top: 30px;">
							<table class="table">
								<c:forEach items="${commentList}" var="comment">
									<tr style="border: 1px solid black;">
										<td rowspan="2" style="width: 100px;" align="center">
											<img alt="" src="url/images/user.png" style="width: 20%; height: 20%;">
										</td>
										<td>${comment.guest} &nbsp;&nbsp;${comment.writeDate}</td>
										
									</tr>
									<tr style="border: 1px solid black;">
										<td>${comment.content}</td>
									</tr>
								</c:forEach>
							</table>

							<p>
						</div>
						<!-- commentsList -->
					</div>
				</div>

			</div>


		<div align="center">
			<a href="${initParam.root }index.jsp">메인으로</a>
			<p>
		</div>
	</div>

</form>
</body>
</html>