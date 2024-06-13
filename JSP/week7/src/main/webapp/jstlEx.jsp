<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% 
		int[] list = {1,2,3,4,5,6,7,8,9,10};
	
	
	%>
<c:forEach var="data" items="<%=list %>">
		${data }
<!-- list라는 변수에 있는 데이터를 data라는 변수에 하나씩 저장한다 라는 의미
 -->


</c:forEach>
</body>
</html>