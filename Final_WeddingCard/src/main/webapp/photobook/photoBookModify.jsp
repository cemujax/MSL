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
   
  <!--  <link 
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet"> -->
    
      <link rel="stylesheet" type="text/css" href="${initParam.root }photobook/booklet/bootstrap_index.css">
<link rel="stylesheet" type="text/css" href="${initParam.root }photobook/booklet/bootstrap.min.css">
 
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
    <script src="${initParam.root}photobook/booklet/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="${initParam.root}photobook/booklet/jquery.booklet.1.1.0.min.js" type="text/javascript"></script>

    <link href="${initParam.root}photobook/booklet/jquery.booklet.1.1.0.css" type="text/css" rel="stylesheet" media="screen" />
    <link rel="stylesheet" href="${initParam.root}css/photobookstyle.css" type="text/css" media="screen"/>

    <script src="${initParam.root}photobook/cufon/cufon-yui.js" type="text/javascript"></script>
    
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
  
 <!--  <style type="text/css">
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
  <c:if test="${sessionScope.mvo.memberId == null }">
     <script>
        location.href ="${initParam.root}authentication/login.jsp";
     </script>
  </c:if>
  
  <jsp:include page="photobookNav.jsp"></jsp:include>
  
    <form method="post" action="photoBook.do" enctype="multipart/form-data">
    <h2 style="font-family: 'Nanum Pen Script', serif; width: 500px; margin-top: 0px; margin-bottom: 0px; margin-left: 20%;" class="col-md-6" >
         포토앨범 명 : <input type="text" name="bookName" value="${pbvo.bookName }" style="height: 30px; width: 300px; border: 0px solid #555555; border-bottom: 2px solid black; text-align: left;" >
      </h2>
      <h2 style="margin-top: 0px; margin-bottom: 0px;">
         <input type="reset" id="reset0" value="초기화" onclick="resetImg()" style="background-color: white; color: black; border: 0px solid #555555; margin-left: 13%; font-family: 'Nanum Pen Script', serif;">
         <input type="submit" value="수정하기" style="background-color: white; color: #ff9966; border: 0px solid #555555; border-radius: 15px; margin-left: 0.5%; font-family: 'Nanum Pen Script', serif;"></h2>
      <%-- <h2 class="title" 
      style="margin-left: 20%; font-family: 'Noto Sans KR', sans-serif; ">
    책 제목&nbsp;<input type="text" name="bookName" value="${pbvo.bookName }">
       <input type="reset" value="내용 삭제" style="background-color: white; color: #fed8ab; border: 0px solid #555555; border-radius: 15px;">
    <input type="submit" value="수정" style="background-color: white; color: #89D06A; border: 0px solid #555555; border-radius: 15px;">
      </h2> --%>
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
     <c:set value="${pbImgList[i]}" var="list"/>
       <div>
       <input type="file" name="file[${i}]" id="imgefile${i}"style="text-align: center;"><p>    
        
        <!-- <input type="reset" value="내용 삭제" style="background-color: white; color: #fed8ab; border: 0px solid #555555; border-radius: 15px;">
    <input type="submit" value="전송" style="background-color: white; color: #89D06A; border: 0px solid #555555; border-radius: 15px;"> -->
       <!-- modify addition -->
       <c:choose>
          <c:when test="${list[0] != null && list[0] != '' }">
             <img
                src="img/photobook/${pbvo.memberVO.memberId}/${pbvo.bookNo}/${list[0]}"
                id="original${i}" style="width: 350px; height: 250px; margin-top: 5px; margin-left: 10px; margin-right: 30px; border: none;" alt="" 
            />
            <hr>
            <h5 style="font-family: 'Nanum Pen Script', serif; font-size: 18px;">
                 수정할 멘트를 적어주세요. <%-- ${i+1} --%>
                 <input type="text" name="comment[${i}]" id="text${i}"
                    value="${list[1] }" style="width: 40%; height: 90%;" onkeyup="writeHere(${i})">
            </h5>
            
            <p id="bookComment${i}" style="font-size: 150%; font-family: 'Nanum Pen Script', serif;">
            ${list[1] }</p>
          </c:when>
          <c:otherwise>
             <%-- <input type="file" name="file[${i}]" id="imgefile${i}"style="text-align: center;"><p>        --%>
             
             <img
                src="http://104.244.124.250/~conollyp/diyFiles/123_File_Upload_Donload_m.jpg"
                id="original${i}" style="width: 300px; height: 163px;" alt="" 
            />
            
            <h5 style="font-family: 'Nanum Pen Script', serif;" ">
              옆 빈 칸에 사진${i+1}에 대한 설명을 넣어주세요 <input type="text" name="comment[${i}]" id="text${i}"
                  value="" style="width: 40%; height: 90%;"onkeyup="writeHere(${i})">
      </h5>
      
      <p id="bookComment${i}" style="font-size: 150%; font-family: 'Nanum Pen Script', serif;">
      이 글은 써지는 순간 지워집니다.<br>
      저는 당신의 행복한 추억을 기억하는데 도움이 되고자 합니다.<br>
      </p>
         </c:otherwise>
       </c:choose>
  <!-- <a href="http://tympanus.net/Tutorials/SliderGallery/" target="_blank" class="demo" 
         style="margin-left: 0px; padding-left: 8%; font-size: 180%; font-family: 'Nanum Pen Script', serif;">
         견본</a> 
      <a href="index.jsp" target="_blank" class="article" 
         style="margin-left: 0px; padding-left: 8%; font-size: 180%; font-family: 'Nanum Pen Script', serif;">
         홈으로</a> -->
       </div>
       </c:forEach>     

     </div>
   </div>
      </div>
      <!-- <h1><input type="submit" value="Submit"></h1> -->

    </form>
    <script src="${initParam.root }/js/pbcreate.js"></script>
  </body>
</html>