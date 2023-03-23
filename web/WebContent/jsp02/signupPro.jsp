<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pro page</title>
</head>
<body>
<%
	//post방식으로 넘어온데이터 : 요청파라미터로 넘어오는 파라미터 값이 한글일 경우 인코딩 처리.
	//데이터를 꺼내기 전에 한번만 적어주자!!!->스크립트릿(문서) 초반에 작성하자!!!
	//request.setCharacterEncoding("UTF-8");
	request.setCharacterEncoding("UTF-8");	

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String gender = request.getParameter("gender");
	String[] hobbies = request.getParameterValues("hobbies");
	String birthYY = request.getParameter("birthYY");
	String birthMM = request.getParameter("birthMM");
	String birthDD = request.getParameter("birthDD");
	String job = request.getParameter("job");
	String bio = request.getParameter("bio");
	
%>

	<h2>Pro page</h2>
	<table>
			<tr>
				<td>Id *<br />
					<%= id %>
				</td>
			</tr>
			<tr>
				<td>Pw *<br />
					<%= pw %>
				</td>
			</tr>
			<tr>
				<td>Name *<br />
					<%= name %>
				</td>
			
			</tr>
			<tr>
				<td>Email <br />
					<%=email %>
				</td>
			</tr>
			<tr>
				<td>Gender *<br />
					<%=gender %>
				</td>
			</tr>
			<tr>
				<td>Hobbies<br />
					<%
						if(hobbies != null){
							for(int i = 0; i < hobbies.length; i++){%>
								<%= hobbies[i] %>
						<% 	}
						}
					%>
				</td>
			<tr>
				<td>Date of Birth <br />
					<%= birthYY %>년 <%=birthMM %>월<%=birthDD %>일
				</td>
			</tr>
			<tr>
				<td>job <br />
					<%=job %>
				</td>	
			</tr>
			<tr>
				<td>Bio<br />
					<textarea rows = "5" cols ="20" name="bio"> <%= bio %></textarea>
				</td>
			</tr>
	</table>

</body>
</html>