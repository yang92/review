<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Weiver</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
	
    <!-- MetisMenu CSS -->
    <link href="resources/css/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="resources/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="resources/css/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="resources/fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
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

<!-- 글씨 크기 조정 -->
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


<!-- 게시판 검색 기능 -->
<script type="text/javascript">
$(document).ready(function() {
    var activeSystemClass = $('.list-group-item.active');

    //something is entered in search form
    $('#system-search').keyup( function() {
       var that = this;
        // affect all table rows on in systems table
        var tableBody = $('.table-list-search tbody');
        var tableRowsClass = $('.table-list-search tbody tr');
        $('.search-sf').remove();
        tableRowsClass.each( function(i, val) {
        
            //Lower text for case insensitive
            var rowText = $(val).text().toLowerCase();
            var inputText = $(that).val().toLowerCase();
            if(inputText != '')
            {
                $('.search-query-sf').remove();
                tableBody.prepend('<tr class="search-query-sf"><td colspan="6"><strong>Searching for: "'
                    + $(that).val()
                    + '"</strong></td></tr>');
            }
            else
            {
                $('.search-query-sf').remove();
            }

            if( rowText.indexOf( inputText ) == -1 )
            {
                //hide rows
                tableRowsClass.eq(i).hide();
                
            }
            else
            {
                $('.search-sf').remove();
                tableRowsClass.eq(i).show();
            }
        });
        //all tr elements are hidden
        if(tableRowsClass.children(':visible').length == 0)
        {
            tableBody.append('<tr class="search-sf"><td class="text-muted" colspan="6">No entries found.</td></tr>');
        }
    });
});
</script>

<script>
function moveWrite() {
	document.location.href="writeForm.bbs";
}
</script>
</head>
<body>
<div id="wrapper">
<%@include file="category.jsp" %>


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

	<!-- 	게시판 절취선---------------------------------------------------------------------------------------------------------------------------------- -->




<div class="container page-wrapper">
	<div class="row">
		<section class="content">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default">
					<div class="panel-body">
					
					
					
<!-- 						검색기능 -->
							<form action="#" method="get">
								<div class="input-group">
									<!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
									<input class="form-control" id="system-search" name="q"
										placeholder="Search for" required> <span
										class="input-group-btn">
										<button type="submit" class="btn btn-default">
											<i class="glyphicon glyphicon-search"></i>
										</button>
									</span>
								</div>
							</form>
							
							<div class="hidden-xs hidden-sm">
								<ul style="height:auto;">
									<li class="col-xs-5" style="list-style : none; float:left; max-width:250px;" >title</li>
									<li class="col-xs-2" style="list-style : none; float:left;" >id</li>
									<li class="col-xs-2" style="list-style : none; float:left;" >조회수</li>
									<li class="col-xs-2" style="list-style : none; float:left;" >날짜</li>
								</ul>								
								<br/>
								<hr>
								<c:forEach var="article" items="${articleList}"> 
									<ul style="height:auto;">
									
										
										<li class="col-xs-5" style="list-style : none; float:left;  max-width:250px; max-height:20px; overflow:hidden" >
										<a href="/proj/read_car.bbs?weiver_no=${article.weiver_no}&pageNum=${pageNum}&fileStatus=${article.weiver_file}">
										${article.weiver_title}
										</a>
										</li>
										
										<li class="col-xs-2" style="list-style : none; float:left;" >${article.weiver_id}</li>
										<li class="col-xs-2" style="list-style : none; float:left;" >${article.weiver_hit}</li>
										<li class="col-xs-2" style="list-style : none; float:left;" >${article.weiver_writedate}</li>
									</ul>
									<br/>
									<hr>
								</c:forEach>
								
							</div>
							
							
							
							
							
							
							<div class="table-container hidden-md hidden-lg">
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
														
														<a href="/proj/read_car.bbs?weiver_no=${article.weiver_no}&pageNum=${pageNum}&fileStatus=${article.weiver_file}"><c:out value="${article.weiver_title}" /></a>
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


</div>
 <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="resources/js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="resources/js/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="resources/js/raphael-min.js"></script>
    <script src="resources/js/morris.min.js"></script>
    <script src="resources/js/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/js/sb-admin-2.js"></script>
</body>
</html>