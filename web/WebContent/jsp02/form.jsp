<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "pro.jsp" method="get">
		id : <input type="text" name="id" /> <br />
		pw : <input type="password" name="pw" /><br />
		좋아하는 동물 :
		<label><input type="checkbox" name="pet" value="dog"/>강아지</label>	
		<label><input type="checkbox" name="pet" value="cat"/>고양이</label>
		<label><input type="checkbox" name="pet" value="tiger"/>호랑이</label><br />
		<label><input type="submit" value="로그인"/></label>
		<!-- 모두 문자열로만 전송이 된다. -->
	</form>
	<%--http://localhost:8080/web/jsp02/form.jsp?id=java&pw=1111# --%>

</body>
</html>