<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>writePro</title>
</head>

<c:if test="${pageNum == null}">
	<c:redirect url="/board/list.hrd" />
</c:if>
<c:if test="${pageNum != null}">
	<c:redirect url="/board/list.hrd?pageNum=${pageNum}" />
</c:if>

<body>

</body>
</html>