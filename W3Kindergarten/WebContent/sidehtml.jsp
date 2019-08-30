<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" type="text/css" href="sidehtml.css">
<title>W3KinderGarten Online Web Tutorials</title>
</head>
<body>
	<div class="topmain">
		<a class="w3kindergarten" href="main.jsp">w3kindergarten <span
			class="dotcom">.com</span></a>

		<c:if test="${empty user}">
			<button class="signbtn"
				style="width: 120px; font-weight: 700; padding-left: 5px; float: right; margin-right: 8px; margin-top: 10px; font-family: 'Rock Salt', cursive; box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);"
				onclick="window.open('signUp.jsp','SignUp','width=500px,height=563px,left=500px,top=100px')">Sign
				Up</button>
			<span
				style="width: 375px; float: right; margin-right: 2px; margin-top: 10px; font-family: 'Rock Salt', cursive; box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);">
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
	</c:if>
	<c:if test="${not empty user}">
		<span
			style="float: right; margin-right: 8px; margin-top: 10px; font-family: 'Rock Salt', cursive; box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);">
			<button class="signbtn" style="width: 120px; font-weight: 700;"
				onclick="location.href='control?command=signOut'">Sign Out</button>
			<button class="signbtn" style="width: 120px; font-weight: 700;"
				onclick="window.open('userUpdate.jsp','My Info','width=500px,height=563px,left=500px,top=100px')">My
				Info</button>
		</span>
		</div>
	</c:if>
	<div class="subtext">the world's largest web developer site</div>

	<div class="navbackgroundsidehtml">
		<div class="navsidehtml">
			<a class="navsidehom"  href="main.jsp" style="visibility: visible;">
			<i class ="fas fa-home" style="font-size: 30px; margin-left: 25px; margin-top: 10px;"></i>
			</a>
			<button class="navsidehom1" style="visibility: visible;">
				HTML 
			</button>
			<button class="navsidehom" style="visibility: visible;">
				CSS 
			</button>
			<button class="navsidehom" style="visibility: visible;">
				JAVASCRIPT
			</button>
			<button class="navsidehom" style="visibility: visible;">
				SQL 
			</button>
			<button class="navsidehom" style="visibility: visible;">
				PHP 
			</button>
			<button class="navsidehom" style="visibility: visible;">
				BOOTSTRAB 
			</button>
			<button class="navsidehom" style="visibility: visible;">
				HOW TO 
			</button>
			<button class="navsidehom" style="visibility: visible;">
				PYTHON 
			</button>
			<button class="navsidehom" style="visibility: visible;">
				MORE<i class="fas fa-sort-down"></i>
			</button>
			<div class="googlesearchbacksidehtml">
				<script async src="https://cse.google.com/cse.js?cx=009799256350338995084:jrqub8kkgsy"></script>
<div class="gcse-search"></div>
			</div>
		</div>
	</div>

	<div class="sidenavsidehtml">
			<a href="#"><strong>HTML5 Tutorial</strong></a> <a href="#" style="color: white; background-color: #4CAF50;">HTML HOME</a> <a
				href="#">HTML Introduction</a> <a href="#">HTML Introduction</a> <a
				href="#">HTML Basic</a> <a href="#">HTML Elements</a> <a href="#">HTML
				Attributes</a> <a href="#">HTML Headings</a> <a href="#">HTML
					Paragraphs</a> <a href="#">HTML Styles</a> <a href="#">HTML
				Formatting</a> <a href="#">HTML Quotations</a> <a href="#">HTML
				Comments</a> <a href="#">HTML Colors</a> <a href="#">HTML
					CSS</a> <a href="#">HTML Links</a> <a href="#">HTML Images</a> <a
				href="#">HTML Tables</a> <a href="#">HTML Lists</a> <a href="#">HTML
				Blocks</a> <a href="#">HTML Classes</a> <a href="#">HTML Id</a>
			<a href="#">HTML Iframes</a> <a href="#">HTML JavaScript</a> <a href="#">HTML
					File Paths</a> <a href="#">HTML Head</a> <a href="#">HTML Layout</a> <a
				href="#">HTML Responsive</a> <a href="#">HTML Computercode</a> <a
				href="#">HTML Entities</a> <a href="#">HTML Symbols</a> <a
				href="#">HTML Charset</a> <a href="#">HTML URL Encode</a> <a
				href="#">HTML XHTML</a> <a href="#">HTML Forms</a> <a href="#">HTML
				Form Elements</a> <a href="#">HTML Input Types</a> <a href="#">HTML
				Input Attributes</a> <a href="#">HTML5 Intro</a> <a href="#">HTML5
				Support</a> <a href="#">Java Reference</a> <a href="#">HTML5 New
				Elements</a> <a href="#">HTML5 Semantics</a> <a href="#">HTML5
				Migration</a> <a href="#">HTML5 Style Guide</a> <a href="#">HTML
				APIs</a> <a href="#">HTML Certificate</a> <a href="#">HTML Summary</a> <a
				href="#">HTML Accessibility</a> <a href="#">HTML References</a> <a
				href="#">HTML Tag List</a> <a href="#">HTML Attributes</a> <a
				href="#">HTML Global Attributes</a> <a href="#">HTML Events</a><a href="#">HTML Colors</a> 
				<a href="#">HTML Canvas</a> <a href="#">HTML Audio/Video</a> <a
				href="#">HTML Doctypes</a> <a href="#">HTML Character Sets</a> <a
				href="#">HTML URL Encode</a> <a href="#">HTML URL Encode</a> <a
				href="#">HTTP Messages</a> <a href="#">HTTP Methods</a> <a
				href="#">PX to EM Converter</a> <a href="#">Keyboard Shortcuts</a>
			<div class="null"></div>
		</div>
	<div class="main1">
	<div class="aa" style="float: left; margin-top: 15px;margin-right: 60px; width: 1110px;">
	<img src="sidehtmlimg/효자패스상단미니.png">
	<img src="sidehtmlimg/sidehtml센터1.png" style="margin-top: 15px;">
	<img src="sidehtmlimg/sidehtml센터2.png">
	<img src="sidehtmlimg/sidehtml센터3.png">
	<img src="sidehtmlimg/sidehtml센터4.png">
	</div>
	<div class="aaa" style="float: right; width: 240px;">
	<img src="sidehtmlimg/무신아오른쪽.png">
	
	</div>
	
</div>
</body>
</html>