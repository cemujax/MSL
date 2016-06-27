<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
   content="Nuptials Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />


<!-- <script src="js/jquery-ddorai.js"></script> -->
<link rel="stylesheet" href="weddingCard/css/bootstrap.min.css">

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

<link rel="stylesheet" href="weddingCard/css/bootstrap.min.css">

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
	position: relative;
	padding-top: 100%;
	overflow: hidden; 
 	/*  border: solid 2px; */
 	padding:0px;
   
	 
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

/* table 쪽 */
.table-users {
  border: 1px solid #327a81;
 /*  border-radius: 10px; */
  box-shadow: 3px 3px 0 rgba(0, 0, 0, 0.1);
  max-width: calc(100% - 2em);
  margin: 1em auto;
  overflow: hidden;
  width: 1200px;
}

table {
  width: 100%;
}
table td, table th {
  color: #000;
  padding: 10px;
}
table td {
  text-align: center;
  vertical-align: middle;
}
table td:last-child {
  font-size: 0.95em;
  line-height: 1.4;
  text-align: center;
  width: 100px;
}
table th {
  background-color: #fdc562;
  font-size: 20px;
   text-align: center;
}
table tr:nth-child(2n) {
  background-color: white;
}
table tr:nth-child(2n+1) {
  background-color: rgba(251, 205, 145, 0.61);
}
tr:last-child .s{
  	width: 100px;
  }

@media screen and (max-width: 700px) {
  table, tr, td {
    display: block;
  }
th{
	text-align: center;
}
  td:first-child {
    position: absolute;
    top: 50%;
    -webkit-transform: translateY(-50%);
            transform: translateY(-50%);
    width: 80px;
  }
  td:not(:first-child) {
    clear: both;
    margin-left: 100px;
    padding: 4px 20px 4px 130px;
    position: relative;
    text-align: left;
  }
  td:not(:first-child):before {
    color: #000;
    display: block;
    left: 0;
    position: absolute;
    margin-right: 10px;
  }
  td:nth-child(2):before {
    content: '초대장 주소:';
  }
  td:nth-child(3):before {
    content: '스킨타입:';
  }
  td:nth-child(4):before {
    content: '예식장:';
  }
	td:nth-child(5):before {
    content: '예식일:';
  }
  
  tr {
    padding: 10px 0;
    position: relative;
  }
  tr:first-child {
    display: none;
  }
  tr:last-child {
   /* float: right; */
       height: 100px;
  }
  
    tr:last-child .s{
  	width: 350px;
    margin-bottom: 5%;
    margin-left: 20%;
  }
}
@media screen and (max-width: 500px) {


  td:first-child {
    background-color: #fdc562;
    border-bottom: 1px solid #91ced4;
    /* border-radius: 10px 10px 0 0; */
    position: relative;
    top: 0;
    -webkit-transform: translateY(0);
            transform: translateY(0);
    width: 100%;
    
    
  }

  td:not(:first-child) {
    margin: 0;
    padding: 5px 1em;
    width: 100%;
  }
  td:not(:first-child):before {
    font-size: .8em;
    padding-top: 0.3em;
    position: relative;
  }
  /* td:last-child {
    padding-bottom: 1rem !important;
  } */

  tr {
    background-color: white !important;
    border: 1px solid #6cbec6;
    border-radius: 10px;
    box-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
    margin: 0.5rem 0;
    padding: 0;
  }

	tr:last-child .s{
  	width: 150px;
    margin-bottom: 5%;
    margin-left: 10%;
  }
  .table-users {
    border: none;
    box-shadow: none;
    overflow: visible;
  }
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
				alert("수정수정");
			}else{
				alert("하나 선택해주세요!	");
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
	<c:redirect url="${initParam.root }login/loginregister.jsp"/>
</c:if>
 
 
   
   <!-- 메뉴바 -->
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
	

   <div class="cardManage" >
      	<img alt="" src="weddingCard/images/cardManage.jpg">
   </div>

  <!--================= table=============== -->
  <div class="table-users">

   <table>
      <tr align="center">
         <th width="5%"><input type="checkbox" id="allCheck" name="allCheck" ></th>
         <th width="15%">초대장 주소</th>
         <th width="15%">스킨타입</th>
         <th width="10%">예식장</th>
         <th width="20%">예식일</th>
      </tr>

      <c:forEach items="${cardList}" var="card" varStatus="i">
               <tr align="center" style="font-size: 20px;" >
                  <td><input type="checkbox" id="cardNo" name="cardNo" value="${card.cardNo}`${card.url}"></td>
                  <td><a href="./card.do?command=getCard&&url=${card.url }">${card.url}</a></td>
                  <td>${card.template}</td>
                   <c:set var="cDate" value="${fn:split(card.cardDate, ':') }"/>
                  <td>${card.hallName} </td>
                   <td>${cDate[0]}:${cDate[1]}</td>
               </tr>
            </c:forEach>
		<tr>
           		<td colspan="5" align="right">
                  <input class="s" type="button" class="btn btn-danger" value="삭제" id="deleteCard" >
                  <input class="s" type="button" class="btn btn-success" value="수정" id="modifyCard" >
                 <input  class="s" type="button" class="btn btn-info" value="url 전송" id="sendUrl" onclick="sendUrl('${card.url}')">
				</td>
         </tr>
		
      
   </table>
</div>
  
  
   


</body>
</html>