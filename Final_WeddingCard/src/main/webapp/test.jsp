<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isELIgnored="false"%>
<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html>
<head>
<title>PbcreTest</title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="description" content="Moleskine Notebook with jQuery Booklet" />
        <meta name="keywords" content="jquery, book, flip, pages, moleskine, booklet, plugin, css3 "/>
      <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
      <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
      <script type="text/javascript" src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
      <script src="booklet/jquery.easing.1.3.js" type="text/javascript"></script>
      <script src="booklet/jquery.booklet.1.1.0.min.js" type="text/javascript"></script>

      <link href="booklet/jquery.booklet.1.1.0.css" type="text/css" rel="stylesheet" media="screen" />
      <link rel="stylesheet" href="css/photobookstyle.css" type="text/css" media="screen"/>

      <script src="cufon/cufon-yui.js" type="text/javascript"></script>
      <script src="cufon/ChunkFive_400.font.js" type="text/javascript"></script>
      <script src="cufon/Note_this_400.font.js" type="text/javascript"></script>
      
      <!-- <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script> -->
      <script type="text/javascript">
         Cufon.replace('h1,p,.b-counter');
         Cufon.replace('.book_wrapper a', {hover:true});
         Cufon.replace('.title', {textShadow: '1px 1px #C59471', fontFamily:'ChunkFive'});
         Cufon.replace('.reference a', {textShadow: '1px 1px #C59471', fontFamily:'ChunkFive'});
         Cufon.replace('.loading', {textShadow: '1px 1px #000', fontFamily:'ChunkFive'});
      </script>
      
</head>
<body>
      <form method="post" action="photoBook.do" enctype="multipart/form-data">
      <h1 class="title" style="text-align: center;">BookName: <input type="text" name="bookName"><input type="submit" value="Upload"></h1>
      <div class="book_wrapper">
      <input type="hidden" name="command" value="create">
   
         <a id="next_page_button"></a>
         <a id="prev_page_button"></a>
         <div id="loading" class="loading">Loading pages...</div>
         <div id="mybook" style="display:none;">
            <div class="b-load">
               <div>
               <input type="file" name="file[0]" id="imgefile1" style="text-align: center;"><p>
                  <img src="http://104.244.124.250/~conollyp/diyFiles/123_File_Upload_Donload_m.jpg   " id="original1" style="width: 300px; height: 163px;" alt=""/>
                  
                  <h1>Book Comment <input type="text" name="comment[0]" id="text1" value="" style="width: 40%; height: 90%;" onkeyup="writeHere1()"></h1>
                  
                  <p id="bookComment1">This tutorial is about creating a creative gallery with a
                     slider for the thumbnails. The idea is to have an expanding
                     thumbnails area which opens once an album is chosen.
                     The thumbnails will scroll to the end and move back to
                     the first image.</p>
                  <!-- <p> <input type="text" name="comment[0]" value=""></p> -->
                  
                  <a href="http://tympanus.net/Tutorials/SliderGallery/" target="_blank" class="demo">Demo</a>
                  <a href="index.jsp" target="_blank" class="article">Index</a>
               </div>
               
               
               
               <div>
               <input type="file" name="file[1]" id="imgefile2"><p>
                  <img src="images/2.jpg" id="original2" alt="" />
                  <h1>Book Comment <input type="text" name="comment[1]" id="text2" value="" style="width: 40%; height: 90%;" onkeyup="writeHere2()"></h1>
                  
                  <p id="bookComment2">This tutorial is about creating a creative gallery with a
                     slider for the thumbnails. The idea is to have an expanding
                     thumbnails area which opens once an album is chosen.
                     The thumbnails will scroll to the end and move back to
                     the first image.</p>
                  <!-- <p> <input type="text" name="comment[0]" value=""></p> -->
                  
                  <a href="http://tympanus.net/Tutorials/SliderGallery/" target="_blank" class="demo">Demo</a>
                  <a href="index.jsp" target="_blank" class="article">Index</a>
               </div>
               
               <div>
               <input type="file" name="file[2]" id="imgefile3"><p>
                  <img src="images/3.jpg" id="original3" alt="" />
                  <h1>Book Comment <input type="text" name="comment[2]" id="text3" value="" style="width: 40%; height: 90%;" onkeyup="writeHere3()"></h1>
                  
                  <p id="bookComment3">This tutorial is about creating a creative gallery with a
                     slider for the thumbnails. The idea is to have an expanding
                     thumbnails area which opens once an album is chosen.
                     The thumbnails will scroll to the end and move back to
                     the first image.</p>
                  <!-- <p> <input type="text" name="comment[0]" value=""></p> -->
                  
                  <a href="http://tympanus.net/Tutorials/SliderGallery/" target="_blank" class="demo">Demo</a>
                  <a href="index.jsp" target="_blank" class="article">Index</a>
               </div>
               
            </div>
         </div>
      </div>
        <div>
            <span class="reference">
                <a href=" http://tympanus.net/codrops/2010/12/14/moleskine-notebook/">back to the Codrops tutorial</a>
            <a href="http://builtbywill.com/code/booklet/" target="_blank">booklet jQuery Plugin</a>
            </span>
      </div>
      </form>
      
        <!-- The JavaScript -->
      <script type="text/javascript">
      var count = 0;
      
      function writeHere1() {
         var doc = document.getElementById("bookComment1");
         doc.innerHTML= "<p id='bookComment1'>" + document.getElementById("text1").value
                        +"</P>";
      }
      function writeHere2() {
         var doc = document.getElementById("bookComment2");
         doc.innerHTML= document.getElementById("text2").value;
      }
      function writeHere3() {
         var doc = document.getElementById("bookComment3");
         doc.innerHTML= document.getElementById("text3").value;
      }
      
         $(function() {
            var $mybook       = $('#mybook');
            var $bttn_next      = $('#next_page_button');
            var $bttn_prev      = $('#prev_page_button');
            var $loading      = $('#loading');
            var $mybook_images   = $mybook.find('img');
            var cnt_images      = $mybook_images.length;
            var loaded         = 0;
            //preload all the images in the book,
            //and then call the booklet plugin
            
            
            
            
            /* 
            $("#imgefile1, #imgefile2, #imgefile3").change(function(){
               //alert(this.value); //선택한 이미지 경로 표시
               readURL(this);
            });
            
            function readURL(input) {
               //alert(input.files[0].name);
               if (input.files && input.files[0]) {
                  var reader = new FileReader(); 
                  reader.onload = function(e) {
                     $('#original1').attr('src', e.target.result); 
                  }
                  reader.readAsDataURL(input.files[0]);
               }
               
            }
             */
             
             //not good
             $("#imgefile1").change(function(){
                  //alert(this.value); //선택한 이미지 경로 표시
                  readURL1(this);
               });
               
               function readURL1(input) {
                  //alert(input.files[0].name);
                  if (input.files && input.files[0]) {
                     var reader = new FileReader(); 
                     reader.onload = function(e) {
                        $('#original1').attr('src', e.target.result); 
                     }
                     reader.readAsDataURL(input.files[0]);
                  }
                  
               }
               $("#imgefile2").change(function(){
                  //alert(this.value); //선택한 이미지 경로 표시
                  readURL2(this);
               });
               
               function readURL2(input) {
                  //alert(input.files[0].name);
                  if (input.files && input.files[0]) {
                     var reader = new FileReader(); 
                     reader.onload = function(e) {
                        $('#original2').attr('src', e.target.result); 
                     }
                     reader.readAsDataURL(input.files[0]);
                  }
                  
               }
               $("#imgefile3").change(function(){
                  //alert(this.value); //선택한 이미지 경로 표시
                  readURL3(this);
               });
               
               function readURL3(input) {
                  //alert(input.files[0].name);
                  if (input.files && input.files[0]) {
                     var reader = new FileReader(); 
                     reader.onload = function(e) {
                        $('#original3').attr('src', e.target.result); 
                     }
                     reader.readAsDataURL(input.files[0]);
                  }
                  
               }
               ///////////////////////////////////

            $mybook_images.each(function() {
               var $img = $(this);
               var source = $img.attr('src');
               $('<img/>').load(function() {
                  ++loaded;
                  if (loaded == cnt_images) {
                     $loading.hide();
                     $bttn_next.show();
                     $bttn_prev.show();
                     $mybook.show().booklet({
                        name : null, // name of the booklet to display in the document title bar
                        width : 800, // container width
                        height : 500, // container height
                        speed : 600, // speed of the transition between pages
                        direction : 'LTR', // direction of the overall content organization, default LTR, left to right, can be RTL for languages which read right to left
                        startingPage : 0, // index of the first page to be displayed
                        easing : 'easeInOutQuad', // easing method for complete transition
                        easeIn : 'easeInQuad', // easing method for first half of transition
                        easeOut : 'easeOutQuad', // easing method for second half of transition

                        closed : true, // start with the book "closed", will add empty pages to beginning and end of book
                        closedFrontTitle : null, // used with "closed", "menu" and "pageSelector", determines title of blank starting page
                        closedFrontChapter : null, // used with "closed", "menu" and "chapterSelector", determines chapter name of blank starting page
                        closedBackTitle : null, // used with "closed", "menu" and "pageSelector", determines chapter name of blank ending page
                        closedBackChapter : null, // used with "closed", "menu" and "chapterSelector", determines chapter name of blank ending page
                        covers : false, // used with  "closed", makes first and last pages into covers, without page numbers (if enabled)

                        pagePadding : 10, // padding for each page wrapper
                        pageNumbers : true, // display page numbers on each page

                        hovers : false, // enables preview pageturn hover animation, shows a small preview of previous or next page on hover
                        overlays : false, // enables navigation using a page sized overlay, when enabled links inside the content will not be clickable
                        tabs : false, // adds tabs along the top of the pages
                        tabWidth : 60, // set the width of the tabs
                        tabHeight : 20, // set the height of the tabs
                        arrows : false, // adds arrows overlayed over the book edges
                        cursor : 'pointer', // cursor css setting for side bar areas

                        hash : false, // enables navigation using a hash string, ex: #/page/1 for page 1, will affect all booklets with 'hash' enabled
                        keyboard : true, // enables navigation with arrow keys (left: previous, right: next)
                        next : $bttn_next, // selector for element to use as click trigger for next page
                        prev : $bttn_prev, // selector for element to use as click trigger for previous page

                        menu : null, // selector for element to use as the menu area, required for 'pageSelector'
                        pageSelector : false, // enables navigation with a dropdown menu of pages, requires 'menu'
                        chapterSelector : false, // enables navigation with a dropdown menu of chapters, determined by the "rel" attribute, requires 'menu'

                        shadows : true, // display shadows on page animations
                        shadowTopFwdWidth : 166, // shadow width for top forward anim
                        shadowTopBackWidth : 166, // shadow width for top back anim
                        shadowBtmWidth : 50, // shadow width for bottom shadow

                        before : function() {
                        }, // callback invoked before each page turn animation
                        after : function() {
                        } // callback invoked after each page turn animation
                     });
                     Cufon.refresh();
                  }
               }).attr('src', source);
            });

         });
      </script>
    </body>
</html>