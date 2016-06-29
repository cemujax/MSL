<%@ page language='java' contentType='text/html; charset=UTF-8'
pageEncoding='UTF-8' isELIgnored='false'%><%@ taglib prefix='c'
 uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %><!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Insert title here</title></head>
<body>
<jsp:include page='template/Garden Wedding.jsp' flush='true'>
<jsp:param value='조수연' name='groomName'/>
<jsp:param value='01088888888' name='groomTel'/>
<jsp:param value='수여니' name='brideName'/>
<jsp:param value='01099999999' name='brideTel'/>
<jsp:param value='안녕' name='cardContext'/>
<jsp:param value='2016-06-30' name='cardDate'/>
<jsp:param value='13' name='hour'/>
<jsp:param value='00' name='min'/>
<jsp:param value='PM' name='ampm'/>
<jsp:param value='2' name='dDay'/>
<jsp:param value='강남홀' name='hallName'/>
<jsp:param value='강남' name='hallLocation'/>
<jsp:param value='241' name='photoBookNo'/>
<jsp:param value='01.jpg`02.jpg`01.png' name='photoBookImg'/>
<jsp:param value='ㅎ`END`ㅋㅋ`END`ㅇ' name='photoBookComment'/>
<jsp:param value='a' name='memberId'/>
<jsp:param value='8812' name='url'/>
<jsp:param value='null' name='imgSrc'/>
<jsp:param value='1204' name='cardNo'/>
</jsp:include>
</body>
</html>
