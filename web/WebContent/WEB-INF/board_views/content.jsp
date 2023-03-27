<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="/web/jsp17/style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<br />
	<h1 align="center"> Content </h1>
	<table>
		<tr>
			<td colspan="2"> <b>${article.subject}</b> </td>
		</tr>
		<tr>
			<td colspan="2" height="100"> ${article.content} </td>
		</tr>
		<tr>
			<td>작성자 : <a href="mailto:${article.email}"><b>${article.writer}</b></a> 
				시간 : ${article.reg}
			</td>
			<td>조회수 : ${article.readcount}</td>
		</tr>
		<tr>
			<td colspan="2"> 
				<button onclick="window.location='/web/board/modifyForm.hrd?num=${num}&pageNum=${pageNum}'">수 정</button><%--수정페이지로 보내면서 num과 pageNum을 보내준다.--%>
				<button onclick="window.location='/web/board/deleteForm.hrd?num=${num}&pageNum=${pageNum}'">삭 제</button><%--삭제페이지로 보내면서 num과 pageNum을 보내준다.--%>
				<button onclick="window.location='/web/board/writeForm.hrd?num=${num}&ref=${article.ref}&re_step=${article.re_step}&re_level=${article.re_level}&pageNum=${pageNum}'">답 글</button>
								<%--답글을 누르면 writeForm으로 가는데 새글인지 답글인지 구분하기 위해 고유번호num과 ref, re_step, re_level을 보낸다. --%>
				<button onclick="window.location='/web/board/list.hrd?pageNum=${pageNum}'">리스트</button>
								<%--리스트갈때는 페이징 처리를 위해 pageNum을 보낸다. --%>
			</td>
		</tr>
	</table>

</body>
</html>