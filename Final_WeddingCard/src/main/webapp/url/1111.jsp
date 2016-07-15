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
<jsp:param value='ㅁㅁㅁ' name='groomName'/>
<jsp:param value='01088888888' name='groomTel'/>
<jsp:param value='ㅇㅁㅋㅋ' name='brideName'/>
<jsp:param value='01099999999' name='brideTel'/>
<jsp:param value='수정해봄' name='cardContext'/>
<jsp:param value='2016-07-26' name='cardDate'/>
<jsp:param value='10' name='hour'/>
<jsp:param value='00' name='min'/>
<jsp:param value='AM' name='ampm'/>
<jsp:param value='11' name='dDay'/>
<jsp:param value='식장' name='hallName'/>
<jsp:param value='05555555' name='hallTel'/>
<jsp:param value='서울 강남구 일원로 7 (일원동, 중동고등학교)' name='hallLocation'/>
<jsp:param value='401' name='photoBookNo'/>
<jsp:param value='photobook1.jpg`photobook2.jpg`photobook3.jpg`photobook6.JPG`photobook7.JPG`photobook8.JPG`photobook9.JPG' name='photoBookImg'/>
<jsp:param value='`END``END``END``END``END``END`' name='photoBookComment'/>
<jsp:param value='dooly584@gmail.com' name='memberId'/>
<jsp:param value='1111' name='url'/>
<jsp:param value='1439' name='cardNo'/>
<jsp:param value='romantic_main1.jpg' name='imgSrc'/>
<jsp:param value='romantic_groom.png' name='imgGroom'/>
<jsp:param value='romantic_bride.png' name='imgBride'/>
<jsp:param value='Romantic' name='templateName'/>
</jsp:include>
</body>
</html>
