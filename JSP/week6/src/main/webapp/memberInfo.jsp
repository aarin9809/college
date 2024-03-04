
<%@page import="week6.Member"%>
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
		Member member = new Member("홍길동", 25);
		request.setAttribute("mem", member);
	
	%>
	<h3>Member 정보</h3>
	이름 : ${mem.getName() }	/ 나이 : ${mem.getAge() }<br>
	${mem.setName("이순신") }
	이름 변경 후 : ${mem.getName() }<br>

</body>
</html>