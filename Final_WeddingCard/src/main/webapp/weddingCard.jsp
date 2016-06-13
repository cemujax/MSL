<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Nifty Modal Window Effects with CSS Transitions and Animations" />
<meta name="keywords" content="modal, window, overlay, modern, box, css transition, css animation, effect, 3d, perspective" />
<meta name="author" content="Codrops" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Wedding Card</title>

	
<link href="css/bootstrap-responsive.css" rel="stylesheet">

<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/jquery-ui.css" />
<link rel="stylesheet" href="css/uploadifive.css" />
<link rel="stylesheet" href="css/jquery.cropbox.custom.css" />
<link rel="stylesheet" href="css/builder.css" />
<!-- <link rel="stylesheet" href="css/bootstrap-ko.css"/>  -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/common.css">
		<link rel="stylesheet" type="text/css" href="css/default.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>


<style type="text/css">

.spinner {
    position: fixed;
    top: 50%;
    left: 50%;
    margin-left: -50px; /* half width of the spinner gif */
    margin-top: -50px; /* half height of the spinner gif */
    text-align:center;
    z-index:100001;
    overflow: auto;
    width: 100px; /* width of the spinner gif */
    height: 102px; /*hight of the spinner gif +2px to fix IE8 issue */
}
.spinner_overlay{
	position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: #000;
    filter:alpha(opacity=50);
    -moz-opacity:0.5;
    -khtml-opacity: 0.5;
    opacity: 0.5;
    z-index: 100000;
}

.switch_outerline{
	border:1px solid #DDDDDD;
	border-radius: 5px;
	min-height:30px;
	padding-left:10px;
}

.btswitchs{
	float:right;
}


/* scrollbar by echos(2014-09-04) */
::-webkit-scrollbar {
    width: 10px;
}
::-webkit-scrollbar-track {
    background-color: #fff;
    /*border-left: 1px solid #ccc;*/
}
::-webkit-scrollbar-thumb {
    background-color: #ccc;
	border-radius:5px;
}
::-webkit-scrollbar-thumb:hover {
    background-color: #aaa;
}

.chelp {cursor: help};

#tabs{
        margin-left: 40%;
        font-style: oblique;
     }




</style>

  
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript" src="./js/jquery-1.12.3.js"></script>
<!-- Google Map API -->
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&region=KR"></script>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript" src="js/hammer.js"></script>
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<script src="js/jquery.placeholder.js"></script>
<script src="js/jquery.uploadifive.js"></script>
<script src="js/jquery.cropbox.custom.js"></script>
<script src="http://connect.facebook.net/ko_KR/all.js"></script>
<script src="js/jquery.datepicker.regional.kr.js"></script>
<script src="js/jquery.scrollTo.min.js"></script>

<script type="text/javascript">
   $(document).ready(function(){
    
	   
	   $('#template').click(function(){
	  		set_preview();
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
    	 
     ///==================== =========================   
       function set_preview(md){
   		if(md) 
   			$('#scroll_to_preview').val(md);
   		
   		/* 왼쪽 미리보기 화면을 타겟으로 잡고 폼값을 submit */
   		$('#frmDalpeng').attr('target','left_skin_preview').attr('action','./preview/preview.jsp').submit();
   	}	
     
     
     
     //모바일,PC 확대버튼 클릭
     $('#md-mobile').click(function(){
    	 $('#frmDalpeng').attr('target','left_skin_preview_mobile').attr('action','./preview/preview.jsp').submit();
     });
     
     $('#md-pc').click(function(){
    	 $('#frmDalpeng').attr('target','left_skin_preview_pc').attr('action','./preview/preview.jsp').submit();
     });

     $('#createCardBtn').click(function(){
           alert("전송중");
           
           $('#frmDalpeng').attr('target','weddingCard_form').attr('action','./card.do?command=createCard').submit();
           
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

</script>
</head>

<body>
<c:if test="${sessionScope.mvo == NULL }">
	<c:redirect url="login.jsp"/>
</c:if>

<form name="frmDalpeng" id="frmDalpeng" target="left_skin_preview" method="post">

<div class="ui-grid-a contents">
		<div class="ui-block-a">
			<div class="cont_look">
				<div class="look_bg"><img src="img/preview_mobile2.png" alt="미리보기화면"><span class="blind">미리보기영역</span></div>
				<div class="look_input">
					<iframe src="preview/preview.jsp" name="left_skin_preview" id="left_skin_preview" width="40%" height="100%" scrolling="auto" > </iframe>
				</div>

<!-- 수연이가 한거 모달 -->
		
		<!--  ============== 모바일 ============== -->
		<div class="md-modal md-effect-1" id="modal-1">
			<div class="md-content">
				<div class="cont_preview mobile" id="cont_preview">
		
		<div class="look_bg">
		<img src="img/preview_mobile2.png" alt="미리보기화면" style="width: 370px; height: 740px; margin-left:40%;margin-top:5%;">
		</div>
				<div class="look_input" style="margin-left:40.5%; margin-top:5%;">
					
					<iframe src="preview/preview.jsp" name="left_skin_preview_mobile" id="left_skin_preview_mobile" style="width: 320px; height: 570px;" scrolling="auto" > </iframe>
				</div>
					<button class="md-close">Close me!</button>
				</div>
			</div>
		</div>
				
	<div class="column">
		<button class="md-trigger mobile" id="md-mobile" data-modal="modal-1">모바일</button>
	</div>			
		
				<!-- 2 -->
	<!--  ============== PC ============== -->			
	 <div class="md-modal md-effect-2" id="modal-2">
         <div class="md-content">
            <div data-role="page" id="skin_page" data-url="skin_page" tabindex="0" class="ui-page ui-page-theme-a ui-page-active">
               <div class="look_input" style="width:90%; height: 85%; margin-left:4%; ">
                  <iframe src="preview/preview.jsp" name="left_skin_preview_pc" id="left_skin_preview_pc" style="" scrolling="auto" > </iframe>
               </div>
               <button class="md-close" style="margin-top:920px; background-color:#000; ">Close me!</button>
            </div>
            
         </div>
      </div>
            
      <div class="column">
            <button class="md-trigger" id="md-pc" data-modal="modal-2" style="margin-left:0px; background-color:#000;">PC</button>
          </div>
      
               
            <!-- 2 -->
            
            <!--  -->
         </div>
      </div>
</div>
	
	
	

	<div class="md-overlay"></div><!-- the overlay element -->

		<!-- classie.js by @desandro: https://github.com/desandro/classie -->
		<script src="js/classie.js"></script>
		<script src="js/modalEffects.js"></script>

		<!-- for the blur effect -->
		<!-- by @derSchepp https://github.com/Schepp/CSS-Filters-Polyfill -->
		<script>
			// this is important for IEs
			var polyfilter_scriptpath = '/js/';
		</script>
		<script src="js/cssParser.js"></script>
		<script src="js/css-filters-polyfill.js"></script>


		<!-- Tab 영역 include  -->		
		<jsp:include page="tabs.jsp"></jsp:include>
	<%-- <c:import url=""></c:import>	 --%>
			
</form>

</body>
</html>