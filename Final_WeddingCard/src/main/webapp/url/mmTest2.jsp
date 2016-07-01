<%@ page language='java' contentType='text/html; charset=UTF-8'
pageEncoding='UTF-8' isELIgnored='false'%><%@ taglib prefix='c'
 uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %><!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Insert title here</title></head>
<body>
<jsp:include page='template/Fall In Love.jsp' flush='true'>
<jsp:param value='ㅅㅂ' name='groomName'/>
<jsp:param value='11111' name='groomTel'/>
<jsp:param value='ㅅㄹ' name='brideName'/>
<jsp:param value='22222' name='brideTel'/>
<jsp:param value='ㅁㄴㅇㄻㄴㅇㄹ' name='cardContext'/>
<jsp:param value='2016-07-13' name='cardDate'/>
<jsp:param value='10' name='hour'/>
<jsp:param value='00' name='min'/>
<jsp:param value='AM' name='ampm'/>
<jsp:param value='12' name='dDay'/>
<jsp:param value='강남홀1111' name='hallName'/>
<jsp:param value='강남' name='hallLocation'/>
<jsp:param value='' name='photoBookNo'/>
<jsp:param value='' name='photoBookImg'/>
<jsp:param value='' name='photoBookComment'/>
<jsp:param value='1@1' name='memberId'/>
<jsp:param value='mmTest2' name='url'/>
<jsp:param value='0' name='cardNo'/>
</jsp:include>
</body>
</html>
