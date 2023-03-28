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
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="vo" class = "web.jsp04.test.SignupFormVO"/>
<jsp:setProperty property="*" name="vo"/>
		<table>
			<tr>
				<td>ID *<br />
					<jsp:getProperty property="id" name="vo"/>
				</td>
			</tr>
			<tr>
				<td>pw *<br />
					<jsp:getProperty property="pw" name="vo"/>
				</td>
			</tr>
			<tr>
				<td>Name *<br />
					<jsp:getProperty property="name" name="vo"/>
				</td>
			</tr>
			<tr>
				<td>Email <br />
					<jsp:getProperty property="email" name="vo"/>
				</td>
			</tr>
			<tr>
				<td>Gender *<br />
					<jsp:getProperty property="gender" name="vo"/>남
					<<jsp:getProperty property="gender" name="vo"/>여
				</td>
			</tr>
			<tr>
				<td>Hobbies<br />
					<jsp:getProperty property="music" name="vo"/>music
					<jsp:getProperty property="sports" name="vo"/>Sports
					<<jsp:getProperty property="travel" name="vo"/>>Travel
					<<jsp:getProperty property="movies" name="vo"/>Movies
				</td>
			<tr>
				<td>Date of Birth <br />
					<jsp:getProperty property="birthYY" name="vo"/>년
					<jsp:getProperty property="birthMM" name="vo"/>월
					<jsp:getProperty property="birthDD" name="vo"/>일
				</td>
			</tr>
			<tr>
				<td>job <br />
					<jsp:getProperty property="job" name="vo"/>
				</td>	
			</tr>
			<tr>
				<td>Bio<br />
					<textarea rows="5" cols="20" name="bio">
						<jsp:getProperty property="bio" name="vo"/>
					</textarea>
				</td>
			</tr> 
		</table>
	


</body>
</html>