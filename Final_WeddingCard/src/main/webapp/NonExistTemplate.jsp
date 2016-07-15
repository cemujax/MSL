<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


  <link href="https://fonts.googleapis.com/css?family=Pacifico"
   rel='stylesheet' type='text/css'>
  <link href="https://fonts.googleapis.com/css?family=Poiret+One"
   rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Dosis'
   rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Orbitron'
   rel='stylesheet' type='text/css'>
   
<style type="text/css">
body { background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABoAAAAaCAYAAACpSkzOAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABZ0RVh0Q3JlYXRpb24gVGltZQAxMC8yOS8xMiKqq3kAAAAcdEVYdFNvZnR3YXJlAEFkb2JlIEZpcmV3b3JrcyBDUzVxteM2AAABHklEQVRIib2Vyw6EIAxFW5idr///Qx9sfG3pLEyJ3tAwi5EmBqRo7vHawiEEERHS6x7MTMxMVv6+z3tPMUYSkfTM/R0fEaG2bbMv+Gc4nZzn+dN4HAcREa3r+hi3bcuu68jLskhVIlW073tWaYlQ9+F9IpqmSfq+fwskhdO/AwmUTJXrOuaRQNeRkOd5lq7rXmS5InmERKoER/QMvUAPlZDHcZRhGN4CSeGY+aHMqgcks5RrHv/eeh455x5KrMq2yHQdibDO6ncG/KZWL7M8xDyS1/MIO0NJqdULLS81X6/X6aR0nqBSJcPeZnlZrzN477NKURn2Nus8sjzmEII0TfMiyxUuxphVWjpJkbx0btUnshRihVv70Bv8ItXq6Asoi/ZiCbU6YgAAAABJRU5ErkJggg==);}
.error-template {padding: 40px 15px;text-align: center;}
.error-actions {margin-top:15px;margin-bottom:15px;}
.error-actions .btn { margin-right:10px; }

    .test{font-family: 'Dosis', cursive; font-size: 4em;}
   .lead{font-family: 'Poiret One', cursive; font-size: 5em;}

</style>
<script type="text/javascript">
function home() {
   location.href="index.jsp";
}
function contact() {
   location.href="index.jsp#contact";
}
</script>
</head>
<body>  
<nav class="navbar navbar-inverse" style="background-color: #f8f8f8; border-color: #e7e7e7;">
  <div class="container-fluid">
    <div class="navbar-header" style="margin-top: 10px;font-size: 20px;">
     <!--  <a class="navbar-brand" href="#">Home</a> -->
     <a href="${initParam.root }index.jsp" ><span style="color:#777;">Home</span></a>
    </div>
    
    	<ul class="nav navbar-nav" ><!-- style=" margin-left:73%;" -->
				<%-- <li class="active"><a href="${initParam.root }index.jsp"><span>Home</span></a></li> --%>
					 <li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">커뮤니티<span class="caret"></span></a>
							  <ul class="dropdown-menu">
							      <li><a href="#">익명게시판</a></li>
							         <li><a href="#">게시판</a></li>
							         <li><a href="#">칭찬해요</a></li>
							   </ul>
					</li>
							      
							      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">청첩장<span class="caret"></span></a>
							        <ul class="dropdown-menu">
							          <li><a href="${initParam.root }weddingCard.jsp">청첩장만들기</a></li>
							          <li><a href="${initParam.root }./card.do?command=getAllCards">청첩장보기</a></li>
							        </ul>
							      </li>
							      
							       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">포토북<span class="caret"></span></a>
							        <ul class="dropdown-menu">
							          <li><a href="${initParam.root }test.jsp">포토북만들기</a></li>
							          <li><a href="${initParam.root }photoBook.do?command=list">포토북보기</a></li>
							        </ul>
							      </li>
							      
							<!-- 	<li><a href="#mail" class="scroll"><span>Mail Us</span></a></li> -->
							</ul>
  </div>
</nav><!-- nav div End -->

   <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="error-template">
                <h1 class="test">
                    Oops!</h1>
              <!--   <h2 class="lead">
                	
                    </h2> -->
                <div class="error-details ">
                만드신 청첩장 템플릿 서비스가 종료되었습니다
                    다른 템플릿으로 변경해주시기 바랍니다.
                </div>
                <div class="error-actions">
                <button type="button" class="btn btn-primary btn-lg" onclick="home()">Take me home 
                <span class="glyphicon glyphicon-home"></span></button>
                <button type="button" class="btn btn-primary btn-lg" onclick="contact()">Contact Support 
                <span class="glyphicon glyphicon-envelope"></span></button>
                
            </div>
        </div>
    </div>
</div>

</body>

</html>