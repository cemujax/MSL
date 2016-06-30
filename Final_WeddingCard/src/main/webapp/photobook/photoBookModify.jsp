<%@ page language="java" contentType="text/html; charset=UTF-8"
	 pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>My Sweet Love . Wedding Card</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="description" content="Moleskine Notebook with jQuery Booklet" />
    <meta name="keywords" content="jquery, book, flip, pages, moleskine, booklet, plugin, css3 "/>
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>

    <script type="text/javascript" src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
    <script src="photobook/booklet/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="photobook/booklet/jquery.booklet.1.1.0.min.js" type="text/javascript"></script>

    <link href="photobook/booklet/jquery.booklet.1.1.0.css" type="text/css" rel="stylesheet" media="screen" />
    <link rel="stylesheet" href="css/photobookstyle.css" type="text/css" media="screen"/>

    <script src="photobook/cufon/cufon-yui.js" type="text/javascript"></script>
    
    <script type="text/javascript">
     Cufon.replace('h1,p,.b-counter');
     Cufon.replace('.book_wrapper a', {hover:true});
     Cufon.replace('.title', {textShadow: '1px 1px #C59471'});
     Cufon.replace('.reference a', {textShadow: '1px 1px #C59471'});
     Cufon.replace('.loading', {textShadow: '1px 1px #000'});
    </script>
    
  </head>


  <body>
  <c:if test="${sessionScope.mvo.memberId == null }">
  	<script>
  		location.href ="${initParam.root}authentication/login.jsp";
  	</script>
  </c:if>
    <form method="post" action="photoBook.do" enctype="multipart/form-data">
      <h1 class="title" style="text-align: center;">
	BookName: <input type="text" name="bookName" value="${pbvo.bookName }">
      </h1>
      <div class="book_wrapper">
      
      <!-- Modify Addition -->
      <input type="hidden" name="oldFile" value="${pbvo.fileName }">
      
	<input type="hidden" name="command" value="modify">
	<input type="hidden" name="bookNo" value="${pbvo.bookNo }">
	
	<a id="next_page_button"></a> <a id="prev_page_button"></a>
	<div id="loading" class="loading">Loading pages...</div>
	<div id="mybook" style="display: none;">
	  <div class="b-load">
	  <c:forEach begin="0" end="9" var="i">
	  <c:set value="${pbImgList[i] }" var="list"/>
	    <div>
	    <input type="file" name="file[${i}]" id="imgefile${i}"style="text-align: center;"><p>    
	    
	    <!-- modify addition -->
	    <c:choose>
	    	<c:when test="${list[0] != null && list[0] != '' }">
	    		<img
				    src="img/photobook/${pbvo.memberVO.memberId}/${pbvo.bookNo}/${list[0]}"
				    id="original${i}" style="width: 300px; height: 163px;" alt="" 
				/>
				
				<h1>
		  			Book Comment${i+1}
		  			<input type="text" name="comment[${i}]" id="text${i}"
		  				value="${list[1] }" style="width: 40%; height: 90%;"
				     	onkeyup="writeHere(${i})">
				</h1>
				
				<p id="bookComment${i}">${list[1] }</p>
	    	</c:when>
	    	
	    	<c:otherwise>
	    		<%-- <input type="file" name="file[${i}]" id="imgefile${i}"style="text-align: center;"><p>        --%>
	    		
	    		<img
				    src="http://104.244.124.250/~conollyp/diyFiles/123_File_Upload_Donload_m.jpg   "
				    id="original${i}" style="width: 300px; height: 163px;" alt="" 
				/>
				
				<h1>
		  			Book Comment${i+1}
		  			<input type="text" name="comment[${i}]" id="text${i}"
				      value="" style="width: 40%; height: 90%;"
				      onkeyup="writeHere(${i})">
				</h1>
				
				<p id="bookComment${i}"> </p>
	    	</c:otherwise>
	    </c:choose>
		
		<a href="http://tympanus.net/Tutorials/SliderGallery/"
		   target="_blank" class="demo">Demo</a> <a href="index.jsp"
							    target="_blank" class="article">Index</a>
	    </div>
	    </c:forEach>	  

	  </div>
	</div>
      </div>



      <h1><input type="submit" value="Submit"></h1>

    </form>
    <script src="./js/pbcreate.js"></script>
  </body>
</html>
