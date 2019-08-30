<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<% String url = application.getContextPath() + "/"; %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>-</title>
</head>

<body>
<div style="font-size: 30px; font-weight: 900; margin-top: 250px; margin-left: 90px; ">
		${requestScope.username}'s Information<br>
		 &nbsp; has been corrected
		<input type=button value="Close" onclick="self.close()" style="width:80px; height:30px;float: right;font-family: 'Rock Salt', cursive ;margin-right:17px; margin-top: 190px;	box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12); ">
	
</body>
</html>