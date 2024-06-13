<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <h3>변수의 범위</h3> -->
	<%!
		//선언문
		//String strVar = "전역 변수입니다.";
		String strVar;
		%>
	<%!
		//선언문
		String getStr() {
			return strVar;
		}
		%>
	<%
		//스크립틀릿 영역
		String strVar2 = "지역변수입니다";
		//String strVar2;
		%>
	<%!
 		//String getStr2() {
		//	return strVar2;
		//}
	
 %>

	<br>
	선언문에서 정의한 변수 strVar = <%=getStr() %><br>
	스크립틀릿에서 정의한 변수 strVar2 = <%-- <%=strVar2 % --%>>
</body>
</html>