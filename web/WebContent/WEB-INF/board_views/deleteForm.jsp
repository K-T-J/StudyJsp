<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="/web/jsp17/style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<br />
	<h1 align="center"> 게시글 삭제 </h1>
	<form action="/web/board/deletePro.hrd?pageNum=${pageNum}" method="post">
		<input type="hidden" name="num" value="${num}" />
		<table>
			<tr>
				<td> 삭제를 원하시면 비밀번호를 입력하세요. </td>
			</tr>
			<tr>
				<td> <input type="password" name="pw" /> </td>
			</tr>
			<tr>
				<td> 
					<input type="submit" value="삭제" /> 
					<input type="button" value="취소" onclick="window.location='/web/board/list.hrd?pageNum=${pageNum}'" /> 
				</td>
			</tr>
		</table>
	</form>


</body>
</html>