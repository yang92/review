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
			ID : <input type="text" name="id" id="id"><br />
			PW : <input type="password" name="pw" id="pw"><br />
      NAME : <input type="text" name="name" id="name"/><br />
      EMAIL : <input type="text" name="email" id="email"/><br />
      SEX : 
      <select id="sex" name="sex">
      	<option value="male">Male</option>
      	<option value="female">Female</option>
      	</select><br/>
      BIRTH : <input type="text" name="birth" id="birth"/><br />
      MEMO : <textarea rows="10" cols="20" name="introduce"></textarea>
			
			<input type="submit" value="회원가입"/>
			<input type="button" value="취소" onclick="moveLogin()"/>
		</center>
	</form>
</body>
</html>