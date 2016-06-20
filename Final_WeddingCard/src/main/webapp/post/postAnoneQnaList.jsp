<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>

  <div class="container" id="cardManage" style="background-image: url('weddingCard/images/cardManage.jpg'); 
          width:100%; height: 360px; background-repeat: no-repeat;">
      <div class="row" style="margin-top: 5%;" align="center">
         <font color="#fff" style="font-size: 90px;">익명 게시판</font>
      </div>
   </div>

<!-- 
	<h2 align="center">익명 게시판</h2> -->
	<p>
		<!--  <table border="2px" align="center" width="650px"> -->
	<div class="container" style="margin-top: 2%;">
		<div class="table-responsive">


			<table class="table table-hover" align="center"">
				<thead>
					<tr>
						<th align="center" width="50%">제목</th>
						<th align="center" width="15%">작성자</th>
						<th align="center" width="15%">작성일</th>
					</tr>
				</thead>
				<c:forEach items="${listVO.list}" var="post">
					<tr>
						<td><a
							href="${initParam.root }post.do?command=getAnoneQnA&&postNo=${post.postNo}">${post.title}</a></td>
						<td>익명</td>
						<td>${post.writeDate }</td>
					</tr>
				</c:forEach>
			</table>
			<p>
		</div>
	</div>





	<c:set value="${listVO.pagingBean}" var="pb"></c:set>

	<div align="center">


		<!-- ================= paging Start ================ -->
		<c:if test="${pb.previousPageGroup}">
			<a
				href="${initParam.root }post.do?command=getAllAnoneQnAs&&postNo=${pb.startPageOfPageGroup-1}">
				이전페이지</a>
		</c:if>

		<c:forEach var="i" begin="${pb.startPageOfPageGroup}"
			end="${pb.endPageOfPageGroup}">
			<c:choose>
				<c:when test="${pb.nowPage != i}">
					<a
						href="${initParam.root }post.do?command=getAllAnoneQnAs&&page=${i}">${i}</a>
				</c:when>
				<c:otherwise>
			${i}
		</c:otherwise>
			</c:choose>
	&nbsp;
</c:forEach>

		<c:if test="${pb.nextPageGroup}">
			<a
				href="./post.do?command=getAllAnoneQnAs&&page=${pb.endPageOfPageGroup +1}">
				다음 페이지</a>
			<br>
		</c:if>
		<!-- ============== paging End ============ -->


		<p>
		<p>
			<%-- 			<a href="${initParam.root }index.jsp">메인으로</a> --%>

			<c:if test="${sessionScope.mvo!=null}">
				<a href="postAnoneQnaWrite.jsp"><input style="width: 100px;"
					type="button" class="btn btn-success pull-right" value="글쓰기"
					id="writeCard"></a>
				<p>
			</c:if>
	</div>

</body>
</html>