<%@ page language="java" contentType="text/html; charset=UTF-8"
	 pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
  <head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>익명게시판</title>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">

<meta name="keywords" content="Nuptials Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
		   Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="css/style_index.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<link rel="stylesheet" href="post/css/postAnoneQnaList.css">
<link href="post/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css">
<!--light-box-files-->

<!-- 부트스트랩 -->
 <!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
<style type="text/css">
.admin-tr {
	background-color: #f5f5f5;
}
.admin-tr :hover{
	background-color: white;
}
 .container-fluid {
    padding-top: 20px;
} 
.nav{
   margin-left: 75%;
    width: 300px;
    font-size: 15px;

}
.nav>li>a {
    /* width: 140px; */
   /*  float: right; */
    color: #fff;
}
.container {
    width: 1170px;
    height: auto;
}

/*  */

ul.pagination {
    display: inline-block;
    padding: 0;
    margin: 0;
}

ul.pagination li {display: inline;}

ul.pagination li a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
    transition: background-color .3s;
    border: 1px solid #ddd;
}

ul.pagination li a.active {
    background-color: #4CAF50;
    color: white;
    border: 1px solid #4CAF50;
}

ul.pagination li a:hover:not(.active) {background-color: #ddd;}
</style>

<script type="text/javascript" charset="utf-8">
 var xhr;
 function logout() {
     var f = confirm("로그아웃 하시겠습니까?");
     if (f)
	 location.href = "member.do?command=logout"; //Controller에서 기능으로 연결..
	}
</script>
</head>
<body>
	<c:if test="${listVO == null}">
		<c:redirect url="../post.do?command=getAllAnoneQnAs"/>
	</c:if>

	<jsp:include page="postAnoneQnaNav.jsp"></jsp:include>

  <div class="container" style="margin-top: 2%;">
  <div class="jumbotron">
    <div class="table-responsive" >

      <table class="table table-condensed table-hover" align="center" style="padding-bottom: 0px;">
	<!-- <table class="table table-hover" align="center""> -->

	<thead>
	  <tr>
	    <th class="not_mapped_style" style="text-align: center">제목</th>
	    <th class="not_mapped_style" style="text-align: center">작성자</th>
	    <th class="not_mapped_style" style="text-align: center">작성일</th>
	    </tr>
	</thead>

	<tbody>
		<c:forEach items="${requestScope.adminList}" var="post">
			<tr class="admin-tr">
				<td class="not_mapped_style" style="text-align: left; padding-left: 130px">
					<a href="${initParam.root }post.do?command=getAnoneQnA&&postNo=${post.postNo}&&page=${listVO.pagingBean.nowPage}">
						<b>
							<font color="#FFBB00"><i class="fa fa-bullhorn" aria-hidden="true"></i></font>
							<font color="#000">${post.title}</font>
						</b>
					</a>
				</td>
				<td class="not_mapped_style" style="text-align: center"><b>관리자</b></td>
				<td class="not_mapped_style" style="text-align: center">
					<c:set var="writeDate" value="${fn:split(post.writeDate, ' ') }" />
					<c:set var="writeTime" value="${fn:split(writeDate[1], ':') }" />
					${writeDate[0] } ${writeTime[0] }:${writeTime[1] }
				</td>
			</tr>
		</c:forEach>
	
	<c:set value="0" var="i"/>
	  <c:forEach items="${listVO.list}" var="post">
	    <tr>
	      <td class="not_mapped_style" style="text-align: left; padding-left: 130px">
	      	<a href="${initParam.root }post.do?command=getAnoneQnA&&postNo=${post.postNo}&&page=${listVO.pagingBean.nowPage}">
	      		${post.title} <font color="#FF8224">[${commentLength.get(i) }]</font>
	      		<c:set value="${i+1 }" var="i"/>
	      	</a>
	      </td>
	      <td class="not_mapped_style" style="text-align: center">익명</td>
	      <td class="not_mapped_style" style="text-align: center">
			<c:set var="writeDate" value="${fn:split(post.writeDate, ' ') }"/>
			<c:set var="writeTime" value="${fn:split(writeDate[1], ':') }"/>
			${writeDate[0] } ${writeTime[0] }:${writeTime[1] }
	      </td>
	      <!-- </tr> -->
	  </c:forEach>
	</tbody>
      </table>
      
      
		<div class="" style="margin-left: 93%;">
			<a href="post/postAnoneQnaWrite.jsp">
				<input type="button"  value="글쓰기" class="btn btn-warning"
					id="writeCard" style=" font-family: 'Nanum Gothic', serif;"></a>
		</div>
    </div>

<!--  -->    
<div class="" style="margin-top: 20px;">
    	
  <c:set value="${listVO.pagingBean}" var="pb"></c:set>
  <div align="center">
    <!-- ================= paging Start ================ -->
    <c:if test="${pb.previousPageGroup}">
     <a href="${initParam.root }post.do?command=getAllAnoneQnAs&&postNo=${pb.startPageOfPageGroup-1}">
	이전페이지</a>
    </c:if>
    
    <c:forEach var="i" begin="${pb.startPageOfPageGroup}" end="${pb.endPageOfPageGroup}">
	 <c:choose>
	<c:when test="${pb.nowPage != i}">
	  <a href="${initParam.root }post.do?command=getAllAnoneQnAs&&page=${i}">${i}</a>
	</c:when>
	<c:otherwise>
	 ${i}
	</c:otherwise>
      </c:choose>
    <!--   &nbsp; -->
    </c:forEach> 
    <c:if test="${pb.nextPageGroup}">
      <a
	  href="./post.do?command=getAllAnoneQnAs&&page=${pb.endPageOfPageGroup +1}">
	다음 페이지</a>
	
      <br>
    </c:if>
    
     <!-- ============== paging End ============ -->
  </div>
    
    
    
    </div>
    
   </div> 
  </div>

<!--  -->
<!-- <ul class="pagination">
  <li><a href="#">«</a></li>
  <li><a href="#">1</a></li>
  <li><a class="active" href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#">6</a></li>
  <li><a href="#">7</a></li>
  <li><a href="#">»</a></li>
</ul> -->



</body>
</html>