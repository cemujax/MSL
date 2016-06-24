/**
 * 
 */
var xhr;
var checkFlag;

/* 
 있는 url / 없는 url인지   */
function urlCheck() { //Ajax 기술이 사용됨
  
	var url = document.getElementById("url").value;
	xhr = new XMLHttpRequest();
	xhr.onreadystatechange = callback;
	xhr.open("post", "../card.do");
	xhr.setRequestHeader("Content-Type",
			"application/x-www-form-urlencoded;charset=utf-8");
	xhr.send("command=urlCheck&&url=" + url);
}//urlcheck
function callback() {
	
	if (xhr.readyState == 4) {
		if (xhr.status == 200) {
			
			var jsonData = JSON.parse(xhr.responseText); //true, false
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
}//callback

//=========photoBook ====================
function photoBookAjax() {
	xhr = new XMLHttpRequest();
	xhr.onreadystatechange = pbCallback;
	var url = "../photoBook.do?command=ajaxList";
	xhr.open("get", url);
	xhr.send(null);
} // photobookAjax



function chooseBook(bookNo) {
	document.getElementById("photoBookNo").value = bookNo;

	xhr = new XMLHttpRequest();
	xhr.onreadystatechange = imgCallback;
	var url = "../photoBook.do?command=ajaxDetail&&no=" + bookNo;
	xhr.open("get", url);
	xhr.send(null);

} // chooseBook

function imgCallback() {
	if (xhr.readyState == 4) {
		if (xhr.status == 200) {
			var jsonData = JSON.parse(xhr.responseText);

			document.getElementById("photoBookImg").value = jsonData.pbvo.fileName;
	         document.getElementById("photoBookComment").value = jsonData.pbvo.bookComment;
	         
	         var imgValue = document.getElementById("photoBookImg").value;
	         var contentValue = document.getElementById("photoBookComment").value;

	         $('#photoBookImg').val(imgValue).trigger('change');
	         $('#photoBookComment').val(contentValue).trigger('change');
		}
	}
} // imgCallback

///////////////////////////// Tel Only Input Number
function onlyNumber(event){
   event = event || window.event;
   
   var keyID = (event.which) ? event.which : event.keyCode;
   if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
      return;
   else {
      return false;
   }
}

function removeChar(event) {
   event = event || window.event;
   var keyID = (event.which) ? event.which : event.keyCode;
   if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
      return;
   else
      event.target.value = event.target.value.replace(/[^0-9]/g, "");
}

// 상단이미지

function logout() {
	var f = confirm("로그아웃 하시겠습니까?");
	if (f)
		location.href = "../member.do?command=logout"; //Controller에서 기능으로 연결..
}


//////////////////////////////////JQuery ///////////////////////////////

$(document).ready(function(){
    
	   $("#tabs").tabs();
	   
	   
	   // 시작시 맨 처음꺼 체크되있고 기본값으로 가짐
	   $('#template').attr("checked", true);
	   var sel_template = $('#template').val();
	   
	   $('#template').click(function(){
		   sel_template = ($('input[name=template]:checked').val());
	  		set_preview();
	  	});
	   
	   $('#template2').click(function(){
		  // $('#templateType]').val($(this).val());
		   sel_template = ($('input[name=template]:checked').val());
	  		set_preview();
	  	});
	   
	   
	   $( "#datepicker" ).datepicker({showButtonPanel: true,minDate: '0'});
	   
	   $( "#datepicker" ).change(function(){
			  var sel_date = new Date($(this).val());
		      // 년 월 일 hour
		      var year = sel_date.getFullYear() ;
		      var month = sel_date.getMonth() ;
		      var date = sel_date.getDate() ;
		      var sel_time = new Date(year, month,date);
			  
			  var timeLag = sel_time.getTime() - jQuery.now();

		      // 시간으로
		      timeLag = (timeLag / 3600 / 1000);

		      var dDay;
		      if(timeLag % 24 == 0){
		    	  dDay = timeLag / 24;
		      }else{
		    	  dDay = timeLag / 24 + 1;
		      }
		   		dDay = parseInt(dDay);
		   		
		   		document.getElementById("dDay").value = dDay;
		   		
		   		
		   });
	   
///==================== 예식 정보 =========================

   $('#datepicker').change(function(){
  	set_preview();
   });

   $('#ampm').change(function(){
     	set_preview();
      });
   $('#hour').change(function(){
     	set_preview();
      });
   
   $('#min').change(function(){
     	set_preview();
      });
	
  $('#cardContext').change(function(){
	  
  	set_preview();
   });
   
  $('#hallLocation').change(function(){
   	set_preview();
    });
   
 ///==================== 신랑 신부 정보 =========================  
 $('#groomName').change(function(){
     	set_preview();
      });
	
  $('#groomTel').change(function(){
  	set_preview();
   });
   
   $('#brideName').change(function(){
   	set_preview();
    });
   $('#brideTel').change(function(){
      	set_preview();
       });  
	   
   
   $('#photoBookImg').change(function(){
     	set_preview();
      });
   $('#photoBookComment').change(function(){
   		set_preview();
    });

   
   //////////////// 상단 이미지 처리 ////////////////////////
   
   $("#sendImage").bind("click", function() {
   		var form = document.frmWeddingCard;
   		var formData = new FormData(form);
   		
   		if($('#imgFile').val() != null && $('#imgFile').val() != ''){
   			form.encoding="multipart/form-data"; //파일전송위해 변경
   		 		
	          $.ajax({
	              url: "../card.do?command=uploadImage",
	              data: formData,
	              dataType: 'text',
	              processData: false,
	              contentType: false,
	              type: 'POST',
	              
	              success: function (response) {
	            	  // refresh 때문에 다시잡아줘야된다.
	            	  document.frmWeddingCard.encoding="application/x-www-form-urlencoded";
	            	 
	            	  
	            	  var src =  $('#imgFile').val().split('\\')[2];
	            	  alert("imgFile::"+src);
	     		 		$('input[name=imgSrc]').val(src);
	     		 		
	 	             alert('업로드 성공 디폴트로 변경 enctype: ' + document.frmWeddingCard.encoding);
	 	            set_preview();
	              },
	              error: function (jqXHR) {
	                console.log('error');
	              }
	            });
   			
   			
   		}else{
	             alert("이미지를 선택해주세요!");
   			return false;
   			
   		}
   		
   	});
   
		
		
		
 
   function readURL1(input) {
       //alert(input.files[0].name);
       if (input.files && input.files[0]) {
          var reader = new FileReader(); 
          reader.onload = function(e) {
         	 alert(e.target.result);
         	 
         	 $('#frmWeddingCard').attr('target','left_skin_preview').attr('src', e.target.result); 
          }
          reader.readAsDataURL(input.files[0]);
       }

   };
   
   
   
  ///==================== =========================   
    function set_preview(md){
		if(md) 
			$('#scroll_to_preview').val(md);
		
		/* 왼쪽 미리보기 화면을 타겟으로 잡고 폼값을 submit */
		$('#frmWeddingCard').attr('target','left_skin_preview').attr('action',"../weddingCard/preview_"+sel_template+"/preview.jsp").submit();
	}	
  
  
  
  //모바일,PC 확대버튼 클릭
  $('#md-mobile').click(function(){
 	 $('#frmWeddingCard').attr('target','left_skin_preview_mobile').attr('action',"../weddingCard/preview_"+sel_template+"/preview.jsp").submit();
  });
  
  $('#md-pc').click(function(){
 	 $('#frmWeddingCard').attr('target','left_skin_preview_pc').attr('action',"../weddingCard/preview_"+sel_template+"/preview.jsp").submit();
  });

  $('#createCardBtn').click(function(){
 	 
 	 alert("전송중");
      var url = document.frmWeddingCard.url.value;
      
      if(checkFlag){//url 사용가능
    	  document.frmWeddingCard.encoding = "multipart/form-data";
     	 $('#frmWeddingCard').attr('target','frmWeddingCard').attr('action','../card.do?command=createCard').submit();
      }else{
      alert("사용하실 수 없는 URL 입니다.");
      }
      
     });// 초대장 생성 click   
     
  
  
    function move_pop_preview(id){
		try{
			if(id){
				if(id=='skin') id = 'topinfo';
				var $obj = $('#left_skin_preview').contents().find('#sk_'+id);
				try{
					$('#left_skin_preview').scrollTo($obj,100);
				}catch(e){

				}
			}else{
				// console.log('empty scroll target');
			}
		}catch(e){}
	}  

    
});//ready




///////////////////// Map ///////////////////






