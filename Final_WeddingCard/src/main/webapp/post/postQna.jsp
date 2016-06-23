<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

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
<jsp:include page="postComment.jsp"/>
<!-- ===================== Comment End ================= -->

</body>
</html>