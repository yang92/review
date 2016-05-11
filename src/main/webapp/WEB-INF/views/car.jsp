<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html5>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link rel="shortcut icon" href="resources/images/w_r.JPG">

	<!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" media="screen" title="no title">
    <!-- Custom style -->
    <link rel="stylesheet" href="resources/css/style.css" media="screen" title="no title">
    
    
<!--     table 전용 css -->
<!--     <link rel="stylesheet" href="resources/css/table.css" media="screen" title="no title"> -->
	

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    
<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/table.js"></script>
<title>자동차 게시판</title>




<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<!--  <script type="text/javascript"> -->
<!-- // function keydowncheck() -->
<!-- // { -->
<!-- // var result = true; -->
<!-- // var keycode = event.keyCode; -->
<!-- // if(123 == keycode) -->
<!-- // { -->
<!-- // result = false; -->
<!-- // } -->
<!-- // return result; -->
<!-- // } -->
<!-- </script> -->
<style type="text/css">
	@media (max-width: 479px){
	.text-resp{
	font-size: 15px}
	}
	@media(min-width: 480px){
	.text-resp{
	font-size:20px}
	}
	
</style>
<script>
function moveWrite() {
	document.location.href="writeForm.bbs";
}
</script>
</head>
<body>
<!-- <body onkeydown="return keydowncheck();"> -->
<!-- 	<nav class="navbar navbar-inverse"> -->
<!-- 	  <div class="container-fluid"> -->
<!-- 	    <div class="navbar-header"> -->
<!-- 	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar"> -->
<!-- 	        <span class="icon-bar"></span> -->
<!-- 	        <span class="icon-bar"></span> -->
<!-- 	        <span class="icon-bar"></span>                         -->
<!-- 	      </button> -->
<!-- 	      <a class="navbar-brand" href="/proj/main.main">weiver</a> -->
<!-- 	    </div> -->
<!-- 	    <div class="collapse navbar-collapse" id="myNavbar"> -->
<!-- 	      <ul class="nav navbar-nav"> -->
<!-- 	        <li><a href="/proj/main.main">HOME</a></li> -->
<!-- 	        <li><a href="/proj/food.bbs">음식</a></li> -->
<!-- 	        <li class="active"><a href="/proj/car.bbs">자동차</a></li> -->
<!-- 	        <li><a href="/proj/electronic.bbs">전자기기</a></li> -->
<!-- 	        <li><a href="/proj/game.bbs">게임</a></li> -->
<!-- 	      </ul> -->
<!-- 	      <ul class="nav navbar-nav navbar-right"> -->
<%-- 	      <c:if test="${id == null}"> --%>
<!-- 	      	<li><a href="/proj/join.main"><span class="glyphicon glyphicon-plus"></span> Register</a></li> -->
<!-- 	        <li><a href="/proj/login.main"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
<%-- 	      </c:if> --%>
<%-- 	      <c:if test="${id != null}"> --%>
<!-- 	        <li><a href="/proj/logout.main"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li> -->
<%-- 	      </c:if> --%>
<!-- 	      </ul> -->
<!-- 	    </div> -->
<!-- 	  </div> -->
<!-- 	</nav> -->

<!-- 	<div class="container text-center"> -->
<!-- 		<div class="row"> -->
<!-- 			<a href="/proj/main.main"> <img -->
<!-- 				class="img-responsive center-block" -->
<!-- 				src="resources/images/mainLogo.jpg" alt="Chania" width="200" -->
<!-- 				height="50"> -->
<!-- 			</a> -->
<!-- 		</div> -->
<!-- 		<hr> -->
		<%-- 	<input type="hidden" id="title" value="${article.title}"> --%>
		<!-- 	<input type="button" class="btn btn-sm btn-primary" value="GOOGLE 위성 위치서비스" onclick="document.location.href='/bbs/location.bbs'"><br/> -->

		<!-- 	게시판  절취선---------------------------------------------------------------------------------------------------------------------------------- -->
<%-- 		<h3>총 글 개수 : ${totalCount }개</h3> --%>
<!-- 		<div class="container"> -->
<!--  			반응형 테이블  -->
<!-- 			<table class="table table-striped"> -->
<%-- 				<colgroup align="center"> --%>
<%-- 					<col width="13%" /> --%>
<%-- 					<col width="*" class="title" />	<!-- *는 나머지 --> --%>
<%-- 					<col width="15%" /> --%>
<%-- 					<col width="8%" />		<!-- 8%로 너프 --> --%>
<%-- 					<col width="8%" /> --%>
<%-- 					<col width="8%" /> --%>
<%-- 				</colgroup> --%>
<!-- 				<thead> -->
<!-- 					<tr> -->
<!-- 						<th>번 호</th>		text_center 가운데 정렬 -->
<!-- 						<th class="text-left">제 목</th> -->
<!-- 						<th>작성자</th> -->
<!-- 						<th>작성일</th> -->
<!-- 						<th>조 회</th> -->
<!-- 						<th>추 천</th> -->
<!-- 					</tr> -->
<!-- 				</thead> -->
<!-- 				<tbody> -->
					
<%-- 					<c:forEach var="article" items="${articleList}"> --%>
<!-- 						<tr> -->
<%-- 							<td class="text-center"><c:out value="${article.weiver_no}" /></td> --%>
<%-- 							<td class="text-left"><a href="/proj/read_car.bbs?weiver_no=${article.weiver_no}"><c:out value="${article.weiver_title}" /></a></td> --%>
<%-- 							<td class="text-center"><c:out value="${article.weiver_id}" /></td> --%>
<%-- 							<td class="text-center"><c:out value="${article.weiver_writedate}" /></td> --%>
<%-- 							<td class="text-center"><c:out value="${article.weiver_hit}" /></td> --%>
<%-- 							<td class="text-center"><c:out value="${article.weiver_good}" /></td> --%>
<!-- 						</tr> -->
<%-- 					</c:forEach> --%>
					
<!-- 				</tbody> -->
<!-- 			</table> -->
<!-- 		</div> -->

<!-- 	</div> -->

<!-- <br/><br/><br/> -->
<%-- ${article.weiver_title} --%>
	<!-- 	게시판 절취선---------------------------------------------------------------------------------------------------------------------------------- -->
<div class="container">
	<div class="row">
		<section class="content">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="table-container">
							<table class="table table-filter">
								<tbody>
									<c:forEach var="article" items="${articleList}"> 
									<tr>
										
										<td>
											<div class="media">
<!-- 												<a href="#" class="pull-left"> -->
<!-- 													<img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo"> -->
<!-- 												</a> -->
												<div class="media-body">
<!-- 													<span class="media-meta pull-right">Febrero 13, 2016</span> -->
													<h4 class="title text-resp">
														
														<a href="/proj/read_car.bbs?weiver_no=${article.weiver_no}&pageNum=${pageNum}"><c:out value="${article.weiver_title}" /></a>
													</h4>
													<div>${article.weiver_id}&nbsp;|&nbsp;조회 : ${article.weiver_hit}&nbsp;|&nbsp;${article.weiver_writedate}</div>
												
												</div>
											</div>
										</td>
									</tr>
									</c:forEach>
									<tr>
										<td>
										<button class="btn btn-sm btn-primary" type="button" onclick="moveWrite()">글쓰기</button>
										</td>
									</tr>
									<tr>
										<td>
											${pageCode}
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
			</div>
		</section>
		
	</div>
</div>







</body>
</html>