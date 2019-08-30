<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Board.HTML</title>
<script language="javascript">
</script>
</head>
<body>
	<form action="control" method="post">
	<table align="center" cellpadding="5" cellspacing="2" width="600" border="1">
		<tr>
			<td width="1220" height="20" colspan="2" bgcolor="#336699">
			<p align="center">
			<font color="white" size="3">
			<b>게시판(ReadOnly)</b>
			</font>
			</p>
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
			<input type=text name="title" size="50" value="${board.title }" readonly>
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
			<input name="content" cols="500" rows="10" value="${board.content }" readonly></textarea>
			</span>
			</b>
			</td>
		</tr>
			    
	</table>
	</form>
	<c:if test="${board.userName == user.userName}">
		<button onclick="location.href='control?command=boardAdjustReq&title=${board.title }'">수정하기</button><br>
		<button onclick="location.href='control?command=boardDelete&boardNo=${board.boardNo}'">게시물 삭제</button>
	</c:if>
	<button onclick="location.href='control?command=boardList'">목록</button>
	
</body>
</html>