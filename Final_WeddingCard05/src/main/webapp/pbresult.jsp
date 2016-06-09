<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b>LIST</b><p>
<c:forEach items="${pbList}" var="i" varStatus="vs">
	<a href="photoBook.do?command=detail&&no=${i.bookNo }">${vs.count}. ${i.bookName}</a><p>
</c:forEach>

</body>
</html>