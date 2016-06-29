<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="./js/jquery-1.12.3.js"></script>
<script src="./js/jquery.MultiFile.js"></script>
<script>
$(document).ready(function(){
    
    //use jQuery MultiFile Plugin 
    $('#multiform input[name=photo]').MultiFile({
        max: 3, //업로드 최대 파일 갯수 (지정하지 않으면 무한대)
        accept: 'jpg|png|gif', //허용할 확장자(지정하지 않으면 모든 확장자 허용)
        maxfile: 1024, //각 파일 최대 업로드 크기
        maxsize: 3024,  //전체 파일 최대 업로드 크기
        STRING: { //Multi-lingual support : 메시지 수정 가능
            remove : "제거", //추가한 파일 제거 문구, 이미태그를 사용하면 이미지사용가능
            duplicate : "$file 은 이미 선택된 파일입니다.", 
            denied : "$ext 는(은) 업로드 할수 없는 파일확장자입니다.",
            selected:'$file 을 선택했습니다.', 
            toomuch: "업로드할 수 있는 최대크기를 초과하였습니다.($size)", 
            toomany: "업로드할 수 있는 최대 갯수는 $max개 입니다.",
            toobig: "$file 은 크기가 매우 큽니다. (max $size)"
        },
        list:"#afile3-list" //파일목록을 출력할 요소 지정가능
    });
});
</script>
</head>
<body>

<h3>jQuery ajax fileupload (ajax 파일업로드)</h3>
<form name="multiform" id="multiform" action="FileUploadServlet"
                                      method="POST" enctype="multipart/form-data">
    
    title: <input type="text" name="title"  value=""/> <br/>
    description :<input type="text" name="description"  value="" /> <br/>
    
    <!-- 다중 파일업로드  -->
    photo : <input type="file" class="afile3"  name="photo" />
    <div id="afile3-list" style="border:2px solid #c9c9c9;min-height:50px"></div> 
    
    <input type="submit" id="btnSubmit" value="전송"/><br/>
</form>    



</body>
</html>