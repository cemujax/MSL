<%@ page language="java" contentType="text/html; charset=UTF-8"
	 pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">


    <!-- css -->
    <link rel="stylesheet" type="text/css" href="./css/pbresult.css">
    
  </head>
  <body>
    <h1 align="center">PHOTO BOOK LIST</h1><p>
      <%-- <c:forEach items="${pbList}" var="i" varStatus="vs">
      <a href="photoBook.do?command=detail&&no=${i.bookNo }">${vs.count}. ${i.bookName}</a><p>
      </c:forEach> --%>
      <ul class="list-unstyled video-list-thumbs row">
	<c:forEach items="${pbList}" var="i" varStatus="vs">
	  <li class="col-lg-3 col-sm-4 col-xs-6" >
	    <a href="photoBook.do?command=detail&&no=${i.bookNo}">
              <img src="http://www.freeiconspng.com/uploads/vector-book-icon-vector-graphic--creattor-7.jpg" alt="Barca" class="img-responsive" height="130px" />
              <h2>${i.bookName}</h2>
              <span class="glyphicon glyphicon-share-alt"></span>
              <span class="duration">${vs.count}</span>
	    </a>
	  </li>
	</c:forEach>
      </ul>
  </body>
</html>
