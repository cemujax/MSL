<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>PbcreTest</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!-- <link
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"
   rel="stylesheet">
    -->
    
      <%-- <link rel="stylesheet" type="text/css" href="${initParam.root }photobook/booklet/bootstrap_index.css">
<link rel="stylesheet" type="text/css" href="${initParam.root }photobook/booklet/bootstrap.min.css"> --%>
     
    <link rel="stylesheet" type="text/css" href="${initParam.root }photobook/booklet/bootstrap_index.css">
<link rel="stylesheet" type="text/css" href="${initParam.root }photobook/booklet/bootstrap.min.css">
    
    <!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet"> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
     
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
<!-- <link rel="stylesheet" type="text/css"    href="http://fonts.googleapis.com/earlyaccess/notosanskr.css"> -->
<link rel="stylesheet" type="text/css"    href="http://fonts.googleapis.com/earlyaccess/nanumpenscript.css">

<!-- <style type="text/css">
ul {
   list-style-type: none;
   margin: 0;
   padding: 0;
   overflow: hidden;
   background-color: #333;
   /* background-color: #f8f8f8; */
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
</style> -->
</head>


<body>

<jsp:include page="photobookNav.jsp"></jsp:include>

   <c:if test="${sessionScope.mvo.memberId == null }">
      <script>
        location.href ="../authentication/login.jsp?location=pbCreate";
     </script>
   </c:if>
   
   <form method="post" action="../photoBook.do" enctype="multipart/form-data">
      <h2 style="font-family: 'Nanum Pen Script', serif; width: 500px; margin-top: 0px; margin-bottom: 0px; margin-left: 20%;" class="col-md-6" >
         포토앨범 명 : <input type="text" name="bookName" style="height: 30px; width: 300px; border: 0px solid #555555; border-bottom: 2px solid black; text-align: left;" >
      </h2>
      <h2 style="margin-top: 0px; margin-bottom: 0px;">
         <input type="reset" id="reset0" value="초기화" onclick="resetImg()" style="background-color: white; color: black; border: 0px solid #555555; margin-left: 13%; font-family: 'Nanum Pen Script', serif;">
         <input type="submit" value="생성하기" style="background-color: white; color: #ff9966; border: 0px solid #555555; border-radius: 15px; margin-left: 0.5%; font-family: 'Nanum Pen Script', serif;"></h2>
         
     
      <div class="book_wrapper" >
         <input type="hidden" name="command" value="create"> <a
            id="next_page_button"></a> <a id="prev_page_button"></a>
         <div id="loading" class="loading">Loading pages...</div>
         <div id="mybook" style="display: none;">
            <div class="b-load">
               <c:forEach begin="0" end="9" var="i">
                  <div >
                     
                        <img
                           src="${initParam.root }img/nofile3.png"
                           id="original${i}" style="width: 350px; height: 250px; margin-top: 5px; margin-left: 10px; margin-right: 30px; border: none;" alt="" />
                     
                     <div align="center" style="margin-left: 30px; margin-top: 10px; margin-bottom: 7px;">
                        <input type="file" name="file[${i}]" id="imgefile${i}" style="text-align: right;" >
                     </div>   

                     <!-- <hr style="margin: 0px;"> -->
                        
                  <%--     <h5 style="font-family: 'Nanum Pen Script', serif; font-size:">
                        옆 빈 칸에 사진${i+1}에 대한 설명을 넣어주세요 <input type="text"
                           name="comment[${i}]" id="text${i}" value=""
                           style="width: 40%; height: 90%;" onkeyup="writeHere(${i})">
                     </h5>  --%>

                  <%--    <p id="bookComment${i}" style="font-size: 150%; font-family: 'Nanum Pen Script', serif;">
                        이 글은 써지는 순간 지워집니다.<br> 저는 당신의 행복한 추억을 기억하는데 도움이 되고자 합니다.<br>
                        다시 홈페이지로 가거나 데모를 보고 싶으면 하단의 버튼을 눌러주세요<br>
                     </p>
                      --%>
                      <textarea rows="4" cols="45" placeholder="사진${i+1} 에 대한 설명을 넣어주세요.
                      " style="font-size: 150%; background-color:rgba(247, 247, 247, 0.17);  border-color:rgba(4, 4, 4, 0.27); margin-top:15px; margin-left:20px; background-color:none; font-family: 'Nanum Pen Script', serif" name="comment[${i}]" id="text${i}"></textarea>
                     

                     <!-- <a href="http://tympanus.net/Tutorials/SliderGallery/"
                        target="_blank" class="demo"
                        style="margin-left: 0px; padding-left: 8%; font-size: 180%; font-family: 'Nanum Pen Script', serif;">
                        견본</a> <a href="index.jsp" target="_blank" class="article"
                        style="margin-left: 0px; padding-left: 8%; font-size: 180%; font-family: 'Nanum Pen Script', serif;">
                        홈으로</a> -->
                  </div>
               </c:forEach>

            </div>
         </div>
      </div>
<h5 style="color: #8c867b; text-align: center; margin-top: 5px;">
※ 앨범은 최대 10페이지까지 이용하실 수 있습니다.</h5>

   </form>
   <script src="../js/pbcreate.js"></script>
</body>
</html>