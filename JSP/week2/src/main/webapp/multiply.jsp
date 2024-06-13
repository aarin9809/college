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
	public int mul(int x, int y){
		return x*y;
	}
	%>
	<h3>두 수의 곱을 구하기</h3>
	10 * 15 = <%=mul(10,15) %>
</body>
</html>