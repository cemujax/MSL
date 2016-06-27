<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" class="ui-mobile">
<head>
<!-- <base href="http://www.dalpeng.com/service"> -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=768">

<title>주요기능</title>


<!-- <link rel="shortcut icon" type="image/x-icon" href="/dalpeng.ico"> -->

<link rel="stylesheet" type="text/css" href="css/dalpeng.css">

<link rel="stylesheet" type="text/css"
	href="css/jquery.mobile.icons.min.css">
<link rel="stylesheet" type="text/css"
	href="css/jquery.mobile.structure-1.4.3.min.css">

<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/service.css">
<link rel="stylesheet" type="text/css" href="css/join.css">
<link rel="stylesheet" type="text/css" href="css/application.css">
<link rel="stylesheet" type="text/css" href="css/NanumGothic.css">

<script type="text/javascript" async=""
	src="http://www.google-analytics.com/plugins/ua/linkid.js"></script>
<script async="" src="//www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" src="/js/jquery-1.11.1.min.js"></script>

<script type="text/javascript" src="/js/mobileinit.js"></script>

<script type="text/javascript" src="/js/jquery.mobile-1.4.3.min.js"></script>

<script type="text/javascript" src="/js/jquery.placeholder.js"></script>
<script type="text/javascript" src="/js/common.js"></script>

<script type="text/javascript" src="/js/jquery.slimscroll.min.js"></script>




<script type="text/javascript">
	$.ajaxSetup({
		cache : false
	});

	$(function() {
		try {
			var el;
			var doc_height = window.innerHeight + window.outerHeight + 410;
			window.onresize = window.onscroll = function() {
				var lowerleft = [ window.pageXOffset,
						(window.pageYOffset + window.innerHeight) ];
				var lowerright = [ (lowerleft[0] + window.innerWidth),
						lowerleft[1] ];
				/*
				if(parseInt(doc_height) > parseInt(lowerleft[1]-el.offsetHeight)){
					el.style.top = lowerleft[1]-el.offsetHeight + 'px';
				}

				 */
			}
			window.onload = function() {
				el = $('#header');
				window.onresize();
			}
		} catch (e) {
		}

		//$('input[type=text], input[type=email], input[type=tel], input[type=password], textarea').placeholder();

		// add by echos (2015-04-22)
		$('#btAlertChromeError').click(function() {
			$('#divAlertChromeError').show();
		});

		$(document).keyup(function(e) {
			if (e.keyCode == 27)
				divCloseDefault(); // esc
		});

		$('.popclose').click(function() {
			divCloseDefault();
		});

		function divCloseDefault() {
			$('#divAlertChromeError').hide();
		}

		$("#lnb_menu >ul>li").hover(function() {
			$(this).find('.menu_child').stop().fadeIn();
		}, function() {
			$(this).find('.menu_child').stop().fadeOut();
		});

		var mobileNavView = false;

		//모바일한정 메뉴버튼
		$("#lnb_mobileicon")
				.click(
						function() {
							if (mobileNavView)
								mobileNavView = false;
							else
								mobileNavView = true;

							var $contents_wrap = $("div.contents_wrap");
							var $need_on_class = $("#mobilenav, #lnb_menu, #mainlogo, #hamburger>div");
							var $body = $('body');

							if (mobileNavView) {
								$contents_wrap.addClass("blurred");
								$need_on_class.addClass("on");

								$body.css('overflow', 'hidden');
							} else {
								$contents_wrap.removeClass("blurred");
								$need_on_class.removeClass("on");

								$body.css('overflow', 'auto');
							}
						});

		//아래로,위로 스크롤
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 500);
		});

		$(".focus_box input[type=text]").focus(function() {
			$('.focus_box').addClass("focus");
		}).blur(function() {
			$('.focus_box').removeClass("focus");
		});

	});
</script>
<script type="text/javascript" charset="UTF-8"
	src="http://search.n2s.co.kr/_n2s_ck_log.php"></script>
</head>

<body id="bodytop" class="ui-mobile-viewport ui-overlay-a">
	<div data-role="page" data-url="/service" tabindex="0"
		class="ui-page ui-page-theme-a ui-page-active">
		<!-- <div class="header" id="header">
		<a href="javascript:void(0)" class="lnb_mobileicon ui-link" id="lnb_mobileicon">
			<div class="hamburger" id="hamburger">
				<div class="bar top"></div>
				<div class="bar middle"></div>
				<div class="bar bottom"></div>
			</div>
		</a>
		<div class="sublnb_wrap">
			기본 로고
			<h1 class="logo" id="mainlogo"><span class="snow"></span><a href="http://dalpeng.com" target="_top" class="ui-link">달팽</a></h1>
			<div class="mobilenav" id="mobilenav">
				<div class="lnb_menu on" id="lnb_menu">
					<ul>
						<li class="menu1"><a href="/service" class="on ui-link"><span>서비스소개</span></a>
							<ul class="menu_child">
								<li><a href="/service" class="ui-link">주요기능</a></li>
								<li><a href="/service/invitation" class="ui-link">초대합니다</a></li>
								<li><a href="/service/manual" class="ui-link">매뉴얼</a></li>
								<li><a href="/service/notice" class="ui-link">공지사항</a></li>
							</ul>
						</li><li class="menu2"><a href="/app" class="ui-link"><span>신청하기</span></a></li><li class="menu3"><a href="/sms" class="ui-link"><span>문자보내기</span></a>
							<ul class="menu_child">
								<li><a href="/sms" class="ui-link">문자보내기</a></li>
								<li><a href="/sms/send_list" class="ui-link">전송내역</a></li>
								<li><a href="/sms/charge_list" class="ui-link">충전내역</a></li>
								<li><a href="/sms/charge" class="ui-link">포인트충전</a></li>
							</ul>
						</li><li class="menu4"><a href="/cs" class="ui-link"><span>고객센터</span></a>
							<ul class="menu_child">
								<li><a href="/cs" class="ui-link">고객센터</a></li>
								<li><a href="/mypage/qna" class="ui-link">1:1문의</a></li>
															</ul>
						</li>
						<li class="menu5"><a href="/mypage/svc_list" class="ui-link"><span>나의서비스</span></a>
							<ul class="menu_child">
																<li><a href="/mypage/svc_list" class="ui-link">초대장 관리</a></li>
																<li><a href="/mypage/req_list" class="ui-link">신청내역</a></li>
							</ul>
						</li><li class="menu6"><a href="http://blog.dalpeng.com" target="_blank" class="ui-link"><span>블로그</span></a></li>
					</ul>
				</div>
				<div class="lnb_join">
					<ul>
												<li class="join1"><a href="https://dalpeng.com/member/login" class="ui-link"><span>로그인</span></a></li>
						<li class="join2"><a href="https://dalpeng.com/member/join" class="ui-link"><span>회원가입</span></a></li>
											</ul>
				</div>
			</div>
		</div>
	</div> -->

		<div class="contents_wrap contents_header service_index">
			<h2 class="sub_ctitle">주요기능</h2>
			<div class=" "></div>
		</div>
		<div class="contents_wrap">
			<!-- content_wrap area -->
			<!-- <div class="service_column3 box sub_cont">
			<div class="about-visual-a">
				<div class="text_L">
					<h3><span class="title" style="font-size:40px;padding-top:15px;">세상에 없던 당신만의 특별한 초대</span></h3>
					<p class="info_small">
						특별한 날, 소중한 분들께 정성스런<br />
						마음을 전하는 방법
					</p>
				</div>
			</div>
		</div> -->

			<div class="about-grid-a img01">
				<div class="img_box01" style="background:url('img/about_01.png') no-repeat right 20px;">
					<div class="text_L01">
						<h3>
							<p class="about_num num01"  style="background:url('img/about_num01.png') no-repeat 0px 0px;">01</p>
							<p class="title">
								누구나 쉽게 만들 수 있는<br> 셀프 모바일 초대장
							</p>
						</h3>
						<p class="info_small">
							디자인 고민 없이 내용과 사진만 입력하면<br> 쉽고 간단하게 초대장 생성이 즉시 생성!<br>
							맘에 드는 디자인 스킨 변경에 걸리는 시간은 1초!!<br>
						</p>
					</div>
				</div>
			</div>

		<!-- 	<div class="about-grid-a img02">
				<div class="img_box01" >
					<div class="text_R">
						<h3>
							<p class="about_num num02">02</p>
							<p class="title">
								신청한 초대장 종류 상관없이<br> 초대장 스킨 마음대로 변경 가능
							</p>
						</h3>
						<p class="info_small">
							돌잔치, 청첩장, 행사 구분 없이<br> 사용기간 동안에는 초대장 스킨을<br> 변경 즉시 바로
							사용하실 수 있습니다.
						</p>
					</div>
				</div>
			</div>


			<div class="about-grid-a img03">
				<div class="img_box01">
					<div class="text_L01">
						<h3>
							<p class="about_num num03">03</p>
							<p class="title">
								24시간 언제나<br> 수정하면 바로 반영
							</p>
						</h3>
						<p class="info_small">
							수정 요청하고 기다릴 필요 없이<br> 원하실 때는 언제든지 수정 가능!!<br> 모든 결과는 즉시
							반영되며 바로 사용할 수 있습니다.
						</p>
					</div>
				</div>
			</div>


			<div class="about-grid-a img04">
				<div class="img_box01">
					<div class="text_R">
						<h3>
							<p class="about_num num04">04</p>
							<p class="title">바로 확인하고 원하는 기능만!</p>
						</h3>
						<p class="info_small">
							입력과 동시에 바로 확인 가능한 강력한 미리보기 기능<br> 사진 크기 조정 NO!! 용량제한 NO!!<br>
							편리한 사진 업로드 기능<br> 원하는 기능만 골라서 사용 가능합니다.<br>
						</p>
					</div>
				</div>
			</div>
 -->
<!-- 
			<div class="about-grid-a img05">
				<div class="img_box01">
					<div class="text_L01">
						<h3>
							<p class="about_num num05">05</p>
							<p class="title">
								PC, 태블릿, 모바일<br> 어느 곳에서도 완벽하게
							</p>
						</h3>
						<p class="info_small">
							신개념 반응형 모바일 초대장!!<br> PC, 태블릿, 모바일 어떤 기기에서도<br> 알아서 화면에
							맞춰 보여집니다.
						</p>
					</div>
				</div>
			</div> -->

			<div class="about-grid-a img06">
				<div class="img_box01" style="background:url('img/pcPhone.png') no-repeat left 20px;">
					<div class="text_R">
						<h3>
							<p class="about_num num06"  style="background:url('img/about_num02.png') no-repeat 0px 0px;">02</p>
							<p class="title">
								PC, 모바일<br> 어느 곳에서도 완벽하게
							</p>
						</h3>
						<p class="info_small">
							신개념 반응형 모바일 초대장!!<br> PC, 모바일 어떤 기기에서도<br> 알아서 화면에
							맞춰 보여집니다.
						</p>
					</div>
				</div>
			</div>

			<div class="about-grid-a img07 ">
				<div class="img_box01" >
					<div class="text_L01">
						<h3>
							<p class="about_num num07" style="background:url('img/about_num03.png') no-repeat 0px 0px;">03</p>
							<p class="title">
								셀프 웨딩에 관한<br> 자유로운 소통 및 정보 공유
							</p>
						</h3>
						<p class="info_small">
							From A to Z<br>
							웨딩 준비부터 정보 공유까지<br>
							익명으로 커뮤니케이션 할 수 있습니다.
						</p>
					</div>
				</div>
			</div>

			<div class="about-grid-a img08">
				<div class="img_box01" style="background:url('img/photobook01.png') no-repeat left 20px;">
					<div class="text_R">
						<h3>
							<p class="about_num num08" style="background:url('img/about_num04.png') no-repeat 0px 0px;">04</p>
							<p class="title">
							연인은 물론 친구들과의<br> 포토북 연동<br>
							</p>
						</h3>
						<p class="info_small">
							그동안의 추억들을<br>
							혼자만의 기억이 아닌 포토북으로 공유하세요.
						</p>
					</div>
				</div>
			</div>

		<!-- 	<div class="about-grid-a img09">
				<div class="img_box01">
					<div class="text_L01">
						<h3>
							<p class="about_num num09">09</p>
							<p class="title">
								예식이 끝나면 자동으로<br> 감사한 마음까지
							</p>
						</h3>
						<p class="info_small">
							초대장 사용 기간 중 설정한 일정이 끝나면 <br> 직접 설정해 놓은 감사글이 자동으로 노출됩니다.
						</p>
					</div>
				</div>
			</div>

			<div class="about-grid-a img10">
				<div class="img_box01">
					<div class="text_R">
						<h3>
							<p class="about_num num10">10</p>
							<p class="title">
								약도와 지도 중<br>대표지도 설정 가능
							</p>
						</h3>
						<p class="info_small">
							약도 이미지를 지도로 사용 할 수 있으며<br> 약도와 지도 중 대표 지도를 설정 할 수 있습니다.<br>
							<span style="font-size: 14px; color: #999">(※ 현재는 행사
								초대장에서만 가능합니다.)</span>
						</p>
					</div>
				</div>
			</div>

			<div class="about-grid-a img11">
				<div class="img_box01">
					<div class="text_L01">
						<h3>
							<p class="about_num num11">11</p>
							<p class="title">
								특화된 초대장은 물론<br> 다방면으로 사용 가능한 초대장까지
							</p>
						</h3>
						<p class="info_small">
							청첩장, 돌잔치 등 특화된 초대장은 물론<br> 개업식, 이벤트, 전시회, 강연 등 다양하게 사용이
							가능합니다.
						</p>
					</div>
				</div>
			</div>

			<div class="about-grid-a img12">
				<div class="img_box01">
					<div class="text_R">
						<h3>
							<p class="about_num num12">12</p>
							<p class="title">사업자를 위한 비즈니스 상품</p>
						</h3>
						<p class="info_small">
							관련 사업자분들을 위한 비즈니스 이용권,<br> 필요한 시점에 필요한 만큼만 구매하여 사용가능<br>
							대폭 할인된 초대장 단가 제공<br> 합리적인 가격으로 사업에 시너지를!!
						</p>
						<p class="info_patent">
							<img src="/img/product/banner_patent.png"
								alt="반응형 초대장 생성 시스템 특허 출원중">
						</p>
					</div>
				</div>
			</div>
 -->
			<div class="sevice_app">
				<div class="btn_app_link">
					<p>
						지금 바로 당신의 모바일 초대장에<br> 특별함을 더해보세요.
					</p>

					<div class="app_link_all">
						<a class="app-link-L ui-link" href="/app"> <span>달팽 초대장
								신청하기&nbsp; &nbsp; &nbsp; &gt;</span>
						</a>
						<!--<a class="app-link-R" href="/app">
						<span>달팽 비즈니스 신청하기 &nbsp; &nbsp; &nbsp; &gt;</span>
					</a>-->
					</div>
				</div>
			</div>
			<!--// content_wrap area -->
		</div>

		<!-- 서브 footer -->
		<div class="footer subfooter">
			<div class="info1_wrap">
				<div class="resp-cont-wrap">
					<div class="sns_list">
						<ul>
							<li><a href="http://www.facebook.com/dalpeng"
								target="_blank" class="ui-link"><span
									class="ico_footer facebook">페이스북</span></a>
								<div class="tooltip">
									<strong>달팽 공식페이스북</strong>바로 가기
								</div></li>
							<li><a href="http://twitter.com/dalpengcom" target="_blank"
								class="ui-link"><span class="ico_footer twitter">트위터</span></a>
								<div class="tooltip">
									<strong>달팽 공식트위터</strong>바로 가기
								</div></li>
							<li><a href="http://blog.dalpeng.com" target="_blank"
								class="ui-link"><span class="ico_footer tstory">티스토리</span></a>
								<div class="tooltip">
									<strong>달팽 공식블로그</strong>바로 가기
								</div></li>

							<li><a href="http://goto.kakao.com/@dalpeng" target="_blank"
								class="ui-link"><span class="ico_footer yid">옐로우아이디</span></a>
								<div class="tooltip">
									<strong>ID : @dalpeng</strong>카카오톡 친구추가하세요!
								</div></li>
						</ul>
					</div>
					<div class="link_list">
						<ul>
							<li class="fb_like"><iframe
									src="//www.facebook.com/plugins/like.php?locale=en_US&amp;href=https%3A%2F%2Ffacebook.com%2Fdalpeng&amp;width&amp;layout=button_count&amp;action=like&amp;show_faces=false&amp;share=false&amp;height=21"
									scrolling="no" frameborder="0" class="likebox"
									allowtransparency="true"></iframe></li>
							<li><a href="http://ir.inames.co.kr" target="_blank"
								class="ui-link">회사소개</a></li>
							<li><a href="/cs/index" class="ui-link">고객센터</a></li>
							<li><a href="http://dalpeng.com/mypage/write/2"
								class="ui-link">제휴문의</a></li>
							<li><a href="http://dalpeng.com/member/agreement"
								class="ui-link">이용약관</a></li>
							<li><a href="http://dalpeng.com/member/privacy"
								class="ui-link">개인정보취급방침</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="info2_wrap">
				<div class="resp-cont-wrap">
					<ul class="corp_info">
						<li><span>(주)아이네임즈</span><span>대표이사 : 김태제</span><span>사업자등록번호
								: 214-86-80418</span><span>통신판매업 신고번호 : 2014-서울송파-1602 </span></li>
						<li><span>대표전화 : 02-559-1004 (6번 달팽초대장문의)</span><span>팩스
								: 02-559-1001~3</span><span>고객센터 : cs@dalpeng.com</span></li>
						<li><span>(05717) 서울특별시 송파구 중대로 135 IT벤처타워 13층 동관
								1301호</span></li>
						<li class="copy"><span>Copyright © INAMES Co.,Ltd. All
								rights reserved.</span></li>
					</ul>
				</div>
			</div>
			<div id="scrolltop" class="scrolltop">
				<a href="#bodytop" class="scroll ui-link">최상단 바로가기</a>
			</div>
		</div>

		<div class="pLoader" id="loadingA" style="display: none;"></div>
		<div class="pLoader2" id="loadingB" style="display: none;"></div>

		<!--// 서브 footer -->
		<script>
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
			ga('create', 'UA-53577214-1', 'auto');
			ga('require', 'displayfeatures');
			ga('require', 'linkid', 'linkid.js');
			ga('send', 'pageview');
		</script>
		<!-- AceCounter Log Gathering Script V.7.5.2013010701 -->
		<script language="javascript">
			var _AceGID = (function() {
				var Inf = [ 'gtp4.acecounter.com', '8080', 'AH2A39920063303',
						'AW', '0', 'NaPm,Ncisy', 'ALL', '0' ];
				var _CI = (!_AceGID) ? [] : _AceGID.val;
				var _N = 0;
				var _T = new Image(0, 0);
				if (_CI.join('.').indexOf(Inf[3]) < 0) {
					_T.src = (location.protocol == "https:" ? "https://"
							+ Inf[0] : "http://" + Inf[0] + ":" + Inf[1])
							+ '/?cookie';
					_CI.push(Inf);
					_N = _CI.length;
				}
				return {
					o : _N,
					val : _CI
				};
			})();
			var _AceCounter = (function() {
				var G = _AceGID;
				if (G.o != 0) {
					var _A = G.val[G.o - 1];
					var _G = (_A[0]).substr(0, _A[0].indexOf('.'));
					var _C = (_A[7] != '0') ? (_A[2]) : _A[3];
					var _U = (_A[5]).replace(/\,/g, '_');
					var _S = (([ '<scr','ipt','type="text/javascr','ipt"></scr','ipt>' ])
							.join('')).replace('tt', 't src="'
							+ location.protocol
							+ '//cr.acecounter.com/Web/AceCounter_' + _C
							+ '.js?gc=' + _A[2] + '&py=' + _A[4] + '&gd=' + _G
							+ '&gp=' + _A[1] + '&up=' + _U + '&rd='
							+ (new Date().getTime()) + '" t');
					document.writeln(_S);
					return _S;
				}
			})();
		</script>
		<script
			src="http://cr.acecounter.com/Web/AceCounter_AW.js?gc=AH2A39920063303&amp;py=0&amp;gd=gtp4&amp;gp=8080&amp;up=NaPm_Ncisy&amp;rd=1466586037188"
			type="text/javascript"></script>

		<noscript>&lt;img
			src='http://gtp4.acecounter.com:8080/?uid=AH2A39920063303&amp;je=n&amp;'
			border='0' width='0' height='0' alt=''&gt;</noscript>
		<!-- AceCounter Log Gathering Script End -->
		<div id="wp_tg_cts" style="display: none;">
			<iframe width="1px" height="1px"
				src="//nastg.widerplanet.com/delivery/wpc.php?v=1&amp;ver=4.0&amp;r=1&amp;ti=28554&amp;ty=Home&amp;device=web&amp;charset=UTF-8&amp;tc=1466586037605&amp;ref=http%3A%2F%2Fwww.dalpeng.com%2F&amp;loc=http%3A%2F%2Fwww.dalpeng.com%2Fservice"
				title="tgtracking" style="display: none;"></iframe>
		</div>
		<script type="text/javascript">
			var wptg_tagscript_vars = wptg_tagscript_vars || [];
			wptg_tagscript_vars.push((function() {
				return {
					wp_hcuid : "",
					ti : "28554",
					ty : "Home",
					device : "web"
				};
			}));
		</script>
		<script type="text/javascript" async=""
			src="//cdn-aitg.widerplanet.com/js/wp_astg_4.0.js"></script>
		<!-- N2S Start -->
		<script language="javascript"
			src="//web.n2s.co.kr/js/_n2s_sp_log_dalpeng.js"></script>
		<div id="n2s_log_div" style="display: none;">
			<iframe width="1px" height="1px"
				src="http://c.web.n2s.co.kr/_n2s_proditems_save.php?id=dalpeng&amp;px="
				style="display: block;"></iframe>
		</div>
		<!-- N2S End -->
		<script type="text/javascript">
			var roosevelt_params = {
				retargeting_id : 'rRqnVVyqYxGVqPXd5xOjkg00',
				tag_label : '_CWiwiWtRHKzTF7t2z5Zzw'
			};
		</script>
		<script type="text/javascript"
			src="//adimg.daumcdn.net/rt/roosevelt.js" async=""></script>
		<script type="text/javascript">
			var roosevelt_params = {
				retargeting_id : 'rRqnVVyqYxGVqPXd5xOjkg00',
				tag_label : 'pV3MAVSMTRiLXilD4cLhCA'
			};
		</script>
		<script type="text/javascript"
			src="//adimg.daumcdn.net/rt/roosevelt.js" async=""></script>
		<script type="text/javascript">
			/* <![CDATA[ */
			var google_conversion_id = 898779072;
			var google_conversion_label = "__OrCLXV-l4QwI_JrAM";
			var google_custom_params = window.google_tag_params;
			var google_remarketing_only = true;
			/* ]]> */
		</script>
		<script type="text/javascript"
			src="//www.googleadservices.com/pagead/conversion.js">
			
		</script>
		<iframe name="google_conversion_frame" title="Google conversion frame"
			width="300" height="13"
			src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/898779072/?random=1466586037387&amp;cv=8&amp;fst=1466586037387&amp;num=1&amp;fmt=1&amp;label=__OrCLXV-l4QwI_JrAM&amp;guid=ON&amp;u_h=768&amp;u_w=1366&amp;u_ah=728&amp;u_aw=1366&amp;u_cd=24&amp;u_his=5&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=7&amp;frm=0&amp;url=http%3A//www.dalpeng.com/service&amp;ref=http%3A//www.dalpeng.com/&amp;tiba=%EC%84%9C%EB%B9%84%EC%8A%A4%EC%86%8C%EA%B0%9C%20-%20%EB%8B%AC%ED%8C%BD%20%EB%AA%A8%EB%B0%94%EC%9D%BC%EC%B2%AD%EC%B2%A9%EC%9E%A5"
			frameborder="0" marginwidth="0" marginheight="0" vspace="0"
			hspace="0" allowtransparency="true" scrolling="no"></iframe>
		<noscript>&lt;div style="display:inline;"&gt; &lt;img
			height="1" width="1" style="border-style:none;" alt=""
			src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/898779072/?value=1.00&amp;amp;currency_code=KRW&amp;amp;label=__OrCLXV-l4QwI_JrAM&amp;amp;guid=ON&amp;amp;script=0"/&gt;
			&lt;/div&gt;</noscript>

		<!-- dialog  -->
		<div style="display: none;" id="popup_general-placeholder">
			<!-- placeholder for popup_general -->
		</div>

		<div style="display: none;" id="dialog_general-placeholder">
			<!-- placeholder for dialog_general -->
		</div>


		<!--크롬결제 안내 팝업(2015-04-22)-->



		<div class="ui-screen-hidden ui-popup-screen ui-overlay-a"
			id="popup_general-screen"></div>
		<div class="ui-popup-container ui-popup-hidden ui-popup-truncate"
			id="popup_general-popup">
			<div data-role="popup" id="popup_general" data-overlay-theme="a"
				data-theme="a" data-history="false"
				style="min-width: 300px; max-width: 600px;"
				class="ui-popup ui-body-a ui-overlay-shadow ui-corner-all">

				<div data-role="header" data-theme="a" role="banner"
					class="ui-header ui-bar-a">
					<h1 id="popup_header" style="display: none;" class="ui-title"
						role="heading" aria-level="1"></h1>
				</div>

				<div data-role="main" class="ui-content">
					<h3 class="ui-title" id="popup_title" style="display: none;"></h3>
					<p id="popup_content" style="text-align: center;"></p>
					<a href="#"
						class="ui-btn ui-corner-all ui-mini  ui-btn-icon-left ui-icon-delete mt30"
						data-rel="back">닫기</a>
				</div>
			</div>
		</div>
		<div class="ui-screen-hidden ui-popup-screen ui-overlay-a"
			id="dialog_general-screen"></div>
		<div class="ui-popup-container ui-popup-hidden ui-popup-truncate"
			id="dialog_general-popup">
			<div data-role="popup" id="dialog_general"
				class="ui-corner-all ui-popup ui-body-a ui-overlay-shadow"
				data-overlay-theme="a" data-theme="a"
				style="width: 350px; max-width: 500px;">
				<div data-role="header" data-theme="a" role="banner"
					class="ui-header ui-bar-a">
					<h1 id="popup_header" class="ui-title" role="heading"
						aria-level="1"></h1>
				</div>

				<ul class="pop_mini mt30" style="text-align: center;"
					id="popup_content"></ul>

				<!-- 버튼 -->
				<div class="pbtn_wrap mt30">
					<a href="#"
						class="ui-btn ui-corner-all ui-btn-inline ui-mini  ui-btn-icon-left ui-icon-delete w90"
						data-rel="back">취 소</a> <a href="#"
						class="ui-btn ui-corner-all ui-btn-inline ui-mini  ui-btn-icon-left ui-icon-check w90"
						id="btnProc">확 인</a>
				</div>
				<div class="mt30"></div>
			</div>
		</div>
	</div>
	<div class="ui-loader ui-corner-all ui-body-a ui-loader-default">
		<span class="ui-icon-loading"></span>
		<h1>loading..</h1>
	</div>
</body>
</html>