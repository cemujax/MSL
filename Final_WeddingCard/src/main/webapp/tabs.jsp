<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <title>jQuery UI Tabs - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="resources/demos/style.css">
  <script src="js/jquery.datepicker.regional.kr.js"></script>
  <script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>
  <style type="text/css">
  
  /* 	#tabs{
  		margin-left: 60%;
  	} */
  	
  	
  	#tabs{
        margin-left: 60%;
        font-style: oblique;
     }
  	
  </style>
  
  <script type="text/javascript">
   $(document).ready(function(){
      $( "#tabs" ).tabs();
      
      $( "#datepicker" ).datepicker({
          minDate: '+0',
            dateFormat: 'yy-mm-dd',
            //defaultDate: "+1w",
            changeMonth: true,
            numberOfMonths: 1,
           
          });
      
      $('#weddingCard_form').submit(function(){
         alert("전송중");      
      });//submit
      
   });//ready

</script>
  
  
</head>
<body>

<!-- <div id="tabs"  style="margin-top: 5%; width:35%; margin-left:70%;">
  <ul>
    <li><a href="#tabs-1">
    <span>
    <i class="fa fa-calendar-check-o" style="font-size:36px; margin-left:20%;"></i>
    </span><br>
    <font size="3">스킨선택</font>
    </a></li>
    
    <li><a href="#tabs-2">
    <span>
    <i class="fa fa-bars" style="font-size:36px; margin-left:20%;"></i>
    </span><br>
    <font size="3">예식정보</font>
    </a></li>
    
    <li><a href="#tabs-3"> 
    <span>
    <i class="fa fa-list" style="font-size:36px; margin-left:20%;"></i>
    </span><br>
    <font size="3">신랑신부정보</font>
    </a></li>
  </ul>
 
  
  <div id="tabs-1">
     <table >
   <tr align="center">
      <td >
      <img alt="" src="images/p2.jpg" style="width: 120px; heigth: 80px; margin: 0px;">
      <input type="radio" name="template" id="template" value="basicSkin">
      </td>
      <td >
      <img alt="" src="images/p6.jpg" style="width: 100px; heigth:100px; margin: 0px;">
      <input type="radio" name="template" id="template" value="basicSkin2">
      </td>
      <td >
      <img alt="" src="img/222.jpg" style="width: 100px; heigth: 100px; margin: 0px;">
      <input type="radio" name="template" id="template" value="basicSkin3">
      </td>
   </tr>
   </table>
  </div>
  
  <div id="tabs-2">
     날짜 : <input type="text" id="datepicker" name="cardDate"><br>
     시간 : <input type="text" id="hour" name="hour"><br>
     분 : <input type="text" id="min" name="min"><br>
     예식장명 : <input type="text" id="hallName" name="hallName"><br>
   예식장 위치 :<input type="text" name="hallLocation"><br> 
  </div>
  
  <div id="tabs-3">
   신랑번호 : <input type="text" id="groomTel" name="groomTel"><br>
   신부번호 :<input type="text" name="brideTel"><br> 
   url : <input type="text" name="url"><br>
      <br>
   <input type="submit" value="초대장 생성">   
  </div>
</div>
		
	
</form>	 -->

<form action="./card.do" method="post" id="weddingCard_form" >
<input type="hidden" name="command" value="createCard">
		<div id="tabs"  style=" width:35%; margin-left:70%;">
  <ul>
    <li><a href="#tabs-1">
    <span>
    <i class="fa fa-calendar-check-o" style="font-size:36px; margin-left:20%;"></i>
    </span><br>
    <font size="3">스킨선택</font>
    </a></li>
    
    <li><a href="#tabs-2">
    <span>
    <i class="fa fa-bars" style="font-size:36px; margin-left:20%;"></i>
    </span><br>
    <font size="3">예식정보</font>
    </a></li>
    
    <li><a href="#tabs-3"> 
    <span>
    <i class="fa fa-list" style="font-size:36px; margin-left:20%;"></i>
    </span><br>
    <font size="3">신랑신부정보</font>
    </a></li>
  </ul>
 
  
  <div id="tabs-1">
     <table >
   <tr align="center">
      <td >
      <img alt="" src="images/p2.jpg" style="width: 120px; heigth: 80px; margin: 0px;">
      <input type="radio" name="template" id="template" value="basicSkin">
      </td>
      <td >
      <img alt="" src="images/p6.jpg" style="width: 100px; heigth:100px; margin: 0px;">
      <input type="radio" name="template" id="template" value="basicSkin2" disabled="disabled">
      </td>
      <td >
      <img alt="" src="img/222.jpg" style="width: 100px; heigth: 100px; margin: 0px;">
      <input type="radio" name="template" id="template" value="basicSkin3" disabled="disabled">
      </td>
   </tr>
   </table>
  </div>
  
  <div id="tabs-2">
     날짜 : <input type="text" id="datepicker" name="cardDate"><br>
     시간 : <input type="text" id="hour" name="hour"><br>
     분 : <input type="text" id="min" name="min"><br>
     예식장명 : <input type="text" id="hallName" name="hallName"><br>
   예식장 위치 :<input type="text" id="hallLocation" name="hallLocation"><br> 
  </div>
  
  <div id="tabs-3">
   신랑번호 : <input type="text" id="groomTel" name="groomTel"><br>
   신부번호 :<input type="text" name="brideTel"><br> 
   url : <input type="text" name="url"><br>
      <br>
   <input type="submit" value="초대장 생성">   
  </div>
</div>
</form>		
	
		
 
 
 
</body>
</html>