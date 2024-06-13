<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- forward 액션태그를 실행하면 이전에 생성했던 출력결과는 삭제됨. -->
	이 페이지는 from.jsp가 생성한 것입니다.
	<% request.setCharacterEncoding("utf-8"); %>

	<jsp:forward page="to.jsp" >

		<jsp:param value="admin" name="id" />
		<jsp:param value="adminpw" name="password" />
		<jsp:param value="홍길동" name="name" />
		<jsp:param value="서울" name="addr" />
		<jsp:param value="hdg@naver.com" name="email" />
	
	</jsp:forward>
	
</body>
</html>

