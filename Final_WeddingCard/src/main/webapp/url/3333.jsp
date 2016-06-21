<%@ page language='java' contentType='text/html; charset=UTF-8'
pageEncoding='UTF-8' isELIgnored='false'%><%@ taglib prefix='c'
 uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %><!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Insert title here</title></head>
<body>
<jsp:include page='basicSkin.jsp' flush='true'>
<jsp:param value='' name='groomName'/>
<jsp:param value='' name='groomTel'/>
<jsp:param value='' name='brideName'/>
<jsp:param value='' name='brideTel'/>
<jsp:param value='' name='cardContext'/>
<jsp:param value='2016-06-28' name='cardDate'/>
<jsp:param value='10' name='hour'/>
<jsp:param value='00' name='min'/>
<jsp:param value='AM' name='ampm'/>
<jsp:param value='7' name='dDay'/>
<jsp:param value='' name='hallName'/>
<jsp:param value='' name='hallLocation'/>
<jsp:param value='' name='photoBookNo'/>
<jsp:param value='' name='photoBookImg'/>
<jsp:param value='' name='photoBookComment'/>
<jsp:param value='a' name='memberId'/>
<jsp:param value='3333' name='url'/>
</jsp:include>
</body>
</html>
