<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>input_data</h1>
	<form action='input_pro' method='post'>
		data1 : <input type='text' name='data1'/><br>
		<spring:hasBindErrors name="databean1">
			<c:if test="${errors.hasFeildErrors('data1') }">
				${errors.getFeildErrors('data1').defaultMessage } <br>
			</c:if>
			<c:if test="${errors.hasFeildErrors('data2') }">
				${errors.getFeildErrors('data2').defaultMessage } <br>
			</c:if>
		</spring:hasBindErrors>
	</form>
</body>
</html>