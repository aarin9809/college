<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	//선언부
	//메소드 정의
	public int sum(int x, int y){
		return x+y;
	}
	%>
	<%
		//스크립틀릿 영역
		//자바 소스 코드 입력
		int total = 0;
		for(int i=1; i<=100; i++) {
			total += i;
		}
	%>
	1부터 100까지 더한 값은 <%=total %> <br>
	<h3>두 수의 합을 구하기</h3>
	10 + 15 = <%=sum(10,15) %>
</body>
</html>