<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
    <link href="css/main.css" rel="stylesheet">


<style type="text/css">
	h1{font-family: 'Pacifico', cursive;}
	.lead{font-family: 'Poiret One', cursive;}
	
.form-signin {
 max-width: 800px;
 padding: 15px;
 margin: 0 auto;
}
.form-signin .form-signin-heading,
.form-signin .checkbox {
  margin-bottom: 10px;
}
.form-signin .checkbox {
  font-weight: bold;
}
.form-signin .form-control {
  position: relative;
  height: auto;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
</style>

</head>
<body>

<section id="login">
        <div class="container" style="margin-left: 550px;">
            <div class="box">
<form method="post" action="member.do" style="width:350px;">
<input type="hidden" name="command" value="login">
	        <h2 class="form-signin-heading, lead" align="center">Login</h2>
	   			<label for="inputEmail" class="sr-only">ID</label>
      		  <input type="text" name="memberId" id="inputEmail" class="form-control" placeholder="id" required autofocus>
      		  <label for="inputPassword" class="sr-only">Password</label>
   	 		   <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
		
        	<button class="btn btn-lg btn-primary btn-block" type="submit">login</button>
      	</form>

				
            </div><!--/.box-->
        </div><!--/.container-->
    </section><!--/#about-us-->
</body>
</html>