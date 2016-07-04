<%@ page language="java" contentType="text/html; charset=UTF-8"
	 pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <!-- css -->
    <link rel="stylesheet" type="text/css" href="./css/pbresult.css">
    
    <!-- font style -->
    <link rel="stylesheet" type="text/css" 
    href="http://fonts.googleapis.com/earlyaccess/notosanskr.css">
    <link rel="stylesheet" type="text/css" 
    href="http://fonts.googleapis.com/earlyaccess/nanumpenscript.css">
  </head>
  <body style="background-color: #fff1d4;">
  <nav class="navbar navbar-inverse" style="background-color: #f8f8f8; border-color: #e7e7e7;">
  <div class="container-fluid">
    <div class="navbar-header" style="margin-top: 10px;font-size: 20px;">
     <!--  <a class="navbar-brand" href="#">Home</a> -->
     <a href="${initParam.root }index.jsp" ><span style="color:#777;">Home</span></a>
    </div>
    
    	<ul class="nav navbar-nav" ><!-- style=" margin-left:73%;" -->
				<%-- <li class="active"><a href="${initParam.root }index.jsp"><span>Home</span></a></li> --%>
					 <li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">커뮤니티<span class="caret"></span></a>
							  <ul class="dropdown-menu">
							      <li><a href="#">익명게시판</a></li>
							         <li><a href="#">게시판</a></li>
							         <li><a href="#">칭찬해요</a></li>
							   </ul>
					</li>
							      
							      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">청첩장<span class="caret"></span></a>
							        <ul class="dropdown-menu">
							          <li><a href="${initParam.root }weddingCard.jsp">청첩장만들기</a></li>
							          <li><a href="${initParam.root }./card.do?command=getAllCards">청첩장보기</a></li>
							        </ul>
							      </li>
							      
							       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">포토북<span class="caret"></span></a>
							        <ul class="dropdown-menu">
							          <li><a href="${initParam.root }test.jsp">포토북만들기</a></li>
							          <li><a href="${initParam.root }photoBook.do?command=list">포토북보기</a></li>
							        </ul>
							      </li>
							      
							<!-- 	<li><a href="#mail" class="scroll"><span>Mail Us</span></a></li> -->
							</ul>
  </div>
</nav><!-- nav div End -->
  
  <c:if test="${sessionScope.mvo.memberId == null }">
  	<script>
  		location.href ="../authentication/login.jsp?location=pbList";
  	</script>
  </c:if>
  <div style="margin-left: 10%; margin-right: 10%;">
    <h1 align="center">PHOTO BOOK LIST</h1><p>
      <%-- <c:forEach items="${pbList}" var="i" varStatus="vs">
      <a href="photoBook.do?command=detail&&no=${i.bookNo }">${vs.count}. ${i.bookName}</a><p>
      </c:forEach> --%>
      <ul class="list-unstyled video-list-thumbs row">
	<c:forEach items="${pbList}" var="i" varStatus="vs">
	  <li class="col-lg-3 col-sm-4 col-xs-6" >
	    <a href="photoBook.do?command=detail&&no=${i.bookNo}">
              <img id="test${i.bookNo}" src="http://www.freeiconspng.com/uploads/vector-book-icon-vector-graphic--creattor-7.jpg" alt="Barca" class="img-responsive" height="130px" onload="myFunction('${i.bookNo}', '${i.fileName}')" />
              <h2 style="font-family: 'Noto Sans KR', sans-serif;">${i.bookName}</h2>
              <span class="glyphicon glyphicon-share-alt"></span>
              <span class="duration">${vs.count}</span>
              
              <input type="button" value="수정" onclick="modify_photoBook(${i.bookNo})"
              style="background-color: white; border: 1px solid #89D06A; font-family: 'Noto Sans KR', sans-serif;">
	   		  <input type="button" value="삭제" onclick="delete_photoBook(${i.bookNo})"
	   		  style="background-color: white; border: 1px solid #fed8ab; font-family: 'Noto Sans KR', sans-serif;">
	    </a>
	    <%-- <input type="button" value="수정" onclick="modify_photoBook(${i.bookNo})">
	    <input type="button" value="삭제" onclick="delete_photoBook(${i.bookNo})"> --%>
	    <%-- <a href="photoBook.do?command=modifyView&&bookNo=${i.bookNo }" >
	     수정</a> --%>
	      <%-- <a onclick="delete_photoBook(${i.bookNo})">삭제</a> --%>
	  </li>
	</c:forEach>
      </ul>
      </div>
      <script type="text/javascript">
    	function myFunction(bookNo, fileName){
    		//alert(fileName);
  			/* $(this).attr("src", "http://image.flaticon.com/sprites/authors/1-freepik.png"); */
    		
  			var strArray= fileName.split('`');
  			$('img').attr("src", "${initParam.root}img/photobook/${sessionScope.mvo.memberId}/"+bookNo+"/"+strArray[0]);
  			$('#test${i.bookNo}').trigger('onload');
  		}  
      $(function(){
      });
      function modify_photoBook(index) {
        	location.href="photoBook.do?command=modifyView&&bookNo="+index;
        }
      function delete_photoBook(index) {
      	if(confirm("해당 포토북을 삭제하시겠습니까?")) {
      		location.href="photoBook.do?command=delete&&bookNo="+ index;
      	}
      }
      </script>
  </body>
</html>
