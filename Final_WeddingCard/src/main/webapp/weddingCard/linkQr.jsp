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
<h4 style="color: #8c867b; text-align: center; margin-top: 30px;">
※ QR코드 리더로 해당 청첩장을 미리 보기 할 수 있습니다.
</h4><p>
<h5 style="color: #8c867b; text-align: center; margin-top: 30px;">
http://mysweetlove.org/Final_WeddingCard/url/${param.url }.jsp
</h5>

<div align="center" class="qr">
<img alt="" src="${initParam.root}url/${param.url }/qrCode.png" style="margin-top: 20px;"><p>
<input type="button" class="btn btn-info btn-lg" value="닫기" onclick="closeWindow()">
</div>
</body>
</html>