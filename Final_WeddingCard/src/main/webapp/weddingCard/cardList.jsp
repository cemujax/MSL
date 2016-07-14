<%@ page language="java" contentType="text/html; charset=UTF-8"
	 pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>청첩장 관리</title>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords"
	content="Nuptials Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
		 Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />


  <!-- <script src="js/jquery-ddorai.js"></script> -->
  <link rel="stylesheet" href="weddingCard/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="weddingCard/css/bootstrap_index.css"> -->
  <!-- <link rel="stylesheet"
       href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
     -->

  <!-- <link
       href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/less/navbar.less"
       rel="stylesheet" type="text/css" media="all" /> -->
  <link href="${initParam.root }weddingCard/css/style_index.css" rel="stylesheet" type="text/css"
	media="all" />

  <!-- <link rel="stylesheet" href="css/chocolat.css" type="text/css"
       media="screen" charset="utf-8"> -->

  <link href='//fonts.googleapis.com/css?family=Poiret+One'
	rel='stylesheet' type='text/css'>
  <link
      href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
      rel='stylesheet' type='text/css'>

  <link rel="stylesheet" href="${initParam.root }weddingCard/bootstrap.min.css">

  <style type="text/css">
   /* 스마트폰 가로+세로 */
   @media only screen and (min-device-width : 320px) and (max-device-width : 480px){
   }
   
   /* 스마트폰 가로 */
   @media only screen and (min-width : 321px) {
   }
   
   /* 스마트폰 세로 */
   @media only screen and (max-width : 320px) {

   }
   
   /* 세로 모드 */
   @media all and (orientation:portrait) {
   }
   
   /* 가로 모드 */
   @media all and (orientation:landscape) {
   }
   
   
   /* 데스크탑 브라우저 가로 */
   @media only screen and (min-width : 1224px) {
   }
   
   /* 큰 모니터 */
   @media only screen and (min-width : 1824pxhttp://localhost:8888/Final_WeddingCard/weddingCard/cardListTest.jsp#) {
   }

   .cardManage{
  		background: url("/Final_WeddingCard/img/cardManage.jpg") -350px;
	    height: 350px;
	    background-size: cover;
       
   }
   .cardManage .centered  {
       position: absolute;
       top: 0;
       left: 0;
       right: 0;
       bottom: 0;
   }

   img {
     
       top: 0;
       left: 0;
       right: 0;
       bottom: 0;
       max-width: 100%;
       height: 350px; 
   } 

   img.landscape {
       width: auto;
       height: 100%;    
   } 


  </style>


  <!-- <link rel="stylesheet" href="css/bootstrap.min.css">
     -->
  <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script
      src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

  <!--light-box-files-->
  <script type="text/javascript" charset="utf-8">

   var xhr;
   
   function logout() {
       var f = confirm("로그아웃 하시겠습니까?");
       if (f)
	   location.href = "member.do?command=logout"; //Controller에서 기능으로 연결..
   }
   
   
   function sendUrl(url){
       
       var no = document.getElementsByName("cardNo");
       
       var count = 0;
       for(i=0; i<no.length; i++){
	   if(no[i].checked)
	       count++;
       }
       
       if(count != 1){
	   alert("하나 선택해주세요!");
       }else{
	   if(confirm("폰번호 "+ '${mvo.phoneNumber}'+"로 url을 전송하시겠습니까?")){
	       xhr = new XMLHttpRequest();
	       xhr.onreadystatechange = Callback;
	       var url = "${initParm.root}card.do?command=sendUrl&&url="+url;
	       xhr.open("get", url);
	       xhr.send(null);
	   }
       }
       
   }//sendUrl
   
   function Callback() {
       if (xhr.readyState == 4) {
	   if (xhr.status == 200) {
	       alert("성공적으로 url을 전송했습니다!");
	   }
       }
       //나중에 실패했을때 에러 처리
   } 
   
   function linkQr(url){
	   //alert(url);
	   
	   var height= 650;
	   var width = 600;
	   var sst = window.open('${initParam.root}weddingCard/linkQr.jsp?url='+url,'popwin',
			   'top='+((screen.availHeight - height)/2 - 40) +', left='+(screen.availWidth - width)/2+', width='+width+', height='+height+', toolbar=no, directories=0, location=no, status=no, menubar=no, scrollbars=no, resizable=no');
	   if(sst){
	     sst.focus();
	   }

	   //window.open('${initParam.root}weddingCard/linkQr.jsp', '', 'width=400, height=350, scrollbars=yes');
	  // ${initParam.root}url//qrCode.png
   }
   ///////////////////////////////////////////////////////////////
   $(document).ready(function(){
       
       
       //전체 선택
       $('#allCheck').change(function(){
	   var allCheck = $(this).prop('checked');
	   $('input[name=cardNo]').prop("checked", allCheck);
	   
       });
       
       $('#modifyCard').click(function(){
	   var no = $('input[name=cardNo]:checked');
	   
	   if(no.length == 1){
	       var cardNo = ""; var url = "";
	       
	       no.each(function(index){
		   var datas = $(this).val().split("`");
		   cardNo += datas[0];
		   url += datas[1];
		   
	       });
	       if(confirm("정말 수정 하시겠습니까?")){
		   location.href = "${initParam.root}card.do?command=linkModifyCard&&cardNo="+cardNo+"&&url="+url;
		   //location.href = "${initParam.root}weddingCard/weddingCard.jsp";
	       } 
	   }else{
	       alert("수정할 하나 선택해주세요!	");
	   }
	   
	   
       });
       
       
       $('#deleteCard').click(function(){
	   var no = $('input[name=cardNo]:checked');
	   
	   if(no.length == 0){
	       alert("하나 선택해주세요!	");
	   }else{
	       var cardNo = "";
	       var url = "";
	       
	       no.each(function(index){
		   var datas = $(this).val().split("`");
		   cardNo += datas[0]+ " ";
		   url += datas[1]+ " ";
	       });
	       
	       if(confirm("정말 삭제하시겠습니까?")){
		   location.href = "${initParam.root}card.do?command=deleteCard&&cardNo="+cardNo+"&&url="+url;
	       }
	   }
	   
       });
   });
  </script>


</head>
<body>
  <c:if test="${sessionScope.mvo == NULL }">
    <c:redirect url="${initParam.root}authentication/login.jsp?location=wdCardList"/>
  </c:if>
  
<jsp:include page="weddingcardNav.jsp"></jsp:include>
  
 <!-- 메뉴바 -->	
 <%-- <div class="cardManage" >
 	
<nav class="navbar navbar-inverse" style="background-color: rgba(0, 0, 0, 0.18); border-color: transparent;">		
  <div class="container-fluid">		
    <div class="navbar-header" >		
     <!--  <a class="navbar-brand" href="#">Home</a> -->		
     <a href="${initParam.root }index.jsp"  ><!-- Home</a>	 -->
     <img alt="" src="${initParam.root }img/logo_02.png"  style="height:60px; width: 60px; margin-left: 50px; margin-top: 0px;"> </a>
    </div>		
    		
    	<ul class="nav" >		<!--  navbar-nav -->
				<li class="active"><a href="${initParam.root }index.jsp"><span>Home</span></a></li>		
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
</nav> --%><!-- nav Bar -->
	
<!-- //메뉴바 -->
 <!--  </div> -->

  <!--================= table=============== -->
  
  <div class="container" style="margin-top: 2%;">
	  <div class="jumbotron">
	    <div class="table-responsive" >
	      <table class="table table-condensed table-hover" style="padding-bottom: 0px;">
			<thead style="">
				<tr>
			        <td colspan="6" align="right" style="padding-right: 5%;">
			          <input  type="button" class="btn btn-danger" value="삭제" id="deleteCard" >
			          <input  type="button" class="btn btn-success" value="수정" id="modifyCard" >
			          <input  type="button" class="btn btn-info" value="url 문자전송" id="sendUrl" onclick="sendUrl('${card.url}')">
					</td>
			      </tr>
		      
			   	<tr>
			        <th width="5%" style="text-align: center;"><input type="checkbox" id="allCheck" name="allCheck" ></th>
					<th width="15%" style="text-align: center;">QR 코드</th>
			        <th width="15%" style="text-align: center;">청첩장 주소</th>
			        <th width="15%" style="text-align: center;">스킨 이미지</th>
			        <th width="10%" style="text-align: center;">예식장</th>
			        <th width="20%" style="text-align: center;">예식일</th>
	      		</tr>
			</thead>
	
		<tbody>
		   <c:forEach items="${cardList}" var="card" varStatus="i">
			<tr style="" align="center" >
         		 <td style="padding-top: 20px;">
         		 	<input type="checkbox" id="cardNo" name="cardNo" value="${card.cardNo}`${card.url}">
         		 </td>
         		 
		 		 <td style="width:64px; height:64px; ">
		   			 <a href="./card.do?command=getQr&&url=${card.url}">
		   			 <a href="javascript:linkQr('${card.url}');">
	    	  		<img src="${initParam.root}img/qr_small.png" style="max-height:100%; max-width:100%"/>
		  			</a>
		 		 </td>
		 		 
		          <td style="padding-top: 20px;">
		            <a href="javascript:window.open('${initParam.root }url/${card.url}.jsp');" style="color:#000;">${card.url}</a>          
		           </td>
         		 <td style="">
         		 	<c:if test="${card.cardTemplateVO == null}">
         		 		<img src="${initParam.root }img/nofile3.png"
         		 	 style="width: 100px; height: 50px; ">
         		 	</c:if>
         		 	<c:if test="${card.cardTemplateVO != null}">
         		 		<img src="${initParam.root}weddingCard/preview_${card.cardTemplateVO.templateName}/img/thumbnail_${card.cardTemplateVO.templateName}.jpg"
         		 	 style="width: 100px; height: 50px; ">
         		 	</c:if>
         		 	
         		 </td>
        	  <c:set var="cDate" value="${fn:split(card.cardDate, ':') }"/>
         		<td style="padding-top: 20px;">
         			${card.hallName} 
         		</td>
          		<td style="padding-top: 20px;">
          			${cDate[0]}:${cDate[1]}
          		</td>
       	 </tr>
      </c:forEach>
      
	      </table>
	     
	      
	    </div>
	    
	  
	   </div> 
  </div>
  
  
</body>
</html>
