<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

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


<!-- back to TOP -->
<style type="text/css">
	.back-to-top {
		cursor: pointer;
		position: fixed;
		bottom: 20px;
		right: 20px;
		display: none;
	}
</style>




</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="main.main"><img src="resources/images/mainLogo.jpg" width="130"></a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
            <c:if test="${id == null}">
            	<li class="pull-right"><a href="/proj/login.member"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	      		<li class="pull-right"><a href="/proj/join.member"><span class="glyphicon glyphicon-plus"></span> Register</a></li>
	        	
	      	</c:if>
            <c:if test="${id != null}">

                <!-- /.dropdown -->
                <li class="dropdown pull-right">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="profile.member"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="logout.member"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
                </c:if>
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                        <form action="/proj/search.main" method="post">
                            <div class="input-group custom-search-form">
								
	                                <input type="text" class="form-control" placeholder="통합검색" name="target" id="target">
	                                <span class="input-group-btn">
	                                <button class="btn btn-default" type="submit">
	                                	<i class="fa fa-search"></i>
	                                </button>
	                                </span>
                               
                             </div>
                              </form>
                            <!-- /input-group -->
                        </li>
                        <c:forEach items="${category}" var="category">
                        	<li>
                            	<a href="/proj/${category.category_name}.bbs?pageNum=1"><i class="fa  fa-angle-double-right fa-fw"></i> ${category.category_realName}</a>
                        	</li>
                        
                        </c:forEach>
                        
                        <li>
                            <a href="/proj/food.bbs"><i class="fa fa-dashboard fa-fw"></i> 공지사항</a>
                        </li>
                        <li>
                            <a href="/proj/food.bbs"><i class="fa fa-cutlery fa-fw"></i> 음식</a>
                           
                        </li>
                        <li>
                            <a href="/proj/car.bbs?pageNum=1"><i class="fa fa-car fa-fw"></i> 자동차</a>
                        </li>
                        <li>
                            <a href="/proj/electronic.bbs"><i class="fa fa-desktop fa-fw"></i> 전자기기<span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level">
                                <li>
                                    <a href="/proj/food.bbs">스마트폰</a>
                                </li>
                                <li>
                                    <a href="/proj/food.bbs">컴퓨터</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="/proj/game.bbs"><i class="fa fa-gamepad fa-fw"></i> 게임<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/proj/game.bbs">Panels and Wells</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Second Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Second Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="blank.html">Blank Page</a>
                                </li>
                                <li>
                                    <a href="login.html">Login Page</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        
        
        
        
        <div>
        	<c:if test="${whatPage==car}">
        	</c:if>
        </div>
        
        
        
        
        
        
        

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Dashboard</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
    
			<div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            ${article.weiver_title}
                            <p class="pull-right">hit : ${article.weiver_hit}
                            추천 : ${article.weiver_good}</p>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                       		${article.weiver_id} <br/><br/>
                       		${article.weiver_content}
                       		<div class="panel panel-default" id="userInfo">
                       		${article.weiver_id} <br/>
<!--                        		<div class="col-ms-2"> -->
                       		<img alt="이미지가 없습니다." src="resources/images/척.jpg" 
                                 class="img-thumbnail" id="profile_image" width="140" height="140">
<!--                        		</div> -->
<!--                        		<div class="col-ms-4"> -->
                       		여긴 자기 소개가 들어간다
<!--                        		</div> -->
                       		</div>
                            <div class="list-group">
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small"><em>4 minutes ago</em>
                                    </span>
                                </a>
                                
                            </div>
                            <!-- /.list-group -->
                            <a href="#" class="btn btn-default btn-block">View All Alerts</a>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                  </div>
</div>

<!-- back to TOP -->
		<a id="back-to-top" href="#"
			class="btn btn-primary btn-lg back-to-top" role="button"
			title="Click to return on the top page" data-toggle="tooltip"
			data-placement="left"><span
			class="glyphicon glyphicon-chevron-up"></span></a>

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


<!-- back to TOP -->
	<script type="text/javascript">
		$(document).ready(function() {
			$(window).scroll(function() {
				if ($(this).scrollTop() > 50) {
					$('#back-to-top').fadeIn();
				} else {
					$('#back-to-top').fadeOut();
				}
			});
			// scroll body to 0px on click
			$('#back-to-top').click(function() {
				$('#back-to-top').tooltip('hide');
				$('body,html').animate({
					scrollTop : 0
				}, 800);
				return false;
			});

			$('#back-to-top').tooltip('show');

		});
	</script>



</body>

</html>







<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
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

<!-- back to TOP -->
<style type="text/css">
	.back-to-top {
		cursor: pointer;
		position: fixed;
		bottom: 20px;
		right: 20px;
		display: none;
	}
</style>



<style>
/* Add a gray background color and some padding to the footer */
	table {
		border-style:solid;border-color:saddlebrown; border-width=10;
		border-collapse:collapse;
		border:black;
		
		cellpadding="0"; cellspacing="0";
 		vertical-align:middle;
		min-height: 500px;
		max-width: 1000px;
		width: 100%;
	}
	
	.thead{
		vertical-align: middle;
	}
	.tr1{
		min-height: 30px;
		max-height: 50px;
	}
	
</style>


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
	
div{
	clear: both;
}
</style>



<script>
function moveWrite() {
	document.location.href="writeForm.bbs";
}
</script>
  
 


</head>
<body>

 <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="main.main"><img src="resources/images/mainLogo.jpg" width="130"></a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
            <c:if test="${id == null}">
            	<li class="pull-right"><a href="/proj/login.member"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	      		<li class="pull-right"><a href="/proj/join.member"><span class="glyphicon glyphicon-plus"></span> Register</a></li>
	        	
	      	</c:if>
            <c:if test="${id != null}">

                <!-- /.dropdown -->
                <li class="dropdown pull-right">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="profile.member"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="logout.member"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
                </c:if>
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                        <form action="/proj/search.main" method="post">
                            <div class="input-group custom-search-form">
								
	                                <input type="text" class="form-control" placeholder="통합검색" name="target" id="target">
	                                <span class="input-group-btn">
	                                <button class="btn btn-default" type="submit">
	                                	<i class="fa fa-search"></i>
	                                </button>
	                                </span>
                               
                             </div>
                              </form>
                            <!-- /input-group -->
                        </li>
                        <c:forEach items="${category}" var="category">
                        	<li>
                            	<a href="/proj/${category.category_name}.bbs?pageNum=1"><i class="fa  fa-angle-double-right fa-fw"></i> ${category.category_realName}</a>
                        	</li>
                        
                        </c:forEach>
                        
                        <li>
                            <a href="/proj/food.bbs"><i class="fa fa-dashboard fa-fw"></i> 공지사항</a>
                        </li>
                        <li>
                            <a href="/proj/food.bbs"><i class="fa fa-cutlery fa-fw"></i> 음식</a>
                           
                        </li>
                        <li>
                            <a href="/proj/car.bbs?pageNum=1"><i class="fa fa-car fa-fw"></i> 자동차</a>
                        </li>
                        <li>
                            <a href="/proj/electronic.bbs"><i class="fa fa-desktop fa-fw"></i> 전자기기<span class="fa arrow"></span></a>
                             <ul class="nav nav-second-level">
                                <li>
                                    <a href="/proj/food.bbs">스마트폰</a>
                                </li>
                                <li>
                                    <a href="/proj/food.bbs">컴퓨터</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="/proj/game.bbs"><i class="fa fa-gamepad fa-fw"></i> 게임<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/proj/game.bbs">Panels and Wells</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Second Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Second Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="blank.html">Blank Page</a>
                                </li>
                                <li>
                                    <a href="login.html">Login Page</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        



	<div class="container text-center">
		<div class="row">
			<a href="/proj/main.main"> <img
				class="img-responsive center-block"
				src="resources/images/mainLogo.jpg" alt="Chania" width="200"
				height="50">
			</a>
		</div>
		<hr>
			<input type="hidden" id="title" value="${article.title}">
		<!-- 	<input type="button" class="btn btn-sm btn-primary" value="GOOGLE 위성 위치서비스" onclick="document.location.href='/bbs/location.bbs'"><br/> -->

		<!-- 	게시판  절취선---------------------------------------------------------------------------------------------------------------------------------- -->
		<h3>총 글 개수 : ${totalCount }개</h3>
		<div class="table-responsive">
			<!-- 반응형 테이블 -->
			<table class="table">
				<colgroup align="center">
					<col width="13%" />
					<col width="*" class="title" />	<!-- *는 나머지 -->
					<col width="15%" />		<!-- 내용 -->
					<col width="15%" />
					<col width="8%" />		<!-- 8%로 너프 -->
					<col width="8%" />
					<col width="8%" />
				</colgroup>
<!-- 				<thead align="center"> -->
<!-- 					<tr align="center" class="thead"> -->
<!-- 						<th align="center">번 호</th> -->
<!-- 						<th align="center">제 목</th> -->
<!-- 						<th align="center">내 용</th> -->
<!-- 						<th>작성자</th> -->
<!-- 						<th>작성일</th> -->
<!-- 						<th>조 회</th> -->
<!-- 						<th>추 천</th> -->
<!-- 					</tr> -->
<!-- 				</thead> -->
				<thead valign="middle">
						<tr class="tr1">
							<td width="15%"><c:out value="${article.weiver_no}" /></td> 
							<td width="*"><c:out value="${article.weiver_title}" /></td> 
							<td width="15%"><c:out value="${article.weiver_writedate}" /></td>
						</tr>
						<tr>
							<td><c:out value="${article.weiver_id}" 	/> 새내기</td>
						</tr>
				</thead>
				<tbody>
						<tr><c:out value="${article.weiver_content}" /></tr>
						
						
							<td><c:out value="${article.weiver_no}" /></td>
							<td><a href="/proj/read_car.bbs?weiver_no=${article.weiver_no}"><c:out value="${article.weiver_title}" /></a></td>
							<td><c:out value="${article.member_id}" /></td>
							<td><c:out value="${article.weiver_content}" /></td>
							<td><c:out value="${article.weiver_writedate}" /></td>
							<td><c:out value="${article.weiver_hit}" /></td>
							<td><c:out value="${article.weiver_good}" /></td>
				<tr>
					<td colspan="2">다운로드 </td>			
					<td colspan="2">
					<c:if test="${article.weiver_file !=0 }">
						<c:if test="${fileList!=null}">
							<ul>
							<c:forEach var="file" items="${fileList}">
								<li>
								<a href="/proj/download.bbs?orginFname=${file.orginFname}&storedFname=${file.storedFname}">${file.orginFname}</a>
								</li>
							</c:forEach>
							</ul>
						</c:if>
					</c:if>
					</td>			
				</tr>
				</tbody>
				<tr>
			      <c:if test="${id !=null}">
			    	  <td align="right">	    	
			    	  <div class="btn-group">
			    	  <c:if test="${id == article.weiver_id}">
				    	  <input type="button" value="수정하기" class="btn btn-sm btn-primary" onclick="document.location.href='/proj/updateForm.bbs?weiver_no=${article.weiver_no}&pageNum=${pageNum}&weiver_file=${article.weiver_file}'">
				    	  <input type="button" value="삭제하기" class="btn btn-sm btn-primary" onclick="document.location.href='/proj/delete.bbs?weiver_no=${article.weiver_no}&pageNum=${pageNum}'">
			    	  </c:if>
			    	  <c:if test="${id != article.weiver_id}">
				    	  <input type="button" value="수정하기" disabled="disabled" class="btn btn-sm btn-primary">
				    	  <input type="button" value="삭제하기" disabled="disabled" class="btn btn-sm btn-primary">
			    	  </c:if>
			    	  		<input type="button" value="목록으로" class="btn btn-sm btn-primary" onclick="document.location.href='/proj/list.bbs?pageNum=${pageNum}'">
			    	  </div>
			    	  </td>
			      </c:if> 	
			      <c:if test="${id == null}">
			    	  <td align="right">
			    	  <div class="btn-group">
			    	  <input type="button" value="수정하기" disabled="disabled" class="btn btn-sm btn-primary">
			    	  <input type="button" value="삭제하기" disabled="disabled" class="btn btn-sm btn-primary">
			    	  <input type="button" value="목록으로" class="btn btn-sm btn-primary" onclick="document.location.href='/proj/list.bbs?pageNum=${pageNum}'">
			    	  </div>
			    	  </td>   
			      </c:if>      	 	      	 
			     </tr>
<!-- 			     <tr> -->
<!-- 				     <td colspan="4"> -->
<!-- 				   	   <textarea rows="5" cols="70" id="commentContent"></textarea><br><br> -->
					   <c:if test="${id ==null}">
<!-- 				    	  <input type="button" value="comment 쓰기" disabled="disabled">    	   -->
				       </c:if> 
				       <c:if test="${id !=null}">
<!-- 			    	 	 <input type="button" value="comment 쓰기" id="commentWrite"> -->
			     	   </c:if>	     	  
			     	   <input type="button" value="comment 읽기(${article.commentCount})" onclick="getComment(1,event)" id="commentRead">	     	       
<!-- 				   </td>  -->
<!-- 				 </tr> 		 -->
			
			</table>
		</div>

	</div>



	<!-- 	게시판 절취선---------------------------------------------------------------------------------------------------------------------------------- -->
</div>
</body>
</html> --%>