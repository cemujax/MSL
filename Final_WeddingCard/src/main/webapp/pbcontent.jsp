<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Moleskine Notebook with jQuery Booklet</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="description" content="Moleskine Notebook with jQuery Booklet" />
        <meta name="keywords" content="jquery, book, flip, pages, moleskine, booklet, plugin, css3 "/>
		<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>

		<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
		<script src="booklet/jquery.easing.1.3.js" type="text/javascript"></script>
		<script src="booklet/jquery.booklet.1.1.0.min.js" type="text/javascript"></script>

		<link href="booklet/jquery.booklet.1.1.0.css" type="text/css" rel="stylesheet" media="screen" />
		<link rel="stylesheet" href="css/photobookstyle.css" type="text/css" media="screen"/>

		<script src="cufon/cufon-yui.js" type="text/javascript"></script>
		<script src="cufon/ChunkFive_400.font.js" type="text/javascript"></script>
		<script src="cufon/Note_this_400.font.js" type="text/javascript"></script>
		<script type="text/javascript">
			Cufon.replace('h1,p,.b-counter');
			Cufon.replace('.book_wrapper a', {hover:true});
			Cufon.replace('.title', {textShadow: '1px 1px #C59471', fontFamily:'ChunkFive'});
			Cufon.replace('.reference a', {textShadow: '1px 1px #C59471', fontFamily:'ChunkFive'});
			Cufon.replace('.loading', {textShadow: '1px 1px #000', fontFamily:'ChunkFive'});
		</script>
		
		<!-- <style type="text/css">
			*{
	margin:0;
	padding:0;
}
body{
	background:#ccc url(../images/wood.jpg) repeat top left;
	font-family: Arial, Helvetica, sans-serif;
	color:#444;
	font-size:12px;
	color: #000;
}
h1{
	color:#2F1B0C;
	font-size:40px;
	margin:20px 0px 0px 20px;
}
span.reference{
	font-family:Arial;
	display:block;
	font-size:12px;
	text-align:center;
	margin-bottom:10px;
}
span.reference a{
	color:#000;
	text-transform:uppercase;
	text-decoration:none;
	margin:0px 20px;
}
span.reference a:hover{
	color:#ddd;
}
/* Booklet jQuery Plugin Style*/
.booklet{
	-moz-box-shadow:0px 0px 1px #fff;
	-webkit-box-shadow:0px 0px 1px #fff;
	box-shadow:0px 0px 1px #fff;
	-moz-border-radius:10px;
	-webkit-border-radius:10px;
	border-radius:10px;
}
.booklet .b-wrap-left  {
	background:#fff url(../images/left_bg.jpg) no-repeat top left;
	-webkit-border-top-left-radius: 10px;
	-webkit-border-bottom-left-radius: 10px;
	-moz-border-radius-topleft:10px;
	-moz-border-radius-bottomleft: 10px;
	border-top-left-radius: 10px;
	border-bottom-left-radius: 10px;
}
.booklet .b-wrap-right {
	background:#efefef url(../images/right_bg.jpg) no-repeat top left;
	-webkit-border-top-right-radius: 10px;
	-webkit-border-bottom-right-radius: 10px;
	-moz-border-radius-topright: 10px;
	-moz-border-radius-bottomright: 10px;
	border-top-right-radius: 10px;
	border-bottom-right-radius: 10px;
}
.booklet .b-counter {
	bottom:10px;
	position:absolute;
	display:block;
	width:90%;
	height:20px;
	border-top:1px solid #ddd;
	color:#222;
	text-align:center;
	font-size:12px;
	padding:5px 0 0;
	background:transparent;
	-moz-box-shadow:0px -1px 1px #fff;
	-webkit-box-shadow:0px -1px 1px #fff;
	box-shadow:0px -1px 1px #fff;
	opacity:0.8;
}
.book_wrapper{
	margin:0 auto;
	padding-top:50px;
	width:905px;
	height:540px;
	position:relative;
	background:transparent url(../images/bg.png) no-repeat 9px 27px;
}
.book_wrapper h1{
	color:#13386a;
	margin:5px 5px 5px 15px;
	font-size:26px;
	background:transparent url(../images/h1.png) no-repeat bottom left;
	padding-bottom:7px;
}
.book_wrapper p{
	font-size:16px;
	margin:5px 5px 5px 15px;
}
.book_wrapper a.article,
.book_wrapper a.demo{
	background:transparent url(../images/circle.png) no-repeat 50% 0px;
	display:block;
	width:95px;
	height:41px;
	text-decoration:none;
	outline:none;
	font-size:16px;
	color:#555;
	float:left;
	line-height:41px;
	padding-left:47px;
}
.book_wrapper a.demo{
	margin-left:50px;
}
.book_wrapper a.article:hover,
.book_wrapper a.demo:hover{
	background-position:50% -41px;
	color:#13386a;
}
.book_wrapper img{
	margin:10px 0px 5px 35px;
	width:300px;
	padding:4px;
	border:1px solid #ddd;
	-moz-box-shadow:1px 1px 1px #fff;
	-webkit-box-shadow:1px 1px 1px #fff;
	box-shadow:1px 1px 1px #fff;
}
.booklet .b-wrap-right img{
	border:1px solid #E6E3C2;
}
a#next_page_button,
a#prev_page_button{
	display:none;
	position:absolute;
	width:41px;
	height:40px;
	cursor:pointer;
	margin-top:-20px;
	top:50%;
	background:transparent url(../images/buttons.png) no-repeat 0px -40px;
}
a#prev_page_button{
	left:-30px;
}
a#next_page_button{
	right:-30px;
	background-position:-41px -40px;
}
a#next_page_button:hover{
	background-position:-41px 0px;
}
a#prev_page_button:hover{
	background-position:0px 0px;
}
.loading{
	width:160px;
	height:56px;
	position: absolute;
	top:50%;
	margin-top:-28px;
	right:135px;
	line-height:56px;
	color:#fff;
	padding-left:60px;
	font-size:15px;
	background: #000 url(../images/ajax-loader.gif) no-repeat 10px 50%;
	opacity: 0.7;
	z-index:9999;
	-moz-border-radius:20px;
	-webkit-border-radius:20px;
	border-radius:20px;
	filter:progid:DXImageTransform.Microsoft.Alpha(opacity=70);
}
		</style> -->
</head>
<body>
		<h1 class="title">${pbvo.bookName}</h1>
	<%-- 	<h2>${vs} </h2>
					</h2>${i}</h2> --%>
		<div class="book_wrapper">
			<a id="next_page_button"></a>
			<a id="prev_page_button"></a>
			<div id="loading" class="loading">Loading pages...</div>
			<div id="mybook" style="display:none;">
				<div class="b-load">
					<c:forEach items="${pbImgList}" var="i" varStatus="vs">
					
					<div>
						<img alt="" src="./img/photobook/${pbvo.memberVO.memberId}/${pbvo.bookNo}/${i}">
						<h1>Slider Gallery</h1>
						<p>This tutorial is about creating a creative gallery with a
							slider for the thumbnails. The idea is to have an expanding
							thumbnails area which opens once an album is chosen.
							The thumbnails will scroll to the end and move back to
							the first image. The user can scroll through the thumbnails
							by using the slider controls. When a thumbnail is clicked,
							it moves to the center and the full image preview opens.</p>
						<a href="http://tympanus.net/codrops/2010/10/07/slider-gallery/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/SliderGallery/" target="_blank" class="demo">Demo</a>
					</div>
					</c:forEach>
					<a href="index.jsp">
					<!-- <div>
						<img src="images/2.jpg" alt="" />
						<h1>Animated Portfolio Gallery</h1>
						<p>Today we will create an animated portfolio gallery with jQuery.
							The gallery will contain a scroller for thumbnails and a
							content area where we will display details about the portfolio
							item. The image can be enlarged by clicking on it, making
							it appear as an overlay.</p>
						<a href="http://tympanus.net/codrops/2010/11/14/animated-portfolio-gallery/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/AnimatedPortfolioGallery/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="images/3.jpg" alt="" />
						<h1>Annotation Overlay Effect</h1>
						<p>Today we will create a simple overlay effect to display annotations in e.g. portfolio
							items of a web designers portfolio. We got the idea from the wonderful
							portfolio of www.rareview.com where Flash is used to create the
							effect. We will use jQuery.</p>
						<a href="http://tympanus.net/codrops/2010/10/12/annotation-overlay-effect/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/AnnotationOverlayEffect/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="images/4.jpg" alt="" />
						<h1>Bubbleriffic Image Gallery</h1>
						<p>In this tutorial we will create a bubbly image gallery that
							shows your images in a unique way. The idea is to show the
							thumbnails of albums in a rounded fashion allowing the
							user to scroll them automatically by moving the mouse.
							Clicking on a thumbnail will zoom in a big circle and
							the full image which will be automatically resized to
							fit into the screen.</p>
						<a href="http://tympanus.net/codrops/2010/12/10/bubbleriffic-image-gallery/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/BubblerifficImageGallery/" target="_blank" class="demo">Demo</a>
					</div> -->
					<!-- <div>
						<img src="images/5.jpg" alt="" />
						<h1>Collapsing Site Navigation</h1>
						<p>Today we will create a collapsing menu that contains vertical
							navigation bars and a slide out content area. When hovering
							over a menu item, an image slides down from the top and a
							submenu slides up from the bottom. Clicking on one of the
							submenu items will make the whole menu collapse like a card
							deck and the respective content area will slide out.</p>
						<a href="http://tympanus.net/codrops/2010/09/06/collapsing-site-navigation/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/CollapsingSiteNavigation/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="images/6.jpg" alt="" />
						<h1>Custom Animation Banner</h1>
						<p>In today��s tutorial we will be creating a custom animation banner with jQuery.
							The idea is to have different elements in a banner that will
							animate step-wise in a custom way.</p>
						<p>We will be using the jQuery Easing Plugin and the jQuery 2D
							Transform Plugin to create some nifty animations.</p>
						<a href="http://tympanus.net/codrops/2010/10/18/custom-animation-banner/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/CustomAnimationBanner/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="images/7.jpg" alt="" />
						<h1>Full Page Image Gallery</h1>
						<p>In this tutorial we are going to create a stunning full page
							gallery with scrollable thumbnails and a scrollable full
							screen preview. The idea is to have a thumbnails bar at
							the bottom of the page that scrolls automatically when
							the user moves the mouse. When a thumbnail is clicked,
							it moves to the center of the page and the full screen
							image is loaded in the background.</p>
						<a href="http://tympanus.net/codrops/2010/09/08/full-page-image-gallery/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/FullPageImageGallery/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="images/8.jpg" alt="" />
						<h1>Hover Slide Effect</h1>
						<p>Today we will create a neat effect with some images using
							jQuery. The main idea is to have an image area with several
							images that slide out when we hover over them, revealing
							other images. The sliding effect will be random, i.e.
							the images will slide to the top or bottom, left or
							right, fading out or not. When we click on any area,
							all areas will slide their images out.</p>
						<a href="http://tympanus.net/codrops/2010/11/16/hover-slide-effect/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/HoverSlideEffect/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="images/9.jpg" alt="" />
						<h1>Merging Image Boxes</h1>
						<p>Today we will show you a nice effect for images with jQuery.
							The idea is to have a set of rotated thumbnails that,
							once clicked, animate to form the selected image.
							You can navigate through the images with previous
							and next buttons and when the big image gets clicked
							it will scatter into the little box shaped thumbnails again.</p>
						<a href="http://tympanus.net/codrops/2010/11/30/merging-image-boxes/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Development/MergingImageBoxes/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="images/10.jpg" alt="" />
						<h1>Compact News Previewer</h1>
						<p>Today we will create a news previewer that let��s you
							show your latest articles or news in a compact way.
							The news previewer will show some list of articles
							on the left side and the preview of the article with a
							longer description on the right. Once a news on the left
							is clicked, the preview will slide in.</p>
						<a href="http://tympanus.net/codrops/2010/10/03/compact-news-previewer/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/CompactNewsPreviewer/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="images/11.jpg" alt="" />
						<h1>Overlay Effect Menu</h1>
						<p>In this tutorial we are going to create a simple menu
							that will stand out once we hover over it by covering
							everything except the menu with a dark overlay.
							The menu will stay white and a submenu area will
							expand. We will create this effect using jQuery.</p>
						<a href="http://tympanus.net/codrops/2010/11/25/overlay-effect-menu/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/OverlayEffectMenu/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="images/12.jpg" alt="" />
						<h1>Polaroid Photobar Gallery</h1>
						<p>In this tutorial we are going to create an image gallery
							with a Polaroid look. We will have albums that will expand
							to sets of slightly rotated thumbnails that pop out on hover.
							The full image will slide in from the bottom once a thumbnail
							is clicked. In the full image view the user can navigate
							through the pictures or simply choose another thumbnail
							to be displayed.</p>
						<a href="http://tympanus.net/codrops/2010/09/28/polaroid-photobar-gallery/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/PolaroidPhotobarGallery/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="images/13.jpg" alt="" />
						<h1>Pull Out Content Panel</h1>
						<p>In this tutorial we will create a content panel that 
							slides out at a predefined scroll position. It will 
							reveal a teaser with related content and it can be 
							expanded to full page size to show more. A custom 
							slider allows to scroll through many items in the 
							panel.</p>
						<a href="http://tympanus.net/codrops/2010/11/01/pull-out-content-panel/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/PullOutContentPanel/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="images/14.jpg" alt="" />
						<h1>Thumbnails Navigation Gallery</h1>
						<p>In this tutorial we are going to create an extraordinary
							gallery with scrollable thumbnails that slide out from a
							navigation. We are going to use jQuery and some CSS3
							properties for the style. The main idea is to have a
							menu of albums where each item will reveal a horizontal
							bar with thumbnails when clicked.</p>
						<a href="http://tympanus.net/codrops/2010/07/29/thumbnails-navigation-gallery/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/ThumbnailsNavigationGallery/" target="_blank" class="demo">Demo</a>
					</div> -->
				</div>
			</div>
		</div>
        <div>
            <span class="reference">
                <a href=" http://tympanus.net/codrops/2010/12/14/moleskine-notebook/">back to the Codrops tutorial</a>
				<a href="http://builtbywill.com/code/booklet/" target="_blank">booklet jQuery Plugin</a>
            </span>
		</div>

        <!-- The JavaScript -->

        <script type="text/javascript">
			$(function() {
				var $mybook 		= $('#mybook');
				var $bttn_next		= $('#next_page_button');
				var $bttn_prev		= $('#prev_page_button');
				var $loading		= $('#loading');
				var $mybook_images	= $mybook.find('img');
				var cnt_images		= $mybook_images.length;
				var loaded			= 0;
				//preload all the images in the book,
				//and then call the booklet plugin

				$mybook_images.each(function(){
					var $img 	= $(this);
					var source	= $img.attr('src');
					$('<img/>').load(function(){
						++loaded;
						if(loaded == cnt_images){
							$loading.hide();
							$bttn_next.show();
							$bttn_prev.show();
							$mybook.show().booklet({
								name:               null,                            // name of the booklet to display in the document title bar
								width:              800,                             // container width
								height:             500,                             // container height
								speed:              600,                             // speed of the transition between pages
								direction:          'LTR',                           // direction of the overall content organization, default LTR, left to right, can be RTL for languages which read right to left
								startingPage:       0,                               // index of the first page to be displayed
								easing:             'easeInOutQuad',                 // easing method for complete transition
								easeIn:             'easeInQuad',                    // easing method for first half of transition
								easeOut:            'easeOutQuad',                   // easing method for second half of transition

								closed:             true,                           // start with the book "closed", will add empty pages to beginning and end of book
								closedFrontTitle:   null,                            // used with "closed", "menu" and "pageSelector", determines title of blank starting page
								closedFrontChapter: null,                            // used with "closed", "menu" and "chapterSelector", determines chapter name of blank starting page
								closedBackTitle:    null,                            // used with "closed", "menu" and "pageSelector", determines chapter name of blank ending page
								closedBackChapter:  null,                            // used with "closed", "menu" and "chapterSelector", determines chapter name of blank ending page
								covers:             false,                           // used with  "closed", makes first and last pages into covers, without page numbers (if enabled)

								pagePadding:        10,                              // padding for each page wrapper
								pageNumbers:        true,                            // display page numbers on each page

								hovers:             false,                            // enables preview pageturn hover animation, shows a small preview of previous or next page on hover
								overlays:           false,                            // enables navigation using a page sized overlay, when enabled links inside the content will not be clickable
								tabs:               false,                           // adds tabs along the top of the pages
								tabWidth:           60,                              // set the width of the tabs
								tabHeight:          20,                              // set the height of the tabs
								arrows:             false,                           // adds arrows overlayed over the book edges
								cursor:             'pointer',                       // cursor css setting for side bar areas

								hash:               false,                           // enables navigation using a hash string, ex: #/page/1 for page 1, will affect all booklets with 'hash' enabled
								keyboard:           true,                            // enables navigation with arrow keys (left: previous, right: next)
								next:               $bttn_next,          			// selector for element to use as click trigger for next page
								prev:               $bttn_prev,          			// selector for element to use as click trigger for previous page

								menu:               null,                            // selector for element to use as the menu area, required for 'pageSelector'
								pageSelector:       false,                           // enables navigation with a dropdown menu of pages, requires 'menu'
								chapterSelector:    false,                           // enables navigation with a dropdown menu of chapters, determined by the "rel" attribute, requires 'menu'

								shadows:            true,                            // display shadows on page animations
								shadowTopFwdWidth:  166,                             // shadow width for top forward anim
								shadowTopBackWidth: 166,                             // shadow width for top back anim
								shadowBtmWidth:     50,                              // shadow width for bottom shadow

								before:             function(){},                    // callback invoked before each page turn animation
								after:              function(){}                     // callback invoked after each page turn animation
							});
							Cufon.refresh();
						}
					}).attr('src',source);
				});
				
			});
        </script>
    </body>
</html>