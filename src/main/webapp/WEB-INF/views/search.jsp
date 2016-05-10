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
<title>검색 결과</title>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

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

</head>
<body>
<h3>검색어 "</h3><h4 style="color: blue;">${target}</h4><h3>"의 총 검색결과</h3>

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