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
<h2 align="center">목록</h2><p>
<table border="2px" align="center" width="650px">
	<tr>
		<th width="10%">번호</th>
		<th width="50%">제목</th>
		<th width="15%">작성자</th>
		<th width="15%">작성일</th>
	</tr>
	<c:forEach items="${listVO.list}" var="post">
		<tr>
			<td>${post.postNo }</td>
			<td><a href="./post.do?command=getAnoneQnA&&postNo=${post.postNo}">${post.title}</a></td>
			<td>${post.memberVO.memberId }</td>
			<td>${post.writeDate }</td>
		</tr>
	</c:forEach>
</table><p>

<c:set value="${listVO.pagingBean}" var="pb"></c:set>

<div align="center">
<a href="index.jsp" >메인으로</a>
<c:if test="${sessionScope.mvo!=null}">
<a href="postAnoneQnaWrite.jsp">글쓰기</a><p>
</c:if>
<c:if test="${pb.previousPageGroup}">
	<a href="./post.do?command=getAllQnAs&&postNo=${pb.startPageOfPageGroup-1}">
	이전페이지</a>
</c:if>

<!--  -->
<c:forEach  var="i" 
	begin="${pb.startPageOfPageGroup}" end="${pb.endPageOfPageGroup}">
	<c:choose>
		<c:when test="${pb.nowPage != i}">
			<a href="./post.do?command=getAllQnAs&&page=${i}">${i}</a>
		</c:when>
		<c:otherwise>
			${i}
		</c:otherwise>
	</c:choose>
	&nbsp;
</c:forEach>
<!--  -->

<c:if test="${pb.nextPageGroup}">
	<a href="./post.do?command=getAllQnAs&&page=${pb.endPageOfPageGroup +1}">
	다음 페이지</a><br>
</c:if>
</div>

</body>
</html>