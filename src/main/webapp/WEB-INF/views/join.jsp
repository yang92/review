<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
<script>

	function moveLogin(){
		document.location.href="login.main";
	}
</script>
</head>
<body>
	<form action="/proj/join.main" method="POST">
		<center>
			회원가입<br/>
			아이디 : <input type="text" name="id"/><br />
			비밀번호 : <input type="password" name="password"/><br />
			이름 : <input type="text" name="name"/><br />
			학년 : 
			<select name="grade">
				<option value="">--CHOICE--</option>
				<option value="1">Freshman</option>
				<option value="2">Sophomore</option>
				<option value="3">Junior</option>
				<option value="4">Senior</option>
			</select><br />
			<input type="submit" value="회원가입"/>
			<input type="button" value="취소" onclick="moveLogin()"/>
		</center>
	</form>
</body>
</html>