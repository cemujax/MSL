<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- <script type="text/javascript" src="./js/jquery-1.12.3.js"></script> -->

<!-- 이미지 업로드 -->
<script src="https://code.jquery.com/jquery-1.11.0.min.js"></script> 
<script src="./js/jquery.form.js"></script>


<script type="text/javascript">


$(document).ready(function(){
	
	
	
	$("#sendImage").bind("click", function() {
		
		
		if($('#uploadImage').val() != null && $('#uploadImage').val() != ''){
			//폼전송
			$('#uploadFrm').ajaxForm({
			   //보내기전 validation check가 필요할경우
		            beforeSubmit: function (data, frm, opt) {
					                alert("전송전!!");
					                return true;
					              },
		            //submit이후의 처리
		            success: function(responseText, statusText){
		            	alert("전송성공!!");
		            },
		            //ajax error
		            error: function(){
		            	alert("에러발생!!");
		            }                               
		    });//ajaxForm
		}else{//이미지 선택 안했을 시
			$(this).unbind('click');
			alert("이미지를 선택해주세요!");
		}
	});
	
	
	
		
		
	
});//ready

</script>

</head>
<body>


	<form name="uploadFrm" id="uploadFrm"
		action="${initParam.root }card.do" method="post"
		enctype="multipart/form-data">

		<input type="hidden" name="command" value="uploadImage">
		상단 이미지 :<input style="margin: 2%;" type="file" name="mainImage"
			id="uploadImage" value="이미지 업로드"><br>
			<input type="submit" value="업로드 파일" id="sendImage">
	</form>

</body>
</html>