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
<jsp:param value='신부임' name='groomName'/>
<jsp:param value='01088888888' name='groomTel'/>
<jsp:param value='신랑임' name='brideName'/>
<jsp:param value='01099999999' name='brideTel'/>
<jsp:param value='cheormf<br>ㅇㅁㅇㅁㄴ<br>ㅁㅇ<br>ㅁㅂㄷㅂ<br>ㅇㄴㅁㅇㄴㅁㅇㅁㄴㅇㅁ' name='cardContext'/>
<jsp:param value='2016-07-22' name='cardDate'/>
<jsp:param value='10' name='hour'/>
<jsp:param value='00' name='min'/>
<jsp:param value='AM' name='ampm'/>
<jsp:param value='8' name='dDay'/>
<jsp:param value='웨딩홀' name='hallName'/>
<jsp:param value='서울 강남구 개포로 625 (일원동, 탄천물재생센터)' name='hallLocation'/>
<jsp:param value='397' name='photoBookNo'/>
<jsp:param value='photobook1.jpg`photobook2.jpg`photobook3.jpg`photobook5.jpg`photobook6.JPG`photobook4.jpg`photobook7.JPG`photobook8.JPG`photobook9.JPG' name='photoBookImg'/>
<jsp:param value='#카페`END`ㅇㅇㅇㅇ`END`ㅁㄴㅇㅁ`END``END``END``END``END``END`' name='photoBookComment'/>
<jsp:param value='dooly584@gmail.com' name='memberId'/>
<jsp:param value='test_Pink2' name='url'/>
<jsp:param value='1433' name='cardNo'/>
<jsp:param value='romantic_main1.jpg' name='imgSrc'/>
<jsp:param value='romantic_groom.png' name='imgGroom'/>
<jsp:param value='romantic_bride.png' name='imgBride'/>
</jsp:include>
</body>
</html>
