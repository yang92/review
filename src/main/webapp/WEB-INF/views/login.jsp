<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<title>Login</title>
<script>
function moveJoin() {
	document.location.href="join.main";
}
function moveMain() {
	document.location.href="main.main";
}
</script>
</head>
<body>
<form class="form-inline" action="/proj/login.main" method="post">
	<div class="form-group">
	<input type="text" id="id" name="id" class="form-control" placeholder="ID" required autofocus>
	
	
	<input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
	</div>
	<div class="checkbox">
		<label>
	   		<input type="checkbox" value="remember-me"> Remember me
		</label>
	</div>
	<div class="btn-group right-block">
		<button class="btn btn-sm btn-primary" type="submit">Log in</button>
	 <button class="btn btn-sm btn-primary" type="button" onclick="moveJoin()">Register</button>
	 <button class="btn btn-sm btn-primary" type="button" onclick="moveMain()">Cancel</button>
	</div>
	
      </form>	
</body>
</html>