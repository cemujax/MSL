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
<jsp:param value='ㄴㅇㄹㄴㅇㄹ' name='groomName'/>
<jsp:param value='111111' name='groomTel'/>
<jsp:param value='ㅁㄴㅇㄹㄴㅁㅇㄹ' name='brideName'/>
<jsp:param value='2222' name='brideTel'/>
<jsp:param value='ㅁㄴㅇㄹ' name='cardContext'/>
<jsp:param value='2016-07-12' name='cardDate'/>
<jsp:param value='10' name='hour'/>
<jsp:param value='00' name='min'/>
<jsp:param value='AM' name='ampm'/>
<jsp:param value='6' name='dDay'/>
<jsp:param value='ㅁㄴㅇㄹ' name='hallName'/>
<jsp:param value='경기 성남시 분당구 돌마로 478 (서현동, 창인프라자)' name='hallLocation'/>
<jsp:param value='338' name='photoBookNo'/>
<jsp:param value='우에노공원.jpg' name='photoBookImg'/>
<jsp:param value='dsf' name='photoBookComment'/>
<jsp:param value='1@1' name='memberId'/>
<jsp:param value='pcyT5' name='url'/>
<jsp:param value='1321' name='cardNo'/>
<jsp:param value='' name='imgSrc'/>
<jsp:param value='' name='imgGroom'/>
<jsp:param value='' name='imgBride'/>
</jsp:include>
</body>
</html>
