<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>c page</h1>
	<h3>id --> <%= request.getParameter("id") %></h3>
	<h3>pw --> <%= request.getParameter("pw") %></h3>
</body>
</html>