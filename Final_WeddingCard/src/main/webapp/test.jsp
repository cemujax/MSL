<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${initParam.root}weddingCard/js/jquery-1.12.3.js"></script>
	
<script type="text/javascript">
	$(document).ready(function() {
		var index = 0;
		
		$('#jspArea').hide();
		
		$('#nameBtn').click(function(){
			$('#jspArea').show();
		});
		
		$('#jspBtn').one('click', function(){
			var text = "추가할 하위 폴더 : <input type='text' id='input"+ index+ "'>&nbsp;"
						+ "<input type='button' onclick='folderBtnClick("+ index+ ")' value='추가'>";
			$('#userArea').append(text);
		});
		
		/* $('input[name^="folderBtn"]').click(function() {
			alert("test");
		}); */
	});
	
	function folderBtnClick(index) {
		var text = "<table border='1px solid'>"
					+"<tr>"
						+"<th> "+ $('#input'+ index).val()+ " file </th>"
					+"</tr>"
					+"<tr>"
						+"<td>";
	$('#userArea').html(text);
	$('#userArea').html("<jsp:include page='./fileUpload.jsp'/>");
		text = "</td>"
				+"</tr>"
				+"<tr>"
				
					+"<td> <button id='btn"+ index+ "'>"+ $('#input'+ index).val()+ "업로드</button> </td>"         
				+"</tr>"
				+"</table>"
				+"<hr>";
	}
</script>

</head>
<body>
스킨 이름 :: <input type="text">&nbsp;
<button id="nameBtn">확인</button>
<hr>

<table id="jspArea" border="1px solid">
	<tr>
		<th>preview file
		</th>
	</tr>
	<tr>
		<td>
			<c:import url="fileUpload.jsp"/>
		</td>
	</tr>
	<tr>
		<td>
			<button id="jspBtn">jsp 업로드</button>
		</td>
	</tr>
</table>
<hr>

<div id="userArea">
</div>

</body>
</html>