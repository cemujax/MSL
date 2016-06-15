<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script src="https://rawgit.com/enyo/dropzone/master/dist/dropzone.js"></script>
<link rel="stylesheet" href="https://rawgit.com/enyo/dropzone/master/dist/dropzone.css"> -->

<!-- this is related to create box -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
        <link href="./css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="./js/fileinput.js" type="text/javascript"></script>
        <script src="./js/fileinput_locale_fr.js" type="text/javascript"></script>
        <script src="./js/fileinput_locale_es.js" type="text/javascript"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js" type="text/javascript"></script>
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
<p>
<br>
<h3>=====================</h3>
<label class="control-label">Select File</label>
<input id="input-44" name="input44[]" type="file" multiple class="file-loading">
<div id="errorBlock" class="help-block"></div>
<script>
$(document).on('ready', function() {
    $("#input-44").fileinput({
        uploadUrl: '/file-upload-batch/2',
        maxFilePreviewSize: 10240
    });
});
</script>
<!-- <h3>나중에 합칠 임시 파일 박스</h3>
<form action="/upload-target" class="dropzone"></form>
<a href="photoBook.do?command=list">리스트 출력</a> -->

</body>
</html>