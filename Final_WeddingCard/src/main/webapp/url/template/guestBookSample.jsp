<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="url/css/guestBook.css">
<style type="text/css">

/* 320px 갤럭시 5 이승현 */
@media( max-width: 320px ){
	#mslImg{
		width: 40px;
   		 height: 40px;
   		 margin: 0.5rem 0;
	}
	#userImg{
		width: 40px;
    	height: 40px;
    	margin: 0.5rem 0;
	}
	.commentArea{
		 max-width: 250px;
   		 max-height: 80px;
	}
}
/* 360px 갤럭시 5 이승현 */
@media( max-width: 360px ){
	#mslImg{
		width: 40px;
   		 height: 40px;
   		 margin: 0.5rem 0;
	}
	#userImg{
		width: 40px;
    	height: 40px;
    	margin: 0.5rem 0;
	}
	.commentArea{
		 max-width: 270px;
   		 max-height: 80px;
	}
}


/* 375px 아이폰6 송지현 */
@media( max-width: 375px ){
	#mslImg{
		width: 40px;
   		 height: 40px;
   		 margin: 0.5rem 0;
	}
	#userImg{
		width: 40px;
    	height: 40px;
    	margin: 0.5rem 0;
	}
	.commentArea{
		 max-width: 280px;
   		 max-height: 80px;
	}
} /* // 송지현 */

/* 411px nexus5X 황희 오빠 */
@media( max-width: 411px ){
	#mslImg{
		width: 40px;
   		 height: 40px;
   		 margin: 0.5rem 0;
	}
	#userImg{
		width: 40px;
    	height: 40px;
    	margin: 0.5rem 0;
	}
	.commentArea{
		 max-width: 310px;
   		 max-height: 80px;
	}
} /* // 황희 오빠 */

/* 435px nexus6P 김진선 */
@media( max-width: 435px ){
	#mslImg{
		width: 40px;
   		 height: 40px;
   		 margin: 0.5rem 0;
	}
	#userImg{
		width: 40px;
    	height: 40px;
    	margin: 0.5rem 0;
	}
	.commentArea{
		 max-width: 330px;
   		 max-height: 80px;
	}
} /* // 김진선 */


</style>

<!-- bootStrap  -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
<!-- bootStrap End -->
<script type="text/javascript" src="./js/jquery-1.12.3.js"></script>
<script src="./js/jquery.form.js"></script>

<script type="text/javascript">
	var xhr;
	var checkFlag;

	function removeText() {
		document.getElementById("content").value = "";
		document.getElementById("removeText").style.display = 'none';
	}
	
	function writeCardComment() {
		var content = document.getElementById("content").value;
		var url = '${param.url}';
		
		if ('${mvo}' == "") {// 비로그인 글쓰기
			var guest = document.getElementById("guest").value;
			var password = document.getElementById("passwordNoLogin").value;

			if (guest == "") {
				alert("작성자를 입력해주세요");
				document.getElementById("guest").focus();
				return false;
			}
			if (password == "") {
				alert("password를 입력해주세요");
				document.getElementById("passwordNoLogin").focus();
				return false;
			}
			
		} else {//회원 글쓰기
			$('input[name=guest]').val('`MSL User`'+'${mvo.name}');
			$('input[name=password]').val('${mvo.password}');
		}
		if (content == "") {
			alert("방명록 내용을 입력해주세요");
			document.getElementById("content").focus();
			return false;
		}
		
		document.guestBookFrm.submit();
	}//writeComment	

	function deleteCommentByUser(commentNo) {
		if(confirm("정말 삭제하시겠습니까?"))
			location.href="./card.do?command=deleteCardCommentByOwner&&url=${param.url}&&commentNo="+commentNo;
	}
	function deleteComment(commentNo) {
		if( $('#checkArea'+commentNo).css("display") != "none" ){
			$('#checkArea'+commentNo).hide();
			$('#guestName'+commentNo).val("");
			$('#passwordCheck'+commentNo).val("");
			
		}else{
			$('#checkArea'+commentNo).show();
		}
	}
	
	function writerCheck(commentNo){
		var guestName = $('#guestName'+commentNo).val();
		var passwordCheck = $('#passwordCheck'+commentNo).val();
		if (guestName == "") {
			alert("작성자를 입력해주세요");
			return false;
		}
		if (passwordCheck == "") {
			alert("password를 입력해주세요");
			return false;
		}
		xhr = new XMLHttpRequest();
		xhr.onreadystatechange = callback;
		xhr.open("post", "./card.do?");
		xhr.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded;charset=utf-8");
		xhr.send("command=writerCheck&&url=${param.url}&&guestName="+guestName
				+"&&passwordCheck="+passwordCheck+"&&comNo="+commentNo);
	}
	function callback() {
		if (xhr.readyState == 4) {
			if (xhr.status == 200) {
				var jsonData = JSON.parse(xhr.responseText); //true, false

					if (jsonData.comNo != "") {// 
						if(confirm("정말 삭제하시겠습니까?"))
							location.href="./card.do?command=deleteCardCommentByOwner&&url=${param.url}&&commentNo="+jsonData.comNo;
					} else {
						alert("작성자, password를 다시 확인해주세요");
					}
			}
		}
	}//callback
	
	
	$(document).ready(function() {
		$('td[id*=checkArea]').hide();
		//$('class*=checkArea').hide();
		
		$('#removeText').hide();
		//$('#logout').hide();
		if ('${mvo}' != "")
			$("#content").attr("placeholder", "회원 방명록쓰기(100자 제한)");

		$('#content').on('keyup',function() {
			if ($(this).val() != "")
				$('#removeText').show();
			if ($(this).val() == "")
				$('#removeText').hide();
			
			if($(this).val().length > 200) 
		           $(this).val($(this).val().substring(0, 200));
		});
		
		
		
		
		$('#login').click(function() {

			var formData = new FormData(document.guestBookFrm);

			$.ajax({
				type : 'post',
				url : 'member.do?command=login',
				data : formData,
				dataType : 'json',
				contentType : false,
				processData : false,

				success : function(response) {
					if (response.result) {
						alert("로그인 성공");
						location.reload();
					} else {
						alert("Id, Password를 확인해주세요!");
						$('#memberId').val("");
						$('#password').val("");
					}

				},
				error : function(jqXHR) {
					console.log('error');
				}
			});

		});//login

		$('#logout').click(function() {
			var f = confirm("로그아웃 하시겠습니까?");
			if (f) {
				$('input[name=isGuest]').val("true");
				location.href = "member.do?command=logout&&url=${param.url}"; //Controller에서 기능으로 연결..
			}

		});//logout

	});//ready
</script>

</head>
<body>
	<form action="./card.do?command=writeCardComment" method="post"
		name="guestBookFrm">
		<div class="header">
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-xs-2 col-sm-2">
					<h2>
					<!-- For windows -->
				<%-- 		<a
							href="http://localhost:8888/Final_WeddingCard/url/${param.url}.jsp">
							<span class="glyphicon glyphicon-circle-arrow-left" id="back"></span>
						</a> --%>
						
						<!-- For linux remote -->
						<a
							href="http://mysweetlove.org/Final_WeddingCard/url/${param.url}.jsp">
							<span class="glyphicon glyphicon-circle-arrow-left" id="back"></span>
						</a>
						
					</h2>
				</div>
				<div class="col-xs-5 col-sm-4">
					<h2 align="center" style="color: white; margin-left: 40%;">GuestBook</h2>
				</div>
			</div>

		</div>


		<!-- <input type="hidden" name="command" value="writeCardComment"> -->
		<input type="hidden" name="url" value="${param.url}"> <input
			type="hidden" name="cardNo" value="${param.cardNo }">
		<!-- 새로운 리뷰 작성 폼 시작 -->
		<div align="center">


			<div class="container-fluid text-center">
				<div class="row content">
					<div class="col-sm-2 sidenav">
						
						<c:choose>
							<c:when test="${sessionScope.mvo == NULL }">
								<input type="text" name="memberId" id="memberId"
									placeholder="MSL Id" style="width: 80%;">
								<br>
								<input type="password" name="password" id="password"
									placeholder="password" style="width: 80%;">
								<br>
								<button type="button" class="btn btn-info" id="login">MSL
									login</button>
							</c:when>
							<c:otherwise>
								<img alt="" src="${initParam.root}img/logo_02.png" style="width: 40%; height: 40%;"><br>
								${mvo.name}님
								<button type="button" class="btn btn-info" id="logout">logout</button>
								<input type="hidden" name="guest" value="">
								<input type="hidden" name="password" value="">
							</c:otherwise>
						</c:choose>
					</div>

					<div class="col-sm-6 text-left" style="margin-left: 3%;">
						<div class="write_box">
							<div class="text-box">
								<c:if test="${sessionScope.mvo == NULL }">
									<input type="text" name="guest" id="guest" placeholder="작성자"
										style="WIDTH: 48%; ">
									<input type="password" name="passwordNoLogin"
										id="passwordNoLogin" placeholder="password"
										style="WIDTH: 50%;">
								</c:if>
								<textarea class="ui-state-disabled" name="content" id="content"
									rows="5" cols="20" placeholder="로그인 없이 방명록 사용이 가능합니다(100자 제한)"></textarea>
							</div>
							<!-- text-box -->
							<div class="text-button">
								<br> <a href="javascript:removeText()"> <span
									class="glyphicon glyphicon-remove" id="removeText"></span>
								</a> <a href="javascript:writeCardComment()"
									class="btn btn-info btn-lg"> <span
									class="glyphicon glyphicon-pencil" id="writeCardComment"></span>등록
								</a>
							</div>
						</div>
						<!-- write_box  -->


						<div class="commentsList" style="margin-top: 30px;">
							<table class="table" style="border: solid 1px black;" >
								<c:forEach items="${commentList}" var="comment">
								
									<c:set var="guest" value="${comment.guest}"/>
									<c:set var="memberName" value="${fn:substringAfter(guest, '`MSL User`')}"/>
									<c:set var="cDate" value="${fn:split(comment.writeDate, ':') }"/>
									
									<tr style="border: 1px solid black;">
										<c:choose>
											<c:when test="${fn:contains(guest, '`MSL User`')}">
												<td rowspan="3" style="width: 15%; vertical-align: middle;" align="center" class="imgArea" >
												<img alt="" src="${initParam.root}img/logo_02.png" id="mslImg"></td>
												<td>${memberName}</td>
											</c:when>
											<c:otherwise>
												<td rowspan="3" style="width: 15%; vertical-align: middle;" align="center" class="imgArea">
												<img alt="" src="${initParam.root}url/img/p3.png" id="userImg"></td>
												<td>${comment.guest}</td>
											</c:otherwise>
										</c:choose>
										<td id="cardDate">&nbsp;${cDate[0]}:${cDate[1]}
										&nbsp;
										<c:choose>
											<c:when test="${mvo != null }">
												<c:if test="${mvo.memberId == param.memberId }">
													<a href="javascript:deleteCommentByUser(${comment.cardCommentNo})"><span class="glyphicon glyphicon-trash"></span></a>
												</c:if>
												<c:if test="${ mvo.name == memberName && mvo.password == comment.password && mvo.memberId != param.memberId}">
													<a href="javascript:deleteCommentByUser(${comment.cardCommentNo})"><span class="glyphicon glyphicon-trash"></span></a>
												</c:if>
											</c:when>
											<c:otherwise>
												<c:if test="${!fn:contains(guest, '`MSL User`') }">
													<a href="javascript:deleteComment(${comment.cardCommentNo})"><span class="glyphicon glyphicon-trash"></span></a>
												</c:if>
											</c:otherwise>
										</c:choose>
										</td>

									</tr>
									<tr style="border: 1px solid black;">
										<td class="txtArea" colspan="2">
										<pre class="commentArea">${comment.content}</pre></td>
									</tr>
									<tr >
										<td colspan="2" class="checkArea${comment.cardCommentNo}" id="checkArea${comment.cardCommentNo}">
											<input type="text" name="guestName" id="guestName${comment.cardCommentNo}" placeholder="작성자"
										style="width: 30%; ">
									<input type="password" name="passwordCheck"
										id="passwordCheck${comment.cardCommentNo}" placeholder="password"
										style="WIDTH: 30%;">&nbsp;&nbsp;&nbsp;
										<input type="button" onclick ="writerCheck(${comment.cardCommentNo})" value="확인">
										</td>
											
	  								</tr>
								</c:forEach>
							</table>

							<p>
						</div>
						<!-- commentsList -->
					</div>
				</div>

			</div>


		</div>

	</form>
</body>
</html>