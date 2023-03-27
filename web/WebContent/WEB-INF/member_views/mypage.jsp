<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="/web/jsp16/style.css" rel = "stylesheet" type = "text/css">
</head>

<c:if test="${check==0}">
	<script>
		alert("로그인후 이용해주세요");
		window.location="/web/member/loginForm.hrd";
	</script>
</c:if>

<c:if test="${check != 0}">
<body>
	<br />
	<h1 align="center">My page</h1>
		<table>
			<tr>
				<td>
					<b><${sessionScope.sid}</b><br/><br/>
					<img src = "/web/save/${photo}" width="250"/>
				</td>
			</tr>
			<tr>
				<td>
					<button onclick = "window.location='/web/member/modifyForm.hrd'">회원 정보 수정</button>
					<button onclick = "window.location='/web/member/deleteForm.hrd'">회원 탈퇴</button>
					<button onclick = "window.location='/web/member/main.hrd'">메인</button>
				</td>
			</tr>
		</table>
</body>
</c:if>
</html>