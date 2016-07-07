<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Please be open-source" />
<script type="application/x-javascript">
    addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
      function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- nav쪽 -->
<link rel="stylesheet" href="css/bootstrap_index.css" />
<link href="post/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/jquery.countdown.css" />

<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/jquery.countdown.css" />
<!-- 부트스트랩 -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


<!-- <script type="text/javascript" src="js/cycle2.js"></script> -->
<!-- carousel -->
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet">

<style type="text/css">
body table {
   margin: 0px;
   margin-left: auto;
   margin-right: auto;
   width: 70% border-collapse: collapse;
}

tr td {
   text-align: center;
}

th {
   text-align: center;
}

div {
   display: block;
}

footer {
   padding: 80px 0;
   text-align: center;
}

footer .social a {
   border: 2px solid #ffffff;
}

footer .social a {
   margin: 0 8px;
   padding: 15px;
   -webkit-border-radius: 50%;
   -moz-border-radius: 50%;
   -ms-border-radius: 50%;
   -o-border-radius: 50%;
   border-radius: 50%;
   display: inline-block;
   -webkit-transition: all 0.25s ease-in-out;
   -moz-transition: all 0.25s ease-in-out;
   -ms-transition: all 0.25s ease-in-out;
   -o-transition: all 0.25s ease-in-out;
   transition: all 0.25s ease-in-out;
}

ul {
   list-style: none;
}
.comments{
   display: none;
}
 .container-fluid {
    padding-top: 20px;
} 
.nav{
   margin-left: 75%;
    width: 400px;

}
/*  .nav>li {
    
    float: right;
}  */
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

<script type="text/javascript">
   function deleteReview(id, date) {
      if(comfirm("해당 리뷰를 삭제하시겠습니까?")) {
         location.href="${initParam.root}reviewComment.do?command=deleteReviewComment&&id="+ id+ "&&date="+ date;
      }
   } // deleteReview
   
   function checkLogin() {
      if("${sessionScope.mvo == NULL}" == "true"){
         alert("로그인 후 이용해주세요.");
         
         return false;
      }
      
      else
         return true;
   } // checkLogin
</script>

</head>
<body style="background-color: white;">

   <!--  -->
<div style="
      background-image: url(${initParam.root }img/post_review_board.png); width: 100%; height: 300px; background-repeat: no-repeat;" align="center">
   <nav class="navbar navbar-inverse" style="background-color: rgba(0, 0, 0, 0.18); border-color: transparent;">      
  
  <div class="container-fluid">      
    <div class="navbar-header" >      
     <!--  <a class="navbar-brand" href="#">Home</a> -->      
     <a href="${initParam.root }index.jsp" class="navbar-brand" ><!-- Home</a>    -->
     <img alt="" src="${initParam.root }img/logo_02.png"  style="width: 60px; margin-left: 50px; margin-top: -30px;"> </a>
    </div>      
       <ul class="nav">      <!--  navbar-nav -->
            <%-- <li class="active"><a href="${initParam.root }index.jsp"><span>Home</span></a></li> --%>      
                <li class="dropdown">      
                  <a class="dropdown-toggle" data-toggle="dropdown" href="#">커뮤니티<span class="caret"></span></a>      
                       <ul class="dropdown-menu">      
                           <li><a href="${initParam.root}post.do?command=getAllAnoneQnAs">익명게시판</a></li>      
                              <li><a href="${initParam.root}post.do?command=getAllQnAs">웨딩QnaA</a></li>      
                              <li><a href="${initParam.root}reviewComment.do?command=getAllReviewComments">칭찬해요</a></li>      
                        </ul>      
               </li>      
                                 
                           <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">청첩장<span class="caret"></span></a>      
                             <ul class="dropdown-menu">      
                               <li><a href= "${initParam.root }weddingCard/weddingCard.jsp" >청첩장만들기</a></li>      
                               <li><a href="${initParam.root }./card.do?command=getAllCards">청첩장보기</a></li>      
                             </ul>      
                           </li>      
                                 
                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">포토북<span class="caret"></span></a>      
                             <ul class="dropdown-menu">      
                               <li><a href="${initParam.root }photobook/photoBookCreate.jsp">포토북만들기</a></li>      
                               <li><a href="${initParam.root }photoBook.do?command=list">포토북보기</a></li>      
                             </ul>      
                           </li>      
                                 
                     <!--    <li><a href="#mail" class="scroll"><span>Mail Us</span></a></li> -->      
                     </ul>      
           </div>      
</nav><!-- nav Bar -->
	 <p style="font-weight: bold; font-size:25px; margin-top: 5%;">칭찬해요</p>
</div>

<%-- 
   <br><br><br><br>
   <!-- 새로운 리뷰 작성 폼 시작 -->
   <div class="container" style="background-image: url(${initParam.root }img/post_review_board.png); width: 100%; height: 250px" align="center">
      <p style="font-weight: bold; font-size:25px; margin-top: 7%;">칭찬해요</p>
   </div> --%>
   
   <div class="container" style="width: 100%; padding-right: 8%; padding-left:8%; padding-top: 2%;">
      <div class="jumbotron">
         <div class="row">
            <div class="col-lg-8 col-lg-offset-2 text-center">
               <!-- <a href="#" id="load">Load More</a> -->
               <p>사용 후기를 남겨주세요</p>
               <p>등록된 내용은 수정/삭제가 불가능합니다.</p>
            </div>
            <div class="col-lg-10 col-lg-offset-1 text-center">
               <form class="contact-form row" action="${initParam.root }/reviewComment.do"
                  method="post">
                  <input type="hidden" name="command" value="writeReviewComment">
                  <div class="col-md-4" style="">
                     <label></label><span>
                     <input type="text" name="name" value="${mvo.name}"  readonly="readonly" class="form-control"></span>
                  </div>
                  <div class="col-md-4 col-md-offset-4" style="width: 160px;">
                     <label></label> 
                     <input type="submit" value="글 등록" 
                     data-toggle="modal" data-target="#alertModal"
						class="btn btn-warning"
                        style="width: 100px; margin-left: 160px;" onclick="return checkLogin()">
                     <i class="ion-android-arrow-forward"></i>
                  </div>

                  <div class="col-md-12">
                     <label></label>
                     <textarea class="form-control" rows="9"
                        placeholder="Your message here.." name="content"></textarea>
                  </div>
                  
               </form>
            </div>
         </div>
      </div>
   </div>


   <!-- 새로운 리뷰 작성 폼 끝 -->
   
   
   <c:forEach items="${reviewList}" var="review" varStatus="vs">
      
      <div class="container comments">
         <div class="jumbotron">
            <span>
               <span>
                  ${review.memberVO.name} &nbsp; 
                  <c:set var="writeDate" value="${fn:split(review.writeDate, ' ') }" />
                  <c:set var="writeTime" value="${fn:split(writeDate[1], ':') }" />
                  ${writeDate[0] } ${writeTime[0] }:${writeTime[1] }
               </span>
               
               <c:if test="${mvo.memberId == 'pcp8282' }">
                  <span style="text-align: right;">
                     <a style="cursor:pointer;" onclick="deleteReview('${review.memberVO.memberId}', '${review.writeDate })">삭제</a>
                  </span>
               </c:if>
            </span>
            
            <hr>
            ${review.content}
         </div>
      </div>
      
   </c:forEach>
      
   <script type="text/javascript">
   $(function(){
       $(".comments").slice(0, 5).show(); // select the first ten
       $("#load").click(function(e){ // click event for load more
           e.preventDefault();
           $(".comments:hidden").slice(0, 5).show(); // select next 10 hidden divs and show them
           if($(".comments:hidden").length == 0){ // check if any hidden divs still exist
               alert("더이상 댓글이 없습니다."); // alert if there are none left
           }
       });
   });
   </script>
      <div style="text-align: center; margin-bottom: 30px;">
      <a href="#" id="load"><input type="submit" value="댓글 더 보기" data-toggle="modal" data-target="#alertModal"
                        class="btn btn-warning" style="width: 200px;"></a><!-- class="btn btn-primary btn-lg" -->
                        
      </div>                  
   <!-- footer begin -->
 <footer style="background-color: #142740; height: 100%; padding-bottom: 220px; padding-top: 12px;">
            <div class="container" style="height: 160px;">
				<!-- style="padding-top: 6%" -->
                
                <a href="#" class="scrollpoint sp-effect3">
                    <img src="${initParam.root}img/logo.png" alt=""  style="text-align: center; width: 350px;"><!-- width: 100% -->
                </a>
                
                <a href="#home1" class="scroll">
                <img src="${initParam.root}img/7.png" alt=" " style="float: right;margin-top: 50px;" >
				</a>
                <div class=" social">
                    <a href="#" class="scrollpoint sp-effect3"><i class="fa fa-twitter fa-lg"></i></a>
                    <a href="#" class="scrollpoint sp-effect3"><i class="fa fa-google-plus fa-lg"></i></a>
                    <a href="#" class="scrollpoint sp-effect3"><i class="fa fa-facebook-square fa-lg"></i></a>
                </div>
                    	<ul class="" style="text-align: right; font-size:14px;color: #fff;">
							<li><span>(주)MSL</span><span>대표이사 : 홍길동</span>
							<li><span>대표전화 : 031-111-1004 </span><span>팩스 : 02-559-1001~3</span><span>고객센터 : abc@naver.com</span></li>
							<li><span>경기도 성남시 분당구 삼평동 대왕판교로 670길 유스페이스2 B동 8층</span></li>
			 					<li class="copy"><span>Copyright ©MSL  Co.,Ltd. All rights reserved.</span></li>
						</ul>
            </div>
            
        </footer>
   <!-- footer end -->

</body>
</html>