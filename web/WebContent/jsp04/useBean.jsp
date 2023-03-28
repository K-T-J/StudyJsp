<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="date" class = "java.util.Date"/><!--  id = 변수이름 -->
	
	<%
		out.println("오늘의 날짜 및 시간 : " + date);			
	%>
	<%= date %>
	
	<jsp:useBean id="person" class = "web.jsp04.test.Bean"/>
	<%
		person.setId("test");
		person.setPw("1234");
	%>
	
	아이디	: <%=person.getId() %><br/>
	비번	: <%=person.getPw() %><br/>

</body>
</html>