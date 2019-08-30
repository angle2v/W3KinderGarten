<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Actor|Capriola|Luckiest+Guy|Playfair+Display+SC|Rock+Salt|Taviraj&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="main.css">
<title>SignUp HTML</title>

<!-- <script language="javascript">
function checkValid() {
	var f = window.document.signupForm;
	
	if(!f.username.value){
		alert("Username 입력은 필수입니다.");
		return false;
	}else if(!f.password.value){
		alert("Password 입력은 필수입니다. 5자리 이상 입력해주세요.")
		return false;
	}else if(!f.nickname.value){
		alert("Nickname 입력은 필수 입니다.")
		return false;	
	}
	
	return true;
}
</script> -->
</head>
<body>
<div class = "updatepage" >
	<form name="signupForm" action="control" method="post"  style ="padding-left: 160px; padding-top: 90px;font-family: 'Rock Salt', cursive ;">
		<b style="font-size: 35px; font-weight: 700;  color: white;padding-left: 5px;">Sign Up</b><br><br>
		<input type="text" name="username" placeholder="Username" style="width:170px;height:22px;  text-align: center;font-family: 'Capriola', sans-serif;box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);"><br>
		<input type="password" name="password" placeholder="Password" style="width:170px;height:22px;  text-align: center;	font-family: 'Capriola', sans-serif;box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);"><br>
		<input type="text" name="email" placeholder="Email" style="width:170px;height:22px;  text-align: center;font-family: 'Capriola', sans-serif;box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);"><br>
		<input type="text" name="nickname" placeholder="Nickname" style="width:170px;height:22px; text-align: center;font-family: 'Capriola', sans-serif;box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);"><br>
		<input type="text" name="phone" placeholder="Phone" style="width:170px;height:22px;  text-align: center;font-family: 'Capriola', sans-serif;box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);"><br>
		<input type="hidden" name="command" value="signUp">
		<input type="submit" value="Sign Up" style="width:175px; text-align: center;	box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12); padding-left: 60x; margin-top: 5px;padding-right: 5px; font-family: 'Rock Salt', cursive ;"><br>
	</form>
	<input type=button value="Close" onclick="self.close()" style="width:175px; margin-left: 160px;text-align: center; font-family: 'Rock Salt', cursive ;margin-right:15px; margin-top: 8px;	box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12); ">
	</div>
</body>
</html>