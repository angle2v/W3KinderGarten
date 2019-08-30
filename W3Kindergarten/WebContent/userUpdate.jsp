<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Actor|Capriola|Luckiest+Guy|Playfair+Display+SC|Rock+Salt|Taviraj&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="main.css">
<title>-</title>
</head>
<body>
<div class = "updatepage">
<form class ="updatepageform" action="control" method="post" style =" padding-top: 60px;font-family: 'Rock Salt', cursive ;">
	<b style="font-size: 35px; font-weight: 700; color: white; padding-left: 10px;margin-left: 165px;">My Info</b><br><br>
	&nbsp;&nbsp;ID<input type="text" name="username" style="width:170px; height:22px;margin-left: 130px; text-align: center;	font-family: 'Capriola', sans-serif;box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);" value="${user.userName}" readonly><br>
	&nbsp;&nbsp;PW<input type="text" name="password" style="width:170px; height:22px;  margin-left: 118px; text-align:center; 	font-family: 'Capriola', sans-serif;box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);" value="${user.password}"><br>
	&nbsp;&nbsp;NAME<input type="text" name="nickname" style="width:170px; height:22px; margin-left: 93px; text-align:center;	font-family: 'Capriola', sans-serif;box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);" value="${user.nickName}"><br>
	&nbsp;&nbsp;EMAIL<input type="text" name="email"  style="width:170px; height:22px; text-align:center; margin-left: 89px;	font-family: 'Capriola', sans-serif;box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);" value="${user.email}" ><br>
	&nbsp;&nbsp;PHONE<input type="text" name="phone"  style="width:170px; height:22px; text-align:center;	 margin-left: 76px; font-family: 'Capriola', sans-serif;box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);" value="${user.phone}">
	<input type="hidden" name="command" value="userUpdate"><br>
	<input type="submit" value="Edit" style="width:175px; text-align: center; margin-left: 165px; box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12); padding-left:20px; padding-right: 10px;margin-top:5px; font-family: 'Rock Salt', cursive ;"><br>
</form>
<button onclick="location.href='control?command=userDelete&username=${sessionScope.user.userName}'" style="width:175px; text-align: center;	box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12); padding-left: 20px;; padding-right: 20px; margin-left:165px; margin-top:5px; font-family: 'Rock Salt', cursive ;">Delete</button>
	<input type=button value="Close" onclick="self.close()"  style="width:175px; text-align: center;	box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12); padding-left: 20px;; padding-right: 20px; margin-left:165px; margin-top:5px;  font-family: 'Rock Salt', cursive ;">
</div>
</body>
</html>