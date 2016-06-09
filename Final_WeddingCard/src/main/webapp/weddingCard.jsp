<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wedding Card</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/jquery-ui.css" />
<link rel="stylesheet" href="css/uploadifive.css" />
<link rel="stylesheet" href="css/jquery.cropbox.custom.css" />
<link rel="stylesheet" href="css/builder.css" />
<!-- <link rel="stylesheet" href="css/bootstrap-ko.css"/>  -->
<link rel="stylesheet" href="css/style.css">


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
</style>


<script type="text/javascript">

/* 
<!--
$(function(){

	$('input, textarea').placeholder();
	var isuploading = false;
	var cropdata,croptarget,cropmd;
	// -- google map -- //
	var geocoder;
	var map;
	var myLatLng;
	var myOptions;
	var myZoomLevel;
	var marker;
	var setMarkerPos;
	var galleryCnt = 0;

	// short key
	$(document).keyup(function(e) {
		if (e.keyCode == 27)	closeDiv();    // esc
	});

	function closeDiv(){
		$('#pop_preview').hide();
	}

	function initialize(md) {
		if(md=='party'){
			var $map_lat = $('#pinfo_map_lat');
			var $map_lon = $('#pinfo_map_lon');
			var $map_canvas = $('#winfo_pmap_canvas');
		}else if(md=='wedding'){
			var $map_lat = $('#winfo_map_lat');
			var $map_lon = $('#winfo_map_lon');
			var $map_canvas = $('#winfo_map_canvas');
		}else if(md=='fbirthday'){
			var $map_lat = $('#fbinfo_map_lat');
			var $map_lon = $('#fbinfo_map_lon');
			var $map_canvas = $('#fbinfo_map_canvas');
		}else if(md=='ceremony'){
			var $map_lat = $('#cminfo_map_lat');
			var $map_lon = $('#cminfo_map_lon');
			var $map_canvas = $('#cminfo_map_canvas');
		}

		// console.log (md+' -- initialize' + ' '+ $map_lat.attr('id'));

		geocoder = new google.maps.Geocoder();
		myZoomLevel = '16';
		myLatLng = new google.maps.LatLng($map_lat.val(),$map_lon.val());
		myOptions = {
			zoom: Number(myZoomLevel),
			center: myLatLng,
			mapTypeId: google.maps.MapTypeId.ROADMAP,
			mapTypeControl:true,
			mapTypeControlOptions:{ style: google.maps.MapTypeControlStyle.DROPDOWN_MENU }
		};

		// console.log($map_canvas);

		map = new google.maps.Map($map_canvas[0],myOptions);
		marker = new google.maps.Marker({
			position: myLatLng,
			map: map,
			draggable: true
		});

		setMarkerPos = function (markerPosition) {
			$map_lat.val(markerPosition.lat());
			$map_lon.val(markerPosition.lng());
		};

		google.maps.event.addListener(map, 'zoom_changed', function() {
			var zoomLevel = map.getZoom();
			$('#map_zoomlevel').val(zoomLevel);
		});

		google.maps.event.addListener(map, 'click', function (event) {
			marker.setPosition(event.latLng);
			setMarkerPos(event.latLng);
		});

		google.maps.event.addListener(marker, 'dragend', function (event) {
			setMarkerPos(event.latLng);
		});
	} */
/* 
	function open_dialog(msg,type,obj){
		if(obj) $( obj ).tooltip( "close" );
		if(type=='confirm'){
			$('#alert_msg').html(msg);
			$('#dialog_alert').dialog('open');
		}else{
			$('#msg_msg').html(msg);
			$('#dialog_msg').dialog('open');
		}
	} */

/* 	function mapQuery(addr) {
		geocoder.geocode({ 'address': addr }, function (results, status) {
			if (status == google.maps.GeocoderStatus.OK) {
				//console.log(results[0].geometry.location);
				map.setCenter(results[0].geometry.location);
				marker.setPosition(results[0].geometry.location);
				setMarkerPos(results[0].geometry.location);
			} else {
				if($('#now_sub_section').val() == 'winfo') var obj = $('#winfo_paddr');
				else if($('#now_sub_section').val() == 'pinfo') var obj = $('#pinfo_paddr');
				else if($('#now_sub_section').val() == 'fbinfo') var obj = $('#fbinfo_paddr');
				else if($('#now_sub_section').val() == 'cminfo') var obj = $('#cminfo_paddr');

				open_dialog('검색 결과가 없습니다.','alert',obj);
				// $('#addr_msg').show().text('! 검색 결과가 없습니다.');
				// if($('#now_sub_section').val() == 'winfo') $('#winfo_paddr').select();
				// else if($('#now_sub_section').val() == 'pinfo') $('#winfo_paddr').select();
			}
		});
	} */
/* 
	// 지도 초기화
	function maps_initialize(){

		// console.log($('#dalpeng_type').val());

		if($('#dalpeng_type').val() == 'WEDDING'){
			if($('#now_sub_section').val() == 'winfo') initialize('wedding');
			else if($('#now_sub_section').val() == 'pinfo') initialize('party');
			else  initialize('wedding');
		}else if($('#dalpeng_type').val() == 'FBIRTHDAY'){
			initialize('fbirthday');
		}else if($('#dalpeng_type').val() == 'CEREMONY'){
			initialize('ceremony');
		}else{
			initialize('wedding');
		}
	}

	// clear crop
	function clearCrop(){
		cropdata = '';
		croptarget = '';
		cropmd = '';
		$('#crop_target_preview').empty().html('<span id="noimg_cropimg" class="noimg"><img src="/img/builder/ico_noimg.png" id="btn_crop_noimg" alt="이미지없음"></span>');;
		$('#v_imgcrop_w,#v_imgcrop_h').text('0');	//#v_imgcrop_x,#v_imgcrop_y
		$('#v_imgcrop_w,#v_imgcrop_h').removeClass('red');
		$('#desc_crop_zoom').hide();

	}
 */
/* 
	function initCrop(w,h) {
		// console.log(w+' | '+h);
		// Apply jrac on some image.
		$('#crop_target').cropbox( {
			width		: $('#crop_target').attr('cropwidth'),	// crop width
			height		: $('#crop_target').attr('cropheight'),	// crop width
			// img_width	: w,
			// img_height	: h,
			showControls: 'auto'
		}).on('cropbox', function( event, results, img ) {

			console.log(results);

			cropdata = results;
			//$('#v_imgcrop_x').text( results.cropX );
			//$('#v_imgcrop_y').text( results.cropY );
			$('#v_imgcrop_w').text( results.cropW );
			$('#v_imgcrop_h').text( results.cropH );

			if(cropmd.indexOf('baby') > -1){
				var	cw = 320;
				var	ch = 320;
			}else if(cropmd.indexOf('cmimgmap') > -1){
				var	cw = 480;
				var	ch = 480;
			}else{
				var	cw = 320;
				var	ch = 645;
			}

			if(results.cropW < cw || results.cropH < ch){
				$('#v_imgcrop_w,#v_imgcrop_h').addClass('red');
				$('#desc_crop_zoom').hide();
			}
		  //download.attr('href', img.getDataURL());
		});
    } */
/* 
	function set_preview(md){
		if(md) $('#scroll_to_preview').val(md);
		$("#gallery_sort").val($( "#gallery_lists" ).sortable("toArray"));	// 갤러리 이미지 정렬순서
		$('#frmDalpeng').attr('target','left_skin_preview').attr('action','/jsy1426/preview').submit();
	}
 */
	// ------------------ uploadifive --------------------------- //

/* 
	$('#btn_topimg').uploadifive({
		'method'		: 'post',
		'formData'		: {
			'timestamp' : $("#ts").val(),
			'dalpeng'	: 'jsy1426',
			'md'		: 'topimg',
			'token'		: $("#tss").val()
		},
		'buttonCursor'	: 'pointer',
		'buttonClass'	: 'pop_btn_spr_file',
		'uploadScript'  : '/builder/upActFile',
		//'itemTemplate'	: '<div class="uploadifive-queue-item"><span class="filename"></span>  <span class="fileinfo"></span><div class="close"></div></div>',
		'width'			: '134',
		'height'		: '32',
		'fileType'		: 'image/*',
		'fileTypeDesc'	: 'Image Files',
		'fileTypeExts'	: '*.gif; *.jpg; *.png',
		'auto'			: true,
		'queueID'		: 'topimg_queue',
		'multi'			: false,
		'removeTimeout'	: 0,
		'onUpload'		:	function(filesToUpload){
			isuploading = true;
			$('#bt_edit_groom').attr('disabled',false);
			//console.log('start ' + isuploading);
		},
		'onUploadComplete'  : function(file, data){
			var strtmp = data.split("[!$!]");
			var imageSrc = strtmp[1];	//thumb
			var hSrcData = data;

			if(hSrcData == 'empty'){
				//alert('업로드실패!! 관리자에게 문의 하십시요.');
				$('.fileinfo').html(' <br> <font color="red">업로드실패!! 관리자에게 문의 하십시요.</font>');
			}else if(hSrcData == 'deny'){
				$('.fileinfo').html(' <br> <font color="red">이미지 파일만 업로드 가능합니다.</font>');
			}else{
				setTimeout(function(){$('#btn_topimg').uploadifive('clearQueue');}, 1000);
				$('#topimg_preview').html('<img src="/jsy1426/myphoto/'+imageSrc+'" style="max-width:100%;"/>').show();
				// $('#topimg').val(imageSrc.replace('/jsy1426/myphoto/',''));
				$('#topimg').val(strtmp[0]);

				set_preview();
			}
			isuploading = false;
			$('#bt_edit_groom').attr('disabled',false);
			// console.log('end ' + isuploading);
		}
		,'onError'      : function(errorType) {
            alert('The error was: ' + errorType);
			$('#bt_edit_groom').attr('disabled',false);
        }

		,'onUploadStart' : function(file) {
			$('#bt_edit_groom').attr('disabled',true);
		}
	}).css('cursor','pointer');

	$('#bt_edit_cmimgmap').uploadifive({
		'method'		: 'post',
		'formData'		: {
			'timestamp' : $("#ts").val(),
			'dalpeng'	: 'jsy1426',
			'md'		: 'cmimgmap',
			'token'		: $("#tss").val()
		},
		'buttonCursor'	: 'pointer',
		'buttonClass'	: 'btn_spr_builder roughmap',
		'uploadScript'  : '/builder/upActFile',
		//'itemTemplate'	: '<div class="uploadifive-queue-item"><span class="filename"></span>  <span class="fileinfo"></span><div class="close"></div></div>',
		'width'			: '160',
		'height'		: '32',
		'fileType'		: 'image/*',
		'fileTypeDesc'	: 'Image Files',
		'fileTypeExts'	: '*.gif; *.jpg; *.png',
		'auto'			: true,
		'queueID'		: 'cmimgmap_queue',
		'multi'			: false,
		'removeTimeout'	: 0,
		'onUpload'		:	function(filesToUpload){
			isuploading = true;
			$('#bt_edit_groom').attr('disabled',false);
			//console.log('start ' + isuploading);
		},
		'onUploadComplete'  : function(file, data){
			var strtmp = data.split("[!$!]");
			var imageSrc = strtmp[1];	//thumb
			var hSrcData = data;

			if(hSrcData == 'empty'){
				//alert('업로드실패!! 관리자에게 문의 하십시요.');
				$('.fileinfo').html(' <br> <font color="red">업로드실패!! 관리자에게 문의 하십시요.</font>');
			}else if(hSrcData == 'deny'){
				$('.fileinfo').html(' <br> <font color="red">이미지 파일만 업로드 가능합니다.</font>');
			}else{
				setTimeout(function(){$('#bt_edit_cmimgmap').uploadifive('clearQueue');}, 1000);
				$('#cminfo_imgmap_preview').html('<img src="/jsy1426/myphoto/'+imageSrc+'" style="max-width:100%;"/>').show();
				// $('#topimg').val(imageSrc.replace('/jsy1426/myphoto/',''));
				$('#cminfo_imgmap').val(strtmp[0]);

				set_preview();
			}
			isuploading = false;
			$('#bt_edit_groom').attr('disabled',false);
			// console.log('end ' + isuploading);
		}
		,'onError'      : function(errorType) {
            alert('The error was: ' + errorType);
			$('#bt_edit_groom').attr('disabled',false);
        }

		,'onUploadStart' : function(file) {
			$('#bt_edit_groom').attr('disabled',true);
		}
	}).css('cursor','pointer');

	$('#btn_cropimg').uploadifive({
		'method'		: 'post',
		'formData'		: {
			'timestamp' : $("#ts").val(),
			'dalpeng'	: 'jsy1426',
			'md'		: 'crop',
			'token'		: $("#tss").val()
		},
		'buttonCursor'	: 'pointer',
		'buttonClass'	: 'pop_btn_spr_file align_center',
		'uploadScript'  : '/builder/upActFile', */
		//'itemTemplate'	: '<div class="uploadifive-queue-item"><span class="filename"></span>  <span clas…

</script>


  

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


</head>

<body>

<div class="ui-grid-a contents">
		<div class="ui-block-a">
			<div class="cont_look">
				<div class="look_bg"><img src="img/preview_mobile2.png" alt="미리보기화면"><span class="blind">미리보기영역</span></div>
				<div class="look_input">
					<iframe src="basicSkin.jsp" name="left_skin_preview" id="left_skin_preview" width="40%" height="100%" scrolling="auto" > </iframe>
				</div>

				<!-- <ul>
					<li class="look_icon1 btn_preview" id="btn_preview_mobile"><span class="blind">Mobile</span></li>
					<li class="look_icon2 btn_preview" id="btn_preview_tablet"><span class="blind">Tablet</span></li>
					<li class="look_icon3 btn_preview" id="btn_preview_pc"><span class="blind">PC</span></li>
				</ul> -->
				
			</div>
		</div>
</div>

<c:import url="tabs.jsp"/>
				



</body>
</html>