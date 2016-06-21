<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function update_submit() {
		var f = document.qna_update_form;
		if(f.title.value==""){
			alert("제목을 입력하세요!");
			f.title.focus();
			return false; 
		}
		
		if(f.content.value==""){
			alert("내용을 입력하세요!");
			f.content.focus();
			return false;
		}
	}
</script>

</head>
<body>
<form action="${initParam.root }post.do" method="post" name="qna_update_form" onsubmit="return update_submit()">
<input type="hidden" name="command" value="modifyQnA">
<input type="hidden" name="postNo" value="${pvo.postNo}">		
<table cellpadding="5">
<tr>
	<td>
		<table width="550">
			<tr>
				<td>
				<b>글번호 : <input type="text"  value="${pvo.postNo}" readonly="readonly"> |
				   타이틀 : <input type="text" name="title" value="${pvo.title}"></b>
				  <hr style="color: #6691BC; border-style: dotted; margin: 0">
				</td>
			</tr>
			<tr><td>
			<font size="2">작성자 : 
			<input type="text" name="writer" value="${pvo.memberVO.memberId}" readonly="readonly"> |
			작성일시 : ${pvo.writeDate}			
			</font></td></tr>
			
			<tr><td>
			<hr style="color: #6691BC; margin: 0">
			<textarea rows="15" cols="75" name="content"> ${pvo.content}
			</textarea></td></tr>
			
			<tr><td valign="middle">
			<input type="submit" value="수정하기"></td></tr>
		</table>
	</td>
</tr>
</table>
</form>
</body>
</html>