<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<link href="/web/jsp16/style.css" rel = "stylesheet" type = "text/css">
		<script>
		//아이디 중복 여부 판단
		function confirmId(inputForm){//inputForm <- this.form 객체 받음
			if(inputForm.id.value =="" || !inputForm.id.value){
				alert("아이디를 입력하세요");
				return; //강제종료
			}
			// 팝업 
			var url = "/web/member/confirmId.hrd?id=" + inputForm.id.value; //ex)confirmId.jsp?id=pika
			
			open(url, "confirmId", "toolbar=no, location=no, status=no, menubar=no, scrollbars=no resizeable=no, width=300, height=200");		
			
		}
		</script>
		
		
		
</head>
<body>
	<%-- 맨처음 --%>
	<br/>
	<h1 align = "center"> 회원가입</h1>

																
	<form action="/web/member/signupPro.hrd" method="post" name = "inputForm" enctype="multipart/form-data"> 
		<table>
			<tr>
				<td>ID *</td>
				<td>
					<input type = "text" name="id"/>
				</td>
			</tr>
			<tr>
				<td>아이디 중복체크</td>
				<td>
					<input type = "button" value="아이디 중복 확인" onclick = "confirmId(this.form)"/>
				</td>
			</tr>
			<tr>
				<td>Password *</td>
				<td>
					<input type = "password" name="pw"/>
				</td>
			</tr>
			<tr>
				<td>Password Confirm*</td>
				<td>
					<input type = "password" name="pwch"/>
				</td>
			</tr>
			<tr>
				<td>Name *</td>
				<td>
					<input type = "text" name="name"/>
				</td>
			</tr>
			<tr>
				<td>Email </td>
				<td>
					<input type = "text" name="email"/>
				</td>
			</tr>
			<tr>
				<td>Date of Birth </td>
				<td>
					<input type = "text" name="birth" placeholder="YYYYMMDD" maxlength="8"/>
				</td>
			</tr>
			<tr>
				<td>Photo </td>
				<td>
					<input type = "file" name="photo"/> 
				</td>
			
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value = "가입"/>
					<input type="reset" value = "재작성"/>
					<input type="button" value = "취소" onclick = "window.location='/web/member/main.hrd'"/>
				</td>
			</tr>
		</table>
	</form>







</body>
</html>