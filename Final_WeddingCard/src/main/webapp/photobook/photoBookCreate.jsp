<%@ page language="java" contentType="text/html; charset=UTF-8"
	 pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>PbcreTest</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <link 
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"
	rel="stylesheet">
    <script type="text/javascript"
	    src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
    <script src="booklet/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="booklet/jquery.booklet.1.1.0.min.js" type="text/javascript"></script>
    <link href="booklet/jquery.booklet.1.1.0.css" type="text/css"
	  rel="stylesheet" media="screen" />
    <link rel="stylesheet" href="../css/photobookstyle.css" type="text/css"
	  media="screen" />
    <script src="cufon/cufon-yui.js" type="text/javascript"></script>
    <script type="text/javascript">
     Cufon.replace('h1,p,.b-counter');
     Cufon.replace('.book_wrapper a', {hover:true});
     Cufon.replace('.title', {textShadow: '1px 1px #C59471'});
     Cufon.replace('.reference a', {textShadow: '1px 1px #C59471'});
     Cufon.replace('.loading', {textShadow: '1px 1px #000'});
    </script>
    
    <!-- font style -->
    <link rel="stylesheet" type="text/css" 
    href="http://fonts.googleapis.com/earlyaccess/notosanskr.css">
    <link rel="stylesheet" type="text/css" 
    href="http://fonts.googleapis.com/earlyaccess/nanumpenscript.css">
  </head>


  <body>
  <c:if test="${sessionScope.mvo.memberId == null }">
  	<script>
  		location.href ="authentication/login.jsp";
  	</script>
  </c:if>
    <form method="post" action="../photoBook.do" enctype="multipart/form-data">
      <h2 class="title" 
      style="margin-left: 20%; font-family: 'Noto Sans KR', sans-serif; ">
	 책 제목&nbsp;<input type="text" name="bookName"><input type="submit" value="전송">
      </h2>
      <div class="book_wrapper">
	<input type="hidden" name="command" value="create"> <a
								id="next_page_button"></a> <a id="prev_page_button"></a>
	<div id="loading" class="loading">Loading pages...</div>
	<div id="mybook" style="display: none;">
	  <div class="b-load">
	  <c:forEach begin="0" end="9" var="i">
	    <div>
	      <input type="file" name="file[${i}]" id="imgefile${i}"
		     style="text-align: center;">
	      <p>
		<img
		    src="http://104.244.124.250/~conollyp/diyFiles/123_File_Upload_Donload_m.jpg   "
		    id="original${i}" style="width: 300px; height: 163px;" alt="" />
		<h5 style="font-family: 'Nanum Pen Script', serif; font-size: ">
		  옆 빈 칸에 사진${i+1}에 대한 설명을 넣어주세요 <input type="text" name="comment[${i}]" id="text${i}"
				      value="" style="width: 40%; height: 90%;"
				      onkeyup="writeHere(${i})">
		</h5>
		<p id="bookComment${i}" style="font-size: 150%; font-family: 'Nanum Pen Script', serif;">
		이 글은 써지는 순간 지워집니다.<br>
		저는 당신의 행복한 추억을 기억하는데 도움이 되고자 합니다.<br>
		
		</p>


		<a href="http://tympanus.net/Tutorials/SliderGallery/"
		   target="_blank" class="demo">Demo</a> <a href="index.jsp"
							    target="_blank" class="article">Index</a>
	    </div>
	    </c:forEach>	  

	  </div>
	</div>
      </div>

    </form>
    <script src="../js/pbcreate.js"></script>
  </body>
</html>
