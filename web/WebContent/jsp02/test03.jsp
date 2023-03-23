<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%-- #1. 선언부 --%>
	
<%!
	// 선언부 : 클래스영역
	// 클래스-인스턴스 변수
	static int num = 5;
	int num2 = 10;
	
	//메서드
	public int multiply(int a, int b){
		int c = a * b;
		return c;
	}
%>	


<%-- #2. 출력문 : 명령끝에 세미콜론 없음! --%>
10*20 = <%= multiply(10,20) %><br /> <%-- 출력문 --%>
<%= num %>, <%= num2 %><br />


<%-- #3. 스크립트릿 --%>
<%
	//스크립트릿 영역 : 메서드 영역 : 가장 많이 사용할 태그로, 로직 부분
	for(int i = 0; i < num; i++){
		out.println("java server pages" + i + "<br />"); //자바 명령으로 브라우저 화면에 출력.
	}
	//지역변수
	String col = "green";

%>

<body bgcolor = "<%= col %>">

</body>







