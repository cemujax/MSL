<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="photoBook.do" enctype="multipart/form-data">
	<input type="hidden" name="command" value="create">
	이름 : <input type="text" name="bookName"><p>
	<input type="file" name="file[0]"><p>
	<input type="text" name="comment[0]" value=""><p>
	<input type="file" name="file[1]"><p>
	<input type="text" name="comment[1]" value=""><p>
	<input type="file" name="file[2]"><p>
	<input type="text" name="comment[2]" value=""><p>
	<input type="submit" value="멀티 파일 업로드">
</form>

<a href="photoBook.do?command=list">리스트 출력</a>

</body>
</html>