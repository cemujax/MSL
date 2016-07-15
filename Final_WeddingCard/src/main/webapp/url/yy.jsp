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
<jsp:param value='dfs' name='groomName'/>
<jsp:param value='12' name='groomTel'/>
<jsp:param value='dfs' name='brideName'/>
<jsp:param value='23' name='brideTel'/>
<jsp:param value='fsdf' name='cardContext'/>
<jsp:param value='2016-06-30' name='cardDate'/>
<jsp:param value='10' name='hour'/>
<jsp:param value='00' name='min'/>
<jsp:param value='AM' name='ampm'/>
<jsp:param value='0' name='dDay'/>
<jsp:param value='fsdf' name='hallName'/>
<jsp:param value='dfd' name='hallLocation'/>
<jsp:param value='' name='photoBookNo'/>
<jsp:param value='' name='photoBookImg'/>
<jsp:param value='' name='photoBookComment'/>
<jsp:param value='a' name='memberId'/>
<jsp:param value='yy' name='url'/>
<jsp:param value='1254' name='cardNo'/>
</jsp:include>
</body>
</html>
