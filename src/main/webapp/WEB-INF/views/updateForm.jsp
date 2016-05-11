<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>WEIVER - 글수정</title>

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
</head>
<body>
<form action="/proj/update.bbs" method="post">
<input type="hidden" name="weiver_no" value="${weiver_no}">
<input type="hidden" name="weiver_file" value="${weiver_file}">
<input type="hidden" name="pageNum" value="${pageNum}">
	<table border="2" width="200">
		<tr>
			<td>글쓴이 :</td>
			<td>${id}</td>
		</tr>
		<tr>
			<td>제목 :</td>
			<td><input type="text" name="weiver_title" value="${article.weiver_title}"></td>
		</tr>
		<tr>
			<td colspan="2"><!-- 행 합침 -->
			<textarea rows="20" cols="50" name="weiver_content">${article.weiver_content}</textarea>
			</td>
		</tr>
		
		<tr>
			<td><input type="submit" value="수정하기"></td>
			<td><input type="reset" value="되돌리기"></td>
		</tr>
	</table>
</form>
</body>
</html>