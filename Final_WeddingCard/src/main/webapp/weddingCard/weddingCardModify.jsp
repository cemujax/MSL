<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="keywords"
   content="modal, window, overlay, modern, box, css transition, css animation, effect, 3d, perspective" />
<meta name="author" content="MSL" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Wedding Card</title>
<link rel="stylesheet"
   href="${initParam.root}weddingCard/css/bootstrap.min.css">

<!-- <link href="${initParam.root}weddingCard/css/bootstrap-responsive.css" rel="stylesheet"> -->

<link rel="stylesheet"
   href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/ -->
<link rel="stylesheet"
   href="${initParam.root}weddingCard/css/font-awesome.min.css">
<link rel="stylesheet"
   href="${initParam.root}weddingCard/css/jquery-ui.css" />
<link rel="stylesheet"
   href="${initParam.root}weddingCard/css/uploadifive.css" />
<link rel="stylesheet"
   href="${initParam.root}weddingCard/css/jquery.cropbox.custom.css" />
<link rel="stylesheet"
   href="${initParam.root}weddingCard/css/builder.css" />
<link rel="stylesheet" href="${initParam.root}weddingCard/css/style.css">
<link rel="stylesheet"
   href="${initParam.root}weddingCard/css/common.css">
<link rel="stylesheet" type="text/css"
   href="${initParam.root}weddingCard/css/default.css" />
<link rel="stylesheet" type="text/css"
   href="${initParam.root}weddingCard/css/component.css" />
<link href="${initParam.root}weddingCard/css/bootstrap_index.css"
   rel="stylesheet" type="text/css" media="all" />
<link href="${initParam.root}weddingCard/css/style_index.css"
   rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet"
   href="${initParam.root}weddingCard/css/chocolat.css" type="text/css"
   media="screen" charset="utf-8">

<!-- 우리꺼 -->
<link rel="stylesheet" type="text/css"
   href="${initParam.root}weddingCard/css/weddingCard.css">

<style type="text/css">
[data-tooltip-text]:hover {
   position: relative;
   display: inline-block;
    border-bottom: 1px dotted black;
}

[data-tooltip-text]:hover:after {
    background-color: #000000;
   background-color: rgba(0, 0, 0, 0.8);

   -webkit-box-shadow: 0px 0px 3px 1px rgba(50, 50, 50, 0.4);
   -moz-box-shadow: 0px 0px 3px 1px rgba(50, 50, 50, 0.4);
   box-shadow: 0px 0px 3px 1px rgba(50, 50, 50, 0.4);

   -webkit-border-radius: 5px;
   -moz-border-radius: 5px;
   border-radius: 5px; 

   color: #FFFFFF;
   font-size: 12px;
   content: attr(data-tooltip-text);

    margin-bottom: 10px;
   bottom: 100%;
   right: 0;    
   padding: 7px 12px;
   position: absolute;
   width: auto;
   min-width: 50px;
   max-width: 300px;
   word-wrap: break-word;
   white-space: pre;

   z-index: 1;
   
}
</style>
<!-- ================================== -->
<script type="text/javascript"
   src="${initParam.root}weddingCard/js/jquery-1.12.3.js"></script>
<!-- <script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script> -->
<script
   src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script src="${initParam.root}weddingCard/js/modernizr.custom.js"></script>
<!-- <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
 -->
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="${initParam.root}weddingCard/js/jquery-ui.min.js"></script>
<script type="text/javascript"
   src="${initParam.root}weddingCard/js/hammer.js"></script>
<script type="text/javascript"
   src="${initParam.root}weddingCard/js/jquery.mousewheel.js"></script>
<script
   src="${initParam.root}weddingCard/js/jquery.datepicker.regional.kr.js"></script>
<script src="${initParam.root}weddingCard/js/jquery.scrollTo.min.js"></script>

<!-- 이미지 업로드 -->
<!-- <script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>  -->
<script src="${initParam.root}weddingCard/js/jquery.form.js"></script>

<!-- 우리꺼 -->
<script type="text/javascript">
   function pbCallback() {
      if (xhr.readyState == 4) {
         if (xhr.status == 200) {
            var jsonData = JSON.parse(xhr.responseText);
            var pb = "";

            for (var i = 0; i < jsonData.pbList.length; i++) {
               pb += "<li class='col-lg-3 col-sm-4 col-xs-6' >"
                     + "<a onclick='chooseBook("
                     + jsonData.pbList[i].bookNo
                     + ")'>"
                     /* + "<img src='http://www.freeiconspng.com/uploads/vector-book-icon-vector-graphic--creattor-7.jpg' alt='Barca' class='img-responsive' height='130px' />" */
                     + "<img src='"
                     + '${initParam.root}'
                     + "img\\photobook\\"
                     + '${mvo.memberId}'
                     + "\\"
                     + jsonData.pbList[i].bookNo
                     + "\\"
                     + jsonData.pbList[i].fileName.split('`')[0]
                     + "' rel='tooltip' title='두번 클릭시 추가한 포토북이 해제됩니다' alt='photo' class='img-responsive' height='130px' />"
                     + jsonData.pbList[i].bookName
                     /* + "<span class='glyphicon glyphicon-share-alt' ></span>" */
                     + "<span class='duration'>" + i + "</span>"
                     + "</a></li>";
            }

            document.getElementById("pbList-tab").innerHTML = pb;
         }
      }
   } // pbCallback
   
   $(document).ready(function() {
	      init_tempate = "";
	      var msg = '${cardVO.cardContext}';
	     
	      function init_preview() {
	         /* 왼쪽 미리보기 화면을 타겟으로 잡고 폼값을 submit */
	         
	         while(msg.indexOf('\n') != -1){
	   	  		msg = msg.replace("\n", "<br>");
	   	  		$('#cardContext').val(msg);
	   	  	}  
	         $('#frmWeddingCard').attr('target','left_skin_preview')
	         .attr('action',"weddingCard/preview_" + init_tempate
	                     + "/preview_modify.jsp").submit();
	      }

	      var templateName = '${cardVO.cardTemplateVO.templateName}';
	      $('input[name=templateName]').val(templateName); //맨처음 로딩시 스킨 이름 설정
	      
	      // 생성시 선택한 스킨으로 체크되고 preview에 뜨게
	      $("input:radio[name='template']:radio[value='${cardVO.cardTemplateVO.templateName}']")
	      .attr('checked', true);
	      init_tempate = $('input:radio[name=template]:checked').val();

	      if($('input[name=template]:checked').attr('id').indexOf('template_advance') != -1){
	         $('#GroomDiv').show();
	         $('#BrideDiv').show();
	      }else{
	         $('#GroomDiv').hide();
	         $('#BrideDiv').hide();
	      }

	      //예식날짜 불러오게 처리
	      $("#ampm").val('${ampm}').prop("selected", true);
	      $("#hour").val('${hour}').prop("selected", true);
	      $("#min").val('${min}').prop("selected", true);
	      //======================= dDay  ======================
	      var sel_date = new Date('${cardVO.cardDate}');
	      // 년 월 일 hour
	      var year = sel_date.getFullYear();
	      var month = sel_date.getMonth();
	      var date = sel_date.getDate();
	      var sel_time = new Date(year, month, date);
	      // dDay 구함
	      var timeLag = sel_time.getTime() - jQuery.now();
	      // 시간으로
	      timeLag = (timeLag / 3600 / 1000);
	      var dDay;
	      if (timeLag % 24 == 0) {
	         dDay = timeLag / 24;
	      } else {
	         dDay = timeLag / 24 + 1;
	      }
	      dDay = parseInt(dDay);
	      document.getElementById("dDay").value = dDay;
	      
	      // ======================= dDay 끝 ======================
	      
	      while(msg.indexOf('<br>') != -1){
		        msg = msg.replace("<br>", "\n");
		        $('#cardContext').val(msg);//초대장 내용
		     }
	      init_preview();
	      while(msg.indexOf('<br>') != -1){
		        msg = msg.replace("<br>", "\n");
		        $('#cardContext').val(msg);//초대장 내용
		     }
	   });//ready
	</script>
<script src="${initParam.root}weddingCard/js/weddingCardModify.js"></script>
<script src='//apis.daum.net/maps/maps3.js?apikey=3f17108ee4529ef634468783d7ef555a&libraries=services'></script>
<body  >
   <c:if test="${sessionScope.mvo == NULL }">
      <c:redirect url="${initParam.root}authentication/login.jsp?location=wdCard" />
   </c:if>



<nav class="navbar navbar-inverse" >
      <div class="container-fluid">
         <div class="navbar-header">
            <a class="navbar-brand" href="${initParam.root}index.jsp" >
            <img alt="" src="${initParam.root}img/logo_02.png" style="width: 60px; margin-left: 50px; margin-top: 0px;"> 
            </a>
         </div>
         <ul class="nav">
            <li><a href="${initParam.root}card.do?command=getAllCards">청첩장 관리</a></li>
            <li class="lnb_icon5"><a href="javascript:logout()"> 
            <span class="glyphicon glyphicon-log-in"></span> 로그아웃
            </a></li>
         </ul>
      </div>
   </nav>
   <!-- 메뉴바 -->

   <form name="frmWeddingCard" id="frmWeddingCard" method="post">
      <div class="ui-grid-a contents">
         <div class="ui-block-a">
            <div class="cont_look">
               <div class="look_bg">
                  <img src="${initParam.root}img/preview_mobile2.png" alt="미리보기화면"><span
                     class="blind">미리보기영역</span>
               </div>
               <div class="look_input">

                  <!-- 왼쪽 미리보기 부분 -->
                  <iframe
                     src="${initParam.root}/weddingCard/preview_Fall In Love/preview.jsp"
                     name="left_skin_preview" id="left_skin_preview" scrolling="auto">
                  </iframe>
               </div>

               <!--  ============== 모바일 ============== -->
               <div class="md-modal md-effect-1" id="modal-1">
                  <div class="md-content">
                     <div class="cont_preview mobile" id="cont_preview">

                        <div class="look_bg">
                           <img src="${initParam.root}img/preview_mobile2.png"
                              alt="미리보기화면"
                              style="width: 250px; height: 500px; margin-left: 40%; margin-top: 15%;">


                        </div>
                        <div class="look_input"
                           style="margin-left: 40.5%; margin-top: 9%;">
                           <iframe src="preview_${cardVO.cardTemplateVO.templateName}/preview.jsp"
                              name="left_skin_preview_mobile" id="left_skin_preview_mobile"
                              scrolling="auto"> </iframe>
                        </div>
                        <button class="md-close"
                           style="margin-top: 2%; background-color: #ff752f;">Close
                           me!</button>
                     </div>
                  </div>
               </div>

               <div class="column">
                  <button class="md-trigger mobile" id="md-mobile"
                     style="background-color: #ff752f; border-radius: 10px;"
                     data-modal="modal-1">PHONE</button>
               </div>

               <!--  ============== PC ============== -->
               <div class="md-modal md-effect-2" id="modal-2">
                  <div class="md-content">
                     <div data-role="page" id="skin_page" data-url="skin_page"
                        tabindex="0" class="ui-page ui-page-theme-a ui-page-active">
                        <div class="look_input"
                           style="width: 90%; height: 60%; margin-left: 4%; margin-top: 3%;">
                           <iframe src="preview_${cardVO.cardTemplateVO.templateName}/preview.jsp"
                              name="left_skin_preview_pc" id="left_skin_preview_pc"
                              scrolling="auto"> </iframe>
                        </div>
                        <button class="md-close"
                           style="margin-top: 770px; background-color: #ff752f;">Close
                           me!</button>
                     </div>

                  </div>
               </div>

               <div class="column">
                  <button class="md-trigger" id="md-pc" data-modal="modal-2"
                     style="background-color: #ff752f; border-radius: 10px;">PC</button>
               </div>

            </div>
         </div>
      </div>

      <div class="md-overlay"></div>
   <!--    the overlay element classie.js by @desandro:
      https://github.com/desandro/classie -->
      <script src="js/classie.js"></script>
      <script src="js/modalEffects.js"></script>
<!-- 
      for the blur effect by @derSchepp
      https://github.com/Schepp/CSS-Filters-Polyfill -->
      <script>
         // this is important for IEs
         var polyfilter_scriptpath = '/js/';
      </script>

      <!-- Tab 영역 include  -->

      <div id="tabs">
         <ul>
            <li>
               <a href="#tabs-1" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-1" data-tooltip-text="원하는 스킨을 자유롭게 선택하세요"> 
               <p> <i class="fa fa-calendar-check-o"></i></p>
               <span style="font-size: 12px;">스킨선택</span>
               </a>
            </li>

            <li>
               <a href="#tabs-2" data-tooltip-text="신랑 , 신부 정보를 각각 입력해주세요"> 
               <p><i class="fa fa-list"></i></p>
               <span style="font-size: 12px;">신랑신부</span>
               </a>
            </li>

            <li>
               <a href="#tabs-3" onclick="photoBookAjax()" data-tooltip-text="생성하신 포토북 중 청첩장에 넣고 싶은 것을 고르세요"> 
               <p><i class="fa fa-list"></i></p>
               <span style="font-size: 12px;">포토북</span>
            </a></li>

            <li>
               <a href="#tabs-4"  data-tooltip-text="예식장 정보를 입력해주세요"> 
               <p><i class="fa fa-bars"></i></p>
               <span style="font-size: 12px;">예식장</span>
               </a>
            </li>

         </ul>

         <div id="tabs-1">
				<input type="hidden" name="templateName" value="" id="templateName">
				<table style="margin-top: 10px;width: 400px; ">
					<tr>
						<td colspan="2" style="padding-top: 0px;font-size: 13px">
							스킨사진&nbsp;:
						</td>
						<td colspan="2" style="width: 80px; padding:0px;">
							<input type="file" name="imgFile" id="imgFile" rel="tooltip" 
                       		 title="사진을 선택한 후 업로드를 눌러주세요"
							style="font-size: 10px; width: 150px; padding-top: 10px; float: left; margin-left: 10px;">
							<i class="fa fa-close" style="font-size:24px;color:red;padding-top: 5px;" id="imgFileDelete" rel="tooltip"
							 title="스킨 기본 이미지로 돌아갑니다"></i>
						</td>
						<td colspan="2" style="padding : 0px;">
							<input type="submit" class="btn" 
							style="width: 65px;font-size: 12px; border: 1px solid #e1e1e1;" value="업로드 " id="sendImage">
						</td>
						
					</tr>
				</table>
            <table style="margin-top: -30px; margin-bottom: 30px;">
            
            <tr align="center"><!-- 스킨선택영역 1번째 라인 -->
               <c:forEach items="${templateList}" var="template" varStatus="i">
                   <td>
                  <c:choose>
					 	<c:when test="${template.templateType == 'basick'}">
					 			<img
							src="${initParam.root}weddingCard/preview_${template.templateName}/img/thumbnail_${template.templateName}.jpg"
							class="img-rounded" rel="tooltip" title="스킨 이미지 추가 서비스 제공" style="height: 70px;"> 
					 		</c:when>
					 		<c:otherwise>
					 			<img
							src="${initParam.root}weddingCard/preview_${template.templateName}/img/thumbnail_${template.templateName}.jpg"
							class="img-rounded" rel="tooltip" title="+신랑/신부이미지 추가 서비스 제공" style="height: 70px;"> 
					 		</c:otherwise>
					 	</c:choose> 
                     
                     <input
                     type="radio" name="template" id="template_${template.templateType}${i.count}" value="${template.templateName}">
                  </td>
                  
               <c:if test="${i.count % 3 == 0}">
                  </tr><tr>
               </c:if>      
               </c:forEach>
               </tr>
            </table>
            
         </div>
         <!-- tabs-1 -->

         <!-- 이미지 히든값 -->
         <input type="hidden" name="imgSrc" value="${imgSrc}"> <input
            type="hidden" name="imgGroomSrc" value="${imgGroomSrc}"> <input
            type="hidden" name="imgBrideSrc" value="${imgBrideSrc}">
         
         <div id="tabs-2" style="font-size: 13px; text-align: left;">
				<table style="width: 400px;">

					<tr>
							<td colspan="5">
								<div class="section">
									<textarea name="cardContext" id="cardContext"
										class="input_box_type2" 
										rel="tooltip"
										title="초대(모시는)글을 입력 해주십시요"
										placeholder="초대글(200자 제한)"></textarea>
								</div>
							</td>
						</tr>
			

					<tr id="BrideDiv" style="display: table-row;">
	<td colspan="2" style="text-align: right; padding-top: 0px;"> 신부사진:</td>
  
<td colspan="3" style="width:200px;">
<input type="file" name="imgBride" id="imgBride" rel="tooltip" title="사진을 선택한 후 업로드를 눌러주세요" 
style="padding-top:5px;font-size: 10px; width: 150px; float:left; ">
<i class="fa fa-close" style="font-size:24px;color:red;" id="imgBirdeDelete" rel="tooltip" title="스킨 기본 이미지로 돌아갑니다"></i>
<input type="submit" value="업로드 " class="btn" style="float:right;width: 65px;font-size: 12px; margin-right:33px; 
border: 1px solid #e1e1e1;" id="sendBride">
</td>
<td colspan="2" style="padding : 0px; padding-top: 8px;">
							
</td>
					</tr>

					<tr>
						<td colspan="2" style="text-align: right; padding-top: 0px;">신부이름:</td>
						<td colspan="2">
						<input type="text" id="groomName" class="form-control input-sm" id="inputsm"
							name="groomName" value="${groomName}"> 
						</td>
					</tr>


					<tr>
						<td colspan="2" style="text-align: right; padding-top: 0px;">신부번호:</td>
						<td colspan="2"><input type="text" id="groomTel" class="form-control input-sm"
						 id="inputsm"
							name="groomTel" value="${groomTel}"
							onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)'
							style='ime-mode: disabled;'></td>
					</tr>

					<!--  신랑 영역 -->
					<tr id="GroomDiv">
						<td colspan="2" style="text-align: right; padding-top: 0px;">신랑사진:</td>
						<td colspan="3">
							<input type="file" name="imgGroom" id="imgGroom"
							style="font-size: 10px; width: 150px;float:left; padding-left: 5px;" rel="tooltip"
                       		 title="사진을 선택한 후 업로드를 눌러주세요">
                        	<i class="fa fa-close" style="font-size:24px;color:red" id="imgGroomDelete" 
							rel="tooltip" title="스킨 기본 이미지로 돌아갑니다"></i>
							<input type="submit"  class="btn" 
							style="float:right; margin-right:33px;width: 65px;font-size: 12px; border: 1px solid #e1e1e1;" 
							value="업로드 " id="sendGroom">
                        </td>
                        
						<td colspan="2" style="padding : 0px; padding-top: 8px;">
						
						</td>
					</tr>

					<tr>
						<td colspan="2" style="text-align: right; padding-top: 0px;">신랑이름:</td>
						<td colspan="2">
						<input type="text" name="brideName" id="brideName"
						class="form-control input-sm" id="inputsm"
							value="${brideName}"></td>
					</tr>

					<tr>
						<td colspan="2" style="text-align: right; padding-top: 0px;">신랑번호:</td>
						<td colspan="2">
						<input type="text" name="brideTel" id="brideTel"
						class="form-control input-sm" id="inputsm"
							value="${brideTel}" onkeydown='return onlyNumber(event)'
							onkeyup='removeChar(event)' style='ime-mode: disabled;'></td>
					</tr>

				</table>
			</div>
         <!-- tab2 End  -->

         <!-- ###################### photobook ####################### -->
         <input type="hidden" id="photoBookImg" name="photoBookImg" value="${pbvo.fileName}">
         <input type="hidden" id="photoBookNo" name="photoBookNo" value="${pbvo.bookNo}">
         <input type="hidden" id="photoBookComment" name="photoBookComment" value="${pbvo.bookComment}">

         <div id="tabs-3">
            <jsp:include page="weddingCard_pbList.jsp" />
         </div>

         <div id="tabs-4">
            <div class="ui-grid-f section">
               <table style="width: 400px; font-size: 15px;">
                  <!-- <tr>
                     <td colspan="2">예식일</td>
                  </tr> -->

                  <tr>
                     <td colspan="5">
                        <div class="ui-block-b">
                           <input type="text" id="datepicker" class="input_box_type1"
                              name="cardDate" value="${cardVO.cardDate}" placeholder="날짜" rel="tooltip"
                        title="예식일을 입력해주세요">
                        </div>
                        <div class="ui-block-c">
                           <input type="hidden" id="dDay" name="dDay" value=""> 
                           <select   name="ampm" id="ampm" class="input_box_type1">
                              <option value="AM" selected="selected">오전</option>
                              <option value="PM">오후</option>
                           </select>
                        </div>
                        <div class="ui-block-d">
                           <select name="hour" id="hour" class="input_box_type1">
                              <option value="1">01</option>
                              <option value="2">02</option>
                              <option value="3">03</option>
                              <option value="4">04</option>
                              <option value="5">05</option>
                              <option value="6">06</option>
                              <option value="7">07</option>
                              <option value="8">08</option>
                              <option value="9">09</option>
                              <option value="10" selected="selected">10</option>
                              <option value="11">11</option>
                              <option value="12">12</option>
                           </select>
                        </div>
                        <div class="ui-block-e">
                           <select name="min" id="min" class="input_box_type1">
                              <option value="" selected="selected">분</option>
                              <option value="00" selected="selected">00</option>
                              <option value="05">05</option>
                              <option value="10">10</option>
                              <option value="15">15</option>
                              <option value="20">20</option>
                              <option value="25">25</option>
                              <option value="30">30</option>
                              <option value="35">35</option>
                              <option value="40">40</option>
                              <option value="45">45</option>
                              <option value="50">50</option>
                              <option value="55">55</option>
                           </select>
                        </div>
                     </td>
                  </tr>
                  
                  <tr>
							<td colspan="2" align="left">예식장소 : &nbsp; 
							</td>
							
							<td colspan="2">
							<input type="text"
							class="form-control input-sm" 
								style="margin-top: 15px;" value="${cardVO.hallLocation}"
								id="hallLocation" readonly="readonly" name="hallLocation" rel="tooltip"
                        title="주소검색 버튼을 눌러 예식장 주소를 입력해주세요">
							</td>
							<td>
							<input type="button" onclick="sample5_execDaumPostcode()"
								class="btn" style="width: 50px; height:30px;
								font-size: 12px; border: 1px solid #e1e1e1;"
							value="검색" >
							</td>
						</tr>
						
						<tr>
							<td colspan="2" align="left">예식장명&nbsp;: &nbsp; 
							</td>
							<td colspan="2">
							<input type="text"
							class="form-control input-sm" 
								id="hallName" name="hallName" value="${cardVO.hallName}" maxlength="15" rel="tooltip"
                        title="예식장 이름을 입력해주세요">
							</td>
						</tr>
						
						<tr>
							<td colspan="2" align="left">예식장Tel:
							</td>
							<td colspan="2">
							<input type="text"
							class="form-control input-sm"
								id="hallTel" name="hallTel" value="${cardVO.hallTel}" rel="tooltip"
                        title="예식장  번호를 입력해주세요" onkeydown='return onlyNumber(event)'onkeyup='removeChar(event)'>
							</td>
						</tr>
						
						<tr>
							<td colspan="2" align="left">
						URL :
							</td>
							
							<td colspan="2">
								<input type="text" name="url" id="url"
								class="form-control input-sm" value="${cardVO.url}" readonly="readonly"
									onkeyup="urlCheck()">
							</td>
					</tr>
						<tr>
							<td colspan="5" align="left" style="padding-top: 0; padding-left: 85px;">
							<span id="checkResult"></span>
						</td>
						</tr>

                  <tr>
                    <td colspan="6">
                        <div id="map"
                           style="width: 300px; height: 200px; margin-top: 5px; display: none;margin-left: 10%;">
                           <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
                           <script
                              src="http://apis.daum.net/maps/maps3.js?apikey=e5bf529fb1433a428d71db4065ceda03&libraries=services"></script>
                           <script>
                              var mapContainer = document
                                    .getElementById('map'), // 지도를 표시할 div
                              mapOption = {
                                 center : new daum.maps.LatLng(
                                       50.537187, 127.005476), // 지도의 중심좌표
                                 level : 2
                              // 지도의 확대 레벨
                              };

                              //지도를 미리 생성
                              var map = new daum.maps.Map(
                                    mapContainer, mapOption);
                              //주소-좌표 변환 객체를 생성
                              var geocoder = new daum.maps.services.Geocoder();
                              //마커를 미리 생성
                              var marker = new daum.maps.Marker({
                                 position : new daum.maps.LatLng(
                                       37.537187, 127.005476),
                                 map : map
                              });

                              function sample5_execDaumPostcode() {
                                 new daum.Postcode({oncomplete : function(
                                                data) {
                                             // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                                             // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                                             var fullAddr = data.address; // 최종 주소 변수
                                             var extraAddr = ''; // 조합형 주소 변수

                                             // 기본 주소가 도로명 타입일때 조합한다.
                                             if (data.addressType === 'R') {
                                                //법정동명이 있을 경우 추가한다.
                                                if (data.bname !== '') {
                                                   extraAddr += data.bname;
                                                }
                                                // 건물명이 있을 경우 추가한다.
                                                if (data.buildingName !== '') {
                                                   extraAddr += (extraAddr !== '' ? ', '
                                                         + data.buildingName
                                                         : data.buildingName);
                                                }
                                                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                                                fullAddr += (extraAddr !== '' ? ' ('
                                                      + extraAddr
                                                      + ')'
                                                      : '');
                                             }

                                             // 주소 정보를 해당 필드에 넣는다.
                                             document
                                                   .getElementById("hallLocation").value = fullAddr;
                                             // 주소로 좌표를 검색
                                             geocoder.addr2coord(data.address,
                                                         function(
                                                               status,
                                                               result) {
                                                            // 정상적으로 검색이 완료됐으면
                                                            if (status === daum.maps.services.Status.OK) {
                                                               // 해당 주소에 대한 좌표를 받아서
                                                               var coords = new daum.maps.LatLng(
                                                                     result.addr[0].lat,
                                                                     result.addr[0].lng);
                                                               // 지도를 보여준다.
                                                               mapContainer.style.display = "block";
                                                               map
                                                                     .relayout();
                                                               // 지도 중심을 변경한다.
                                                               map
                                                                     .setCenter(coords);
                                                               // 마커를 결과값으로 받은 위치로 옮긴다.
                                                               marker.setPosition(coords)
                                                                  
                                                               /* 왼쪽 미리보기 화면을 타겟으로 잡고 폼값을 submit */
                                                               //document.getElementById(frmWeddingCard).attr('target','left_skin_preview').attr('action',"../weddingCard/preview_"+sel_template+"/preview.jsp").submit();
                                                                  
                                                            }
                                                         });
                                          }
                                       }).open();
                              }
                           </script>
                        </div>
                     </td>
                  </tr>
                  <!-- map  -->
               </table>
            </div>
         </div>
         <!-- tabs-4 -->

         <div>
            <input style="background: #f96; width: 100%; height: 50px;"
               type="button" value="청첩장 수정" id="modifyCardBtn">
         </div>

      </div>
      <!-- tabs -->
   </form>

</body>
</html>