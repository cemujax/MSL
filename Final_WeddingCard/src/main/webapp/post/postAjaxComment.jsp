<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	} // deleteComment
	
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
		xhr.send("command=writeAjax&&content="+ $('#cmtContent').val()+ "&&postNo=${requestScope.pvo.postNo}");
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
	
	function modifyRequest(cmtNo) {
		if('${mvo.memberId == null}' == "true") {
			alert("로그인이 필요합니다!!");
			return;
		}
		
		xhr = new XMLHttpRequest();
		
		xhr.onreadystatechange = modifyCallBack;
		
		xhr.open("post", "comment.do");
		xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		xhr.send("command=updateAjax&&commentNo="+ cmtNo+ "&&content="+ $('#commentModifyContent'+ cmtNo).val());
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
		
		xhr.open("get", "comment.do?command=deleteAjax&&commentNo="+ cmtNo);
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
<div id="commentHref">
	댓글 보기
</div>
		
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
  </table>
		
</div>

</body>
</html>