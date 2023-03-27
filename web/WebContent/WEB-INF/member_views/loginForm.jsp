<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="/web/jsp16/style.css" rel = "stylesheet" type = "text/css">
</head>
<%--로그인 상태에서 로그인폼 접근시 check == 1--%>
<c:if test="${check != 0}">
	<script>
		alert("이미 로그인 상태입니다");
		window.location="/web/member/main.hrd";
	</script>
</c:if>


<%--로그아웃 상태에서 로그하려고 접근시 check == 0 --%>
<c:if test="${check == 0}">
<body>
	<br/>
	<h1 align = "center">로그인</h1>
	<form action = "/web/member/loginPro.hrd" method = "post">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type = "text" name = "id"/></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type = "password" name = "pw"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type = "checkbox" name = "auto" value = "1"/>자동로그인</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type = "submit" value = "로그인"/>
					<input type = "button" value = "회원가입" onclick = "windpw.location='/web/member/signupForm.hrd'"/>
					<input type = "button" value = "메인으로" onclick = "windpw.location='/web/member/main.hrd'"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</c:if>


</html>