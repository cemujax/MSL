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
<jsp:param value='신부임' name='groomName'/>
<jsp:param value='01088888888' name='groomTel'/>
<jsp:param value='신랑임' name='brideName'/>
<jsp:param value='01099999999' name='brideTel'/>
<jsp:param value='초대글이예용<br>축하하러와주세용<br>반가웡' name='cardContext'/>
<jsp:param value='2016-07-22' name='cardDate'/>
<jsp:param value='12' name='hour'/>
<jsp:param value='00' name='min'/>
<jsp:param value='AM' name='ampm'/>
<jsp:param value='8' name='dDay'/>
<jsp:param value='판교홀' name='hallName'/>
<jsp:param value='경기 성남시 분당구 대왕판교로 477 (판교동, 낙생고등학교)' name='hallLocation'/>
<jsp:param value='386' name='photoBookNo'/>
<jsp:param value='photobook1.jpg`photobook2.jpg`photobook3.jpg`photobook4.jpg`photobook5.jpg`photobook6.JPG`photobook7.JPG`photobook8.JPG`photobook9.JPG' name='photoBookImg'/>
<jsp:param value='#스타벅스 #먹방`END`#해바라기 #넘나예쁜것`END`#꽃다발 #예쁨`END`#선물`END`#감사합니다`END`#함께해줘서 #고마워`END`#한복기념`END`#카페`END`#전구쥬스 #특이하다' name='photoBookComment'/>
<jsp:param value='s@naver.com' name='memberId'/>
<jsp:param value='test_Pink7' name='url'/>
<jsp:param value='1401' name='cardNo'/>
<jsp:param value='romantic_main1.jpg' name='imgSrc'/>
<jsp:param value='romantic_groom.png' name='imgGroom'/>
<jsp:param value='romantic_bride.png' name='imgBride'/>
</jsp:include>
</body>
</html>
