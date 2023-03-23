<%@page import="java.util.Enumeration"%>
<%-- <%@page import="com.sun.org.glassfish.gmbal.ParameterNames"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	//넘어온 요청 파라미터 뽑아서 변수에 담아 놓기
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	System.out.println( "id >>> " + id );
	System.out.println( "pw >>> " + pw );
	
	String[] pet = request.getParameterValues("pet");
	System.out.println( "pet >>> " + pet );
	if( pet != null ){
		for( String i : pet ){
			System.out.println( "pet >>> " + i );		
		}
	}
%>

<body>
	<table border="1">
		<tr>
			<td>id</td>
			<td><%= id %></td>	
		</tr>
		<tr>
			<td>pw</td>
			<td><%= pw %></td>	
		</tr>
		<tr>
			<td>pet</td> <!-- ex) 개인정보수정 -->
			<td>
				<input type = "checkbox" name="pet" value ="dog"<%if(pet != null){
					for(String p : pet){if(p.equals("dog")){%>checked<%}}
				} %>/>강아지
					
				<input type = "checkbox" name="pet" value ="cat"<%if(pet != null){
					for(String p : pet){if(p.equals("cat")){%>checked<%}}
				} %>/>고양이
				<input type = "checkbox" name="pet" value ="tiger"<%if(pet != null){
					for(String p : pet){if(p.equals("tiger")){%>checked<%}}
				} %>/>호랑이
			</td>
		</tr>
	</table>

	<%
		//파라미터 이름 목록 출력
		Enumeration parameterNames= request.getParameterNames();
		while(parameterNames.hasMoreElements()){
			String name = (String)parameterNames.nextElement();
			out.println("name >> " + name);//화면에 출력
		}
	%>



</body>
</html>