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
<jsp:param value='ㄴㅇㅁㄹ' name='groomName'/>
<jsp:param value='11' name='groomTel'/>
<jsp:param value='ㅁㄴㅇㄹ' name='brideName'/>
<jsp:param value='22' name='brideTel'/>
<jsp:param value='ㅁㄴㅇㄹ' name='cardContext'/>
<jsp:param value='2016-07-13' name='cardDate'/>
<jsp:param value='10' name='hour'/>
<jsp:param value='00' name='min'/>
<jsp:param value='AM' name='ampm'/>
<jsp:param value='2' name='dDay'/>
<jsp:param value='ㅁㄴㅇㄹ' name='hallName'/>
<jsp:param value='null' name='hallLocation'/>
<jsp:param value='' name='photoBookNo'/>
<jsp:param value='' name='photoBookImg'/>
<jsp:param value='' name='photoBookComment'/>
<jsp:param value='pcp8282' name='memberId'/>
<jsp:param value='1123' name='url'/>
<jsp:param value='1354' name='cardNo'/>
<jsp:param value='' name='imgSrc'/>
<jsp:param value='' name='imgGroom'/>
<jsp:param value='' name='imgBride'/>
</jsp:include>
</body>
</html>
