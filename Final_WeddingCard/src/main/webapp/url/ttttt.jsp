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
<jsp:param value='sdf' name='groomName'/>
<jsp:param value='11' name='groomTel'/>
<jsp:param value='sdf' name='brideName'/>
<jsp:param value='22' name='brideTel'/>
<jsp:param value='sdfsdf' name='cardContext'/>
<jsp:param value='2016-06-30' name='cardDate'/>
<jsp:param value='10' name='hour'/>
<jsp:param value='0' name='min'/>
<jsp:param value='AM' name='ampm'/>
<jsp:param value='sdfsdf' name='hallName'/>
<jsp:param value='서울' name='hallLocation'/>
<jsp:param value='62' name='photoBookNo'/>
<jsp:param value='경복궁.jpg`1.png`111.JPG' name='photoBookImg'/>
<jsp:param value='sdfsdf`END`zzzz`END`zzwqer' name='photoBookComment'/>
<jsp:param value='pcp8282' name='memberId'/>
</jsp:include>
</body>
</html>
