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
<jsp:param value='01011111111' name='groomTel'/>
<jsp:param value='고고고' name='brideName'/>
<jsp:param value='01022222222' name='brideTel'/>
<jsp:param value='우리 결혼해요<br>오세요~~!!ㅇ1' name='cardContext'/>
<jsp:param value='2016-07-14' name='cardDate'/>
<jsp:param value='13' name='hour'/>
<jsp:param value='00' name='min'/>
<jsp:param value='PM' name='ampm'/>
<jsp:param value='0' name='dDay'/>
<jsp:param value='오드니엘 웨딩홀' name='hallName'/>
<jsp:param value='0316818504' name='hallTel'/>
<jsp:param value='경기 성남시 분당구 서현로 170 (서현동, 풍림아이원플러스)' name='hallLocation'/>
<jsp:param value='380' name='photoBookNo'/>
<jsp:param value='msl.png' name='photoBookImg'/>
<jsp:param value='ㅋㅋㅋ' name='photoBookComment'/>
<jsp:param value='1@1' name='memberId'/>
<jsp:param value='roTest1' name='url'/>
<jsp:param value='1414' name='cardNo'/>
<jsp:param value='romantic_main1.jpg' name='imgSrc'/>
<jsp:param value='romantic_groom.png' name='imgGroom'/>
<jsp:param value='romantic_bride.png' name='imgBride'/>
<jsp:param value='Romantic' name='templateName'/>
</jsp:include>
</body>
</html>
