<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">

<!--     <script src="../../assets/js/ie-emulation-modes-warning.js"></script> -->
	<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>

<title>검색결과</title>

</head>
<body>
	<c:forEach var="article" items="${articleList}">
		검색결과 : ${article.weiver_title} <br />
	</c:forEach>
</body>
</html>