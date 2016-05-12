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
<title>음식 게시판</title>

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


<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script>
  
 
 </script>
 <script type="text/javascript">
	function keydowncheck()
	{
		var result = true;
		var keycode = event.keyCode;
		
		if(123 == keycode)
			{
				result = false;	
			}
		return result;
	}
</script>


</head>
<body>
<body onkeydown="return keydowncheck();">
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
	        <li><a href="/proj/main.main">HOME</a></li>
	        <li><a href="/proj/food.bbs">음식</a></li>
	        <li class="active"><a href="/proj/car.bbs">자동차</a></li>
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

	<div class="container text-center">
		<div class="row">
			<a href="/proj/main.main"> <img
				class="img-responsive center-block"
				src="resources/images/mainLogo.jpg" alt="Chania" width="200"
				height="50">
			</a>
		</div>
		<hr>
		<%-- 	<input type="hidden" id="title" value="${article.title}"> --%>
		<!-- 	<input type="button" class="btn btn-sm btn-primary" value="GOOGLE 위성 위치서비스" onclick="document.location.href='/bbs/location.bbs'"><br/> -->

		<!-- 	게시판  절취선---------------------------------------------------------------------------------------------------------------------------------- -->
		<h3>총 글 개수 : ${totalCount }개</h3>
		<div class="table-responsive">
			<!-- 반응형 테이블 -->
			<table class="table">
<%-- 				<colgroup align="center"> --%>
<%-- 					<col width="13%" /> --%>
<%-- 					<col width="*" class="title" />	<!-- *는 나머지 --> --%>
<%-- 					<col width="15%" />		<!-- 내용 --> --%>
<%-- 					<col width="15%" /> --%>
<%-- 					<col width="8%" />		<!-- 8%로 너프 --> --%>
<%-- 					<col width="8%" /> --%>
<%-- 					<col width="8%" /> --%>
<%-- 				</colgroup> --%>
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
						
						
<%-- 							<td><c:out value="${article.weiver_no}" /></td> --%>
<%-- 							<td><a href="/proj/read_car.bbs?weiver_no=${article.weiver_no}"><c:out value="${article.weiver_title}" /></a></td> --%>
<%-- 							<td><c:out value="${article.member_id}" /></td> --%>
<%-- 							<td><c:out value="${article.weiver_content}" /></td> --%>
<%-- 							<td><c:out value="${article.weiver_writedate}" /></td> --%>
<%-- 							<td><c:out value="${article.weiver_hit}" /></td> --%>
<%-- 							<td><c:out value="${article.weiver_good}" /></td> --%>
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
<%-- 					   <c:if test="${id ==null}"> --%>
<!-- 				    	  <input type="button" value="comment 쓰기" disabled="disabled">    	   -->
<%-- 				       </c:if>  --%>
<%-- 				       <c:if test="${id !=null}"> --%>
<!-- 			    	 	 <input type="button" value="comment 쓰기" id="commentWrite"> -->
<%-- 			     	   </c:if>	     	   --%>
<%-- 			     	   <input type="button" value="comment 읽기(${article.commentCount})" onclick="getComment(1,event)" id="commentRead">	     	        --%>
<!-- 				   </td>  -->
<!-- 				 </tr> 		 -->
			
			</table>
		</div>

	</div>



	<!-- 	게시판 절취선---------------------------------------------------------------------------------------------------------------------------------- -->
</div>
</body>
</html>