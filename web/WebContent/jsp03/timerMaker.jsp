<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 객체 보내기
		Calendar cal = Calendar.getInstance();
	
		// 객체 request 내부객체의 속성(attribute)으로 추가해서
		request.setAttribute("time", cal);
	
		/* response.sendRedirect("timeViewer.jsp"); */
	
	%>
	<jsp:forward page="timeViewer.jsp"/>

</body>
</html>