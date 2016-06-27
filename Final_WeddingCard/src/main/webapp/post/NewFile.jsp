<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 새로운 리뷰 작성 폼 시작 -->
<div align="center">
<c:if test="${sessionScope.mvo!=null}">
<%-- <form action="../reviewComment.do" method="post">
<input type="hidden" name="command" value="writeReviewComment">
작성자 :: <input type="text" name="name" value="${mvo.name}" readonly="readonly">
<!-- content :: <input type="text" name="content"> -->
<input type="submit" value="작성하기">
</form> --%>

<form action="../reviewComment.do" method="get">
<input type="hidden" name="command" value="writeReviewComment">
<input type="submit" value="전송">
</form>
</c:if>
</div>


</body>
</html>