<%@ page  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>My Sweet Love . Wedding Card</title>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<script type="text/javascript" src="${initParam.root }js/jquery-2.1.4.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">

<style type="text/css">
h1.page-header {
    margin-top: -5px;
}

.sidebar {
    padding-left: 0;
}

.main-container { 
    background: #FFF;
    padding-top: 15px;
    margin-top: -20px;
}

.footer {
    width: 100%;
}  
.trash { color:rgb(209, 91, 71); }
.flag { color:rgb(248, 148, 6); }
.panel-body { padding:0px; }
.panel-footer .pagination { margin: 0; }
.panel .glyphicon,.list-group-item .glyphicon { margin-right:5px; }
.panel-body .radio, .checkbox { display:inline-block;margin:0px; }
.panel-body input[type=checkbox]:checked + label { text-decoration: line-through;color: rgb(128, 144, 160); }
.list-group-item:hover, a.list-group-item:focus {text-decoration: none;background-color: rgb(245, 245, 245);}
.list-group { margin-bottom:0px; }

</style>
<script type="text/javascript">

function logout() {
	var f = confirm("로그아웃 하시겠습니까?");
	if (f)
		location.href = "${initParam.root}member.do?command=logout"; //Controller에서 기능으로 연결..
}

	function deleteSelTemplate(templateNo){
		
		if(confirm("정말 삭제하시겠습니까?")){
			   location.href = "${initParam.root}admin.do?command=deleteTemplate&&templateNo="+templateNo;
		}
	}
	
</script>
</head>
<body>
	<c:if test="${mvo == null }">
		<c:redirect url="index.jsp"/>
	</c:if>

<nav class="navbar navbar-default navbar-static-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<a class="navbar-brand" href="${initParam.root }index.jsp">
				MySweetLove
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">			
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
	
	<div class="container-fluid main-container">
		<div class="col-md-2 sidebar">
			<ul class="nav nav-pills nav-stacked">
				<li><a href="${initParam.root }admin.do?command=getAllMembers">회원 정보</a></li>
				<li><a href="${initParam.root }post.do?command=getAllAnoneQnAs">익명게시판</a></li>
				<li><a href="${initParam.root }post.do?command=getAllQnAs">웨딩 QnA</a></li>
				<li><a href="${initParam.root }reviewComment.do?command=getAllReviewComments">칭찬해요</a></li>
				<li class="active"><a href="${initParam.root }admin.do?command=getAllCardTemplates">청첩장 템플릿 리스트</a></li>
				<li ><a href="${initParam.root }admin/admin_template.jsp">청첩장 템플릿 추가</a></li>
			</ul>
		</div>
		<div class="col-md-10 content">
            <div class="panel panel-default">
                <div class="panel-heading">
                	관리자 페이지
                	<a href="javascript:logout()" style="color:black; margin-right:15px; margin-left: 10px;"><span class="glyphicon glyphicon-log-in"></span>Logout</a>
                </div>
                <div class="panel-body">
                  <!--   이곳은 관리자 페이지 입니다. 관리자가 아니라면 고객센터에 문의 해주시기 바랍니다 -->
                </div>
            </div>
		</div>
		
		<!-- List 코드 !! -->
		<div class="col-md-10">
			<div class="jumbotron">
	    <div class="table-responsive" >
	      <table class="table table-condensed table-hover" style="padding-bottom: 0px;">
			<thead style="">
				<tr>
			        <td colspan="6" align="right" style="padding-right: 5%;">
			          <!-- <input  type="button" class="btn btn-danger" value="삭제" id="deleteTemplate" > -->
					</td>
			      </tr>
		      
			   	<tr>
					<th width="5%" style="text-align: center;">No</th>
			        <th width="10%" style="text-align: center;">템플릿 이름</th>
			        <th width="10%" style="text-align: center;">템플릿 이미지</th>
			        <th width="10%" style="text-align: center;">템플릿 타입</th>
			        <th width="5%" style="text-align: center;">관리</th>
	      		</tr>
			</thead>
	
		<tbody>
		   <c:forEach items="${templateList}" var="template" varStatus="i">
			<tr style="" align="center" >
         		<%--  <td style="padding-top: 20px;">
         		 	<input type="checkbox" id="templateNo" name="templateNo" value="${template.cardTemplateNo}">
         		 </td> --%>
         		 
		 		 <td style="width:64px; height:64px; padding-top: 20px;">
		   			 ${i.count }
		 		 </td>
		 		 
		          <td style="padding-top: 20px;">
		          	${template.templateName}
		           </td>
         		 <td style="padding-top: 20px;">
         		 	<img src="${initParam.root}weddingCard/preview_${template.templateName}/img/thumbnail_${template.templateName}.jpg"
         		 	 style="width: 80px; height: 35px; ">
         		 </td>
         		 <td style="padding-top: 20px;">
         		 ${template.templateType}
         		 </td>
         		 <td><input  type="button" class="btn btn-danger" value="삭제" id="deleteTemplate" onclick="deleteSelTemplate('${template.cardTemplateNo}')">
         		 </td>
       	 	</tr>
      </c:forEach>
      
	      </table>
	     
	      
	    </div>
	    
	  
	   </div> 
			
			
        </div>
		
		<footer class="pull-left footer">
			<p class="col-md-12">
				<hr class="divider">
				<!-- Copyright &COPY; 2015 <a href="http://www.pingpong-labs.com">Gravitano</a> -->
			</p>
		</footer>
	</div>
	
	
</body>
</html>

