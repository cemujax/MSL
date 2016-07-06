<%@ page language='java' contentType='text/html; charset=UTF-8'
pageEncoding='UTF-8' isELIgnored='false'%><%@ taglib prefix='c'
 uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %><!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Insert title here</title></head>
<body>
<jsp:include page='template/Yellow Rose.jsp' flush='true'>
<jsp:param value='dadd' name='groomName'/>
<jsp:param value='01088888888' name='groomTel'/>
<jsp:param value='안녕하세용' name='brideName'/>
<jsp:param value='01099999999' name='brideTel'/>
<jsp:param value='ㅇㅁㅈㅇㅁ' name='cardContext'/>
<jsp:param value='2016-07-27' name='cardDate'/>
<jsp:param value='10' name='hour'/>
<jsp:param value='00' name='min'/>
<jsp:param value='AM' name='ampm'/>
<jsp:param value='' name='dDay'/>
<jsp:param value='판교' name='hallName'/>
<jsp:param value='판교' name='hallLocation'/>
<jsp:param value='320' name='photoBookNo'/>
<jsp:param value='Hydrangeas.jpg`Lighthouse.jpg`Tulips.jpg`Desert.jpg' name='photoBookImg'/>
<jsp:param value='ffqw`END`qdq`END`qwdq`END`qwdq' name='photoBookComment'/>
<jsp:param value='s@naver.com' name='memberId'/>
<jsp:param value='3_temp' name='url'/>
<jsp:param value='0' name='cardNo'/>
<jsp:param value='' name='imgSrc'/>
<jsp:param value='' name='imgGroom'/>
<jsp:param value='' name='imgBride'/>
</jsp:include>
</body>
</html>
