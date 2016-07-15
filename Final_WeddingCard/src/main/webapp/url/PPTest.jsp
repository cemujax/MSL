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
<jsp:param value='dfs' name='groomName'/>
<jsp:param value='01088888888' name='groomTel'/>
<jsp:param value='adsf' name='brideName'/>
<jsp:param value='01099999999' name='brideTel'/>
<jsp:param value='addadsfadsfdsfadsf<br>adsfaasdfdsfaadsf<br>' name='cardContext'/>
<jsp:param value='2016-07-22' name='cardDate'/>
<jsp:param value='10' name='hour'/>
<jsp:param value='00' name='min'/>
<jsp:param value='AM' name='ampm'/>
<jsp:param value='7' name='dDay'/>
<jsp:param value='rrr' name='hallName'/>
<jsp:param value='0626818504' name='hallTel'/>
<jsp:param value='서울 강남구 개포로 202 (개포동, 석인빌딩)' name='hallLocation'/>
<jsp:param value='' name='photoBookNo'/>
<jsp:param value='' name='photoBookImg'/>
<jsp:param value='' name='photoBookComment'/>
<jsp:param value='dooly584@gmail.com' name='memberId'/>
<jsp:param value='PPTest' name='url'/>
<jsp:param value='1441' name='cardNo'/>
<jsp:param value='romantic_main1.jpg' name='imgSrc'/>
<jsp:param value='romantic_bride.png' name='imgGroom'/>
<jsp:param value='romantic_groom.png' name='imgBride'/>
<jsp:param value='Romantic' name='templateName'/>
</jsp:include>
</body>
</html>
