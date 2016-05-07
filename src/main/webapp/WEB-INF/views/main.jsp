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
<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<title>we weiver it.</title>
<script>

function logout() {
	document.location.href="logout.main";
}
</script>
<style>
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    .carousel-inner img {
      width: 100%; /* Set width to 100% */
      height:100%;
      min-height: 50px;
      max-height: 500px; 
      max-width: 500px;
/*       vertical-align: middle; */
    }

    /* Hide the carousel text when the screen is less than 600 pixels wide */
    @media (max-width: 600px) {
      .carousel-caption {
        display: none; 
      }
    }
  </style>
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
	      <a class="navbar-brand" href="/proj/main.main">weiver</a>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav">
	        <li class="active"><a href="/proj/main.main">HOME</a></li>
	        <li><a href="/proj/food.bbs">음식</a></li>
	        <li><a href="/proj/car.bbs">자동차</a></li>
	        <li><a href="/proj/electronic.bbs">전자기기</a></li>
	        <li><a href="/proj/game.bbs">게임</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	      <c:if test="${id == null}">
	      	<li><a href="/proj/join.main"><span class="glyphicon glyphicon-plus"></span> Register</a></li>
	        <li><a href="/proj/login.main"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	      </c:if>
	      <c:if test="${id != null}">
	        <li><a href="/proj/logout.main"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
	      </c:if>
	      </ul>
	    </div>
	  </div>
	</nav>
	
	<div class="container">
	<div class="row">
	<img class="img-responsive center-block" src="resources/images/mainLogo.jpg" alt="Chania" width="400" height="100">
	
 
	</div>
	<hr>
	  <c:if test="${id!=null}">
   	 
	  <div class="text-right">
		<div class="row">
			<div class="text-right">
				${id} 님 환영합니다<br/>
				weiver score [ ] <br/>
<!-- 			<input type="button" class=" btn btn-sm btn-primary" value="Logout" onclick="logout()"> -->
			</div>
		</div>
	</div>
	</c:if>
	</div>
	
	<div class="container text-center">
	<br>
	  <div class="row">
      <!-- Wrapper for slides 메인화면 이미지 슬라이드 -->
	  	<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
      	<!-- Indicators -->
      	<ol class="carousel-indicators">
        	<li data-target="#myCarousel" data-slide-to="0" class="active"></li>	<!-- 작은 동그라미 버튼 -->
        	<li data-target="#myCarousel" data-slide-to="1"></li>
        	<li data-target="#myCarousel" data-slide-to="2"></li>
      	</ol>
	 
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="resources/images/척.PNG"  alt="Image">
          <div class="carousel-caption">
            <h3>척!</h3>
            <p>vayne bug</p>
          </div>      
        </div>

        <div class="item">
          <img src="resources/images/척 by lands59.jpg" alt="Image">
          <div class="carousel-caption">
            <h3>sell this picture : 1billion$</h3>
            <p> chuck! by lands59 </p>
          </div>      
        </div>
        
        <div class="item">
          <img src="resources/images/척 by H1000.jpg" alt="Image">
          <div class="carousel-caption">
            <h3>Gold ganda</h3>
            <p> chuck! by H1000 </p>
          </div>      
        </div>
      </div>
      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <br><br>
    
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
  </div>
  <hr>
	
	
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