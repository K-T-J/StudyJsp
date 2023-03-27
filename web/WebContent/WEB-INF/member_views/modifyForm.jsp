<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<link href="/web/jsp16/style.css" rel = "stylesheet" type = "text/css">
</head>
<!-- check==0 : 비로그인 check == 1 : 로그인상태 -->

<c:if test="${check==0}">
	<script>
		alert("로그인해 주세요");
		window.location="/web/member/loginForm.hrd";
	</script>
</c:if>


<c:if test="${check !=0}">
<body>
	<br/> 
	<h1 align = "center">회원 정보 수정</h1>
	<form action="/web/member/modifyPro.hrd" method="post" enctype="multipart/form-data">
	<%--signupForm을 복사해와서 --%>
		<table>
			<tr>
				<td>ID *</td>
				<td>
					${member.id} <%--그냥 출력만 --%>
				</td>
			
			</tr>
			<tr>
				<td>Password *</td>
				<td>
					<input type = "password" name="pw" value = "${member.pw}"/>
				</td>
			
			</tr>
			<tr>
				<td>Password Confirm*</td>
				<td>
					<input type = "password" name="pwch"/><%-- 유효성 처리 --%>
				</td>
			
			</tr>
			<tr>
				<td>Name *</td>
				<td>
					${member.name}
				</td>
			
			</tr>
			<tr>
				<td>Email </td>
				<td>
					<input type = "text" name="email" value="${member.email}"/>
				</td>
			
			</tr>
			<tr>
				<td>Date of Birth </td>
				<td>
					<c:if test="${member.birth != null}" >
						<input type = "text" name="birth" value = "${member.birth}"/>
					</c:if>
					<c:if test="${member.birth == null}">
						<input type = "text" name="birth" placeholder="YYYYMMDD" maxlength="8"/>
					</c:if>
				</td>
			
			</tr>
			<tr>
				<td>Photo </td>
				<td>
					<c:if test="${member.photo != null}">
						<img src="/web/save/${member.photo }" width="150"/>
					</c:if>
					<c:if test="${member.photo == null}">
						<img src="/web/save/default-image-620x600.jpg" width="150"/>
					</c:if>
					
					<input type = "file" name="photo"/><%--이건 무조건 띄워준다  --%>
					<input type = "hidden" name="exPhoto" value ="${member.photo}"/>
					<%--기존에 저장된 사진 정보를 hidden으로 같이 보낸다 --%>
					<%--사진을 변경을 안했을경우 기존에 사진으로(exphoto) 업데이트 하고 변경하면 변경된 사진(photo)으로 업데이트 한다 --%>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value = "수정"/>
					<input type="button" value = "취소" onclick = "window.location='/web/member/main.hrd'"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</c:if>
</html>