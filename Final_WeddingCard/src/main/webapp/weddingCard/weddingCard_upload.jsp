<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

$(document).ready(function(){
	
	
	$('#uploadImage').change(function(){ 
    	  //$("form#uploadFrm").submit();
    	  
    	  ////////////////
  		
    	  var src = $(this).val().split("\\")[2];
    	  
    	  alert("ddimage::"+src);
    	 //$('#frmWeddingCard').attr('target','uploadFrm');
    	$("#uploadFrm").ajaxSubmit({
			
			success : function(data) {

				alert(data.result);

			},

			error : function(error) {

				alert("요청 처리 중 오류가 발생하였습니다.");

			}

		});

		return false;

	});
	
});//ready

</script>

</head>
<body>


	<form name="uploadFrm" id="uploadFrm"
		action="${initParam.root }card.do?command=uploadImage" method="post"
		enctype="multipart/form-data">

		상단 이미지 :<input style="margin: 2%;" type="file" name="mainImage"
			id="uploadImage"><br>
	</form>

</body>
</html>