<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8' isELIgnored='false'%><%@ taglib prefix='c'
	uri='http://java.sun.com/jsp/jstl/core'%><!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Insert title here</title>
</head>
<body>
<jsp:include page='basicSkin.jsp' flush='true'>
<jsp:param
			value='가갸가' name='groomName' /><jsp:param value='111' name='groomTel' /><jsp:param
			value='나나나' name='brideName' /><jsp:param value='222' name='brideTel' /><jsp:param
			value='오세요~' name='cardContext' /><jsp:param value='2016-06-30 17 0'
			name='cardDate' /><jsp:param value='17' name='hour' /><jsp:param
			value='0' name='min' /><jsp:param
			value='PM' name='ampm' /><jsp:param value='부산홀' name='hallName' /><jsp:param
			value='부산' name='hallLocation' />
</jsp:include>
			</body>
</html>