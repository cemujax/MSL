<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>초대장 보기</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
   content="Nuptials Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />



<!-- <script src="js/jquery-ddorai.js"></script> -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet"
   href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">


<!-- <link
   href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/less/navbar.less"
   rel="stylesheet" type="text/css" media="all" /> -->
<link href="css/style_index.css" rel="stylesheet" type="text/css"
   media="all" />

<!-- <link rel="stylesheet" href="css/chocolat.css" type="text/css"
   media="screen" charset="utf-8"> -->

<link href='//fonts.googleapis.com/css?family=Poiret+One'
   rel='stylesheet' type='text/css'>
<link
   href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
   rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="css/bootstrap.min.css">

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
		
		if(confirm("폰번호 "+ '${mvo.phoneNumber}'+"로 url을 전송하시겠습니까?")){
			xhr = new XMLHttpRequest();
			xhr.onreadystatechange = Callback;
			var url = "${initParm.root}card.do?command=sendUrl&&url="+url;
			xhr.open("get", url);
			xhr.send(null);
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
	///////////////////////////////////////////////////////////////
	$(document).ready(function(){
		
		
		//전체 선택
		$('#allCheck').change(function(){
			var allCheck = $(this).prop('checked');
			$('input[name=cardNo]').prop("checked", allCheck);
			
			var no = $('input[name=cardNo]:checked');
			if(no.length == 0){
				$('#deleteCard').attr('disabled',true);
				
			}else{
				$('#deleteCard').removeAttr('disabled');
			}
		});
		
		$('#modifyCard').click(function(){
			
			
		});
		
		
		$('#deleteCard').click(function(){
			var no = $('input[name=cardNo]:checked');
			
			var text = "";
			no.each(function(index){
				text += $(this).val()+ " ";
			});
			
			if(confirm("정말 삭제하시겠습니까?")){
				location.href = "${initParam.root}card.do?command=deleteCard&&cardNo="+text;
			}
		});
	});
</script>



<style type="text/css">
body table {
   margin: 0px;
   margin-left: auto;
   margin-right: auto;
   width: 70% border-collapse: collapse;
}
tr th {
   text-align: center;
   font-size: 40;
}
tr td {
   text-align: center;
}

table tr:HOVER {
   background-color:#E8FFFF;
}

.cardManage{
}

body li {
transition: 0.5s all;
}


</style>

</head>
<body>
 <c:if test="${sessionScope.mvo == NULL }">
	<c:redirect url="${initParam.root }login/loginregister.jsp"/>
</c:if>
 
 
   
   <!-- 메뉴바 -->
<nav class="navbar navbar-inverse" style="background-color: #f8f8f8; border-color: #e7e7e7;">
  <div class="container-fluid">
    <div class="navbar-header" style="margin-top: 10px;font-size: 20px;">
     <!--  <a class="navbar-brand" href="#">Home</a> -->
     <a href="${initParam.root }index.jsp" ><span style="color:#777;">Home</span></a>
    </div>
    
    	<ul class="nav navbar-nav" style=" margin-left:72%;">
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
							<li class="lnb_icon5">
								<a href="javascript:logout()" style="width:100%; padding:14px 15px 15px 0px; ">
								<span class="glyphicon glyphicon-log-in"></span> 로그아웃</a>
							</li>
					
						</ul>
  </div>
</nav>
	
	
<!-- //메뉴바 -->
   
   <!-- nav div End -->

   <div class="container" id="cardManage" style="background-image: url('weddingCard/images/cardManage.jpg'); 
          width:100%; height: 360px; background-repeat: no-repeat;">
      <div class="row" style="margin-top: 5%;" align="center">
         <font color="#fff" style="font-size: 90px;">초대장 관리</font>
      </div>
   </div>


   <div class="container" style="margin-top: 2%;">
      <div class="table-responsive">
      <table class="table">
         <thead>
            <tr align="center" class="thead">
               <th style="font-size: 20px; width: 10%;" >
               <input type="checkbox" id="allCheck" name="allCheck" >
               <!-- <span class="glyphicon glyphicon-check"></span> -->
               </th>
               <th style="font-size: 20px; width: 20%;">초대장 주소</th>
               <th style="font-size: 20px; width: 10%;">스킨 타입</th>
               <th style="font-size: 20px; width: 30%;">예식</th>
               <th style="font-size: 20px; width: 10%;">
               
                  <input style="width:50px; " type="button" class="btn btn-danger"value="삭제" id="deleteCard" >
                  </th>
            </tr>
         </thead>
         <tbody>
            <c:forEach items="${cardList}" var="card" varStatus="i">
               <tr align="center" style="font-size: 20px;" >
                  <td><input type="checkbox" id="cardNo" name="cardNo" value="${card.cardNo}"></td>
                  <td><a href="./card.do?command=getCard&&url=${card.url }">${card.url}</a></td>
                  <td>${card.template}</td>
                   <c:set var="cDate" value="${fn:split(card.cardDate, ':') }"/>
                  <td>${card.hallName} &nbsp;&nbsp;
                   ${cDate[0]}:${cDate[1]}</td>
                  <td>
                  <input style="width:50px;" type="button" class="btn btn-success"value="수정" id="modifyCard" >
                 <input style="width:80px; " type="button" class="btn btn-info" value="url 전송" id="sendUrl" onclick="sendUrl('${card.url}')">
				</td>
               </tr>
            </c:forEach>
         </tbody>
      </table>
      </div>
   </div>


</body>
</html>