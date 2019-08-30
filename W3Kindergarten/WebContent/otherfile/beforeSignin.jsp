<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Actor|Capriola|Luckiest+Guy|Playfair+Display+SC|Rock+Salt|Taviraj&display=swap"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/66253f70e5.js"></script>
<link rel="stylesheet" type="text/css" href="main.css">
<title>w3KinderGarten</title>
</head>
<body>
	<div class="topmain">
		<a class="w3kindergarten" href="beforeSignin.jsp">w3kindergarten <span
			class="dotcom">.com</span></a>

		<button class="signbtn"
			style="width: 120px; font-weight: 700; padding-left: 5px; float: right; margin-right: 8px; margin-top: 10px; font-family: 'Rock Salt', cursive;box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);"
			onclick="window.open('signUp.jsp','SignUp','width=500px,height=600px,left=500px,top=100px')">Sign
			Up</button>
		<span
			style="width: 375px; float: right; margin-right: 2px; margin-top: 10px; font-family: 'Rock Salt', cursive;box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);">
			<form action="control" method="post">
				<input type="text" name="username"
					style="width: 120px; text-align: center;" placeholder="Username">
				<input type="password" name="password"
					style="width: 120px; text-align: center;" placeholder="Password">
				<input type="hidden" name="command" value="signIn"> <input
					type="submit" style="width: 120px; font-weight: 700;"
					value="Sign In">
			</form>
		</span>
	</div>
	<div class="subtext">the world's largest web developer site</div>

	<div class="navbackground">
		<div class="nav">
			<button class="nav-tutorials" style="visibility: visible;"
				onclick="window.open('signUp.jsp','SignUp','width=500px,height=600px,left=500px,top=100px')">
				TUTORIALS <i class="fas fa-sort-down"></i>
			</button>
			<button class="nav-references" style="visibility: visible;">
				REFERENCES <i class="fas fa-sort-down"></i>
			</button>
			<button class="nav-examples" style="visibility: visible;">
				EXAMPLES <i class="fas fa-sort-down"></i>
			</button>
			<button class="nav-exercises" style="visibility: visible;">
				EXERCISES <i class="fas fa-sort-down"></i>
			</button>
			<button class="nav-exercises" style="visibility: visible;">
				BOARD <i class="fas fa-sort-down"></i>
			</button>
			<div class="googlesearchback">
				<script async
					src="https://cse.google.com/cse.js?cx=009799256350338995084:apvpwhiygrp"></script>
				<div class="gcse-search"></div>
			</div>
		</div>
	</div>

	<div class="sidenav">
		<div class="sidehide">
			<b><strong>HTML and CSS</strong></b> <a href="#">Learn HTML</a> <a
				href="#">Learn CSS</a> <a href="#">Learn Bootstrap</a> <a href="#">Learn
				Icons</a> <a href="#">Learn Graphics</a> <a href="#">Learn How To</a> <a
				href="#">Learn Sass</a> <b><strong>JavaScript</strong></b> <a
				href="#">Learn JavaScript</a> <a href="#">Learn React</a> <a
				href="#">Learn AngularJS</a> <a href="#">Learn JSON</a> <a href="#">Learn
				AJAX</a> <b><strong> Server Side</strong></b> <a href="#">Learn SQL</a>
			<a href="#">Learn PHP</a> <a href="#">Learn ASP</a> <a href="#">Learn
				Node.js</a> <a href="#">Raspberry Pi</a> <b><strong>Programming</strong></b>
			<a href="#">Learn Python</a> <a href="#">Learn Java</a> <a href="#">Learn
				C++</a> <b><strong>Web building</strong></b> <a href="#">Web
				Templates</a> <a href="#">Web Statistics</a> <a href="#">Web
				Certificates</a> <a href="#">Web Editor</a> <a href="#">Web
				Development</a> <b><strong>References</strong></b> <a href="#">HTML
				Reference</a> <a href="#">CSS Reference</a> <a href="#">JS Reference</a>
			<a href="#">SQL Reference</a> <a href="#">PHP Reference</a> <a
				href="#">JQuery Reference</a> <a href="#">Python Reference</a> <a
				href="#">Bootstrap 3 Reference</a> <a href="#">Bootstrap 4
				Reference</a> <a href="#">Java Reference</a> <a href="#">Angular
				Reference</a> <a href="#">Sass Reference</a> <a href="#">UTF-8
				Reference</a> <b><strong>Exercises</strong></b> <a href="#">HTML
				Exercises</a> <a href="#">CSS Exercises</a> <a href="#">JavaScript
				Exercises</a> <a href="#">SQL Exercises</a> <a href="#">PHP
				Exercises</a> <a href="#">Python Exercises</a> <a href="#">Java
				Exercises</a> <a href="#">C++ Exercises</a> <a href="#">Bootstrap
				Exercises</a>
			<div class="null"></div>
		</div>
	</div>
	<div class="main">
		<div class="center-1left">
			<h1 style="font-size: 80px; float: left:;">HTML</h1>
			<p style="font-size: 30px;">The language for building web pages</p>
			<br> <a href="#" class="w3-button-w3-dark-gry">LEARN HTML</a> <a
				href="#" class="w3-button-w3-dark-gry">LEARN REFERENCE</a>
		</div>
		<div class="center-1right">
			<div class="container-1right-1">
				<br><h3>HTML Example:</h3>
				<div class="container-1right-2">
					<img src = "container.png ">
				</div>
			</div>
		</div>
	</div>
</body>
</html>