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

ID:${mvo.memberId}<br>
이름:${mvo.name}<br>
<c:forEach items="${cardList}" var="card">
	url:${card.url} &nbsp;&nbsp;
	예식장: ${card.hallName} &nbsp;&nbsp;
	예식위치: ${card.hallLocation}&nbsp;&nbsp;<br>
</c:forEach>
</body>
</html>