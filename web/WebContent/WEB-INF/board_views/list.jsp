<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head> 
	<meta charset="UTF-8">
	<title>게시판</title>
	<link href="/web/jsp17/style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<br />
	<div align="right"> 
		<c:if test="${sessionScope.sid == null}">
			<button onclick="window.location='/web/member/loginForm.hrd'">로그인</button>
		</c:if>
		<c:if test="${sessionScope.sid != null}">
			<button onclick="window.location='/web/member/logout.hrd'">로그아웃</button>
		</c:if>
	</div>
	
	<h1 align="center"> 게시판 </h1>
	
	<c:if test="${count == 0}"><%--게시물이 없을때 --%>
	<table>
		<tr>
			<td><button onclick="window.location='/web/board/writeForm.hrd'"> 글쓰기 </button></td>
		</tr>
		<tr>
			<td align="center">게시글이 없습니다.</td>
		</tr>
	</table>
	</c:if>
	
	<c:if test="${count != 0}"><%--게시물이 있을때 --%>
	<table>
		<tr>
			<td colspan="5" align="right"><button onclick="window.location='/web/board/writeForm.hrd'"> 글쓰기 </button></td>
		</tr>
		<tr>
			<td>No.</td>
			<td>제  목</td>
			<td> num / ref / re_step / re_level </td>
			<td>작성자</td>
			<td>시  간</td>
			<td>조회수</td>
		</tr>
		<c:forEach var="article" items="${articleList}"><%--articleList가 있을때까지 반복문--%>
			<tr>
				<td>${number}
					<c:set var="number" value="${number - 1}" /> <%--게시판 가상번호 --%>
				</td>
				<td align="left">
					<c:set var="wid" value="0" /><%--변수선언--%>
					
					<c:if test="${article.re_level > 0}"><%--만약 답글이면 --%>
						<c:set var="wid" value="${10 * article.re_level}" /><%--들여쓰기 개수만큼 길이가 변한다--%>
						<img src="/web/jsp17/img/tabImg.PNG" width="${wid}" />
						<img src="/web/jsp17/img/replyImg.png" width="11" /> 
					</c:if>
					
					<a href="/web/board/content.hrd?num=${article.num}&pageNum=${pageNum}"> ${article.subject} </a><%--제목을 누르면 content 페이지로 가는데 갈때 num과 pagenum 보내기 --%>
				</td>
				<td> ${article.num} / ${article.ref} / ${article.re_step} / ${article.re_level} </td>
				<td><a href="mailto:${article.email}"> ${article.writer} </a></td><%--작성자 누르면 email 보낼수있게 --%>
				<td> ${article.reg} </td>
				<td> ${article.readcount} </td>
			</tr>
		</c:forEach>
	</table>
	</c:if>
	
	<br /> <br /> 
	<%-- 페이지 번호 --%>
	<div align="center">
	<c:if test="${count > 0}"><%--게시글이 있을때 --%>
		<c:set var="pageBlock" value="3" /> <%--하단의 번호 --%>
		<fmt:parseNumber var="res" value="${count / pageSize}" integerOnly="true" /><%--integerOnly소수점 안나오게--%>
		<c:set var="pageCount" value="${res + (count % pageSize == 0 ? 0 : 1)}" /> <%--총 페이지 수 --%>
		<fmt:parseNumber var="result" value="${(currentPage-1)/pageBlock}" integerOnly="true" />
		<fmt:parseNumber var="startPage" value="${result * pageBlock + 1}"/><%--페이지 요청했을때 시작 번호 --%>
		<fmt:parseNumber var="endPage" value="${startPage + pageBlock -1}" /><%--페이지 요청했을때 끝 번호 --%>
		
		<c:if test="${endPage > pageCount}">
			<c:set var="endPage" value="${pageCount}" /> <%--만약 끝번호가 총페이지수 보다 많으면 끝번호를 총페이지번호로 덮어씌우기 --%>
		</c:if>
		
		<%-- 검색했을때 페이지번호들 --%>
		<c:if test="${sel != null && search != null}">
			<c:if test="${startPage > pageBlock}">
				<a href="/web/board/list.hrd?pageNum=${startPage-pageBlock}&sel=${sel}&search=${search}" class="pageNums"> &lt; &nbsp;</a><%--페이징 처리 list링크만들고 pageNum,sel,search값 넘겨주기 --%>
			</c:if>
			
			<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
				<a href="/web/board/list.hrd?pageNum=${i}&sel=${sel}&search=${search}" class="pageNums"> &nbsp; ${i} &nbsp; </a>
			</c:forEach>
			
			<c:if test="${endPage < pageCount}">
				&nbsp; <a hr
				ef="/web/board/list.hrd?pageNum=${startPage+pageBlock}&sel=${sel}&search=${search}" class="pageNums"> &gt; </a>
			</c:if>
		</c:if>
		
		<%-- 검색 안했을때 페이지번호들   --%> 
		<c:if test="${sel == null || search == null}">
			<c:if test="${startPage > pageBlock}"> <%--왼쪽 꺽쇄 누르면 첫번째 페이지번호 --%>
				<a href="/web/board/list.hrd?pageNum=${startPage-pageBlock}" class="pageNums"> &lt; &nbsp;</a>
			</c:if>
			
			<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1"> <%--가운데 번호--%>
				<a href="/web/board/list.hrd?pageNum=${i}" class="pageNums"> &nbsp; ${i} &nbsp; </a>
			</c:forEach>
			
			<c:if test="${endPage < pageCount}"><%--오른쪽 꺽쇄 누르면 첫번째 나오는 페이지번호--%>
				&nbsp; <a href="/web/board/list.hrd?pageNum=${startPage+pageBlock}" class="pageNums"> &gt; </a>
			</c:if>
		</c:if>
		
	</c:if> <%-- end:count > 0 --%>
	
	
	<br /> <br />
	<%-- 작성자/내용 검색 --%>
	<form action="/web/board/list.hrd">
		<select name="sel">
			<option value="writer">작성자</option>
			<option value="content">내용</option>
		</select>
		<input type="text" name="search" />
		<input type="submit" value="검색" />
	</form>
	<br />
	
	<h3 style="color:grey"> 현재페이지 : ${pageNum} </h3>
	<br /> 
	<c:if test="${sel != null && search != null}"><%--만약 검색했을때 --%>
		<button onclick="window.location='/web/board/list.hrd'"> 전체 게시글 보기 </button> <br />
	</c:if>
		<button onclick="window.location='/web/member/main.hrd'"> 메인으로 </button>
	</div>
	
</body>
</html>
