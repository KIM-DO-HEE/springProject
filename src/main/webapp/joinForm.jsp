<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>회원가입</h2>
	<form action="joinUser.do" method="post">
		<input type="text" name="userId" placeholder="아이디를 입력해주세요."><br>
		<input type="password" name="userPw" placeholder="비밀번호를 입력해주세요""><br>
		<input type="text" name="userName" placeholder="닉네임을 입력해주세요"><br>
		<input type="email" name="userEmail" placeholder="이메일을 입력해주세요"><br>
		
		<input type="submit" value="가입"> 
	</form>
</body>
</html>