<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>WEIVER!!</title>
<script>
function moveJoin() {
	document.location.href="join.main";
}
function logout() {
	document.location.href="logout.main";
}
</script>
</head>
<body>
	
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>                        
	      </button>
	      <a class="navbar-brand" href="#">Weiver</a>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav">
	        <li class="active"><a href="#">Home</a></li>
	        <li><a href="#">자동차</a></li>
	        <li><a href="#">음식</a></li>
	        <li><a href="#">전자기기</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	      </ul>
	    </div>
	  </div>
	</nav>
	
	<div class="container">
	<div class="row">
	  <div class="col-sm-8">
	  <img class="img-responsive center-block" src="resources/images/mainLogo.jpg" alt="Chania" width="400" height="100">
	  </div>
	  <div class="col-sm-4">
	    
	   <c:if test="${id!=null}">
			<div class="row">
				<div class="right-block">
					${id}님 환영합니다.<br/>
					<input type="button" class=" btn btn-sm btn-primary" value="logout" onclick="logout()">
				</div>
			</div>
		</c:if>
		<c:if test="${id==null}">
	      <form class="form-signin" action="/proj/login.main" method="post">
	        <div class=""><br/><br/>
		        <label for="inputEmail" class="sr-only">Email address</label>
		        <input type="text" id="id" name="id" class="form-control" placeholder="ID" required autofocus>
		        
		        <label for="inputPassword" class="sr-only">Password</label>
		        <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
		        <div class="checkbox">
		          <label>
		            <input type="checkbox" value="remember-me"> Remember me
		          </label>
		        </div>
		        <div class="btn-group">
		        	<button class="btn btn-sm btn-primary" type="submit">Log in</button>
			        <button class="btn btn-sm btn-primary" type="button" onclick="moveJoin()">Register</button>
		        </div>
	        </div>
	      </form>	
		</c:if>
	  
	  </div>
	</div>
	<hr>
	</div>
	
	<div class="container text-center">    
	  <h3>What We Do</h3>
	  <br>
	  <div class="row">
	    <div class="col-sm-3">
	      <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
	      <p>Current Project</p>
	    </div>
	    <div class="col-sm-3"> 
	      <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
	      <p>Project 2</p>    
	    </div>
	    <div class="col-sm-3">
	      <div class="well">
	       <p>Some text..</p>
	      </div>
	      <div class="well">
	       <p>Some text..</p>
	      </div>
	    </div>
	    <div class="col-sm-3">
	      <div class="well">
	       <p>Some text..</p>
	      </div>
	      <div class="well">
	       <p>Some text..</p>
	      </div>
	    </div>  
	  </div>
	  <hr>
	</div>
	
	<div class="container text-center">    
	  <h3>Our Partners</h3>
	  <br>
	  <div class="row">
	    <div class="col-sm-2">
	      <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
	      <p>Partner 1</p>
	    </div>
	    <div class="col-sm-2"> 
	      <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
	      <p>Partner 2</p>    
	    </div>
	    <div class="col-sm-2"> 
	      <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
	      <p>Partner 3</p>
	    </div>
	    <div class="col-sm-2"> 
	      <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
	      <p>Partner 4</p>
	    </div> 
	    <div class="col-sm-2"> 
	      <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
	      <p>Partner 5</p>
	    </div>     
	    <div class="col-sm-2"> 
	      <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
	      <p>Partner 6</p>
	    </div> 
	  </div>
	</div><br>
	
	<footer class="container-fluid text-center">
	  <p>Footer Text</p>
	</footer>


</body>
</html>