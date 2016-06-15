<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- location... -->
               <div class="contents cont_wrap">
            <h2 class="tit_type2"><span>location</span></h2>
            <div class="snb_wrap col-2">
               <div class="lo_tit ui-block-a">
                  <span class="on" id="place_name">웨딩홀</span>
               </div>
               <div class="ui-block-b col-2">
                  <div class="lo_w ui-block-a">
                     <span class="locationtabs on" id="tabs_wedding" style="cursor: pointer;">예식장</span>
                  </div>
               </div>
            </div>
            <div class="lo_cont_box cont_sub col-2 locationdivs" id="div_wedding">
               <input type="hidden" id="wedding_pmap_lat" value="">
               <input type="hidden" id="wedding_pmap_lon" value="">
               <input type="hidden" id="wedding_paddr" value="예식장 주소 (test)">
               <input type="hidden" id="wedding_pname" value="웨딩홀">
               <div class="lo_info ui-block-b">
                  <dl>
                     <dt>DATE</dt>
                     <dd>2016년 6월 3일 금요일 오전 7시</dd>
                  </dl>
                  <dl>
                     <dt>ADDRESS</dt>
                     <dd id="widding_paddr" class="map_initialize">예식장 주소 (test)</dd><dd>010-0000-0000</dd>                  </dl>
               </div>
            </div>
         </div>
         
               <!--indicate-->
            <div class="indicate">
               <div class="container">
                  <div class="indicate-grids">
                     <div class="col-md-3 indicate-grid">
                        <p><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>Newyork 9870 St Vincent</p>
                     </div>
                     <div class="col-md-3 indicate-grid">
                        <p><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>Telephone :  +1 800 603 6035</p>
                     </div>
                     <div class="col-md-3 indicate-grid">
                        <p><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>Email : <a href="mailto:example@mail.com"> example@mail.com</a></p>
                     </div>
                     <div class="col-md-3 indicate-grid">
                        <p><span class="glyphicon glyphicon-send" aria-hidden="true"></span>FAX :  +1 555 999 444</p>
                     </div>
                     <div class="clearfix"></div>
                  </div>
               </div>
            </div>
         <!--indicate-->
         <!--footer-->
      <div class="footer-section">
         <div class="container">
            <div class="footer-top">
               <p> &copy; 2016 My Wedding . All Rights Reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
            </div>
         </div>
      </div>
</body>
</html>


   
