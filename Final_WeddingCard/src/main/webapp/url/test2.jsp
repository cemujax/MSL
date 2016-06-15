<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8' isELIgnored='false'%><%@ taglib prefix='c'
	uri='http://java.sun.com/jsp/jstl/core'%><!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Insert title here</title>
</head>
<body><jsp:include page='basicSkin.jsp' flush='true'><jsp:param
			value='슈렉' name='groomName' /><jsp:param value='111' name='groomTel' /><jsp:param
			value='슈미' name='brideName' /><jsp:param value='222' name='brideTel' /><jsp:param
			value='가나다라마바사' name='cardContext' /><jsp:param value='2016-06-25'
			name='cardDate' /><jsp:param value='14' name='hour' /><jsp:param
			value='0' name='min' /><jsp:param value='PM' name='ampm' /><jsp:param
			value='강남홀' name='hallName' /><jsp:param value='강남'
			name='hallLocation' /></jsp:include></body>
</html>