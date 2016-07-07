<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="//fonts.googleapis.com/earlyaccess/nanumgothic.css">
<script type="text/javascript">
	function closeWindow() {

		self.close();
	}
</script>
</head>
<body>
	<div class="" style="text-align: center; font-family: 'Nanum Gothic', serif;">
		<c:choose>
			<c:when test="${password!=null}">
				<h4 style="color: black; margin-bottom: 40px;">${param.name}님의
					비밀번호는 ${password} 입니다.</h4>
			</c:when>

			<c:otherwise>
				<h4 style="color: black; margin-bottom: 40px;">입력한 정보를 다시
					확인해주세요.</h4>
			</c:otherwise>
		</c:choose>
		<input type="button" class="btn btn-info btn-lg" value="닫기"
			onclick="closeWindow()">
	</div>
</body>
</html>