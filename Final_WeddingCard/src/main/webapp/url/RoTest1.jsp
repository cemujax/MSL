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
<jsp:param value='11111111' name='groomTel'/>
<jsp:param value='adsf' name='brideName'/>
<jsp:param value='3333' name='brideTel'/>
<jsp:param value='adsf' name='cardContext'/>
<jsp:param value='2016-07-21' name='cardDate'/>
<jsp:param value='10' name='hour'/>
<jsp:param value='00' name='min'/>
<jsp:param value='AM' name='ampm'/>
<jsp:param value='7' name='dDay'/>
<jsp:param value='azdf' name='hallName'/>
<jsp:param value='null' name='hallTel'/>
<jsp:param value='서울 강남구 강남대로 238 (도곡동, 스카이쏠라빌딩)' name='hallLocation'/>
<jsp:param value='401' name='photoBookNo'/>
<jsp:param value='photobook1.jpg`photobook2.jpg`photobook3.jpg`photobook6.JPG`photobook7.JPG`photobook8.JPG`photobook9.JPG' name='photoBookImg'/>
<jsp:param value='`END``END``END``END``END``END`' name='photoBookComment'/>
<jsp:param value='dooly584@gmail.com' name='memberId'/>
<jsp:param value='RoTest1' name='url'/>
<jsp:param value='1434' name='cardNo'/>
<jsp:param value='' name='imgSrc'/>
<jsp:param value='romantic_bride.png' name='imgGroom'/>
<jsp:param value='romantic_groom.png' name='imgBride'/>
<jsp:param value='Romantic' name='templateName'/>
</jsp:include>
</body>
</html>
