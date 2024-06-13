<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>사원 조회 결과</h3>
	<table border = "1" width="100%" style="text-align: center;">
		<tr>
			<td>제목</td><td>내용</td>
		</tr>	
		<tr>
			<td>사원번호</td><td>${empno }</td>
		</tr>	
		<tr>
			<td>사원이름</td><td>${empname }</td>
		</tr>	
		<tr>
			<td>부서코드</td><td>${empdept }</td>
		</tr>	
		<tr>
			<td>업무</td><td>${empjob }</td>
		</tr>	
		<tr>
			<td>급여</td><td>${empsal }</td>
		</tr>	
	</table>
</body>
</html>