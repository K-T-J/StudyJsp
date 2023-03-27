<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>로그 메세지 기록 페이지</h1>
	<%
		application.log("로그 메세지 기록!!!"); //콘솔로 뜬다.
		log("jsp 로그로 메세지 기록!!!");
	%>

</body>
</html>