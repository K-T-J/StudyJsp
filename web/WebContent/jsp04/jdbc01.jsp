<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Timestamp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%  
 		//순서
		//1. JDBC 드라이버 로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//2. DB 접속을 위한 Connection 객체 생성
		String user = "glob06", pw = "glob06";
		String url = "jdbc:oracle:thin:@nullmaster.iptime.org:1521:ORCL";
		Connection conn = DriverManager.getConnection(url, user, pw);//커넥션한거랑 같다
		//3. 쿼리 실행을 위한 Statement 겍체 생성, 쿼리문 작성
		String sql = "select * from test";
		PreparedStatement pstmt = conn.prepareStatement(sql);//PreparedStatement import
		//4. 쿼리 실행
		ResultSet rs = pstmt.executeQuery();//ResultSet import
		//5. 결과값 사용
		while(rs.next()){//다음에 요소가 있을때까지
			String id = rs.getString("id");
			String passwd = rs.getString("pw");
			int age = rs.getInt("age");
			Timestamp reg = rs.getTimestamp("reg");%><%-- Timestamp import --%>
			
			<p> id : <%= id %> / pw : <%= passwd %> / age : <%= age %> / reg : <%= reg %> </p>
		<%}
		
		//6. Statement, ResultSet등 사용된 객체 종료
		rs.close();
		pstmt.close();
		//7. 데이터베이스 커넥션 종료 
		conn.close();

%>

<body>

</body>
</html>