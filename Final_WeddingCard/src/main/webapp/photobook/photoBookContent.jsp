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

<script type="text/javascript">
function delete_photoBook(index) {
	if(confirm("해당 포토북을 삭제하시겠습니까?")) {
		location.href="photoBook.do?command=delete&&bookNo="+ index;
	}
}
</script>

  </head>
  <body>
  <c:if test="${sessionScope.mvo.memberId == null }">
  	<script>
  		location.href ="authentication/login.jsp";
  	</script>
  </c:if>
  
    <h1 class="title">${pbvo.bookName}</h1>
    <%-- 	<h2>${vs} </h2>
    </h2>${i}</h2> --%>
    <div class="book_wrapper">
      <a id="next_page_button"></a>
      <a id="prev_page_button"></a>
      <div id="loading" class="loading">Loading pages...</div>
      <div id="mybook" style="display:none;">
	<div class="b-load">
	  <c:forEach items="${pbImgList}" var="i">
	    <div>
	      <img alt="" src="img/photobook/${pbvo.memberVO.memberId}/${pbvo.bookNo}/${i[0]}">
	      <h1>Slider Gallery</h1>
	      <!-- <p style="font-family: serif;"> -->
	      <p>${i[1] }</p>
	      <a href="photoBook.do?command=modifyView&&bookNo=${pbvo.bookNo }" class="article">Modify Photo</a>
	      <a onclick="delete_photoBook(${pbvo.bookNo})" style="cursor: pointer" class="demo">Delete Photo</a>
	    </div>
	  </c:forEach>
	  <a href="index.jsp">
	</div>
      </div>
    </div>
    <div>
      <span class="reference">
	<a href=" http://tympanus.net/codrops/2010/12/14/moleskine-notebook/">back to the Codrops tutorial</a>
	<a href="http://builtbywill.com/code/booklet/" target="_blank">booklet jQuery Plugin</a>
      </span>
    </div>

    <!-- The JavaScript -->

    <script src="./js/pbcontent.js"></script>



    
  </body>
</html>
