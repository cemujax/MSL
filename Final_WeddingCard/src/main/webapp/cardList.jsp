<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
   body table{
   margin: 0px;
   margin-left: auto;
   margin-right: auto; 
   width: 70%
   border-collapse: collapse;
   }
   tr td{
   text-align: center;
      
   }
   table tr:HOVER{
   background-color: pink;
   }
</style>
</head>
<body>

<h2 align="center"> 초대장 관리</h2>
<h4 align="center"> ID:${mvo.memberId} &nbsp;&nbsp;이름:${mvo.name}</h4>

<table border="2" >
   <th>No</th> <th>초대장 주소</th> <th>스킨 타입</th> <th>예식장</th> <th>날짜</th>
   
   <c:forEach items="${cardList}" var="card" varStatus="i">
   <tr align="center">
      <td >${i.count}</td>
      <td><a href="./card.do?command=getCard&&url=${card.url }">${card.url}</a></td>
      <td>${card.template}</td>
      <td>${card.hallName}</td>
        <td>${card.cardDate}</td>
      
   </tr>
</c:forEach>
</table>

</body>
</html>