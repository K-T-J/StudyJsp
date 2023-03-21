<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--
	pageEncoding="UTF-8     
	import="java.util.Date"
    session="true"
    buffer="8kb"
    autoFlush="true"
    isThreadSafe="true"
    info="설명글을 추가하고 싶을때"
    errorPage= "error.jsp"
    isErrorPage="false"
    deferredSyntaxAllowedAsLiteral="false"  생략 가능 --%>
    
    
  <!--import 자바속성이랑 같다 -->
  <!--session은 true 아니면 false session을 쓸것인지 안쓸것인지-->
  <!-- buffer 출력할 데이터의 버퍼에 담아놨다가 출력한다. 기본값8KB -->
  <!--autoFlush 출력 buffer 동작을 제어해줌  기본값 true -->
  <!--isThreadSafe 멀티스레드 허용할건지  기본값 true  -->
  <!--errorPage 이페이지에 에러가 났을때 다른페이지로 전환  -->
  <!--isErrorPage 이페이지가 에러 페이지가 아니다  기본값 false  -->
  
  
  
 <!-- html 주석 -->
 <%-- jsp 주석 --%>
 <%-- --contentType : test/xml, application/json MIME Type 형태  
 	deferredSyntaxAllowedAsLiteral : ${내용} #{내용}
 				서블릿 2.3 > EL 지원 안함
 				서블릿 2.4 > ${내용} 지원 / #{내용} 지원안함
 				서블릿 2.5 > 둘다 지원
 	
 	
 	--%>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	서버 : <%= application.getServerInfo() %><br />
	서블릿 : <%= application.getMajorVersion() %>. <%= application.getMinorVersion() %><br />
	jsp	: <%= JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %>
</body>
</html>