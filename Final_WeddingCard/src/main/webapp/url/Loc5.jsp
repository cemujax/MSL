<%@ page language='java' contentType='text/html; charset=UTF-8'
pageEncoding='UTF-8' isELIgnored='false'%><%@ taglib prefix='c'
 uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %><!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Insert title here</title></head>
<body>
<jsp:include page='template/Garden Wedding.jsp' flush='true'>
<jsp:param value='ㅁㄴㅇㄹ' name='groomName'/>
<jsp:param value='111' name='groomTel'/>
<jsp:param value='ㅁㄴㅇㄹ' name='brideName'/>
<jsp:param value='111' name='brideTel'/>
<jsp:param value='ㅁㄴㅇㄹ<br>ㅁㄴㅇㄻㄴㅇㄹ' name='cardContext'/>
<jsp:param value='2016-07-23' name='cardDate'/>
<jsp:param value='10' name='hour'/>
<jsp:param value='00' name='min'/>
<jsp:param value='AM' name='ampm'/>
<jsp:param value='9' name='dDay'/>
<jsp:param value='ㅇㄹ' name='hallName'/>
<jsp:param value='111' name='hallTel'/>
<jsp:param value='서울 강남구 강남대로 238 (도곡동, 스카이쏠라빌딩)' name='hallLocation'/>
<jsp:param value='380' name='photoBookNo'/>
<jsp:param value='msl.png' name='photoBookImg'/>
<jsp:param value='ㅋㅋㅋ' name='photoBookComment'/>
<jsp:param value='1@1' name='memberId'/>
<jsp:param value='Loc5' name='url'/>
<jsp:param value='1410' name='cardNo'/>
<jsp:param value='' name='imgSrc'/>
<jsp:param value='msl.png' name='imgGroom'/>
<jsp:param value='g1.jpg' name='imgBride'/>
<jsp:param value='Garden Wedding' name='templateName'/>
</jsp:include>
</body>
</html>
