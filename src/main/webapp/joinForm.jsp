<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>ȸ������</h2>
	<form action="joinUser.do" method="post">
		<input type="text" name="userId" placeholder="���̵� �Է����ּ���."><br>
		<input type="password" name="userPw" placeholder="��й�ȣ�� �Է����ּ���""><br>
		<input type="text" name="userName" placeholder="�г����� �Է����ּ���"><br>
		<input type="email" name="userEmail" placeholder="�̸����� �Է����ּ���"><br>
		
		<input type="submit" value="����"> 
	</form>
</body>
</html>