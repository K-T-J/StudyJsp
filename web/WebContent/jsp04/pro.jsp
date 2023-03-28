
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="web.jsp04.test.FormVO"%>

<%
	request.setCharacterEncoding("utf-8"); //나중에 form의 method="post"로 변경하면 필요
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%--
	FormVO vo = new FormVO();// 넘어온 데이터르 저장할 FormVO 객체 생성해놓기 useBean으로 객체생성
	
	//request에서 각각의 넘어온 데이터를 뽑아서 vo에 데이터 담기
 	vo.setId(request.getParameter("id"));
	vo.setPw(request.getParameter("pw"));
	vo.setName(request.getParameter("name"));
	vo.setAge(Integer.parseInt(request.getParameter("age")));
--%>
<%--넘어온 파라미터 자동으로 찾아서, 해당 set 메서드 호출하여 값 저장 --%>
<%--
<jsp:setProperty name="vo" property = "id"/>
<jsp:setProperty name="vo" property = "pw"/>
<jsp:setProperty name="vo" property = "name"/>
<jsp:setProperty name="vo" property = "age"/>
--%>

<%--  객체생성 --%>
<jsp:useBean id="vo" class = "web.jsp04.test.FormVO"/>
<jsp:setProperty name="vo" property = "*"/>

<body>

	id : <jsp:getProperty name="vo" property="id"/>
	pw : <jsp:getProperty name="vo" property="pw"/>
	name : <jsp:getProperty name="vo" property="name"/>
	age : <jsp:getProperty name="vo" property="age"/>

</body>
</html>