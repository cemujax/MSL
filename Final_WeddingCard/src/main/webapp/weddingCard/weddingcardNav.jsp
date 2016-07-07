<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.nav{
 margin-left: 67%;
    width: 440px;
    
}
 .cardManage{
  		background: url("/Final_WeddingCard/img/cardManage.jpg") -350px;
	    height: 350px;
	    background-size: cover;
       
   }
</style>

</head>
<body>
<!-- 메뉴바 -->		
<div class="cardManage" >

<nav class="navbar navbar-inverse" style="background-color: rgba(0, 0, 0, 0.18); border-color: transparent;">		
  <div class="container-fluid">      
    <div class="navbar-header" >      
     <a href="${initParam.root }index.jsp" ><!-- Home</a>    -->
     <img alt="" src="${initParam.root}img/logo_02.png"  style="width: 60px;height: 60px; margin-left: 50px; margin-top: 0px;"> </a>
    </div>      
       <ul class="nav">      <!--  navbar-nav -->
      	 <li><a href="#"><span>메뉴얼</span></a></li>
      	 	
      	 	 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">포토북<span class="caret"></span></a>      
                 <ul class="dropdown-menu">      
                    <li><a href="${initParam.root }photobook/photoBookCreate.jsp">포토북만들기</a></li>      
                    <li><a href="${initParam.root }photoBook.do?command=list">포토북보기</a></li>      
                 </ul>      
             </li>  
      	 
      	 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">청첩장<span class="caret"></span></a>      
                             <ul class="dropdown-menu">      
                               <li><a href= "${initParam.root }weddingCard/weddingCard.jsp" >청첩장만들기</a></li>      
                               <li><a href="${initParam.root }./card.do?command=getAllCards">청첩장보기</a></li>      
                             </ul>      
                           </li>   
      	 	
                <li class="dropdown">      
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">커뮤니티<span class="caret"></span></a>      
                     <ul class="dropdown-menu">      
                        <li><a href="${initParam.root}post.do?command=getAllAnoneQnAs">익명게시판</a></li>      
                        <li><a href="${initParam.root}post.do?command=getAllQnAs">웨딩QnA</a></li>      
                        <li><a href="${initParam.root}reviewComment.do?command=getAllReviewComments">칭찬해요</a></li>      
                     </ul>      
                </li>      
                                 
                     </ul>      
           </div>  
</nav><!-- nav Bar -->

</div>
</body>
</html>