<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- 배열 또는 List, null 등에 데이터가 저장 되었는지 확인하기 위한 length() 사용을 위한 선언 -->
<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Actor|Capriola|Luckiest+Guy|Playfair+Display+SC|Rock+Salt|Taviraj&display=swap" rel="stylesheet">



</head>



<table style=" font-size: 30px;padding: 10px;  width:1519px;height:500px; background-color: #c0c0c0; color:black;box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);font-family: 'Playfair Display SC', serif;">
	<tr>
        <td >
            <p align="center">
            <b><span > N O </span></b></p>
        </td>
        <td >
            <p align="center"><font color="black"><b><span> T I T L E </span></b></font></p>
        </td>
        <td >
            <p align="center"><font color="black"><b><span> W R I T E R </span></b></font></p>
        </td>
        <td >
            <p align="center"><font color="black"><b><span> D A T E </span></b></font></p>
        </td>
        <td >
            <p align="center"><font color="black"><b><span> V I E W S </span></b></font></p>
        </td>
    </tr>
    
 	<c:if test="${empty boardList || fn:length(boardList) == 0}">
		<tr>
	        <td colspan="5">
	            <p align="center"><b><span>There is no registered guestbook</span></b></p>
	        </td>
	    </tr>
	</c:if>






	<%-- ArrayList에  GuestBookBean 객체를 하나하나 data라는 반복 대입해서 사용 --%>
	<c:forEach items="${requestScope.boardList}" var="data">
		    <tr style="font-size: 15px; text-align: center;font-family: 'Playfair Display SC', serif;">
		        <td bgcolor="">
		            <p align="center"><span>${data.boardNo}</span></p>
		        </td>
		        <td bgcolor="">
					<p><span>
					<!--  클릭은 제목 -> 해당 게시글의 상세보기
						상세보기를 위한 게시글 구분은 고유한 게시글 번호(num)
					 -->
					<a href="control?command=boardRead&title=${data.title}">${data.title}</a></span></p>
		        </td>
		        <td bgcolor="">
		            <p align="center"><span>
						<a href="mailto: ${data.userName}">
						 ${data.userName}</a>
					</span></p>
		        </td>
		        <td bgcolor="">
		            <p align="center"><span>
		             ${data.modifyDate}</span></p>
		        </td>
		        <td bgcolor="">
		            <p align="center"><span>
		             ${data.readNum}</span></p>
		        </td>
		    </tr>
	</c:forEach>
 	
    <tr>
        <td bgcolor="">
            <p align="center"><span style="font-size:9pt;"></span></p>
        </td>
        <td bgcolor="">
			<p><span style="font-size:9pt;"><a href="ReadAContent.jsp?num= "></a></span></p>
        </td>
        <td bgcolor="">
            <p align="center"><span style="font-size:9pt;">
				<a href="mailto:"></a>
			</span></p>
        </td>
        <td bgcolor="">
            <p align="center"><span style="font-size:9pt;"></span></p>
        </td>
        <td bgcolor="">
            <p align="center"><span style="font-size:9pt;"></span></p>
        </td>
    </tr>
</table>
<div class= "zxczxc" style=" font-size: 30px; width:1519px;height:120px; background-color: #c0c0c0; color:black; text-decoration:none;">
<div class= "zxczxc2"style="width:160px;  height:105px;  direction:none; background-color:gray; font-size:13px;padding:5px;margin-left: 1300px;">
<span style="width:60px;  height:40px;  direction:none; background-color:gray; font-size:14px;font-family: 'Rock Salt', cursive;  "><a href="main.jsp">H O M E</a></span><br><br>
<span style="width:60px;  height:40px;  direction:none; background-color:gray; font-size:14px; font-family: 'Rock Salt', cursive;"><a href="boardWrite.html">W R I T I N G</a></span></div>
</div >