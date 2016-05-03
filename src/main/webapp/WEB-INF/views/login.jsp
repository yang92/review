<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학생 로그인</title>
<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
<script>
	function moveJoin() {
		document.location.href="join.main";
	}
</script>
</head>
<body>
	<form action="/proj/login.main" method="post">
		<center>
		
		아이디 : <input type="text" name="id"/><br />
		비밀번호 : <input type="password" name="password"><br />
		<input type="submit" value="LOGIN"/>
		<input type="button" value="회원가입" onclick="moveJoin()"/>
		</center>
	</form>
</body>
</html>