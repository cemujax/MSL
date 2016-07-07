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
    
   <!--  <script src="../js/pbcontent.js" type="text/javascript"></script> -->
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

<!-- font style -->
    <link rel="stylesheet" type="text/css" 
    href="http://fonts.googleapis.com/earlyaccess/notosanskr.css">
    <link rel="stylesheet" type="text/css" 
    href="http://fonts.googleapis.com/earlyaccess/nanumpenscript.css">
    
    <style type="text/css">
  ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111;
}
  </style>
  </head>
  <body style="margin-bottom: 3%;">
  <ul style="font-size: 120%; height: 40px;">
  <li><a class="active" href="${initParam.root}index.jsp">Home</a></li>
  <li><a href="#news">메뉴얼</a></li>
  <li><a href="#contact">청첩장</a></li>
  <li><a href="#about">포토북</a></li>
  <li><a href="#about">커뮤니티</a></li>
</ul>
  <c:if test="${sessionScope.mvo.memberId == null }">
  	<script>
  		location.href ="${initParam.root}authentication/login.jsp";
  	</script>
  </c:if>
  
    <h1 class="title" style="margin-left: 20%;font-family: 'Nanum Pen Script', serif;font-size: 400%;height: 45px;">
    ${pbvo.bookName}</h1>
    <%-- 	<h2>${vs} </h2>
    </h2>${i}</h2> --%>
    <div class="book_wrapper" style="height: 90%;">
      <a id="next_page_button"></a>
      <a id="prev_page_button"></a>
      <div id="loading" class="loading">Loading pages...</div>
      <div id="mybook" style="display:none;">
	<div class="b-load">
	  <c:forEach items="${pbImgList}" var="i">
	    <div>
	      <img alt="" src="${initParam.root}img/photobook/${pbvo.memberVO.memberId}/${pbvo.bookNo}/${i[0]}">
	      <h1 style="font-family: 'Nanum Pen Script', serif; font-size: ">추억을 되살리는 멘트</h1>
	      <!-- <p style="font-family: serif;"> -->
	      <p style="font-size: 180%; font-family: 'Nanum Pen Script', serif;">${i[1]}</p>
	      <a href="photoBook.do?command=modifyView&&bookNo=${pbvo.bookNo }" class="article"
	      style="margin-left: 0px; padding-left: 8%; font-size: 180%; font-family: 'Nanum Pen Script', serif;">
	      포토북 수정</a>
	      <a onclick="delete_photoBook(${pbvo.bookNo})" 
	      style="margin-left: 0px; padding-left: 8%; font-size: 180%; font-family: 'Nanum Pen Script', serif;" class="demo">
	      포토북 삭제</a>
	    </div>
	  </c:forEach>
	  <a href="index.jsp">
	</div>
      </div>
    </div>z
    <!-- <div>
      <span class="reference">
	<a href=" http://tympanus.net/codrops/2010/12/14/moleskine-notebook/">back to the Codrops tutorial</a>
	<a href="http://builtbywill.com/code/booklet/" target="_blank">booklet jQuery Plugin</a>
      </span>
    </div> -->

    <!-- The JavaScript -->

    <script src="${initParam.root}js/pbcontent.js"></script>



    
  </body>
</html>
