<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>JSTL choose 태그</h3>
	<ul>
		<c:choose>
			<c:when test="${param.name == '홍길동' }"/>	
				<li>당신의 이름은 ${param.name }입니다.</li>
			<c:when test="${param.age > 25 }"/>	
				<li>당신의 나이는 25세 이상입니다.</li>
		<c:otherwise>
		<li>당신은 홍길동이 아니고 25세 미만입니다.</li>
		</c:otherwise>
		</c:choose>
	</ul>
</body>
</html>