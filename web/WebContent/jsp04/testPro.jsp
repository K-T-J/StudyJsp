<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("pw");
	int age = Integer.parseInt(request.getParameter("age"));
		
	//DB에 저장
	//순서
		//1. JDBC 드라이버 로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//2. DB 접속을 위한 Connection 객체 생성
		String user = "glob06", pw = "glob06";
		String url = "jdbc:oracle:thin:@nullmaster.iptime.org:1521:ORCL";
		Connection conn = DriverManager.getConnection(url, user, pw);//커넥션한거랑 같다
		//3. 쿼리 실행을 위한 Statement 겍체 생성, 쿼리문 작성
		// 데이터가  삽입되어야 하는 부분에 변수를 사용하면 보안에 취약
		// placeholder인 ? 문자로 개수만큼 대치를 해주고
		// PreparedStatement 객체로 해당 placegolder 부분에 들어가야할 데이터를 추가 시켜준다.
		String sql = "insert into test values(?,?,?,sysdate)";
			
		System.out.println(sql);
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,id);
		pstmt.setString(2,passwd);
		pstmt.setInt(3,age);
		
		//4. 쿼리 실행
		int result = pstmt.executeUpdate();//ResultSet import
		//5. 결과값 사용
		System.out.println(result);
		//6. Statement, ResultSet등 사용된 객체 종료
		pstmt.close();
		//7. 데이터베이스 커넥션 종료
		conn.close();
	
	//무결성 제약조건에 위배.... (primary key : 기존에 id 컬럼에 같은 값이 이미 존재하면 실패)
	//id 컬럼 : primary key  -> form페이지 id란 중복안되는 값, 생략x
	//pw 컬럼 : not null -> form페이지에 값 반드시 기입하고 테스트하기
%>



<body>

	<h2><%=id %> 님이 가입이 성공 되었습니다!</h2>

</body>
</html>