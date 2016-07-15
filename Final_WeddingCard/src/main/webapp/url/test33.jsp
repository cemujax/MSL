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
<jsp:param value='dd' name='groomName'/>
<jsp:param value='1' name='groomTel'/>
<jsp:param value='f' name='brideName'/>
<jsp:param value='4' name='brideTel'/>
<jsp:param value='asdf' name='cardContext'/>
<jsp:param value='2016-07-02' name='cardDate'/>
<jsp:param value='10' name='hour'/>
<jsp:param value='00' name='min'/>
<jsp:param value='AM' name='ampm'/>
<jsp:param value='0' name='dDay'/>
<jsp:param value='united' name='hallName'/>
<jsp:param value='united' name='hallLocation'/>
<jsp:param value='' name='photoBookNo'/>
<jsp:param value='' name='photoBookImg'/>
<jsp:param value='' name='photoBookComment'/>
<jsp:param value='a' name='memberId'/>
<jsp:param value='test33' name='url'/>
<jsp:param value='1261' name='cardNo'/>
<jsp:param value='3.png' name='imgSrc'/>
</jsp:include>
</body>
</html>
<a href="http://www.facebook.com/sharer/sharer.php?u=EFI/MSL/Final_WeddingCard/src/main/webapp/url/test33.jsp"><img src=${initParam.root}img/facebook-share.png></a>