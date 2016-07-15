<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="post/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<!-- 부트스트랩 -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Insert title here</title>

<style type="text/css">

	.container-fluid {
    padding-top: 20px;
} 
.nav{
   margin-left: 60%;
    width: 500px;
    font-size: 15px;

}
.nav>li>a {
    /* width: 140px; */
   /*  float: right; */
    color: #fff;
}
.container {
    width: 1170px;
    height: auto;
}
</style>

</head>
<body>
<div style="
      background-image: url(${initParam.root }img/post_anone_board.png); width: 100%; height: 300px; background-repeat: no-repeat;" align="center">
   <nav class="navbar navbar-inverse" style="background-color: rgba(0, 0, 0, 0.18); border-color: transparent;">      
  
  <div class="container-fluid">      
    <div class="navbar-header" >      
     <!--  <a class="navbar-brand" href="#">Home</a> -->      
     <a href="${initParam.root }index.jsp" class="navbar-brand" ><!-- Home</a>    -->
     <img alt="" src="${initParam.root}img/logo_02.png"  style="width: 60px; margin-left: 50px; margin-top: -30px;"> </a>
    </div>      
       <ul class="nav">      <!--  navbar-nav -->
		 <c:if test="${sessionScope.mvo.memberId == 'pcp8282' }">
                  <li>	<a href="admin.do?command=getAllMembers"  style="color:#fff;">
                  		 <span class="glyphicon glyphicon-wrench"></span>Admin
                  	</a></li>
                  </c:if>
		       
      	 <li><a href="${initParam.root}service/menual.jsp"><span>메뉴얼</span></a></li>
      	 
      	 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">청첩장<span class="caret"></span></a>      
                             <ul class="dropdown-menu">      
                               <li><a href= "${initParam.root}card.do?command=getAllCardTemplates" >청첩장만들기</a></li>      
                               <li><a href="${initParam.root }card.do?command=getAllCards">청첩장보기</a></li>      
                             </ul>      
                           </li>   
      	 	
      	 	
      	 	 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">포토북<span class="caret"></span></a>      
                 <ul class="dropdown-menu">      
                    <li><a href="${initParam.root }photobook/photoBookCreate.jsp">포토북만들기</a></li>      
                    <li><a href="${initParam.root }photoBook.do?command=list">포토북보기</a></li>      
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
   <p style="font-weight: bold; font-size:25px; margin-top: 7%;">익명 게시판</p>
</div>
</body>
</html>