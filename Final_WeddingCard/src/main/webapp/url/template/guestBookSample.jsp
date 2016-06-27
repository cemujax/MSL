<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 align="center"> 방명록</h2>

<h3>cardNo: ${param.cardNo }</h3>

<!-- 새로운 리뷰 작성 폼 시작 -->
<div align="center">
<form action="./card.do" method="post">
<input type="hidden" name="command" value="writeCardComment">
<input type="hidden" name="url" value="${param.url}">

작성자 :: <input type="text" name="guest" id="guest"><br>
password <input type="password" name="password" id="password"><br>
content :: <textarea rows="10" cols="20" name="content" id="content"></textarea><br>
url:: ${param.url}
<input type="submit" value="작성하기"><p>




</form>

	<!-- 새로운 리뷰 작성 폼 끝 -->
<br><br><br><br>
<table class="table">
<thead>
	<tr>
		<th>내용</th>
		<th>작성자</th>
		<th>작성일</th>
	</tr>
</thead>	
	<c:forEach items="${commentList}" var="comment" >
		<tr>
			<%-- <td><a href="${initParam.root}reviewComment.do?command=getQnA&&postNo=${post.postNo}">${post.content}</a></td> --%>
			<td>${comment.content}</td>
			<td>${comment.guest}</td>
			<td>${comment.writeDate}</td>
		</tr>
	</c:forEach>
</table><p>
<div align="center">
<a href="${initParam.root }index.jsp" >메인으로</a><p>
</div>
</div>



</body>
</html>