<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">

<title>Insert title here</title>
<style type="text/css">
.postCommentView {
	color: rgb(51, 51, 51);
	font-family: "Roboto", sans-serif;
	margin: 0px 0px 10px;
	padding: 0px 0px 5px;
	font-size: 20px;
	font-weight: 500;
	border-bottom-color: rgb(51, 51, 51);
	border-bottom-width: 1px;
	border-bottom-style: solid;
	display: inline-block;
	position: relative;
}

.commentArea :first-child.area {
	border-top: 0px;
	margin-top: 10px;
	padding-top: 0px;
}

.commentArea .area{
	border-top: 1px solid #eee;
	margin: 15px;
	padding: 7px 0px 0px;
}

.area-heading {
	margin: 0 0 5px;
}

.commentMemberId {
	color: rgb(51, 51, 51);
}

.commentWriteDate {
	color: #777;
	font-size: 11px;
	margin-left: 10px;
}

.pull-right {
	float: right;
	float: right!important;
	font-size: 11px;
}

.text-muted {
	color: #777;
	cursor: pointer;
}

.area-content {
	margin-top: 8px;
}

.formPanel {
	padding: 15px;
}

.formContent {
	padding: 5px;
	color: #555;
	border: 1px solid #ccc;
}

.comment-submit-btn {
	font-family: "Roboto", sans-serif;
    border-radius: 2px;
    border: 1px solid transparent;
    font-weight: normal;
    vertical-align: middle;
    white-space: nowrap;
    cursor: pointer;
    -ms-user-select: none;
    -webkit-user-select: none;
    -moz-user-select: none;
    -o-user-select: none;
    user-select: none;
    
    display: inline-block;
    text-align: center;

	padding: 5px 10px;
	font-size: 12px;
	line-height: 1.5;
}

.comment-submit-btn-color {
	border: 1px solid #D7D7D7;
	color: #000;
	background-color: #D7D7D7;
}

.comment-submit-btn-color:hover {
	border-color: rgb(213, 7, 15);
	color: rgb(255, 255, 255);
	background-color: rgb(213, 7, 15);
}

</style>

<script type="text/javascript" src="./js/jquery-1.12.3.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('div[id*=commentModifyArea]').hide();
});

	function modifyComment(cmtNo) {
		if($('#commentModifyArea'+ cmtNo).is(':hidden')) {
			$('#content'+ cmtNo).hide();
			$('#commentModifyArea'+ cmtNo).show();
		}
		else { 
			$('#commentModifyArea'+ cmtNo).hide();
			$('#content'+ cmtNo).show();
		}
	} // modifyComment
	
	function deleteComment(cmtNo) {
		if(confirm("정말 삭제하시겠습니까?"))
			location.href="comment.do?command=delete&&commentNo="+ cmtNo+ "&&postNo=${requestScope.pvo.postNo}&&page=${param.page}";            
			
			
		return;
	} // deleteComment

</script>
</head>
<body>
<div class="postCommentView">
	Comments
</div>

	
<section class="commentArea" style="background: #fff5f5;">
<c:if test="${requestScope.commentList != null}">
  <c:forEach items="${commentList }" var="cmt">	
 	<div class="area">
	  <div class="area-heading">
		<b><span class="commentMemberId">익명</span></b>
		<span class="commentWriteDate">
			<i class="fa fa-clock-o" aria-hidden="true"></i>
			<c:set var="commentDate" value="${fn:split(cmt.writeDate, ' ') }"/>
			<c:set var="commentTime" value="${fn:split(commentDate[1], ':') }"/>
			${commentDate[0] } ${commentTime[0] }:${commentTime[1] }
		</span>
		<span class="pull-right">
		  <!-- 작성자일때 -->
		  <c:if test="${cmt.memberVO.memberId == mvo.memberId }">
			<td>
			  <a class="text-muted" onclick="modifyComment(${cmt.commentNo})">수정</a>
			  <a class="text-muted" onclick="deleteComment(${cmt.commentNo})">삭제</a>
			</td>
		  </c:if>
		</span>
	  </div>
	  
	  <div class="area-content">
	  	<div id="content${cmt.commentNo }">
			${cmt.content }
	  	</div>
		
		<div class="formPanel" id="commentModifyArea${cmt.commentNo }">
		<form action="${initParam.root }comment.do" method="post">
		  <input type="hidden" name="command" value="update">
		  <input type="hidden" name="commentNo" value="${cmt.commentNo }">
		  <input type="hidden" name="postNo" value="${requestScope.pvo.postNo}">
		  <input type="hidden" name="page" value="${param.page }">
		  <input type="hidden" name="return" value="getQnA">
		  
		  <textarea class="formContent" name="content" maxlength="10000" rows="5" required="required" title="내용" style="margin: 0px -1px 0px 0px; width: 680px; height: 132px;">${cmt.content }</textarea>       
		  <!-- <div> -->
		  	<button class="comment-submit-btn comment-submit-btn-color" type="submit"><b>✔ 수정</b></button>
		  <!-- </div> -->
		</form>
		</div>
	  </div>
	</div>
  </c:forEach>
	
  </c:if>
  
  <form action="${initParam.root }comment.do" method="post">
	<input type="hidden" name="command" value="write">
	<input type="hidden" name="postNo" value="${requestScope.pvo.postNo}">
	<input type="hidden" name="page" value="${param.page }">
	<input type="hidden" name="return" value="getQnA">
		  
	<textarea class="formContent" name="content" maxlength="10000" rows="5" required="required" title="내용" style="margin: 0px -1px 0px 0px; width: 680px; height: 132px;">${cmt.content }</textarea>       

  <button class="comment-submit-btn comment-submit-btn-color" type="submit">
   <b>✔ 작성</b></button>
  
  </form>
		
</section>

</body>
</html>