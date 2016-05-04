<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="icon" href="../../favicon.ico">

	<!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" media="screen" title="no title">
    <!-- Custom style -->
    <link rel="stylesheet" href="resources/css/style.css" media="screen" title="no title">
	
    <!-- Bootstrap core CSS -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
<title>WEIVER!!</title>
<script>
function moveJoin() {
	document.location.href="join.main";
}
</script>
</head>
<body>

<center><img class="img-responsive" src="resources/images/mainLogo.jpg" alt="Chania" width="400" height="100"></center>
    <div class="container">
	<c:if test="${id!=null}">
	<%@include file="loginOK.jsp" %>
	</c:if>
	<c:if test="${id==null}">
      <form class="form-signin" action="/proj/login.main" method="post">
        <div class="col-md-2 col-md-offset-10"><br/><br/>
	        <label for="inputEmail" class="sr-only">Email address</label>
	        <input type="text" id="id" name="id" class="form-control" placeholder="ID" required autofocus>
	        
	        <label for="inputPassword" class="sr-only">Password</label>
	        <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
	        <div class="checkbox">
	          <label>
	            <input type="checkbox" value="remember-me"> Remember me
	          </label>
	        </div>
	        <div class="col-md-7 col-md-offset-6">
		        <button class="btn btn-sm btn-primary btn-block" type="submit">Log in</button>
		        <button class="btn btn-sm btn-primary btn-block" type="button" onclick="moveJoin()">Register</button>
	        </div>
        </div>
      </form>	
	</c:if>
    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>


</body>
</html>