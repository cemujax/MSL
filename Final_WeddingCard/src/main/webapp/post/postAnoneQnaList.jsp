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
    <meta name="keywords"
	content="Nuptials Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
		   Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<link rel="stylesheet" href="css/bootstrap.min.css">


<link href="css/style_index.css" rel="stylesheet" type="text/css"
	media="all" />


<link href='//fonts.googleapis.com/css?family=Poiret+One'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<link rel="stylesheet" href="post/css/postAnoneQnaList.css">


<!--light-box-files-->
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

  <c:if test="${sessionScope.mvo == NULL }">
    <c:redirect url="authentication/login.jsp" />
  </c:if>


  <div class="container" id="cardManage"
style="background-image: url('post/images/anon_pic.jpg'); background-repeat: no-repeat; background-size: contain; background-position: center;">
  </div>

  
  <div class="container" style="margin-top: 2%;">
    <div class="table-responsive" >

      <table class="table table-condensed table-hover" align="center" style="padding-bottom: 0px;">
	<!-- <table class="table table-hover" align="center""> -->

	<thead>
	  <tr>
	    <th class="not_mapped_style" style="text-align: center">제목</th>
	    <th class="not_mapped_style" style="text-align: center">작성자</th>
	    <th class="not_mapped_style" style="text-align: center">작성일</th>
	    <!-- </tr> -->
	</thead>


	<tbody>
	  <c:forEach items="${listVO.list}" var="post">
	    <tr>
	      <td class="not_mapped_style" style="text-align: center"><a href="${initParam.root }post.do?command=getAnoneQnA&&postNo=${post.postNo}&&page=${listVO.pagingBean.nowPage}">${post.title}</a></td>
	      <td class="not_mapped_style" style="text-align: center">익명</td>
	      <td class="not_mapped_style" style="text-align: center">
			<c:set var="writeDate" value="${fn:split(post.writeDate, ' ') }"/>
			<c:set var="writeTime" value="${fn:split(writeDate[1], ':') }"/>
			${writeDate[0] } ${writeTime[0] }:${writeTime[1] }
	      </td>
	      <!-- </tr> -->
	  </c:forEach>




<%-- 	  <tr class="select-row">
	    <td class="not_mapped_style" style="text-align: center"></td>
	    <td class="not_mapped_style" style="text-align: center"></td>
	    <td class="not_mapped_style" style="text-align: right">
	      <c:if test="${sessionScope.mvo!=null}">
		<a href="postAnoneQnaWrite.jsp"> <input type="button"
class="btn btn-warning" value="글쓰기" id="writeCard" style="margin-right:15%;" ></a>
	      </c:if>
	    </td>
	  </tr>  --%>
	  
	   
	  
	  

	</tbody>
      </table>
      
      
       <c:if test="${sessionScope.mvo!=null}">
		<a href="post/postAnoneQnaWrite.jsp"> <input type="button"
class="btn btn-warning" value="글쓰기" id="writeCard" style="margin-left: 85%;" ></a>
	      </c:if>
      
    </div>
  </div>


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
      &nbsp;
    </c:forEach> <c:if test="${pb.nextPageGroup}">
      <a
	  href="./post.do?command=getAllAnoneQnAs&&page=${pb.endPageOfPageGroup +1}">
	다음 페이지</a>
      <br>
    </c:if> <!-- ============== paging End ============ -->
  </div>



</body>
</html>


<!-- <a href="postAnoneQnaWrite.jsp"><input style="width: 100px;"
     type="button" style="float: right;" class="btn btn-warning"  style="margin-right:30%;" value="글쓰기"
     id="writeCard"></a> -->
