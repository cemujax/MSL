<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="format-detection" content="telephone=no" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">

<title>소망이 축복 속에서 기쁨으로 이루어지는날...</title>
<link rel="stylesheet" type="text/css"
	href="css/jquery.mobile-1.4.3.min_Romantic.css" />
<link rel="stylesheet" type="text/css" href="css/common_Romantic.css" />
<link rel="stylesheet" type="text/css" href="css/emoticon_Romantic.css" />

<link rel="stylesheet" type="text/css" href="css/style_Romantic.css" />

<link href='http://fonts.googleapis.com/css?family=Cookie'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Lora:400italic,700italic'
	rel='stylesheet' type='text/css'>


<!-- <link rel="stylesheet" type="text/css" href="css/style-m.css" 
media="screen and (max-width:639px)"> -->
<link rel="stylesheet" type="text/css" href="css/swipebox_Romantic.css" />
<script src="js/jquery-1.11.1.min_Romantic.js"></script>
<script src="js/jquery.mobile-1.4.3.min_Romantic.js"></script>
<script src="js/jquery.mobile.init_Romantic.js"></script>
<script src="js/masonry.pkgd.min_Romantic.js"></script>

<script src="js/jquery.swipebox_Romantic.js"></script>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<script src="js/jquery.scrollTo.min_Romantic.js"></script>
<!-- 방명록 -->
<script type="text/javascript">
function setPosition(id){
	   //var $obj = $('#sk_'+id);
	   // console.log(id);

	   //window.scrollTo($obj, 500);
	   $('html, body').animate({
	       scrollTop: $("#sk_"+ id).offset().top
	   }, 1000);
	}
	
function writeComment() {
   location.href = "${initParam.root}card.do?command=linkGuestBook&&url=${param.url}";
}
   $(document).ready(function() {
	   $('.menu_scrolls').click(function(){
		      try{
		         if($(this).attr('id')){


		         //   var id = $(this).attr('id').replace('p_','').replace('m_','');
		         var id = $(this).attr('id').replace('p_','').replace('m_','');

		            //console.log(id);

		            setPosition(id);
		         }
		      }catch(e){
		         //console.log(e);
		      }
		   }).css('cursor','pointer');

      $.ajax({
         type : "get",
         url : "../card.do",
         data : "command=getAllCardComments&&cardNo=" + '${param.cardNo}',
         dataType : "json",

         success : function(jsonData) {

            var commentList = jsonData.commentList;
            //$('.guestBook').innerHTML = "123123213";

            for (i = 0; i < 6; i++) {
                  var cDate = commentList[i].writeDate.split(':');
                  if(commentList[i].guest.indexOf('`MSL User`') != -1){//MSL 회원이 남긴 방명록
                     +"&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;"
                       /*  /* 이미지 부분 +"<img alt='' src='${initParam.root}url/img/logo_01.png' >"*/ 
                     $('.guestbook_add').append(
                             "<div class='pricingtable pricing_free add' ><ul class='pricing_iconlist iconset_free'>"
                             +"<li class='add_li' style='height: 50px;background-color:#ff6250; font-size:20px;'><font style='color: black;font-size: 16px;'>"
                             +"<img alt='' class='add_lo' width='40px' src='${initParam.root}url/img/logo_02.png' ><b>"
                             +commentList[i].guest.substring(10)+"</b></font><br>"
                             +"<font style='float:right;font-size:13px;margin-right: 5%;'>"+cDate[0]+":"+ cDate[1]+"</font></li>"
                             +"<li style='font-size: 15px; margin-top:20px;margin-left: 5%;'><span class='user'></span><font>"+commentList[i].content+"</font></li>"
                             + "<p><li>&nbsp;&nbsp;</li>"
                             + "<li>&nbsp;&nbsp;</li>"+
                             "</ul></div>");
                    }
                    else{//비로그인 방명록
                        
                       $('.guestbook_add').append(
                    		   "<div class='pricingtable pricing_free add' ><ul class='pricing_iconlist iconset_free'>"
                               +"<li class='add_li' style='height: 50px;background-color:#ff6250; font-size:20px;'><font style='color: black;font-size: 16px;color: #444;'>"
                               +"<img class='add_be' alt='' width='40px' ' src='${initParam.root}url/img/p3.png' ><b>"
                               +commentList[i].guest+"</b></font><br>"
                               +"<font style='float:right;font-size:13px;margin-right: 5%;'>"+cDate[0]+":"+ cDate[1]+"</font></li>"
                               +"<li style='font-size: 15px; margin-top:20px;margin-left: 5%;'><span class='user'></span><font>"+commentList[i].content+"</font></li>"
                               + "<p><li>&nbsp;&nbsp;</li>"
                               + "<li>&nbsp;&nbsp;</li>"+
                               "</ul></div>");
                    }
               
               }//for
         
         }//success
      });//ajax
   });//ready
</script>
<!-- //방명록 -->


<style type="text/css">

#main-page * {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	-o-user-select: none;
	user-select: none;
}

.ui-custom-btn.ui-btn-icon-left:after {
	display: none;
}

#skin_page :not(INPUT):not(TEXTAREA), #panel_groom, #panel_bride,
	#panel_father, #panel_mother {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	-o-user-select: none;
	user-select: none;
}

.ui-panel.ui-panel-open {
	position: fixed;
}

.ui-panel-inner {
	position: absolute;
	top: 1px;
	left: 0px; 
	right: 0;
	bottom: 0px;
	-webkit-overflow-scrolling: touch;
}

.ui-page-active.ui-page-panel {
	height: 70%;
}

.ui-custom-btn.ui-btn-icon-left:after {
	display: none;
}

.snsbbs_sections {
	width: 25%;
}

.gallery_sections {
	border: 1px solid #999999;
	margin: 5px;
}

.mobile_hide {
	display: block;
}

.hide {
	display: none;
}

.gallery_sections {
	width: 25%;
}

.sub-cont {
	overflow: hidden;
	max-width: 1024px;
	margin: 0 auto;
	padding: 40px 0;
}

.gallery ul {
	overflow: hidden;
}

.gallery ul li {
	margin: 5px;
	border: 1px solid #999;
	box-sizing: border-box;
}

.sgal-1 {
	width: 31.5%;
	height: 230px;
	background-size: cover;
}

.sgal-2 {
	width: 31.5%;
	height: 470px;
	background-size: cover;
}

.sgal-3 {
	width: 31.5%;
	height: 230px;
}

.sgal-3 div {
	width: 60%;
	height: 100%;
}

.sgal-4 {
	width: 31.5%;
	height: 230px;
	background-size: cover;
}

.sgal-5 {
	width: 31.5%;
	height: 230px;
	background-size: cover;
	box-sizing: border-box;
}

.sgal-6 {
	width: 31.5%;
	height: 230px;
	background-size: cover;
}

.sgal-7 {
	width: 64%;
	height: 230px;
	background-size: cover;
}

.sgal-3 ul {
	padding: 35px 0;
}

.sgal-3 ul li {
	width: 100%;
	color: #f0f0f0;
	font-weight: bold;
	text-align: right;
	padding-right: 25px;
	border: 0;
}

.sgal-3 ul li.time {
	font-size: 3.4em;
}

.sgal-3 ul li.month {
	font-size: 1.3em;
	margin-top: 25px;
	padding-right: 30px;
}

.sgal-3 ul li.day {
	font-size: 0.8em;
	margin-top: -5px;
	padding-right: 30px;
}

.gb_btn {
    position: relative;
    width: 155px;
    height: 40px;
    margin: 30px auto;
    padding: 0;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/btn_guestbook.png) no-repeat 0 0;
    background-size: 100%;
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
}
.header_img{
	    height: 944px;
   		background: url("${initParam.root}weddingCard/preview_Romantic/img/1e1e02198d6c5fa2065aedb76e979025.JPG") center center / cover no-repeat;
	}
	
.header_img_select {
  background: url(${initParam.root}url/${param.url}/${param.imgSrc}) center center / cover no-repeat;
min-height: 944px;
		}
		.header_date_select {
  position: absolute;
    width: 220px;
    height: 220px;
    top: 50%;
    left: 50%;
    margin: -110px 0 0 -110px;
    padding: 75px 0 0;
    background-color: #fff;
    border-radius: 50%;
    text-align: center;
    color: #ec7267;
    font-family: 'Cookie', cursive;
    line-height: 1;
}
/* .greeting_img_select {
    background: url(${initParam.root}url/${param.url}/${param.imgSrc}) center center no-repeat;
    background-size: cover;
    top: -90px;
   
}
.greeting_img_select>img {
    border: 10px solid rgba(255,255,255,0.8);
    border-bottom: 0;
    position: relative;
    display: inline-block;
    max-width: 100%;
    min-height: 200px;
} */

 .greeting_img_select h2.title {
    position: absolute;
    top: -90px;
    left: 50%;
    margin: 0 0 0 -150px;
    width: 300px;
    height: 105px;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/tit_greeting.png) no-repeat 50% 0;
    background-size: 100%;
}
	 .header_date_select .text {
    position: relative;
    font-size: 42px;
    margin-bottom: 5px;
}
.header_date_select .date {
    position: relative;
    font-size: 28px;
    color: #999;
    letter-spacing: 0;
}
.header_content_select{
    position: absolute;
    bottom: -180px;
    left: 0;
    width: 100%;
    height: 400px;
    background: url('${initParam.root}weddingCard/preview_Romantic/img/header_flower.png') no-repeat;
    background-position: 50% 50%;
}
	

	.greeting_img{
		background: url('${initParam.root}weddingCard/preview_Romantic/img/1e1e02198d6c5fa2065aedb76e979025.JPG') center center no-repeat;
   		background-size: cover;
	}
	.greeting_img_select>img {
    position: relative;
    display: inline-block;
    max-width: 100%;
    max-height: 600px;
    border: 15px solid rgba(255,255,255,0.8);
    border-bottom: 0;
        min-height: 600px;
            margin: 30px 0px 0px 250px;
}
	

@media screen and (max-width: 1010px) {
.greeting_img_select>img {
    position: relative;
    display: inline-block;
    max-width: 100%;
    max-height: 600px;
    border: 15px solid rgba(255,255,255,0.8);
    border-bottom: 0;
        min-height: 600px;
            margin: 30px 0px 0px 250px;
}
.greeting_wrap_select h2.title {
		position: absolute;
		top: -90px;
		left: 50%;
		margin: 0 0 0 -150px;
		width: 300px;
		height: 105px;
		background: url(${initParam.root}weddingCard/preview_Romantic/img/tit_greeting.png) no-repeat 50% 0;
		background-size: 100%
	} 
.header_img{
	    height: 944px;
   		background: url("${initParam.root}weddingCard/preview_Romantic/img/1e1e02198d6c5fa2065aedb76e979025.JPG") center center / cover no-repeat;
	}
	
.header_img_select {
  background: url(${initParam.root}url/${param.url}/${param.imgSrc}) center center / cover no-repeat;
min-height: 944px;
		}
		.header_date_select {
  position: absolute;
    width: 220px;
    height: 220px;
    top: 50%;
    left: 50%;
    margin: -110px 0 0 -110px;
    padding: 75px 0 0;
    background-color: #fff;
    border-radius: 50%;
    text-align: center;
    color: #ec7267;
    font-family: 'Cookie', cursive;
    line-height: 1;
}
.greeting_img_select {
    background: url(${initParam.root}url/${param.url}/${param.imgSrc}) center center no-repeat;
    background-size: cover;
    top: -90px;
}
.greeting_img_select:before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/bg_greeting.png) repeat;
    opacity: 0.8;
}
 .greeting_img_select h2.title {
    position: absolute;
    top: -90px;
    left: 50%;
    margin: 0 0 0 -150px;
    width: 300px;
    height: 105px;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/tit_greeting.png) no-repeat 50% 0;
    background-size: 100%;
}
	 .header_date_select .text {
    position: relative;
    font-size: 42px;
    margin-bottom: 5px;
}
.header_date_select .date {
    position: relative;
    font-size: 28px;
    color: #999;
    letter-spacing: 0;
}
.header_content_select{
    position: absolute;
    bottom: -180px;
    left: 0;
    width: 100%;
    height: 400px;
    background: url('${initParam.root}weddingCard/preview_Romantic/img/header_flower.png') no-repeat;
    background-position: 50% 50%;
}
	.greeting_img{
		background: url('${initParam.root}weddingCard/preview_Romantic/img/1e1e02198d6c5fa2065aedb76e979025.JPG') center center no-repeat;
   		background-size: cover;
	}
	
.greeting_name li em {
    font-family: 'Lora', serif;
    color: #f7776a;
    font-style: italic;
    font-weight: 700;
    font-size: 1.2em;
}

	.snsbbs_sections {
		width: 33%;
	}
	.sgal-3 div {
		width: 100%
	}
	.mobile_hide {
		display: block;
	}
	
	.contents {
    position: relative;
    max-width: 1024px;
    margin: 0 auto;
    float: right;
}

	.gb_btn {
    position: relative;
    width: 155px;
    height: 40px;
    margin: 30px auto;
    padding: 0;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/btn_guestbook.png) no-repeat 0 0;
    background-size: 100%;
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
}
}

@media screen and (max-width: 820px) {
.greeting_img_select>img {
    position: relative;
    display: inline-block;
    max-width: 100%;
    max-height: 600px;
    border: 15px solid rgba(255,255,255,0.8);
    border-bottom: 0;
        min-height: 600px;
            margin: 30px 0px 0px 250px;
}
.contents {
    position: relative;
    max-width: 1024px;
    margin: 0 auto;
    float: right;
}
	.snsbbs_sections {
		width: 50%;
	}
	.sgal-1 {
		width: 48%
	}
	.sgal-2 {
		width: 48%
	}
	.sgal-3 {
		width: 48%
	}
	.sgal-4 {
		width: 48%;
		height: 470px;
	}
	.sgal-5 {
		width: 48%
	}
	.sgal-6 {
		width: 48%
	}
	.sgal-7 {
		width: 97%
	}
	.mobile_hide {
		display: block;
	}
	
	.gb_btn {
    position: relative;
    width: 155px;
    height: 40px;
    margin: 30px auto;
    padding: 0;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/btn_guestbook.png) no-repeat 0 0;
    background-size: 100%;
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
}
}

@media screen and (max-width: 624px) {
	.sgal-1 {
		width: 98%;
		height: 150px;
	}
	.sgal-2 {
		width: 98%;
		height: 150px;
	}
	.sgal-3 {
		width: 98%;
		height: 130px;
	}
	.sgal-4 {
		width: 98%;
		height: 150px;
	}
	.sgal-5 {
		width: 98%;
		height: 150px;
	}
	.sgal-6 {
		width: 98%;
		height: 150px;
	}
	.sgal-7 {
		width: 98%;
		height: 150px;
	}
	.mobile_hide {
		display: block;
	}
	
	.gb_btn {
    position: relative;
    width: 155px;
    height: 40px;
    margin: 30px auto;
    padding: 0;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/btn_guestbook.png) no-repeat 0 0;
    background-size: 100%;
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
}
.contents {
    position: relative;
    max-width: 1024px;
    margin: 0 auto;
    float: right;
}
}

@media screen and (max-width: 560px) {
.greeting_wrap_select h2.title {
		position: absolute;
		top: -90px;
		left: 50%;
		margin: 0 0 0 -150px;
		width: 300px;
		height: 105px;
		background: url(${initParam.root}weddingCard/preview_Romantic/img/tit_greeting.png) no-repeat 50% 0;
		background-size: 100%
	} 
	.snsbbs_sections {
		width: 100%;
	}
	.mobile_hide {
		display: none;
	}
	.gb_btn {
    position: relative;
    width: 155px;
    height: 40px;
    margin: 30px auto;
    padding: 0;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/btn_guestbook.png) no-repeat 0 0;
    background-size: 100%;
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
}
}

.previewLine {
	border: 2px solid red;
}

.div_inspector {
	position: absolute;
	top: 0px;
	left: 0px;
	border: 3px solid #5CCEB7;
	z-index: 1000000000;
	display: none;
}


@media all and (min-width: 1024px) {
/* 추가 */
.add{
margin-left:2%; margin-top:50px;width: 250px;height: 200px;float: left; background-color:#f9a096;
}

pre{

}

.snsbbs_sections:first-child .gb_cont_box {
    background-color: #fff;
    color: #fff;
    border-color: #fff;
    width: 830px;
    float: left;
}

.greeting_text {
    position: relative;
    width: 90%;
    max-width: 480px;
    min-width: 290px;
    min-height: 110px;
    margin: 0 auto 40px;
    padding: 0;
    color: #444;
    font-size: 0.95em;
    line-height: 1.7;
    text-align: center;
    word-break: break-word;
    box-sizing: border-box;
}
/* .greeting_wrap_select {
    /* min-height: auto!important; 
    min-height: 667px;
    position: relative;
    background: #eee url(${initParam.root}weddingCard/preview_Romantic/img/bg_greeting.png) repeat 0 0;
font-family: AppleSDGothicNeo-Regular,Droid sans,'NanumGothic','돋움',Dotum,Helvetica,sans-serif;
} */
.ui-panel-inner {
    position: absolute;
    top: 1px;
    left: 1px;
    right: 0;
    bottom: 0px;
    -webkit-overflow-scrolling: touch;
}
.col-md-4 .album-post{
	width:300px;
}
.textbox p{
	margin-top:50px;
}
img, fieldset {
    border: 0;
    float: left;
    margin-left: 10%;
    margin-bottom: 10%;
}

.greeting_name li em {
    font-family: 'Lora', serif;
    color: #f7776a;
    font-style: italic;
    font-weight: 700;
    font-size: 1.2em;
}
.contents {
    position: relative;
    max-width: 1024px;
    margin: 0 auto;
    float: right;
}
.gb_btn {
    position: relative;
    width: 155px;
    height: 40px;
    margin: 30px auto;
    padding: 0;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/btn_guestbook.png) no-repeat 0 0;
    background-size: 100%;
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
    cursor: pointer;
}
	.header_side {
		position: fixed;
		top: 0;
		left: 0;
		width: 30%;
		bottom: 0;
		min-height: 768px;
		background: url(${initParam.root}weddingCard/preview_Romantic/img/bg_wood.jpg) repeat 50% 0;
	}
	.header_side:after {
		position: absolute;
		content: '';
		top: 0;
		left: 0;
		right: 0;
		height: 180px;
		background: url(${initParam.root}weddingCard/preview_Romantic/img/header_flower.png) no-repeat 80% 100%
	}
	.header_panel a .icon {
	display: block;
	margin: 0 auto 0;
	padding: 0;
	width: 55px;
	height: 33px;
	background: url(${initParam.root}weddingCard/preview_Romantic/img/pannel_icon.png) no-repeat;
	background-size: 110px auto
	}
	.header_content {
		position: absolute;
		bottom: -180px;
		left: 0;
		width: 100%;
		height: 400px;
		background: url(${initParam.root}weddingCard/preview_Romantic/img/header_flower.png) no-repeat;
		background-position: 50% 50%
	}
	
 	.greeting_wrap h2.title {
		position: absolute;
		top: -90px;
		left: 50%;
		margin: 0 0 0 -150px;
		width: 300px;
		height: 105px;
		background: url(${initParam.root}weddingCard/preview_Romantic/img/tit_greeting.png) no-repeat 50% 0;
		background-size: 100%
	} 
	
	.greeting_wrap_select h2.title {
		position: absolute;
		top: -90px;
		left: 50%;
		margin: 0 0 0 -150px;
		width: 300px;
		height: 105px;
		background: url(${initParam.root}weddingCard/preview_Romantic/img/tit_greeting.png) no-repeat 50% 0;
		background-size: 100%
	} 
	
	.gallery_wrap+.dday_wrap:before {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	height: 50px;
	background: url(${initParam.root}weddingCard/preview_Romantic/img/bg_roundbottom_green.png) no-repeat 50% 0;
	background-size: 100% auto;
	content: ''
	}
	.dday_title {
	display: inline-block;
	width: 320px;
	height: 100px;
	background: url(${initParam.root}weddingCard/preview_Romantic/img/txt_savethedate.png) no-repeat 50% 60%;
	background-size: auto 55px;
	font-size: 0;
	line-height: 0;
	text-indent: -999px;
	vertical-align: top
	}
	.dday_wrap {
	position: relative;
	padding: 100px 0;
	background: url(${initParam.root}weddingCard/preview_Romantic/img/bg_dday.jpg) no-repeat 50% 50%;
	background-size: cover;
	text-align: center;
	z-index: 1
	}
	.guestbook_wrap {
	position: relative;
	padding: 120px 40px;
	overflow: hidden;
	background: url(${initParam.root}weddingCard/preview_Romantic/img/bg_guestbooktop.jpg) no-repeat 50% 0,
		url(${initParam.root}weddingCard/preview_Romantic/img/bg_guestbookbottom.jpg) no-repeat 50% 100%, #fff
	}
	.location_wrap {
	position: relative;
	padding: 120px 0 0;
	overflow: hidden;
	background: url(${initParam.root}weddingCard/preview_Romantic/img/img_guestbook.jpg) no-repeat 50% 0,
		url(${initParam.root}weddingCard/preview_Romantic/img/bg_gallery.png) repeat;
	background-size: auto 580px, auto
	}
	.lo_tab_wrap .on {
	background: rgba(6, 150, 137, 0.8) url(${initParam.root}weddingCard/preview_Romantic/img/ico_pin.png) no-repeat
		20px 50%;
	background-size: 16px;
	padding-left: 20px;
	color: #fff
	}
	.lo_container th span {
	display: inline-block;
	width: 100%;
	height: 25px;
	line-height: 25px;
	padding: 0 0 0 27px;
	background: url(${initParam.root}weddingCard/preview_Romantic/img/location_icon.png) no-repeat 0 0;
	background-size: 25px;
	box-sizing: border-box
	}
	.gallery_wrap h2.title {
	position: relative;
	margin: 0 auto 30px;
	width: 320px;
	height: 70px;
	background: url(${initParam.root}weddingCard/preview_Romantic/img/tit_gallery.png) no-repeat 50% 0;
	background-size: 100%
	}
	.greeting_content:before {
	content: '';
	position: absolute;
	top: -50px;
	left: 0;
	width: 100%;
	height: 50px;
	background: url(${initParam.root}weddingCard/preview_Romantic/img/bg_roundtop.png) no-repeat 50% 100%;
	background-size: 100% auto
	}
	.greeting_img:before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: url(${initParam.root}weddingCard/preview_Romantic/img/bg_greeting.png) repeat;
	opacity: 0.8
	}
	.greeting_content:after {
	content: '';
	position: absolute;
	bottom: -50px;
	left: 0;
	width: 100%;
	height: 50px;
	background: url(${initParam.root}weddingCard/preview_Romantic/img/bg_roundbottom.png) no-repeat 50% 0;
	background-size: 100% auto
	}
	.groom-wrap p, .bride-wrap p {
	position: absolute;
	    left: 220px;
    top: 0px;
	right: 0;
	width: 50px;
	height: 50px;
	text-shadow: none !important;
	background: rgba(255, 116, 109, 0.8) url(${initParam.root}weddingCard/preview_Romantic/img/panel_icon.png) 100% 0
		no-repeat;
	background-size: 250px;
	font-size: 0;
	line-height: 0;
	text-indent: -9999px
	}
	
	.gb_msg span {
    display: block;
    width: 270px;
    height: 18px;
    margin: 0 auto;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/txt_guestbook.png) no-repeat 50% 0;
    background-size: 100%;
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
}
	
	
	.groom-wrap ul, .bride-wrap ul{
		width: 400px;
	}
	.groom-wrap ul li, .bride-wrap ul li {
	float: left;
	width: 50px;
	height: 50px;
	margin: 0;
	background: rgba(0, 0, 0, 0.5) url(${initParam.root}weddingCard/preview_Romantic/img/panel_icon.png) 0 0 no-repeat;
	background-size: 250px;
	font-size: 0;
	line-height: 0;
	text-indent: -9999px
	}
	
	/* 스킨이미지 */
	.header_img{
	    height: 944px;
   		background: url("${initParam.root}weddingCard/preview_Romantic/img/1e1e02198d6c5fa2065aedb76e979025.JPG") center center / cover no-repeat;
	}
	
.header_img_select {
  background: url(${initParam.root}url/${param.url}/${param.imgSrc}) center center / cover no-repeat;
			
min-height: 944px;
		}
	.header_date_select {
  position: absolute;
    width: 220px;
    height: 220px;
   /*  top: 50%; */
    top: 35%;
    left: 50%;
    margin: -110px 0 0 -110px;
    padding: 75px 0 0;
    background-color: #fff;
    border-radius: 50%;
    text-align: center;
    color: #ec7267;
    font-family: 'Cookie', cursive;
    line-height: 1;
}
.greeting_img_select {
    background: url(${initParam.root}url/${param.url}/${param.imgSrc}) center center no-repeat;
    background-size: cover;
    min-height: 600px;
        position: relative;
    padding: 30px 30px 0 30px;
    text-align: center;
   
}
.greeting_img_select>img {
                position: relative;
    display: inline-block;
    max-width: 100%;
    max-height: 600px;
    border: 15px solid rgba(255,255,255,0.8);
    border-bottom: 0;
}
h2.title span {
      font-size: 3.2em;
    line-height: 5;
    color: #fff;
    font-family: 'Cookie', cursive
	}
.greeting_img_select:before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/bg_greeting.png) repeat;
    opacity: 0.8;
     z-index: -999;
}

 .greeting_img_select h2.title {
    position: absolute;
    top: -90px;
    left: 50%;
    margin: 0 0 0 -150px;
    width: 300px;
    height: 105px;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/tit_greeting.png) no-repeat 50% 0;
    background-size: 100%;
}
	 .header_date_select .text {
    position: relative;
    font-size: 42px;
    margin-bottom: 5px;
}
.header_date_select .date {
    position: relative;
    font-size: 28px;
    color: #999;
    letter-spacing: 0;
}
.header_content_select{
    position: absolute;
    bottom: -180px;
    left: 0;
    width: 100%;
    height: 400px;
    background: url('${initParam.root}weddingCard/preview_Romantic/img/header_flower.png') no-repeat;
    background-position: 50% 50%;
}
	

	.greeting_img{
		background: url('${initParam.root}weddingCard/preview_Romantic/img/1e1e02198d6c5fa2065aedb76e979025.JPG') center center no-repeat;
   		background-size: cover;
	}
	.greeting_content {
        position: relative;
    margin: 0;
    padding: 60px 0;
    background-color: #fff;
    z-index: 10;
}

.greeting_content_select {
    position: relative;
    margin: 0;
    padding: 60px 0; 
    background-color: #fff;
    z-index: 10;
}

.greeting_content:before{
content: '';
    position: absolute;
    top: -50px;
    left: 0;
    width: 100%;
    height: 50px;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/bg_roundtop.png) no-repeat 50% 100%;
    background-size: 100% auto;
}
.greeting_content:after {
    content: '';
    position: absolute;
    bottom: -50px;
    left: 0;
    width: 100%;
    height: 50px;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/bg_roundbottom.png) no-repeat 50% 0;
    background-size: 100% auto;
}
h2.title span {
      font-size: 3.2em;
    line-height: 5;
    color: #fff;
    font-family: 'Cookie', cursive
	}
	.gb_msg span {
    display: block;
    width: 270px;
    height: 18px;
    margin: 0 auto;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/txt_guestbook.png) no-repeat 50% 0;
    background-size: 100%;
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
}
h2.title{
margin: 0px
}
.add_be{
		margin-right: 10%;
  	  margin-top: 3%;
	}
	.add_lo{
	margin-right: 10%;
    margin-top: 1%;
	}
	
}/*//1024  */



/* 320 */
@media( max-width: 320px ){
.add_li{
	width: 230px;
	}
	

.gb_msg {
    position: relative;
     margin: 0 0 0px; 
}
.gb_msg span {
    display: block;
    width: 100px;
    height: 18px;
    margin: 0 auto;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/txt_guestbook.png) no-repeat 50% 0;
    background-size: 100%;
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
}
.greeting_name li em {
    font-family: 'Lora', serif;
    color: #f7776a;
    font-style: italic;
    font-weight: 700;
    font-size: 1em;
}
.lo_title h3 {
    margin: 0 0 50px;
    font-size: 1.2em;
}
/* 스킨이미지 */
	.header_img{
	  height: 414px;
   		background: url("${initParam.root}weddingCard/preview_Romantic/img/1e1e02198d6c5fa2065aedb76e979025.JPG") center center / cover no-repeat;
	 
	}
	
	.header_img_select {
		     background: url(${initParam.root}url/${param.url}/${param.imgSrc}) center center / cover no-repeat;
			min-height: 450px;
		}
		.header_panel{
			padding:0px;
			    top: -70px;
		}
	.header_date_select {
    position: absolute;
    width: 220px;
    height: 220px;
    top: 40%;
    left: 50%;
    margin: -110px 0 0 -110px;
    padding: 75px 0 0;
    background-color: #fff;
    border-radius: 50%;
    text-align: center;
    color: #ec7267;
    font-family: 'Cookie', cursive;
    line-height: 1;
    
}
.greeting_wrap_select h2.title span, .gallery_wrap h2.title span {
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
}
   
   .greeting_img_select {
    background: url(${initParam.root}url/${param.url}/${param.imgSrc}) center center no-repeat;
    background-size: cover;
    top: 0px;
    position: relative;
    padding: 30px 30px 0 30px;
    text-align: center;
        padding: 20px 20px 0 20px;
      min-height: 300px 
}

.greeting_img_select>img {
    border: 10px solid rgba(255,255,255,0.8);
    border-bottom: 0;
    position: relative;
    display: inline-block;
    max-width: 100%;
    min-height: 200px;
      margin: 0px;
}

.header_content_select {
    position: absolute;
    bottom: -80px;
    left: 0;
    width: 100%;
    height: 400px;
    top: 250px;
    background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/header_flower.png) no-repeat;
    background-position: 50% 50%;
}
 .header_date_select .text {
    position: relative;
    font-size: 36px;
    margin-bottom: 5px;
}

 .header_date_select .date {
    font-size: 24px;
}
	
	.greeting_img{
		background: url('${initParam.root}weddingCard/preview_Romantic/img/1e1e02198d6c5fa2065aedb76e979025.JPG') center center no-repeat;
   		background-size: cover;
	}
	/*  */
	
.groom-wrap p, .bride-wrap p {
    position: absolute;
   /*  top: 495px; */
    right: 0;
    width: 50px;
    height: 50px;
    text-shadow: none !important;
    background: rgba(255, 116, 109, 0.8) 
    url(${initParam.root}weddingCard/preview_Romantic/img/panel_icon.png) 100% 0
 no-repeat;
    background-size: 250px;
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
    left: 151px;
    top: 0px;
}
.groom-wrap ul li, .bride-wrap ul li {
    float: left;
    width: 50px;
    height: 50px;
    margin: 0;
    background: rgba(0, 0, 0, 0.5) url(${initParam.root}weddingCard/preview_Romantic/img/panel_icon.png) 0 0 no-repeat;
    background-size: 250px;
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
}
.bride-wrap ul {
    position: fixed;
    top: auto;
    bottom: 0;
    left: 66px;
}
.groom-wrap ul{
 position: fixed;
    top: auto;
    bottom: 0;
    left: 0px;
}
	
	.header.ui-section-a{
		height: 300px;
	}
	.header_content {
    background: url(${initParam.root}weddingCard/preview_Romantic/img/header_flower.png) no-repeat;
    background-position: 50% 50%;
    background-size: auto 350px;
	}
	.header_panel a .icon {
    display: block;
    margin: 0 auto 0;
    padding: 0;
    /* width: 55px; */
    height: 33px;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/pannel_icon.png) no-repeat;
  /*   background-size: 110px auto; */
    width: 45px;
    background-size: 90px auto;
}
	
	/* wrap */
	  .greeting_wrap h2.title {
    background: url(${initParam.root}weddingCard/preview_Romantic/img/tit_greeting.png) no-repeat 50% 0;
    background-size: 100%;
    width: 100%;
    margin: 0 0 0 -100px;
    top: -40px;
	}  
	.greeting_wrap_select h2.title {
     background: url(${initParam.root}weddingCard/preview_Romantic/img/tit_greeting.png) no-repeat 50% 0;
    background-size: 100%;
    width: 90%;
    /* margin: 0 0 0 -100px; */
    top: -65px;
        left: 165px;
	}  
	
	.greeting_text {
    position: relative;
    width: 90%;
    max-width: 100%;
    min-width: 0px;
    min-height: 110px;
    margin: 0 auto 40px;
    padding: 0;
    color: #444;
    font-size: 0.95em;
    line-height: 1.7;
    text-align: center;
    word-break: break-word;
    box-sizing: border-box;
	}
	.greeting_name {
    margin: 20px auto 0;
    color: #444;
    width: 100%;
    min-height: 70px;
    box-sizing: border-box;
    font-size: 15px;
         max-width: 100%;
    min-width: 0px; 
	}
	
	.greeting_name li {
    text-align: center;
    width: 8%;
    min-width: 100px;
	}
	
 	.header_loca, .greeting_loca {
    width: 100%;
    max-width: 100%;
    min-width: 0px;
    margin: 40px auto 0;
    padding: 18px 10px;
    text-align: center;
    border: 1px solid #f7776a;
    color: #f7776a;
    line-height: 1.3;
    font-size: 0.9em;
    font-weight: bold;
    word-break: break-word;
	} 
	.gallery_wrap h2.title {
    width: 200px;
    height: 55px;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/tit_gallery.png) no-repeat 50% 0;
    background-size: 100%;
	}
	.dday_title {
   display: inline-block;
    width: 300px;
    height: 100px;
    background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/txt_savethedate.png) no-repeat 50% 0%;
    background-size: auto 50px;
    font-size: 0;
    line-height: 0;
    text-indent: -999px;
    vertical-align: top;
	}
	.dday_text .date {
    display: inline-block;
    width: 170px;
    font-size: 1.5em;
    text-align: center;
	}
	.dday_text .time {
    display: inline-block;
    width: 185px;
    font-size: 1.4em;
    font-weight: 700;
	}
	.dday_text {
    position: relative;
    width: 100%;
    height: 120px;
    padding: 10px 0 0 0;
    display: inline-block;
    color: #fff;
    text-align: left;
    font-family: 'Lora', serif;
    font-weight: 400;
    font-style: italic;
    line-height: 1.2;
    letter-spacing: -1px;
	}
	.dday_text .dday {
   position: absolute;
    top: 0px;
    right: 13%;
    display: block;
    width: 90px;
    height: 80px;
    text-align: center;
    line-height: 80px;
    font-size: 1.9em;
    font-weight: 700;
    border-radius: 50%;
    background-color: rgba(245, 99, 85, 0.7);
    letter-spacing: 0;
	}/* 얍 */
	.add_be{
		margin-right: 5%;
  	  margin-top: 3%;
  	  margin-left: 5%;
  	      float: left;
	}
	.add_lo{
	margin-right: 5%;
    margin-top: 3%;
    margin-left: 5%;
        float: left;
	}
	
	.dday_wrap {
    position: relative;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/bg_dday.jpg) no-repeat 50% 50%;
    background-size: cover;
    text-align: center;
    z-index: 1;
    height: 330px;
	}
	.gallery_wrap+.dday_wrap:before {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    height: 50px;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/bg_roundbottom_green.png) no-repeat 50% 0;
    background-size: 100% auto;
    content: '';
	}
	.greeting_content:after {
	    content: '';
	    position: absolute;
	    bottom: -50px;
	    left: 0;
	    width: 100%;
	    height: 50px;
	    background: url(${initParam.root}weddingCard/preview_Romantic/img/bg_roundbottom.png) no-repeat 50% 0;
	    background-size: 100% auto;
	}
	.col-md-4, .album-post img {
		width: 300px;
	}
	.dday_text .time span:first-child {
	    padding: 0 2px 0 0;
	}
	
	.gb_btn {
    position: relative;
    width: 130px;
    height: 40px;
    margin: 30px auto;
    padding: 0;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/btn_guestbook.png) no-repeat 0 0;
    background-size: 100%;
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
	}
	.guestbook_wrap {
    position: relative;
    padding: 120px 40px;
    overflow: hidden;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/bg_guestbooktop.jpg) no-repeat 50% 0,
    	url(${initParam.root}weddingCard/preview_Romantic/img/bg_guestbookbottom.jpg) no-repeat 50% 100%,#fff;
	}
	h2.title span {
    font-size: 2.5em;
    line-height: 1;
    font-family: 'Cookie', cursive;
	}
	
	.lo_tab_wrap .on {
    background: rgba(6, 150, 137, 0.8) 
    url(${initParam.root}weddingCard/preview_Romantic/img/ico_pin.png) no-repeat
	 10px 50%;
	    background-size: 16px;
	    color: #fff;
	     background-position: 9% 50%;
    padding-left: 16px;
    
	}
	.lo_tab_wrap li {
	    font-size: 0.8em;
	    width: 70%;
	    margin: 0 1%;
	        border-radius: 40px;
    box-sizing: border-box;
    letter-spacing: -1px;
	}
	.location_wrap {
    position: relative;
    overflow: hidden;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/img_guestbook.jpg) 
    no-repeat 50% 0,url(${initParam.root}weddingCard/preview_Romantic/img/bg_gallery.png) repeat;
    background-size: auto 580px,auto;
	}
	.contents {
    position: relative;
    max-width: 1024px;
    margin: 0 auto;
    float: right;
}
.greeting_content {
    position: relative;
    margin: 0;
   /*  padding: 60px 0; */
    background-color: #fff;
    z-index: 10;
}

.gn4 label {
    font-size: 13px
}



}/* 320PX */


/* 411px nexus5X  */
@media( max-width: 411px ){
	
} /* // 411px nexus5X */

/* 375px 아이폰6 plus 황희 */
@media( max-width: 414px ){
	/* .header_img_select {
    background: url(/Final_WeddingCard/url/test_Pink9/romantic_main1.jpg) center center / cover no-repeat;
    min-height: 736px;
	} */
	/* .header_panel {
    padding: 55px 5px 0;
	}
	.header_content_select {
    position: absolute;
    bottom: -180px;
    left: 0;
    width: 100%;
    height: 400px;
    background: url('/Final_WeddingCard/weddingCard/preview_Romantic/img/header_flower.png') no-repeat;
    background-position: 50% 50%;
	}
	.header_date {
    position: absolute;
    width: 220px;
    height: 220px;
    top: 50%;
    left: 50%;
    margin: -110px 0 0 -110px;
    padding: 75px 0 0;
    background-color: #fff;
    border-radius: 50%;
    text-align: center;
    color: #ec7267;
    font-family: 'Cookie', cursive;
    line-height: 1;
	} */
} /* //375px 아이폰6 plus */









/* 360px 갤럭시 5 이승현 */
@media( max-width: 360px ){
  .header_panel a .icon {
       display: block;
       margin: 0 auto 0;
       padding: 0;
       width: 55px;
       height: 33px;
       background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/pannel_icon.png) no-repeat;
       background-size: 110px auto;
   }

   .gallery_wrap h2.title {
       position: relative;
       margin: 0 auto 30px;
       width: 320px;
       height: 70px;
       background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/tit_gallery.png) no-repeat 50% 0;
       background-size: 100%;
   }
   
   .dday_title {
       display: inline-block;
       width: 320px;
       height: 100px;
       background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/txt_savethedate.png) no-repeat 50% 60%;
       background-size: auto 55px;
       font-size: 0;
       line-height: 0;
       text-indent: -999px;
       vertical-align: top;
   }
   
   .dday_wrap {
       position: relative;
       padding: 100px 0;
       background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/bg_dday.jpg) no-repeat 50% 50%;
       background-size: cover;
       text-align: center;
       z-index: 1;
   }
   
   .guestbook_wrap {
       position: relative;
       padding: 120px 40px;
       overflow: hidden;
       background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/bg_guestbooktop.jpg) no-repeat 50% 0,url(/Final_WeddingCard/weddingCard/preview_Romantic/img/bg_guestbookbottom.jpg) no-repeat 50% 100%,#fff;
   }
   
   .location_wrap {
       position: relative;
       padding: 120px 0 0;
       overflow: hidden;
       background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/img_guestbook.jpg) no-repeat 50% 0,url(/Final_WeddingCard/weddingCard/preview_Romantic/img/bg_gallery.png) repeat;
       background-size: auto 580px,auto;
   }
   
   .lo_tab_wrap .on {
       background: rgba(6,150,137,0.8) url(/Final_WeddingCard/weddingCard/preview_Romantic/img/ico_pin.png) no-repeat 20px 50%;
       background-size: 16px;
       padding-left: 20px;
       color: #fff;
   }
   
   .col-md-4.album-post {
      margin-left: 30px;
   }
   
   .header {
      height:1000px;
   }
   
   .header_img_select {
       min-height: 700px;
   }
   
   .header_content_select {
       height: 800px;
   }
   
   img.add_be {
       margin-left: 20px;
       margin-top: 5px;
       margin-right: 10px;
       float: left;
   }
   
   img.add_lo {
       margin-left: 20px;
       margin-top: 5px;
       margin-right: 10px;
       float: left;
   }



}/* // 이승현 */

/* 435px nexus6P 김진선 */
@media( min-width: 0px ) and ( max-width: 435px ){
h2.title span {
    font-size: 3.2em;
    line-height: 1;
    color: #fff;
    font-family: 'Cookie', cursive;
}

   
   img.add_be {
       margin-left: 20px;
       margin-top: 5px;
       margin-right: 10px;
       float: left;
   }
   
   img.add_lo {
       margin-left: 20px;
       margin-top: 5px;
       margin-right: 10px;
       float: left;
   }
	  .header_content {
       background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/header_flower.png) no-repeat;
       background-position: 50% 50%;
       background-size: auto 350px;
       height : 400px;
   }
   .greeting_img_select>img {
    position: relative;
    display: inline-block;
    max-width: 85%;
    max-height: 400px;
    border: 15px solid rgba(255,255,255,0.8);
    border-bottom: 0;
    min-height: 600px;
    margin: 30px 0px 0px 30px;
}
   .header {
      height:1000px;
   }
   
   .header_img_select {
       min-height: 700px;
   }
   
   .header_content_select {
       height: 800px;
   }
   
   .header_panel a .icon {
       display: block;
       margin: 0 auto 0;
       padding: 0;
       width: 55px;
       height: 33px;
       background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/pannel_icon.png) no-repeat;
       background-size: 110px auto;
   }
   
   .greeting_wrap h2.title {
       position: absolute;
       left: 50%;
       margin: 0 0 0 -150px;
       width: 300px;
       height: 105px;
       background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/tit_greeting.png) no-repeat 50% 0;
       background-size: 100%;
   }
   
   .gallery_wrap h2.title {
       position: relative;
       margin: 0 auto 30px;
       width: 320px;
       height: 70px;
       background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/tit_gallery.png) no-repeat 50% 0;
       background-size: 100%;
   }
   
   .col-md-4.album-post {
    margin-left: 75px;
   }
   
   .dday_wrap {
       position: relative;
       padding: 100px 0;
       background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/bg_dday.jpg) no-repeat 50% 50%;
       background-size: cover;
       text-align: center;
       z-index: 1;
   }

   .dday_title {
       display: inline-block;
       width: 320px;
       height: 100px;
       background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/txt_savethedate.png) no-repeat 50% 60%;
       background-size: auto 55px;
       font-size: 0;
       line-height: 0;
       text-indent: -999px;
       vertical-align: top;
   }
   
   .guestbook_wrap {
       position: relative;
       padding: 120px 40px;
       overflow: hidden;
       background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/bg_guestbooktop.jpg) no-repeat 50% 0,url(/Final_WeddingCard/weddingCard/preview_Romantic/img/bg_guestbookbottom.jpg) no-repeat 50% 100%,#fff;
   }
   
   .location_wrap {
       position: relative;
       padding: 120px 0 0;
       overflow: hidden;
       background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/img_guestbook.jpg) no-repeat 50% 0,url(/Final_WeddingCard/weddingCard/preview_Romantic/img/bg_gallery.png) repeat;
       background-size: auto 580px,auto;
   }
   
   .lo_tab_wrap .on {
       background: rgba(6,150,137,0.8) url(/Final_WeddingCard/weddingCard/preview_Romantic/img/ico_pin.png) no-repeat 20px 50%;
       background-size: 16px;
       padding-left: 20px;
       color: #fff;
   }
	
	.guestbook_wrap:after {
    position: absolute;
    top: 20px;
    left: 20px;
    right: 20px;
    bottom: 20px;
    border: 1px solid rgba(247, 119, 106, 0.5);
    content: '';
}
	
} /* // 김진선 */

/* 375px 아이폰6 송지현 */
@media( max-width: 375px ){
	  div.header_img_select{
      min-height: 500px;
   }
   div.header_content_select{
      top: 300px;
   }
   div.header ui-section-a{
   max-height: 600px;
   }
   .header_panel a .icon {
    display: block;
    margin: 0 auto 0;
    padding: 0;
    width: 55px;
    height: 33px;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/pannel_icon.png) no-repeat;
    background-size: 110px auto;
   }
   div.header_panel{
    top: -90px;
   }
   .header {
       min-height: 700px;
       height: 700px;
   }
   div.greeting_img_select.img{
      margin-left: 30px;
       width: 320px;
   }
   .greeting_img_select>img {
    position: relative;
    display: inline-block;
    max-width: 100%;
    max-height: 600px;
    border: 15px solid rgba(255,255,255,0.8);
    border-bottom: 0;
    min-height: 450px;
    margin: 30px 0px 0px 250px;
        margin-left: 30px;
    width: 300px;
}
}
   .gallery_wrap+.dday_wrap:before {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    height: 50px;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/bg_roundbottom_green.png) no-repeat 50% 0;
    background-size: 100% auto;
    content: '';
   }
   .dday_wrap {
    position: relative;
    padding: 100px 0;
    background: url(${initParam.root}weddingCard/preview_Romantic/img/bg_dday.jpg) no-repeat 50% 50%;
    background-size: cover;
    text-align: center;
    z-index: 1;
}
   .dday_title{
   display: inline-block;
   width: 320px;
   height: 100px;
   background: url(${initParam.root}weddingCard/preview_Romantic/img/txt_savethedate.png) no-repeat 50% 60%;
   background-size: auto 55px;
   font-size: 0;
   line-height: 0;
   text-indent: -999px;
   vertical-align: top;
   padding-top: 50px;
   }
   .gallery_wrap h2.title {
   position: relative;
   margin: 0 auto 30px;
   width: 320px;
   height: 70px;
   background: url(${initParam.root}weddingCard/preview_Romantic/img/tit_gallery.png) no-repeat 50% 0;
   background-size: 100%
   }
   img, fieldset {
    border: 0;
    margin-left: 40px;
   }
   .guestbook_wrap {
    position: relative;
    padding: 120px 40px;
    overflow: hidden;
    background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/bg_guestbooktop.jpg) no-repeat 50% 0, url(/Final_WeddingCard/weddingCard/preview_Romantic/img/bg_guestbookbottom.jpg) no-repeat 50% 100%,#fff;
   }
   .location_wrap {
    position: relative;
    overflow: hidden;
    background: url(/Final_WeddingCard/weddingCard/preview_Romantic/img/img_guestbook.jpg) no-repeat 50% 0,url(/Final_WeddingCard/weddingCard/preview_Romantic/img/bg_gallery.png) repeat;
    background-size: auto 580px,auto;
   }
   .lo_tab_wrap .on {
    background: rgba(6, 150, 137, 0.8) url(/Final_WeddingCard/weddingCard/preview_Romantic/img/ico_pin.png) no-repeat 10px 50%;
    background-size: 16px;
    color: #fff;
    background-position: 9% 50%;
    padding-left: 16px;
   }
   .add_lo {
    border: 0;
    margin-left: 10px;
}
	
} /* // 송지현 */



</style>

</head>

<body onload="cardContext()">
	<input type="hidden" id="now_lon" />
	<input type="hidden" id="now_lat" />
	<div data-role="page" id="skin_page">
		<!-- panel-groom -->
		<c:choose>
				 		<c:when test="${param.imgGroom == '' }">
		<div data-role="panel" id="panel_groom" class="leftpanel"
			data-position="left" data-display="push" data-position-fixed="true"
			data-swipe-close="true" data-theme="b"><!-- style="background: #fff url('img/bg_groom.jpg') center top no-repeat; background-size: 100%; z-index: 9999;" -->
				 			<div class="groom-wrap">
								<!-- <ul>
									<a href="#"><li class="ico5">신랑에게 전화하기</li></a>
									<p class="btn_go_snsbbs">축하글 남기기</p>
								</ul> -->
							</div>
				 		</c:when>
				 		<c:otherwise>
				 		<div data-role="panel" id="panel_groom" class="leftpanel"
			data-position="left" data-display="push" data-position-fixed="true"
			data-swipe-close="true" data-theme="b"
			style="background: #2a2a2a url('${initParam.root}url/${param.url}/${param.imgGroom}') no-repeat; "
			
			>
				 			<div class="groom-wrap">
								<!-- <ul>
									<a href=""><li class="ico5">신랑에게 전화하기</li></a>
									<p class="btn_go_snsbbs">축하글 남기기</p>
								</ul> -->
							</div>
				 			<!-- <img src="" class="img-responsive" alt=""> -->
				 		</c:otherwise>
				 	</c:choose>
			
			
			
		</div>
		<!--// panel-groom -->
		<!-- panel-bride -->
		<div data-role="panel" id="panel_bride" class="righttpanel"
			data-position="right" data-display="push" data-position-fixed="true"
			data-swipe-close="true" data-theme="a">
			
			<c:choose>
				 		<c:when test="${param.imgBride == ''  }">
				 		
				 		<div class="bride-wrap">
							<!-- 	<ul>
									<a href="#"><li class="ico1">신부에게 전화하기</li></a>
									<p class="btn_go_snsbbs">축하글 남기기</p>
								</ul> -->
								
							</div>
				 		</c:when>
				 		<c:otherwise>
				 		<div class="ui-panel-inner"
				 		style="background: url('${initParam.root}url/${param.url}/${param.imgBride}') no-repeat;"
				 		></div>
				 		<div class="bride-wrap">
						<!-- 	<ul>
					<a href="#"><li class="ico1">신부에게 전화하기</li></a>
					<p class="btn_go_snsbbs">축하글 남기기</p>
						</ul> -->
				
							</div>
				 		</c:otherwise>
				 	</c:choose>
			
		</div>
		<!--// panel-bride -->
		<!-- panel-menu -->
		<div data-role="panel" id="right-panel" data-position="right"
			data-display="push" style="z-index: 9999;">
			<div class="menu-wrap ui-panel-inner">
				<ul data-role="listview" data-icon="false">
					<li data-icon="delete"><a href="#" data-rel="close">Close</a></li>
					<li data-role="list-divider">소망이 축복 속에서 기쁨으로 이루어지는날...</li>
					<li class="menu_scrolls" data-rel="close" id="p_topinfo"><span>GREETINGS</span></li>
					<li class="menu_scrolls" data-rel="close" id="p_gallery"><span>GALLERY</span></li>
					<li class="menu_scrolls" data-rel="close" id="p_snsbbs"><span>GUESTBOOK</span></li>
					<li class="menu_scrolls" data-rel="close" id="p_map"><span>LOCATION</span></li>
				</ul>
			</div>
		</div>
		<!--// panel-menu -->

		<div class="lnb_mobile">
			<a href="#right-panel"> <span class="bar_line bar_top"></span> <span
				class="bar_line bar_middle"></span> <span
				class="bar_line bar_bottom"></span>
			</a>
		</div>
		<!-- header 스킨 이미지 -->
		<div class="header ui-section-a" id="sk_topinfo">
			<c:choose >
				<c:when test="${ param.imgSrc == ''}">
			<div class="header_img">
				<div class="header_content">
					<div class="header_date">
						<p class="text">Save the Date</p>
						<p class="date">
							<span>${param.cardDate}</span>
							
							<span>
							<c:if test="${param.cardDate != null}">
                     	 	${param.hour}:${param.min} ${param.ampm }
                    	 </c:if>
							</span>
						</p>
					</div>
				</div>
			</div>
		</c:when>
		<c:otherwise>
		<div class="header_img_select">
				<div class="header_content_select">
					<div class="header_date_select">
						<p class="text">Save the Date</p>
						<p class="date">
							<span>${param.cardDate}</span>
							
							<span>
							<c:if test="${param.cardDate != null}">
                     	 	${param.hour}:${param.min} ${param.ampm }
                    	 </c:if>
							</span>
						</p>
					</div>
				</div>
			</div>
		</c:otherwise>
		</c:choose>
			<div class="header_side">
				<div class="lnb">
					<ul>
						<li class="menu1 menu_scrolls" id="m_topinfo" style="cursor: pointer;"><span>Greetings</span></li>
						<li class="menu2 menu_scrolls" id="m_gallery" style="cursor: pointer;"><span>WeddingGallery</span></li>
						<li class="menu4 menu_scrolls" id="m_snsbbs" style="cursor: pointer;"><span>Guestbook</span></li>
						<li class="menu5 menu_scrolls" id="m_map" style="cursor: pointer;"><span>Location</span></li>
					</ul>
				</div>
				<div class="header_panel">
					<p class="groom">
						<a href="#panel_groom"><span class="icon"></span>Groom</a>
					</p>
					<p class="bride">
						<a href="#panel_bride"><span class="icon"></span>Bride</a>
					</p>
				</div>
				<div class="header_loca">
					<p>
						<c:if test="${param.cardDate != null}">
                      ${param.cardDate}<br> ${param.hour}:${param.min} ${param.ampm }
                     </c:if></span> <span>
					</p>
					<p>${param.hallName}</p>
				</div>
			</div>
		</div>
		<!--// header -->

		<div class="ui-section-b">
			<!-- greeting -->
			<c:choose >
				<c:when test="${ param.imgSrc == ''}">
				<div class="greeting_wrap">
				<div class="greeting_img">
					<img src="${initParam.root}weddingCard/preview_Romantic/img/1e1e02198d6c5fa2065aedb76e979025.JPG"
						alt="">
				</div>
				</c:when>
				<c:otherwise>
				<div class="greeting_wrap_select">
				<div class="greeting_img_select">
					<img src="${initParam.root}url/${param.url}/${param.imgSrc}"
						alt="">
				</div>
				</c:otherwise>
			</c:choose>
				<div class="greeting_content">
					<h2 class="title">
						<span>Greetings</span>
					</h2>

					<div class="greeting_text" id="greeting_text">
						${param.cardContext}
					</div>
					<ul class="greeting_name">
						<li class="gn_bride">
								<p>
									<span class="gn4"><em>Bride</em><strong>${param.groomName}</strong></span>
									<span class="gn4"><em>TEL.</em><label>${fn:substring(param.groomTel, 0,3) }-${fn:substring(param.groomTel, 3,7)}-${fn:substring(param.groomTel, 7,11)}</label></span>
								</p>
							</li>
						<li class="gn_groom">
							<p>
								<span class="gn4"><em>Groom</em><strong>${param.brideName}</strong></span>
								<span class="gn4"><em>TEL.</em><label>${fn:substring(param.brideTel, 0,3) }-${fn:substring(param.brideTel, 3,7)}-${fn:substring(param.brideTel, 7,11)}</label></span>
							</p>
						</li>
						
					</ul>
					<div class="greeting_loca">
						<p>
						<c:if test="${param.cardDate != null}">
                      ${param.cardDate}<br>${param.hour}:${param.min} ${param.ampm }
                     </c:if>
						</p>
						<p>${param.hallName}</p>
					</div>
				</div>
			</div>
			<!--// greeting -->

			<!-- photobook -->
			<div class="gallery_wrap" id="sk_gallery">
				<h2 class="title">
					<span>Wedding Gallery</span>
				</h2>
				<div class="ul-body">
					<div class="gal_list">
						<div class="col-5">
							<c:if test="${param.photoBookNo != null && param.photoBookNo != ''}">
							<c:set var="pbImg" value="${fn:split(param.photoBookImg, '`') }" />
							<%-- <c:set var="pbComment"
								value="${fn:split(param.photoBookComment, '`END`') }" /> --%>

							<c:forEach begin="0" end="${fn:length(pbImg)-1 }" var="i">
								<div class="col-md-4 album-post">
									<img
										src="${initParam.root }/img/photobook/${param.memberId}/${param.photoBookNo }/${pbImg[i] }"
										class="img-responsive" alt="/" width="280px">
									<div class="textbox">
										<!-- <h4>my wedding</h4> -->
										<%-- <p>${pbComment[i]}</p> --%>
									</div>
								</div>
							</c:forEach>
							</c:if>
						</div>
					</div>
				</div>
			</div>
			<!--// gallery -->


			<!-- dday -->
			<div class="dday_wrap" id="sk_media">
				<div class="dday_title">Save The Date</div>
				<div class="dday_text">
					<p class="date">
						<c:if test="${param.cardDate != null}">
	                      ${param.cardDate}
	                     </c:if>
                     </p>
					<p class="time">
						<span>SAT</span>
						<span>
						<c:if test="${param.cardDate != null}">
                     	 ${param.hour}:${param.min} ${param.ampm }
                    	 </c:if>
						</span>
					</p>
					<p class="dday">
						<c:if test="${param.cardDate != ''}">
							D-${param.dDay }
								<span> </span>
						</c:if>
					</p>
				</div>
			</div>
			<!--// dday -->


			<!-- guestbook -->
			<div class="guestbook_wrap" id="sk_snsbbs">
				<h2 class="title">
					<span>Guestbook</span>
				</h2>

				<div class="ul-body col-3">
					<div class="gb_msg">
						<span>신랑♥신부에게 축하메시지를 남겨주세요</span>
					</div>
					
					
					<div id="div_snsbbs" style='z-index: 999;'>
                  <div class="">
                     <div class="btn_go_snsbbs guestbook_add">
                        <!-- guestbook Line -->
                     </div>
                  </div>
               </div>
            </div> <!--ul-body  -->
            <div class="gb_btn btn_go_snsbbs" style='z-index: 999;' onclick="writeComment()">
               <span>Write</span>
           	 </div>
				
			</div>
			<!--// guestbook -->

			<!-- location -->
			<div class="location_wrap" id="sk_map">
				<h2 class="title">
					<span>Location</span>
				</h2>

				<div class="ul-body">
					<ul class="lo_tab_wrap">
						<li class="tab_btn wh locationtabs on" id="tabs_wedding">
						웨딩홀 오시는 길</li>
					</ul>
				</div>

				<div class="ul-body locationdivs" id="div_wedding">
					<div class="lo_box col-2">
						<div class="ui-block-a">
							<div class="lo_title">
								<h3>Wedding Ceremony</h3>
					
								<p class="date">
								<c:if test="${param.cardDate != null}">
		                     ${param.cardDate}<br>${param.hour}:${param.min} ${param.ampm }
		                     </c:if>
								</p>
								<p class="place">${param.hallName}</p>
							</div>
							
							
							
							<div class="lo_map" id="map">
                        <div id="wedding_pmap_canvas" class="not_view_panel"
                           style="width: 100%; height: 500px;">
                           
                           <script type="text/javascript"
                     src="//apis.daum.net/maps/maps3.js?apikey=3f17108ee4529ef634468783d7ef555a&libraries=services">
                  </script>
                  <script >
                  
                     var mapContainer = document.getElementById('wedding_pmap_canvas'); // 지도를 표시할 div 
                     var loc = '${param.hallLocation}';
                     
                     //alert("loc::"+loc);
                     mapOption = {
                        center : new daum.maps.LatLng(33.450701,
                              126.570667), // 지도의 중심좌표
                        level : 3
                     // 지도의 확대 레벨
                     };

                     // 지도를 생성합니다    
                     var map = new daum.maps.Map(mapContainer, mapOption);

                     // 주소-좌표 변환 객체를 생성합니다
                     var geocoder = new daum.maps.services.Geocoder();
                     
                     // 주소로 좌표를 검색합니다
                     geocoder.addr2coord(loc, function(status, result) {
                        
                         // 정상적으로 검색이 완료됐으면 
                          if (status === daum.maps.services.Status.OK) {

                             var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);

                             // 결과값으로 받은 위치를 마커로 표시합니다
                             var marker = new daum.maps.Marker({
                                 map: map,
                                 position: coords
                             });
                             map.relayout();
                             // 인포윈도우로 장소에 대한 설명을 표시합니다
                             var infowindow = new daum.maps.InfoWindow({
                                 content: '<div style="width:150px;text-align:center;padding:6px 0;">예식장</div>'
                             });
                             infowindow.open(map, marker);

                             // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                             map.setCenter(coords);
                             
                         } 
                     });  

                  </script>
                  </div>
               </div><!-- map div End -->
							
						</div>
						<div class="ui-block-b">
							<div class="lo_containerarea">
								<table class="lo_container lo_left">
									<tr>
										<th class="lo_loca"><span class="icon">Location</span></th>
										<td class="txt">${param.hallLocation}</td>
									</tr>
									<tr>
										<th class="lo_tel"><span class="icon">Tel</span></th>
										<td class="txt">${fn:substring(param.hallTel, 0, 3)}-${fn:substring(param.hallTel, 3, 6)}
										-${fn:substring(param.hallTel, 6, 10)}
										</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="ul-body locationdivs hide" id="div_party">
					<input type="hidden" id="party_pmap_lat" value="" /> <input
						type="hidden" id="party_pmap_lon" value="" /> <input
						type="hidden" id="party_paddr" value="" /> <input type="hidden"
						id="party_pname" value="" />
					<div class="lo_box col-2">
						<div class="ui-block-a">
							<div class="lo_title">
								<h3>Wedding Reception</h3>
								<p class="date">0000.00.00</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--// location  -->

			<!-- footer -->
			<div class="footer" id="sk_snslink">
				<div class="contents">
				
					<p id="msl">MySweetLove</p>
					<a id="kakao-link-btn" href="javascript:;">
<img  style="width:40px; height: 40px;"  src="http://dn.api1.kage.kakao.co.kr/14/dn/btqa9B90G1b/GESkkYjKCwJdYOkLvIBKZ0/o.jpg"/>
</a>
<!-- Facebook share -->
<a 
href="http://www.facebook.com/sharer/sharer.php?u=http://mysweetlove.org/Final_WeddingCard/url/${param.url}.jsp">
<img style="width:40px; height: 40px;"  src=${initParam.root}img/facebook-share.png></a>
					
				</div>
			</div>
			<!--// footer -->
		</div>
		
		<script type='text/javascript'>
  //<![CDATA[
    // // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('150642152529d54760872b2abd33da63');
    
    // // 카카오톡 링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.
    Kakao.Link.createTalkLinkButton({
      container: '#kakao-link-btn',
      label: '${param.groomName}♥${param.brideName}',
      image: {
        src: '${initParam.root}url/${param.url}/${param.imgSrc}',
        width: '320',
        height: '190'
      },
      webButton: {
        text: 'D-${param.dDay} ${param.cardDate} ${param.hour}:${param.min} ',
       /*  url: 'https://dev.kakao.com/docs/js' // 앱 설정의 웹 플랫폼에 등록한 도메인의 URL이어야 합니다. */
       url: 'http://mysweetlove.org/url/${param.url}.jsp'
      }
    });
  //]]>
</script>

		<!-- <script>
			(function(i, s, o, g, r, a, m) {
				i['GoogleAnalyticsObject'] = r;
				i[r] = i[r] || function() {
					(i[r].q = i[r].q || []).push(arguments)
				}, i[r].l = 1 * new Date();
				a = s.createElement(o), m = s.getElementsByTagName(o)[0];
				a.async = 1;
				a.src = g;
				m.parentNode.insertBefore(a, m)
			})(window, document, 'script',
					'//www.google-analytics.com/analytics.js', 'ga');

			ga('create', 'UA-55160879-1', 'auto');
			ga('require', 'displayfeatures');
			ga('send', 'pageview');
		</script> -->
</body>
</html>