<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${initParam.root}js/jquery-1.12.3.js"></script>
   
<script type="text/javascript">
   var index = 0;
   var path = "";
   
   $(document).ready(function() {
     // alert(location.pathname);
     // copy();
      
     $('#pathArea').hide();
      $('#jspArea').hide();
      $('#completeArea').hide();
      $('#detailArea').hide();
      
      // skin 이름 지정
      $('#nameBtn').click(function(){
      if($('input[name=skin]').val() == "")
         alert("스킨 이름을 입력해주세요");
      
      else {
         path = "preview_"+ $('input[name=skin]').val();
          $('#folder').val(path);
           
          $('input[name=skin]').attr('readonly', 'readonly');
           $('#nameBtn').hide();
           $('#jspSpan').append($('input[name=skin]').val()+" 폴더에 업로드할 파일을 Drag＆Drop 해주세요(폴더 제외)");
           $('#jspArea').show();
      }
       
      });
      
      $('#jspBtn').click(function(){
         var text = "추가할 하위 폴더 : <input type='text' id='addInput"+ index+ "'>&nbsp;"
                  + "<button id='addBtn"+ index+ "' onclick='folderBtnClick("+ index+ ")'>추가</button>";
         index++;
                  
         $('#pathArea').append("Upload Status :: <br><b>"+ $('input[name=skin]').val()+ "</b>");
         $('#pathArea').show();
         $('#userArea').append(text);
         $('#jspArea').remove();
         $('#completeArea').show();
      });
      
      // not working
      /* $('input[name^="folderBtn"]').click(function() {
         alert("run");
      }); */
   }); // ready
   
   function folderBtnClick(index) {
      //copy(index);
      
      if($('#addInput'+ index).val() == "")
         alert("폴더 이름을 입력해주세요");
      
      else {
         $('#completeArea').hide();
         $('#folder').val(path+ "/"+ $('#addInput'+ index).val());
         $('#addInput'+ index).attr('readonly', 'readonly');
         $('#addBtn'+ index).hide();
            
         var text = "<table style='border=1px solid black; padding-right: 700px;'>"
                  + "<tr>"
                     + "<th> preview > "+ $('#addInput'+ index).val()+ "  폴더에 업로드할 파일을 Drag＆Drop 해주세요 </th>"
                  +"</tr>"
               +"</table>";

         document.getElementById("userArea1").innerHTML = text; 
         
         //jQuery('#userArea').load('testUpload'+ index+ '.jsp'); ////////////// 요쪽
         jQuery('#userArea2').load('fileUpload.jsp');
                     
         text = "<button class='btn' id='uploadBtn"+ index+ "' onclick='uploadBtnClick("+ index+ ")'"
             + "style='margin-left: 565px; margin-top: 5px;'>업로드</button>"
            +"<hr>";
                        
         document.getElementById("userArea3").innerHTML = text; 
      }
      
      
      /* link
      http://okky.kr/article/145211/ 
      https://bytes.com/topic/javascript/answers/606435-including-jsp-using-javascript  
      */
      
      /* 요것도 봐
      $( "#success" ).load( "/not-here.php", function( response, status, xhr ) {
        if ( status == "error" ) {
          var msg = "Sorry but there was an error: ";
          $( "#error" ).html( msg + xhr.status + " " + xhr.statusText );
        }
      }); */
   } // folderBtnClick
   
   function uploadBtnClick(index) {
      var text = "추가할 하위 폴더 : <input type='text' id='addInput"+ index+ "'>&nbsp;"
              + "<button id='addBtn"+ index+ "' onclick='folderBtnClick("+ index+ ")'>추가</button>";
        index++;
              
        $('#pathArea').append("<br><b>ㄴ"+ $('#addInput'+ (index -1)).val()+ "</b>");
        
        $('#userArea').empty();
      $('#userArea1').empty();
      $('#userArea2').empty();
      $('#userArea3').empty();
      $('#userArea').append(text);
      $('#completeArea').show();
   } // folderBtnClick
   
   function completeBtnClick() {
      if($('input[name=skin]').val() == "")
         alert("스킨 이름을 입력해주세요");
      
      else {
         $('#jspArea').remove();
         $('#userArea').remove();
         $('#userArea1').remove();
         $('#userArea2').remove();
         $('#userArea3').remove();
         
         $('#completeArea').hide();
         $('#detailArea').show();
         $('input[name=templateName]').val($('input[name=skin]').val());
      }
         
   } // completeBtnClick
   
   function submitBtnClick() {
      if(!$('input:radio[name=templateType]').is(':checked')) {
         alert("템플릿 타입을 선택해주세요");
         
         return false;
      }
      
      if($('#urlTemplate').val() == "") {
         alert("url 폴더에 업로드 할 템플릿 파일을 선택해주세요");
         
         return false;
      }
      
      if($('#urlTemplate').val().indexOf(".jsp") == -1) {
         alert("jsp 파일만 업로드 가능합니다");
         
         return false;
      }
      
      return true;
   }
   

   // fileUplad.jsp 를 복사해서 하위 폴더에 들어갈 파일을 업로드할 수 있게 해주는 .jsp 생성
   /* function copy(index) {
      $.ajax({
         url: "admin.do?command=copy&&index="+ index,
            type: 'GET',
            
            success: function (response) {
            },//success
            error: function (jqXHR) {
              console.log('error');
            }
      });  
   }*/
</script>

<style type="text/css">
.btn {
  background: #2f393d;
  background-image: -webkit-linear-gradient(top, #2f393d, #45545e);
  background-image: -moz-linear-gradient(top, #2f393d, #45545e);
  background-image: -ms-linear-gradient(top, #2f393d, #45545e);
  background-image: -o-linear-gradient(top, #2f393d, #45545e);
  background-image: linear-gradient(to bottom, #2f393d, #45545e);
  -webkit-border-radius: 6;
  -moz-border-radius: 6;
  border-radius: 6px;
  font-family: Arial;
  color: #ffffff;
  font-size: 10px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
}

.btn:hover {
  background: #dde3e6;
  background-image: -webkit-linear-gradient(top, #dde3e6, #b1b2b3);
  background-image: -moz-linear-gradient(top, #dde3e6, #b1b2b3);
  background-image: -ms-linear-gradient(top, #dde3e6, #b1b2b3);
  background-image: -o-linear-gradient(top, #dde3e6, #b1b2b3);
  background-image: linear-gradient(to bottom, #dde3e6, #b1b2b3);
  text-decoration: none;
  cursor: pointer;
}
</style>

</head>
<body>
<input type="hidden" id="folder" value="">

스킨 이름 :: <input type="text" name="skin">&nbsp;
<button id="nameBtn">확인</button>

<div id="pathArea">
   <hr>
</div>
<hr>

<div id="jspArea" width="750px">
   <table style="border=1px solid black; padding-right: 1000px;">
      <tr>
         <th><span id="jspSpan"></span>
         </th>
      </tr>
   </table>
   
   <c:import url="fileUpload.jsp"/>
   
   <button id="jspBtn" class="btn" style="margin-left: 565px; margin-top: 5px;">업로드 완료</button>
   
   <hr>
</div>

<div id="userArea">
</div>
<div id="userArea1">
</div>
<div id="userArea2">
</div>
<div id="userArea3">
</div>

<div id="completeArea">
   <table align="center">
      <tr>
         <th>
            <br><br><button id="completeBtn" onclick="completeBtnClick()">업로드 완료</button>
         </th>
      </tr>
   </table>
</div>

<div id="detailArea" align="center">
   <form action="${initParam.root }admin.do" method="post" enctype="multipart/form-data">
      <input type="hidden" name="command" value="createTemplate">
      <input type="hidden" name="templateName" value="">
      
      <table>
         <tr>
            <td>template type</td>
            <td>
               <input type="radio" name="templateType" value="basick">Basic&nbsp;&nbsp;
               <input type="radio" name="templateType" value="advance">Advance<p>
            </td>
         </tr>
      
         <tr>
            <td>url > template file</td>
            <td colspan="2">
               <input type="file" name="urlTemplate" id="urlTemplate"><p>
            </td>
         </tr>
         
         <tr>
            <td colspan="3">
               <input type="submit" onclick="return submitBtnClick()" value="템플릿 생성">
            </td>
         </tr>
      </table>
   </form>
</div>

</body>
</html>