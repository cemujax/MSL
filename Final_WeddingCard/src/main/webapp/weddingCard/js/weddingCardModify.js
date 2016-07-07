/**
 * 
 */
var xhr;
var checkFlag;

/*
 * 있는 url / 없는 url인지
 */
function urlCheck() { // Ajax 기술이 사용됨

	var url = document.getElementById("url").value;
	xhr = new XMLHttpRequest();
	xhr.onreadystatechange = callback;
	xhr.open("post", "card.do");
	xhr.setRequestHeader("Content-Type",
			"application/x-www-form-urlencoded;charset=utf-8");
	xhr.send("command=urlCheck&&url=" + url);
}// urlcheck
function callback() {

	if (xhr.readyState == 4) {
		if (xhr.status == 200) {

			var jsonData = JSON.parse(xhr.responseText); // true, false
			var resultSpan = document.getElementById("checkResult");
			var ch = document.frmWeddingCard.url.value;

			if (ch.length >= 1) {

				if (jsonData.flag) {
					resultSpan.innerHTML = "<font color ='red'><b>해당 URL 사용불가</b></font>";
					checkFlag = false;
				} else {
					resultSpan.innerHTML = "<font color ='green'><b>해당 URL 사용가능</b></font>";
					checkFlag = true;
				}

			} else {
				resultSpan.innerHTML = "<font color ='orange'><b>1자 이상 입력해주세요</b></font>";
			}

		}
	}
}// callback

// =========photoBook ====================
function photoBookAjax() {
	xhr = new XMLHttpRequest();
	xhr.onreadystatechange = pbCallback;
	var url = "photoBook.do?command=ajaxList";
	xhr.open("get", url);
	xhr.send(null);
} // photobookAjax

function chooseBook(bookNo) {
	   if(document.getElementById("photoBookNo").value == bookNo) {
	      clearCheckBook();
	   }
	   
	   else {
	      document.getElementById("photoBookNo").value = bookNo;
	      
	      $.ajax({
	         url : "photoBook.do?command=ajaxDetail&&no=" + bookNo,
	         type : 'GET',

	         success : function(response) {
	            document.getElementById("photoBookImg").value = response.pbvo.fileName;
	            document.getElementById("photoBookComment").value = response.pbvo.bookComment;

	            var imgValue = document.getElementById("photoBookImg").value;
	            var contentValue = document.getElementById("photoBookComment").value;

	            // preview 적용 위해
	            $('#photoBookImg').val(imgValue).trigger('change');
	            $('#photoBookComment').val(contentValue).trigger('change');
	         },// success
	         error : function(jqXHR) {
	            console.log('error');
	         }
	      });
	   }
	} // photobookAjax

	function clearCheckBook(){
	   document.getElementById("photoBookNo").value = "";

	   document.getElementById("photoBookImg").value = "";
	   document.getElementById("photoBookComment").value = "";

	   var imgValue = document.getElementById("photoBookImg").value;
	   var contentValue = document.getElementById("photoBookComment").value;

	   // preview 적용 위해
	   $('#photoBookImg').val(imgValue).trigger('change');
	   $('#photoBookComment').val(contentValue).trigger('change');
	} // clearCheckBook

// /////////////////////////// Tel Only Input Number
function onlyNumber(event) {
	event = event || window.event;

	var keyID = (event.which) ? event.which : event.keyCode;
	if ((keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105)
			|| keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39)
		return;
	else {
		return false;
	}
}

function removeChar(event) {
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if (keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39)
		return;
	else
		event.target.value = event.target.value.replace(/[^0-9]/g, "");
}

// 상단이미지

function logout() {
	var f = confirm("로그아웃 하시겠습니까?");
	if (f)
		location.href = "member.do?command=logout"; // Controller에서 기능으로
	// 연결..
}

// ////////////////////////////////JQuery ///////////////////////////////

$(document)
		.ready(
				function() {

					$("#tabs").tabs();

					// /=========== 템플릿쪽===================================

					var sel_template = $('input:radio[name=template]:checked')
							.val();

					 $('input[id*=template_basick]').click(function(){
						   sel_template = ($(this).val());
						   $('#GroomDiv').hide();  $('#BrideDiv').hide();
					  		set_preview();
					  	});
					   
					   $('input[id*=template_advance]').click(function(){
						   sel_template = ($(this).val());
						   $('#GroomDiv').show();  $('#BrideDiv').show();
						   set_preview();
					   });
					// /=========== 템플릿쪽 End===================================

					$("#datepicker").change(function() {
						var sel_date = new Date($(this).val());
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
						set_preview();

					});

					// /==================== 예식 정보 =========================
					$("#datepicker").datepicker({
						dateFormat: 'yy-mm-dd',
						showButtonPanel : true,
						minDate : '0',
					});
					
					$('#ampm').change(function() {
						//$(this).prop("selected", false);
						set_preview();
					});
					$('#hour').change(function() {
						//$(this).prop("selected", false);
						set_preview();
					});
					$('#min').change(function() {
						//$(this).prop("selected", false);
						set_preview();
					});
					$('#cardContext').change(function() {

						set_preview();
					});
					$('#hallName').change(function() {

						set_preview();
					});

					$('#hallLocation').change(function() {

						set_preview();
					});

					// /==================== 신랑 신부 정보 =========================
					$('#groomName').change(function() {
						set_preview();
					});

					$('#groomTel').change(function() {
						set_preview();
					});

					$('#brideName').change(function() {
						set_preview();
					});
					$('#brideTel').change(function() {
						set_preview();
					});

					$('#photoBookImg').change(function() {
						set_preview();
					});
					$('#photoBookComment').change(function() {
						set_preview();
					});

					/*
					 * $('#imgFile').change(function(){
					 * $('#imgFile').MultiFile({ max : 1, //업로드 최대 파일 갯수 (지정하지
					 * 않으면 무한대) accept : 'jpg|png|gif', //허용할 확장자(지정하지 않으면 모든
					 * 확장자 허용) maxfile : 10240, //각 파일 최대 업로드 크기 STRING : {
					 * //Multi-lingual support : 메시지 수정 가능 remove : "제거", //추가한
					 * 파일 제거 문구, 이미태그를 사용하면 이미지사용가능 duplicate : "$file 은 이미 선택된
					 * 파일입니다.", denied : "$ext 는(은) 업로드 할수 없는 파일확장자입니다.",
					 * selected : '$file 을 선택했습니다.', toomuch : "업로드할 수 있는 최대크기를
					 * 초과하였습니다.($size)", toomany : "업로드할 수 있는 최대 갯수는 $max개
					 * 입니다.", toobig : "$file 은 크기가 매우 큽니다. (max $size)" },
					 * //list:"#afile3-list" //파일목록을 출력할 요소 지정가능 }); });
					 */

					var form = document.frmWeddingCard;
					var imgFormat = ['.jpg', '.png', '.gif','.bmp'];//이미지 업로드 허용 확장자
					// ================== 메인이미지==========================
					$("#sendImage")
							.bind(
									"click",
									function() {

										var formData = new FormData(form);
								   		var formatCheck = false;
								   		
								   		for(var i = 0; i < imgFormat.length; i++) {//대소문자 비교
								     		  if($('#imgFile').val().indexOf(imgFormat[i]) != -1 
								     				  || $('#imgFile').val().indexOf(imgFormat[i].toUpperCase()) != -1)
								     			 formatCheck = true; // 사용가능한 확장자
								   		};//for
								   		if(!formatCheck){
								   			alert("지원하지 않는 확장자입니다"	);
								   			$('#imgFile').val("");
								   			return false;
								   		}

										if ($('#imgFile').val() != null
												&& $('#imgFile').val() != '') {
											form.encoding = "multipart/form-data"; // 파일전송위해
											// 변경
											$
													.ajax({
														url : "card.do?command=uploadImageByModifyCard&&flag=mainImage",
														data : formData,
														dataType : 'text',
														processData : false,
														contentType : false,
														type : 'POST',

														success : function(
																response) {
															// refresh 때문에
															// 다시잡아줘야된다.
															document.frmWeddingCard.encoding = "application/x-www-form-urlencoded";

															var src = $(
																	'#imgFile')
																	.val()
																	.split('\\')[2];
															$(
																	'input[name=imgSrc]')
																	.val(src);
															setTimeout(
																	function() {
																		set_preview();
																	}, 3000);

														},// success
														error : function(jqXHR) {
															console
																	.log('error');
														}
													});
										} else {
											alert("이미지를 선택해주세요!");
											return false;
										}
									});

					// ================== 신랑이미지==========================
					$("#sendGroom")
							.bind(
									"click",
									function() {
										var formData = new FormData(form);
										var formatCheck = false;
								   		
								   		for(var i = 0; i < imgFormat.length; i++) {//대소문자 비교
								     		  if($('#imgGroom').val().indexOf(imgFormat[i]) != -1 
								     				  || $('#imgGroom').val().indexOf(imgFormat[i].toUpperCase()) != -1)
								     			 formatCheck = true; // 사용가능한 확장자
								   		};//for
								   		if(!formatCheck){
								   			alert("지원하지 않는 확장자입니다"	);
								   			return false;
								   		}
								   		
										if ($('#imgGroom').val() != null
												&& $('#imgGroom').val() != '') {
											form.encoding = "multipart/form-data"; // 파일전송위해
											// 변경

											$
													.ajax({
														url : "card.do?command=uploadImageByModifyCard&&flag=imgGroom",
														data : formData,
														dataType : 'text',
														processData : false,
														contentType : false,
														type : 'POST',

														success : function(
																response) {
															// refresh 때문에
															// 다시잡아줘야된다.
															document.frmWeddingCard.encoding = "application/x-www-form-urlencoded";

															 var src = $('#imgGroom').val().split('\\')[2];
															 $('input[name=imgGroomSrc]').val(src);// 히든값에 넣음
															setTimeout(
																	function() {
																		set_preview();
																	}, 3000);
														},
														error : function(jqXHR) {
															console
																	.log('error');
														}
													});
										} else {
											alert("이미지를 선택해주세요!");
											return false;
										}
									});

					// ================== 신부이미지==========================
					$("#sendBride")
							.bind(
									"click",
									function() {
										var formData = new FormData(form);
										var formatCheck = false;
								   		
								   		for(var i = 0; i < imgFormat.length; i++) {//대소문자 비교
								     		  if($('#imgBride').val().indexOf(imgFormat[i]) != -1 
								     				  || $('#imgBride').val().indexOf(imgFormat[i].toUpperCase()) != -1)
								     			 formatCheck = true; // 사용가능한 확장자
								   		};//for
								   		if(!formatCheck){
								   			alert("지원하지 않는 확장자입니다"	);
								   			return false;
								   		}
										if ($('#imgBride').val() != null
												&& $('#imgBride').val() != '') {
											form.encoding = "multipart/form-data"; // 파일전송위해
											// 변경

											$
													.ajax({
														url : "card.do?command=uploadImageByModifyCard&&flag=imgBride",
														data : formData,
														dataType : 'text',
														processData : false,
														contentType : false,
														type : 'POST',

														success : function(
																response) {
															// refresh 때문에
															// 다시잡아줘야된다.
															document.frmWeddingCard.encoding = "application/x-www-form-urlencoded";

															 var src =$('#imgBride').val().split('\\')[2];
															 $('input[name=imgBrideSrc]').val(src);
															setTimeout(
																	function() {
																		set_preview();
																	}, 3000);
														},
														error : function(jqXHR) {
															console
																	.log('error');
														}
													});
										} else {
											alert("이미지를 선택해주세요!");
											return false;
										}
									});
				
						//업로드 이미지 지우는쪽
					 $('#imgFileDelete').click(function(){
						   if($('#imgFile').val() != null && $('#imgFile').val() != ''){
							   $('#imgFile').val("");
							   $('input[name=imgSrc]').val("");
							   set_preview();
						   }else
							   alert("이미지를 업로드해주세요");
					   });
					   $('#imgBirdeDelete').click(function(){
						   if($('#imgBride').val() != null && $('#imgBride').val() != ''){
							   $('#imgBride').val("");
							   $('input[name=imgBrideSrc]').val("");
							   set_preview();
						   }else
							   alert("이미지를 업로드해주세요");
					   });
					   $('#imgGroomDelete').click(function(){
						   if($('#imgGroom').val() != null && $('#imgGroom').val() != ''){
							   $('#imgGroom').val("");
							   $('input[name=imgGroomSrc]').val("");
							   set_preview();
						   }else
							   alert("이미지를 업로드해주세요");
					   });
					
					
					// /==================== =========================
					function set_preview(md) {

						/* 왼쪽 미리보기 화면을 타겟으로 잡고 폼값을 submit */
						$('#frmWeddingCard')
								.attr('target', 'left_skin_preview').attr(
										'action',
										"weddingCard/preview_" + sel_template
												+ "/preview_modify.jsp")
								.submit();
					}

					// 모바일,PC 확대버튼 클릭
					$('#md-mobile').click(
							function() {
								$('#frmWeddingCard').attr('target',
										'left_skin_preview_mobile').attr(
										'action',
										"weddingCard/preview_" + sel_template
												+ "/preview_modify.jsp")
										.submit();
							});

					$('#md-pc').click(
							function() {
								$('#frmWeddingCard').attr('target',
										'left_skin_preview_pc').attr(
										'action',
										"weddingCard/preview_" + sel_template
												+ "/preview_modify.jsp")
										.submit();
							});

					$('#modifyCardBtn')
							.click(
									function() {

										alert("ModifyCard");
										var url = document.frmWeddingCard.url.value;

										// ==========2번째 탭(신랑 신부)
										if ($('#groomName').val() == "") {
											$('#tabs').tabs({
												active : 1,
											});
											$('#groomName').focus();
											return false;
										}
										if ($('#groomTel').val() == "") {
											$('#tabs').tabs({
												active : 1,
											});
											$('#groomTel').focus();
											return false;
										}
										if ($('#brideName').val() == "") {
											$('#tabs').tabs({
												active : 1,
											});
											$('#brideName').focus();
											return false;
										}
										if ($('#brideTel').val() == "") {
											$('#tabs').tabs({
												active : 1,
											});
											$('#brideTel').focus();
											return false;
										}
										/*
										 * // 신랑신부 업로드 가능 템플릿 선택한경우 if
										 * ($('input[name=template]:checked')
										 * .val() == "Garden Wedding" || $(
										 * 'input[name=template]:checked')
										 * .val() == "Innocent Bride") { if
										 * ($('#imgBride').val() == "") {
										 * $('#tabs').tabs({ active : 1, });
										 * alert("신부 이미지 업로드 해주세요!"); return
										 * false; } if ($('#imgGroom').val() ==
										 * "") { $('#tabs').tabs({ active : 1,
										 * }); alert("신랑 이미지 업로드 해주세요!"); return
										 * false; } }
										 */

										// ==========4번째 탭(예식장)
										if ($('#datepicker').val() == "") {
											$('#tabs').tabs({
												active : 3,
											});
											$('#datepicker').focus();
											return false;
										}
										if ($('#cardContext').val() == "") {
											$('#tabs').tabs({
												active : 3,
											});
											$('#cardContext').focus();
											return false;
										}
										if ($('#hallName').val() == "") {
											$('#tabs').tabs({
												active : 3,
											});
											$('#hallName').focus();
											return false;
										}
										if ($('#hallLocation').val() == "") {
											$('#tabs').tabs({
												active : 3,
											});
											$('#hallLocation').focus();
											return false;
										}

										document.frmWeddingCard.encoding = "multipart/form-data";

										// 창 안바뀌게 target _self로 설정
										$('#frmWeddingCard')
												.attr('target', '_self')
												.attr('action',
														'card.do?command=createCard&&flag=modify')
												.submit();

									});// 초대장 생성 click

					function move_pop_preview(id) {
						try {
							if (id) {
								if (id == 'skin')
									id = 'topinfo';
								var $obj = $('#left_skin_preview').contents()
										.find('#sk_' + id);
								try {
									$('#left_skin_preview').scrollTo($obj, 100);
								} catch (e) {

								}
							} else {
								// console.log('empty scroll target');
							}
						} catch (e) {
						}
					}
				});// ready

// /////////////////// Map ///////////////////

