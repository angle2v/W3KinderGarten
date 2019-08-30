<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Board.HTML</title>
</head>
<body>
	<form action="control" method="post">
	<table align="center" cellpadding="5" cellspacing="2" width="600" border="1">
		<tr>
			<td width="1220" height="20" colspan="2" bgcolor="#336699">
			<p align="center">
			<font color="white" size="3">
			<b>게시판(Adjust)</b>
			</font>
			</p>
			</td>
		</tr>
		
		<tr>
			<td width="150" height="20">
			<p align="right">
			<b>
			<span style="font-size:9pt;">번호</span>
			</b>
			</p>
			</td>
			<td width="450" height="20" >
			<b>
			<span style="font-size:9pt;">
			<input type=text name="boardNo" size="50" value="${requestScope.board.boardNo}" readonly>
			</span>
			</b>
			</td>
		</tr>
		
		<tr>
			<td width="150" height="20">
			<p align="right">
			<b>
			<span style="font-size:9pt;">제 목</span>
			</b>
			</p>
			</td>
			<td width="450" height="20" >
			<b>
			<span style="font-size:9pt;">
			<input type=text name="title" size="50" value="${board.title }">
			</span>
			</b>
			</td>
		</tr>
			    
		<tr>
			<td width="150" height="20">
			<p align="right">
			<b>
			<span style="font-size:9pt;">내 용 </span>
			</b>
			</p>
			</td>
			<td width="450" height="20">
			<b>
			<span style="font-size:9pt;">
			<input name="content" cols="500" rows="10" value="${board.content }"></textarea>
			</span>
			</b>
			</td>
		</tr>
			    
	</table>
	<input type="hidden" name="command" value="boardAdjust">
	<input type="submit" value="확인">
	</form>
	<%-- <button onclick="location.href='control?command=boardAdjust&&boardNo=${board.boardNo }'">수정 완료</button><br> --%>
	<button onclick="location.href='control?command=boardList'">목록</button>
</body>
</html>