<%@ page  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>My Sweet Love . Wedding Card</title>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">

  <script type="text/javascript" src="${initParam.root}js/jquery-1.12.3.js"></script>

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
$(document).ready(function() {
    
  });
  
  function frmSubmit(index) {
     var name = index+ "Frm";
     document.getElementById(name).submit();
  }
  
  function logout() {
		var f = confirm("로그아웃 하시겠습니까?");
		if (f)
			location.href = "member.do?command=logout"; //Controller에서 기능으로 연결..
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
            <li class="active"><a href="${initParam.root }admin.do?command=getAllMembers">회원 정보</a></li>
            <li><a href="${initParam.root }post.do?command=getAllAnoneQnAs">익명게시판</a></li>
            <li><a href="${initParam.root }post.do?command=getAllQnAs">웨딩 QnA</a></li>
            <li><a href="${initParam.root }reviewComment.do?command=getAllReviewComments">칭찬해요</a></li>
            <li><a href="${initParam.root }admin.do?command=getAllCardTemplates">청첩장 템플릿 리스트</a></li>
            <li><a href="${initParam.root }admin/admin_template.jsp">청첩장 템플릿 추가</a></li>
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
      
      <div class="col-md-10">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-list"></span>Sortable Lists
                    <div class="pull-right action-buttons">
                        <div class="btn-group pull-right">
                            <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                <span class="glyphicon glyphicon-cog" style="margin-right: 0px;"></span>
                            </button>
                            <ul class="dropdown-menu slidedown">
                                <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-pencil"></span>Edit</a></li>
                                <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-trash"></span>Delete</a></li>
                                <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-flag"></span>Flag</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <ul class="list-group">
                       <c:set value="${mListVO.list }" var="list"/>
                    
                       <c:forEach items="${list }" var="l">
                           <li class="list-group-item">
                               <%-- <div class="checkbox" >
                                   <input type="checkbox" id="checkbox" />
                                   <label for="checkbox">
                                       ${l.memberId }
                                   </label>
                               </div> --%>
                               <form action="${initParam.root }admin.do" method="post" id="${l.memberId }Frm">
                               <input type="hidden" name="command" value="modifyMember">
                               <input type="hidden" name="memberId" value="${l.memberId }">
                               
                               <b>${l.memberId }</b>&nbsp;&nbsp;&nbsp;
                               
                               <font style="font-size: x-small;">password</font>
                               <input type="text" name="password" value="${l.password }">&nbsp;&nbsp;
                               
                               <font style="font-size: x-small;">name</font>
                               <input type="text" name="name" value="${l.name }">&nbsp;&nbsp;
                               
                               <font style="font-size: x-small;">phoneNumber</font>
                               <input type="text" name="phoneNumber" value="${l.phoneNumber }">
                               
                                  <div class="pull-right action-buttons">
                                      <a style="cursor: pointer;" onclick="frmSubmit('${l.memberId }')">
                                         <span class="glyphicon glyphicon-pencil"></span>
                                      </a>
                                      <a href="admin.do?command=deleteMember&&id=${l.memberId}" class="trash">
                                         <span class="glyphicon glyphicon-trash"></span>
                                      </a>
                                      <!-- <a href="http://www.jquery2dotnet.com" class="flag"><span class="glyphicon glyphicon-flag"></span></a> -->
                                  </div>
                               
                               </form>
                           </li>
                       </c:forEach>
                        
                    </ul>
                </div>
                <div class="panel-footer">
                    <div class="row">
                        <div class="col-md-6">
                            <h6>
                                Total Count <span class="label label-info">${total }</span></h6>
                        </div>
                        
                        <!-- ==================== paging ================= -->
                        <c:set value="${mListVO.pagingBean}" var="pb"/>
                        
                        <div class="col-md-6">
                            <ul class="pagination pagination-sm pull-right">
                               <li>
                                  <c:choose>
                                     <c:when test="${pb.previousPageGroup}">
                                        <a href="${initParam.root }admin.do?command=getAllMembers&&page=${pb.startPageOfPageGroup-1}">     
                                           «
                                        </a>
                                     </c:when>
                                     <c:otherwise>
                                        <a>«</a>
                                     </c:otherwise>
                                  </c:choose>
                               </li>
                               
                               <c:forEach var="i" begin="${pb.startPageOfPageGroup}" end="${pb.endPageOfPageGroup}">
                                  <c:choose>
                                     <c:when test="${pb.nowPage != i}">
                                        <li><a href="${initParam.root }admin.do?command=getAllMembers&&page=${i}">${i }</a></li>
                                     </c:when>
                                     <c:otherwise>
                                        <li class="active"><a href="javascript:void(0)">${i } <span class="sr-only">(current)</span></a></li>
                                     </c:otherwise>
                                  </c:choose>
                               </c:forEach>
                               
                               <li>
                                  <c:choose>
                                     <c:when test="${pb.nextPageGroup}">
                                        <a href="${initParam.root }admin.do?command=getAllMembers&&page=${pb.endPageOfPageGroup +1}">»</a>
                                     </c:when>
                                     <c:otherwise>
                                        <a>»</a>
                                     </c:otherwise>
                                  </c:choose>
                               </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      
      <footer class="pull-left footer">
         <p class="col-md-12">
            <hr class="divider">
           <!--  Copyright &COPY; 2015 <a href="http://www.pingpong-labs.com">Gravitano</a> -->
         </p>
      </footer>
   </div>
   
   
</body>
</html>
