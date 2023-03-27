<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%
	// request.setAttribute(String name, Object obj)로 추가해준 속성 꺼내려면
	// request.getAttribute(String name)으로 속성값을 꺼낼 수 있다.
	// 이때 getAttribute()로 꺼내는 데이터의 리턴타입은 Object -> 원하는 데이터 타입으로 다시 형변환해줘야 한다.
	Calendar cal = (Calendar)request.getAttribute("time");
%>
<body>

	현재 시간 :	<%= cal.get(Calendar.HOUR) %>시
			<%= cal.get(Calendar.MINUTE) %>분
			<%= cal.get(Calendar.SECOND) %>초

</body>
</html>