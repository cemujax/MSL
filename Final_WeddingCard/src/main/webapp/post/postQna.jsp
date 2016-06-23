<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="./js/jquery-1.12.3.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#commentArea').hide();
	$('tr[name=commentModifyArea]').hide();
	
	$('#commentHref').click(function() {
		if($('#commentArea').is(':hidden')) {
			$('#commentArea').show();
			$('#commentHref').html("댓글 닫기");
		}
		else {
			$('#commentArea').hide();
			$('#commentHref').html("댓글 보기");
		}
	}); // click
	
});
</script>
<script type="text/javascript">
	function deleteQnA() {

		if(confirm("정말 삭제하시겠습니까?")){
			location.href="${initParam.root }post.do?command=deleteQnA&&postNo="+${pvo.postNo};
		}
	} // deleteQnA
	
	function modifyQnA() {

		if(confirm("정말 수정하시겠습니까?")){
			location.href="${initParam.root }post.do?command=modifyViewQnA&&postNo="+${pvo.postNo};
			/* location.href="postQnaUpdate.jsp?postNo="+${pvo.postNo}; */
		}
	} // modifyQnA
	
	////////////////////////////////////comment
	function modifyComment(cmtNo) {
		if($('#commentModifyArea'+ cmtNo).is(':hidden'))
			$('#commentModifyArea'+ cmtNo).show();
		else 
			$('#commentModifyArea'+ cmtNo).hide();
	} // modifyComment
	
	function deleteComment(cmtNo) {
		if(confirm("정말 삭제하시겠습니까?"))
			deleteRequest(cmtNo);
			
		return;
	}
	
	/////////////////////////////////// ajax
	var xhr;
	
	function writeRequest() {
		if('${mvo.memberId == null}' == "true") {
			alert("로그인이 필요합니다!!");
			return;
		}
		
		xhr = new XMLHttpRequest();
		
		xhr.onreadystatechange = writeCallBack;
		
		xhr.open("post", "comment.do");
		xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		xhr.send("command=write&&content="+ $('#cmtContent').val()+ "&&pno=${requestScope.pvo.postNo}");
	} // writeRequest
	
	function writeCallBack() {
		if (xhr.readyState == 4) {
			if (xhr.status == 200) {
				var jsonData = JSON.parse(xhr.responseText);
				var commentNo = jsonData.pcvo.commentNo;
				var cmtText = "";
				
				cmtText = "<table id='commentDeleteArea"+ commentNo+ "'>"
						+ "<tr>"
						  + "<td>"
						    +"작성자 : "+ jsonData.pcvo.memberVO.memberId+ " | 작성일 : "+ jsonData.pcvo.writeDate
						  + "</td>"
						  + "<td>"
						    + "<button onclick='modifyComment("+ commentNo+ ")'>수정</button>"
						    + "<button onclick='deleteComment("+ commentNo+ ")'>삭제</button>"
						  + "</td>"
						+ "</tr>"
						+ "<tr>"
						  + "<td colspan='2' id='commentContent"+ commentNo+ "'>"+ jsonData.pcvo.content+ "</td>"
						+ "</tr>"
						+ "<tr name='commentModifyArea' id='commentModifyArea"+ commentNo+ "'>"
						  + "<td colspan='2'>"
						    + "<table>"
						    + "<tr>"
						      + "<td colspan='2'>"
						        + "<textarea name='content' id='commentModifyContent"+ commentNo+ "'>"+ jsonData.pcvo.content+ "</textarea>"        
						      + "</td>"
						    + "</tr>"
						    + "<tr>"
						      + "<td colspan='2'>"
						        + "<input type='button' onclick='modifyRequest("+ commentNo+ ")' value='수정'>"
						      + "</td>"
						    + "</tr>"
						    + "</table>"
						  + "</td>"
						+ "</tr>"
						+ "</table>";
						
				if($('#commentWriteArea').val() == '')
					$('#commentWriteArea').append(cmtText);
				else
					$('#commentWriteArea').after(cmtText);
				
				$('#commentModifyArea'+ commentNo).hide();
				
				$('#cmtContent').val('');
				 
			}
		}
	} // writeCallBack
	
	/////////////////////////////// comment
	function modifyRequest(cmtNo) {
		if('${mvo.memberId == null}' == "true") {
			alert("로그인이 필요합니다!!");
			return;
		}
		
		xhr = new XMLHttpRequest();
		
		xhr.onreadystatechange = modifyCallBack;
		
		xhr.open("post", "comment.do");
		xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		xhr.send("command=update&&commentNo="+ cmtNo+ "&&content="+ $('#commentModifyContent'+ cmtNo).val());
	} // modifyRequest
	
	function modifyCallBack() {
		if (xhr.readyState == 4) {
			if (xhr.status == 200) {
				var jsonData = JSON.parse(xhr.responseText);
				
				$('#commentContent'+ jsonData.pcvo.commentNo).html(jsonData.pcvo.content);
				
				$('#commentModifyArea'+ jsonData.pcvo.commentNo).hide();
			}
		}
	} // modifyCallBack
	
	function deleteRequest(cmtNo) {
		xhr = new XMLHttpRequest();
		
		xhr.onreadystatechange = deleteCallBack;
		
		xhr.open("get", "comment.do?command=delete&&commentNo="+ cmtNo);
		xhr.send(null);
	} // deleteRequest
	
	function deleteCallBack() {
		if (xhr.readyState == 4) {
			if (xhr.status == 200) {
				var jsonData = JSON.parse(xhr.responseText);
				
				//$('#commentDeleteArea'+ jsonData.commentNo).hide();
				$('#commentDeleteArea'+ jsonData.commentNo).remove();
			}
		}
	} // deleteCallBack
	
</script>

</head>
<body>
<table cellpadding="5">
<tr>
	<td>
		<table width="550">
		<tr>
			<td>
				글번호 : ${requestScope.pvo.postNo} |
				타이틀 : ${requestScope.pvo.title}
				<hr style="color: #6691BC; border-style: dotted; margin: 0">
			</td>
		</tr>
		<tr>  
			<td>
				작성자 :  ${requestScope.pvo.memberVO.memberId} |
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

		<!-- ===================== Comment Start ================= -->
		<div id="commentHref">댓글 보기</div>
		
		<div id="commentArea">
		<c:if test="${requestScope.commentList != null}">
			<div id="commentWriteArea">
			<c:forEach items="${commentList }" var="cmt">
			
			<table id="commentDeleteArea${cmt.commentNo }">
			<tr>
				<!-- 작성자일때 td 처리-->
				<c:choose>
					<c:when test="${cmt.memberVO.memberId != mvo.memberId }">
						<td colspan="2">
					</c:when>
					<c:otherwise>
						<td>
					</c:otherwise>
				</c:choose>
					작성자 : ${cmt.memberVO.memberId } | 작성일 : ${cmt.writeDate }
				</td>
				
				<!-- 작성자일때 -->
				<c:if test="${cmt.memberVO.memberId == mvo.memberId }">
					<td>
						<button onclick="modifyComment(${cmt.commentNo })">수정</button>
						<button onclick="deleteComment(${cmt.commentNo})">삭제</button>
					</td>
				</c:if>
				
			</tr>
			<tr>
				<td colspan="2" id="commentContent${cmt.commentNo }">
					${cmt.content }
				</td>
			</tr>
			
			<!--############ 댓글 수정 ############ -->
			<tr name="commentModifyArea" id="commentModifyArea${cmt.commentNo }">
			<td colspan="2">
				<table>
				<tr>
					<td colspan="2">
						<textarea name="content" id="commentModifyContent${cmt.commentNo }">${cmt.content }</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" onclick="modifyRequest(${cmt.commentNo })" value="수정">
					</td>
				</tr>
				</table>
			</td>
			</tr>
			</table>
			</c:forEach>
			</div>
		</c:if>
		
		<!-- <form action="comment.do" method="post"> -->
			<!-- <input type="hidden" name="command" value="write"> -->
		<table>
		<tr>
			<td colspan="2">
				<textarea name="content" id="cmtContent"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" onclick="writeRequest()" value="작성">
			</td>
		</tr>
		<!-- </form> -->
		</table>
		
		</div>
		
		<!-- ===================== Comment End ================= -->
		
</body>
</html>