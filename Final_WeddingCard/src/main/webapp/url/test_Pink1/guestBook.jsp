<%@ page language='java' contentType='text/html; charset=UTF-8'
pageEncoding='UTF-8' isELIgnored='false'%><%@ taglib prefix='c'
 uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %><!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Insert title here</title></head>
<body>
<jsp:include page='../template/guestBookSample.jsp' flush='true'>
<jsp:param value='1432' name='cardNo'/>
<jsp:param value='ekek@naver.com' name='memberId'/>
</jsp:include>
</body>
</html>
