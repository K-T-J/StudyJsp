<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> B Page 페이지 이동</h1>
	<%
		System.out.println("B page");
		//String id = request.getParameter("id");
		//response.sendRedirect("c.jsp?id="+ id); //자바로 페이지 이동 (c.jsp 페이지 요청) 페이지 이동(id 쿼리 스트링으로 전달)
		//response.sendRedirect("http://www.naver.com");   //로그인 실패시 다시전으로 돌아가게 하기
	%>
		<%--이동은 하지만 주소창이 변하지는 않는다. --%>
		<jsp:forward page="c.jsp">
			<jsp:param value="1234" name="pw"/>
		</jsp:forward>

</body>
</html>