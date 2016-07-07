<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function closeWindow() {
		
		self.close();
	}

</script>
</head>
<body>
<c:if test="${mvo == null  || param.url == null}">
		<c:redirect url="../error.jsp"/>
	</c:if>
<div align="center" class="qr">
<img alt="" src="${initParam.root}url/${param.url }/qrCode.png"><p>
<input type="button" class="btn btn-info btn-lg" value="닫기" onclick="closeWindow()">
</div>
</body>
</html>