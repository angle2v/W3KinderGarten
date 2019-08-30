<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<br><br><br>
<center>

<h3>재능 기부자 정보 수정하기 - 재능 분야 수정</h3>
<hr><p>

<form action="control" method="post">
<input type="hidden" name="command" value="userUpdate">
<table border="1">
	<thead>
		<tr>
			<th>Username</th><th>Password</th><th>E-Mail</th><th>Nickname</th><th>Phone</th>
		</tr>
 	<tr>
 		<td>${user.username}</td>
 		<td><input type="text" name="password" value="${user.password}"></td>
 		<td><input type="text" name="email" value="${user.email }" ></td>
 		<td><input type="text" name="nickname" value="${user.nickname}"></td>
 		<td><input type="text" name="phone" value="${user.phone}"></td>
 	</tr>
 	
 	<tr>
 		<td colspan="4">
 			<input type="submit" value="수정">
 			&nbsp;&nbsp;&nbsp;
 			<input type="reset" value="취소">
 		</td>
 	</tr>
</table>
</form>

</center>
</body>
</html>