<%@ page language="java" contentType="text/html; charset=UTF-8"
	 pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    
    <link rel="stylesheet" type="text/css" href="${initParam.root }photobook/booklet/bootstrap_index.css">
<link rel="stylesheet" type="text/css" href="${initParam.root }photobook/booklet/bootstrap.min.css">
    
    <!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet"> -->
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

 <!-- 메뉴바 -->		
<nav class="navbar navbar-inverse" style="background-color: rgba(0, 0, 0, 0.18); border-color: transparent;">		
  <div class="">		
    <div class="navbar-header" >		
     <!--  <a class="navbar-brand" href="#">Home</a> -->		
     <a href="${initParam.root }index.jsp"  >
     <img alt="" src="${initParam.root }img/logo_02.png"  style="width: 60px; margin-left: 50px; margin-top: 0px;"> </a>
    </div>		
    		
    	<ul class="nav" style="margin-left: 67%;">		<!--  navbar-nav -->
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
</nav><!-- nav Bar -->
	
<!-- //메뉴바 -->
  
  <c:if test="${sessionScope.mvo.memberId == null }">
  	<script>
  		location.href ="${initParam.root}authentication/login.jsp";
  	</script>
  </c:if>
  
  
  <div style="margin-left: 10%; margin-right: 10%;">
    <h1>PhotoBook List</h1><p>
      <ul class="list-unstyled video-list-thumbs row">
	<c:forEach items="${pbList}" var="i" varStatus="vs">
	  <li class="col-lg-3 col-sm-4 col-xs-6" >
	    <a href="photoBook.do?command=detail&&no=${i.bookNo}" id="photoBookHref${i.bookNo }"><!-- src="http://www.freeiconspng.com/uploads/vector-book-icon-vector-graphic--creattor-7.jpg" -->
              <img id="test${i.bookNo}" src="${initParam.root }img/db.JPG" alt="Barca" class="img-responsive" height="130px" onload="myFunction('${i.bookNo}', '${i.fileName}')" />
              <h2 style="font-family: 'Noto Sans KR', sans-serif; text-align: center;">${i.bookName}</h2>
             <!--  <span class="glyphicon glyphicon-share-alt"></span> -->
              <span class="duration">${vs.count}</span>
        <input type="button" value="수정" onclick="modify_photoBook(${i.bookNo})"
              style="margin-left: 65%; background-color: white; border: 1px solid #89D06A; font-family: 'Noto Sans KR', sans-serif;">
	   		  <input type="button" value="삭제" onclick="delete_photoBook(${i.bookNo})"
	   		  style="background-color: white; border: 1px solid #fed8ab; font-family: 'Noto Sans KR', sans-serif;">      
	    </a>
	  </li>
	</c:forEach>
      </ul>
      </div>
      <script type="text/javascript">
    	function myFunction(bookNo, fileName){
    		//alert(fileName);
  			/* $(this).attr("src", "http://image.flaticon.com/sprites/authors/1-freepik.png"); */
    		
  			var strArray= fileName.split('`');
  			$('#test'+bookNo).attr("src", "${initParam.root}img/photobook/${sessionScope.mvo.memberId}/"+bookNo+"/"+strArray[0]);
  			$('#test'+bookNo).trigger('onload');
  		}  
      $(function(){
    	  /* var strArray= fileName.split('`');
			$('#test${i.bookNo}').attr("src", "${initParam.root}img/photobook/${sessionScope.mvo.memberId}/"+bookNo+"/"+strArray[0]);
			$('#test${i.bookNo}').trigger('onload'); */
      });
      function modify_photoBook(index) {
    	  $('#photoBookHref'+ index).attr("href", "photoBook.do?command=modifyView&&bookNo="+index);
        	//location.href="photoBook.do?command=modifyView&&bookNo="+index;
        }
      function delete_photoBook(index) {
      	if(confirm("해당 포토북을 삭제하시겠습니까?")) {
      	  $('#photoBookHref'+ index).attr("href", "photoBook.do?command=delete&&bookNo="+ index);
      		//location.href="photoBook.do?command=delete&&bookNo="+ index;
      	}
      }
      </script>
  </body>
</html>
