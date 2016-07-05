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
<jsp:param value='ㅁㅇㄴㄻㄴㅇ' name='groomName'/>
<jsp:param value='12312' name='groomTel'/>
<jsp:param value='ㅁㄴㅇㄻㄴㅇㄹ' name='brideName'/>
<jsp:param value='13213' name='brideTel'/>
<jsp:param value='ㅁㄴㅇㄻㅇㄴㄹ' name='cardContext'/>
<jsp:param value='2016-07-12' name='cardDate'/>
<jsp:param value='10' name='hour'/>
<jsp:param value='00' name='min'/>
<jsp:param value='AM' name='ampm'/>
<jsp:param value='8' name='dDay'/>
<jsp:param value='오드니엘' name='hallName'/>
<jsp:param value='경기 성남시 분당구 서현로 170 (서현동, 풍림아이원플러스)' name='hallLocation'/>
<jsp:param value='308' name='photoBookNo'/>
<jsp:param value='s1.jpg`s2.jpg' name='photoBookImg'/>
<jsp:param value='asdfdsf`END`zzz' name='photoBookComment'/>
<jsp:param value='1@1' name='memberId'/>
<jsp:param value='MapTest1' name='url'/>
<jsp:param value='1306' name='cardNo'/>
<jsp:param value='' name='imgSrc'/>
<jsp:param value='' name='imgGroom'/>
<jsp:param value='' name='imgBride'/>
</jsp:include>
</body>
</html>
