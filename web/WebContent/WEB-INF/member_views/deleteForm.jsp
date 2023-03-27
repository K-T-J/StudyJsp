<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/web/jsp16/style.css" rel = "stylesheet" type = "text/css">
</head>

<c:if test="${sessionScope.sid == null }">
	<script>
		alert("잘못된 경로 입니다");
		window.location="/web/member/main.hrd";
	</script>
</c:if>
<c:if test="${sessionScope.sid != null}">
<body>
	<br/>
	<h1 align = "center">회원 탈퇴 페이지</h1>
	<form action = "/web/member/deletePro.hrd" method = "post">
		<table>
			<tr>
				<td> 탈퇴를 원하시면 비밀번호를작성해주세요.<br/>
				<input type = "password" name = "pw"/>
				</td>
			</tr>
			<tr>
				<td><input type = "submit" value = "탈퇴"/></td>
			</tr>
		</table>
	</form>
</body>
</c:if>
</html>