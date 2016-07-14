<%@ page language='java' contentType='text/html; charset=UTF-8'
pageEncoding='UTF-8' isELIgnored='false'%><%@ taglib prefix='c'
 uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %><!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Insert title here</title></head>
<body>
<jsp:include page='template/Romantic.jsp' flush='true'>
<jsp:param value='asdf' name='groomName'/>
<jsp:param value='01011111111' name='groomTel'/>
<jsp:param value='asdf' name='brideName'/>
<jsp:param value='01022222222' name='brideTel'/>
<jsp:param value='asdf<br>asdfasdf' name='cardContext'/>
<jsp:param value='2016-07-23' name='cardDate'/>
<jsp:param value='10' name='hour'/>
<jsp:param value='00' name='min'/>
<jsp:param value='AM' name='ampm'/>
<jsp:param value='9' name='dDay'/>
<jsp:param value='adsf' name='hallName'/>
<jsp:param value='0626818504' name='hallTel'/>
<jsp:param value='서울 강남구 강남대로 238 (도곡동, 스카이쏠라빌딩)' name='hallLocation'/>
<jsp:param value='' name='photoBookNo'/>
<jsp:param value='' name='photoBookImg'/>
<jsp:param value='' name='photoBookComment'/>
<jsp:param value='pcz8282@nate.com' name='memberId'/>
<jsp:param value='roTest2' name='url'/>
<jsp:param value='1431' name='cardNo'/>
<jsp:param value='' name='imgSrc'/>
<jsp:param value='romantic_groom.png' name='imgGroom'/>
<jsp:param value='romantic_bride.png' name='imgBride'/>
<jsp:param value='Romantic' name='templateName'/>
</jsp:include>
</body>
</html>
