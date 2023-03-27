
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정pro</title>
</head>
<c:if test="${check == 0 }">
	<script>
		alert("잘못된 경로입니다");
		window.location="/web/member/main.hrd";
	</script>
</c:if>

<c:if test="${check != 0}">

	<c:if test="${result== 1}">
		<c:redirect url="/member/main.hrd"/>
	</c:if>
		
	<c:if test="${result!= 1}">
		<script>
			alert("비밀번호 확인하시고 다시 수정해주세요..");
			history.go(-1);
		</script>
	</c:if>

</c:if>
<body>

</body>
</html>